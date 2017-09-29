/**
 * @file   i2c.c
 *
 * @brief  I2C implementation on rpi 2
 *
 * @date   Sep 29, 2017
 * @author John Zhong <zhenz2@andrew.cmu.edu>
 */

#include <kstdint.h>
#include <gpio.h>
#include <printk.h>
#include <utils.h>
#include <i2c.h>


void i2c_master_init(uint16_t clk) {

	
	// set GPIO pins to correct function on pg 102 of BCM2835 peripherals
	gpio_config(I2C1_SDA, GPIO_FUN_ALT0);
	gpio_config(I2C1_SCL, GPIO_FUN_ALT0);
	return;

}

uint8_t i2c_master_write(uint8_t *buf, uint16_t len, uint8_t addr) {

	volatile uint32_t* dlen	= 	BSC_BASE_PTR + BSC_DLEN/4;
	volatile uint32_t* fifo = 	BSC_BASE_PTR + BSC_FIFO/4;
	volatile uint32_t* status =	BSC_BASE_PTR + BSC_S/4;
	volatile uint32_t* control =	BSC_BASE_PTR + BSC_C/4;
	volatile uint32_t* paddr = 	BSC_BASE_PTR + BSC_A/4;


	uint32_t remaining = len;
	uint32_t i = 0;
	uint8_t reason = I2C_REASON_OK;

	printk("entering i2c_master_write\n");
	/* Clear FIFO */
	peri_set_bits(control, BSC_C_CLEAR_2 , BSC_C_CLEAR_2 );
	/* Clear Status */
	peri_write(status,  BSC_S_CLKT |  BSC_S_ERR |  BSC_S_DONE);
	/* Set Slave address */	
	peri_write(paddr, addr);
	/* Set Data Length */
	peri_write(dlen, len);

	/* pre populate FIFO with max buffer */
	while( remaining && ( i < BSC_FIFO_SIZE ) )
	{
		peri_write(fifo, buf[i]);
		printk("writing byte %x to fifo\n",buf[i]);
		i++;
		remaining--;
	}

	/* Enable device and start transfer */
	peri_write(control, BSC_C_I2CEN | BSC_C_ST);


	/* Received a NACK */
	if (peri_read(status) & BSC_S_ERR)
	{
		reason = I2C_REASON_ERROR_NACK;
	}

	/* Received Clock Stretch Timeout */
	else if (peri_read(status) & BSC_S_CLKT)
	{
		reason = I2C_REASON_ERROR_CLKT;
	}


	while(!(peri_read(status) & BSC_S_DONE)){
		//wait while transfer is complete
	}

	peri_set_bits(control, BSC_S_DONE , BSC_S_DONE);

	return reason;
}
  
uint8_t i2c_master_read(uint8_t *buf, uint16_t len, uint8_t addr) {
	volatile uint32_t* dlen    =	BSC_BASE_PTR + BSC_DLEN/4;
	volatile uint32_t* fifo    =	BSC_BASE_PTR + BSC_FIFO/4;
	volatile uint32_t* status  =	BSC_BASE_PTR + BSC_S/4;
	volatile uint32_t* control =	BSC_BASE_PTR + BSC_C/4;
	volatile uint32_t* paddr = 	BSC_BASE_PTR + BSC_A/4;

	uint32_t remaining = len;
	uint32_t i = 0;
	uint8_t reason = I2C_REASON_OK;



	/* Clear FIFO */
	peri_set_bits(control, BSC_C_CLEAR_1 , BSC_C_CLEAR_1 );
	/* Clear Status */
	peri_write(status, BSC_S_CLKT | BSC_S_ERR | BSC_S_DONE);
	/* Set Data Length */
	peri_write(dlen, len);
	/* Set Slave address */	
	peri_write(paddr, addr);


	/* Start read */
	peri_write(control, BSC_C_I2CEN | BSC_C_ST | BSC_C_READ);


	/* wait for transfer to complete */
	while (!(peri_read(status) & BSC_S_DONE))
	{
		/* we must empty the FIFO as it is populated and not use any delay */
		while (remaining && (peri_read(status) & BSC_S_RXD))
		{
			/* Read from FIFO, no barrier */
			buf[i] = peri_read(fifo);
			printk("reading one from %x, byte: %x\n",fifo, buf[i]);
			remaining--;			
			i++;
		}
	}

	if(peri_read(status) & BSC_S_RXD){
		printk("there are more data in FIFO\n");
	}


	/* transfer has finished - grab any remaining stuff in FIFO */
	while (remaining && (peri_read(status) & BSC_S_RXD))
	{
		printk("receiving data after transfer is DONE\n");		
		/* Read from FIFO, no barrier */
		buf[i] = peri_read(fifo);
		i++;
		remaining--;
	}

	/* Received a NACK */
	if (peri_read(status) & BSC_S_ERR)
	{
		reason = I2C_REASON_ERROR_NACK;
	}

	/* Received Clock Stretch Timeout */
	else if (peri_read(status) & BSC_S_CLKT)
	{	
		reason = I2C_REASON_ERROR_CLKT;
	}
	
	while(!(peri_read(status) & BSC_S_DONE)){
		//wait while transfer is complete
	}

	peri_set_bits(control, BSC_S_DONE , BSC_S_DONE);

	return reason;

}
