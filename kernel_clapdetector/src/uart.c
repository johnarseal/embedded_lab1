/**
 * @file   uart.c
 *
 * @brief  lower level hardware interactions for uart on pi
 *
 * @date   Sep 25 2017
 * @author John Zhong <zhenz2@andrew.cmu.edu>
 */

#include <kstdint.h>
#include <gpio.h>
#include <printk.h>

/** @brief All MMIO on the Raspberry Pi 2 begin at 0x3F000000 */
#define MMIO_BASE_PHYSICAL 0x3F000000
/** @brief Auxiliary enables */
#define AUXENB_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0x215004)
/** @brief Hold the read/write data of mini UART */
#define AUX_MU_DATA_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0x215040)
/** @brief Mini UART interrupt enable */
#define AUX_MU_IER_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0x215044)
/** @brief Mini UART interrupt identify */
#define AUX_MU_IIR_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0x215048)
/** @brief Mini UART line control */
#define AUX_MU_LCR_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0x21504c)
/** @brief Mini UART line status */
#define AUX_MU_LSR_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0x215054)
/** @brief Mini UART Baud Rate*/
#define AUX_MU_BAUD_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0x215068)



/** @brief GPIO UART RX pin */
#define RX_PIN 15
/** @brief GPIO UART TX pin */
#define TX_PIN 14

void uart_init(void) {
    
    // disable the PULL-UP/DOWN resistor for the data pin
    gpio_set_pull(RX_PIN, GPIO_PULL_DISABLE);
    gpio_set_pull(TX_PIN, GPIO_PULL_DISABLE);

    // set GPIO pins to correct function on pg 102 of BCM2835 peripherals
    gpio_config(RX_PIN, GPIO_FUN_ALT5);
    gpio_config(TX_PIN, GPIO_FUN_ALT5);

    // enable the access to the MMIO peripherals of UART
    *AUXENB_REG |= 0x1;
    // set the UART works in 8-bit mode and clear DLAB. According to the errata sheet, bit 1 must be set
    *AUX_MU_LCR_REG = 0x3;
    // disable interrupt
    *AUX_MU_IER_REG = 0x0;
    // set the baud rate to 115314
    *AUX_MU_BAUD_REG = 270;

}


void uart_close(void) {
    
    //To close, clear the read&write FIFO
    *AUX_MU_IIR_REG |= 0x6;
    //Disable UART
    *AUXENB_REG &= ~0x1;
    
}


void uart_put_byte(uint8_t byte) {

 
    while(((*AUX_MU_LSR_REG) & 0x20) == 0){
        // waiting for Transmitter FIFO empty
    }
    // put the data in the data register
    *((volatile uint8_t *)AUX_MU_DATA_REG) = byte;

}


uint8_t uart_get_byte(void) {
	int prompt = 0;
	while(((*AUX_MU_LSR_REG) & 0x1) == 0){
		if(!prompt){
			printk("please input\n");
			prompt = 1;		
		}
        	// waiting for Receiver FIFO has one byte ready
    	}
	return  *((volatile uint8_t *)AUX_MU_DATA_REG); 
}


