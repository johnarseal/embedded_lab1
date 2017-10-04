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
	
	// set the clock divider to clk, should be 0x5dc here
	*BSC_DIV_REG = clk;
	// set GPIO pins to correct function on pg 102 of BCM2835 peripherals
	gpio_config(I2C1_SDA, GPIO_FUN_ALT0);
	gpio_config(I2C1_SCL, GPIO_FUN_ALT0);
	return;

}

uint8_t i2c_master_write(uint8_t *buf, uint16_t len, uint8_t addr) {

	uint32_t i = 0;
	uint8_t reason = I2C_REASON_OK;

	// Clear FIFO
	ptr_set_bits(BSC_C_REG, BSC_C_CLEAR_2 , BSC_C_CLEAR_2 );
	// Clear Status, because we will check the status after transfer
	*BSC_S_REG = (BSC_S_CLKT |  BSC_S_ERR |  BSC_S_DONE);
	// Set Slave address	
	*BSC_A_REG = addr;
	// Set Data Length
	*BSC_DLEN_REG = len;

	// pre populate FIFO with max buffer
	while(i < BSC_FIFO_MAX)
	{
		*BSC_FIFO_REG = buf[i++];
	}


	// !!! Enable device and start transfer 
	*BSC_C_REG = (BSC_C_I2CEN | BSC_C_ST);

	// If there is mode data than the max FIFO, we need to transfer it after starting transfer
	while(i < len){
		// For debug use
		printk("should not reach here\n");
		while((*BSC_S_REG) & BSC_S_TXD){
			*BSC_FIFO_REG = buf[i++];
		}
	}


	// Received a NACK
	if ((*BSC_S_REG) & BSC_S_ERR)
	{
		reason = I2C_REASON_ERR_NACK;
	}

	// Received Clock Stretch Timeout
	else if ((*BSC_S_REG) & BSC_S_CLKT)
	{
		reason = I2C_REASON_ERR_TIMEOUT;
	}


	while(!((*BSC_S_REG) & BSC_S_DONE)){
		//wait while transfer is complete
	}

	ptr_set_bits(BSC_C_REG, BSC_S_DONE , BSC_S_DONE);

	return reason;
}
  
uint8_t i2c_master_read(uint8_t *buf, uint16_t len, uint8_t addr) {

	uint32_t i = 0;
	uint8_t reason = I2C_REASON_OK;



	// Clear FIFO 
	ptr_set_bits(BSC_C_REG, BSC_C_CLEAR_1 , BSC_C_CLEAR_1 );
	// Clear Status
	*BSC_S_REG = (BSC_S_CLKT | BSC_S_ERR | BSC_S_DONE);
	// Set Data Length
	*BSC_DLEN_REG = len;
	// Set Slave address	
	*BSC_A_REG = addr;


	// !!! Start read
	*BSC_C_REG = (BSC_C_I2CEN | BSC_C_ST | BSC_C_READ);


	// wait for transfer to complete
	while (!((*BSC_S_REG) & BSC_S_DONE))
	{
		// confirm at least one byte to read
		while (((*BSC_S_REG) & BSC_S_RXD))
		{
			// Read from FIFO
			buf[i++] = *BSC_FIFO_REG;		
		}
	}

	if((*BSC_S_REG) & BSC_S_RXD){
		// For debug use
		printk("there are more data in FIFO\n");
	}


	// transfer has finished - grab any remaining stuff in FIFO
	while (i < len && ((*BSC_S_REG) & BSC_S_RXD))
	{
		printk("receiving data after transfer is DONE\n");		
		// Read from FIFO, no barrier
		buf[i++] = *BSC_FIFO_REG;		
	}

	// Received a NACK
	if ((*BSC_S_REG) & BSC_S_ERR)
	{
		reason = I2C_REASON_ERR_NACK;
	}

	// Received Clock Stretch Timeout
	else if ((*BSC_S_REG) & BSC_S_CLKT)
	{	
		reason = I2C_REASON_ERR_TIMEOUT;
	}
	
	while(!((*BSC_S_REG) & BSC_S_DONE)){
		//wait while transfer is complete
	}

	ptr_set_bits(BSC_C_REG, BSC_S_DONE , BSC_S_DONE);

	return reason;

}
