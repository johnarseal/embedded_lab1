/**
 * @file   kernel.c
 *
 * @brief  entry point to the raspberry pi kernel
 *
 * @date   Sep 27, 2017
 * @author John Zhong <zhenz2@andrew.cmu.edu>
 */

/**
 * @brief The kernel entry point
 */

#include<ads1015.h>
#include<i2c.h>
#include<uart.h>
#include<printk.h>

void kernel_main(void) {
	uart_init();
	
	// The i2c is in default 100kHz standard speed mode, no need to set th clk now
	i2c_master_init(DEFAULT_CLOCK_SPEED);

	// init adc
	adc_init();
	uint8_t input;
	while (1){
		input = uart_get_byte();
		printk("got %d\n",input);
		if(input == '0'){
			display_light();

		}
		else if(input == '1'){
			clap_detect();		
		}
	}

}
