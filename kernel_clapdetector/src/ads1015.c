/**
 * @file   ads1015.c
 *
 * @brief  I2C driver for ads1015
 *
 * @date   Sep 29, 2017
 * @author John Zhong <zhenz2@andrew.cmu.edu>
 */

#include <kstdint.h>
#include <i2c.h>
#include <printk.h>
#include <ads1015.h>


void adc_write_config(uint16_t config_val){
	
	uint8_t buf[3];
	uint32_t retVal;

	// specify to write to the config register
	buf[0] = ADS_CONFIG_REG;
	buf[1] = (config_val >> 8);
	buf[2] = (uint8_t)(config_val & 0xff);
	printk("configuring value: %x\n",config_val);	
	
	uint8_t rbuf[2];

	uint8_t reason;
	if((reason = i2c_master_write(buf,3,ADS_ADDRESS)) != 0){
		printk("error %d on config\n",reason);
	}
	else{
		printk("success config\n");	
	}

	//check what is the configure value
	// write reg pointer: read from config
	buf[0] = 1;
	i2c_master_write(buf,1,ADS_ADDRESS);
	if((reason = i2c_master_read(rbuf,2,ADS_ADDRESS)) != 0){
		printk("error %d when reading config reg\n",reason);
	}
	retVal = (rbuf[0] << 8) + rbuf[1];
	printk("config register is %x\n",retVal);

}


// read the conversion register
uint16_t adc_read_conversion(){
	
	uint8_t buf[1];	
	uint8_t reason;
	

	// specify to read from the conversion register
	buf[0] = ADS_CONVERS_REG;

	if((reason = i2c_master_write(buf,1,ADS_ADDRESS)) != 0){
		printk("error %d on changing register pointer for conversion register\n",reason);
	}

	uint8_t rbuf[2];
	// read the register
	
	if((reason = i2c_master_read(rbuf,2,ADS_ADDRESS)) != 0){
		printk("error %d on reading conversion register\n",reason);
	}

	uint16_t retVal = (rbuf[0] << 8) + rbuf[1];
	return retVal;

}


void adc_init(void) {
	//uint8_t buf[1];	
	//uint8_t wbuf[3];
	uint8_t buf[1];
	uint8_t rbuf[2];
	uint16_t retVal;
	uint8_t reason;
	
	/** give general call to reset ads1015 */
	/*
	buf[0] = 0x6;
	if((reason = i2c_master_write(buf,1,ADS_GENERALCALL_ADDR)) != 0){
		printk("error %d when reset ads1015\n",reason);
	}*/

	// The default config value set the ADS to continuous mode
	//adc_write_config(ADS_CONTINU_CONFIG);
	// read the config register
	
	// write reg pointer: read from config
	buf[0] = 1;
	i2c_master_write(buf,1,ADS_ADDRESS);
	if((reason = i2c_master_read(rbuf,2,ADS_ADDRESS)) != 0){
		printk("error %d when reading config reg\n",reason);
	}
	retVal = (rbuf[0] << 8) + rbuf[1];
	printk("config register is %x\n",retVal);



	// specify to write for Hi thres
/*
	wbuf[0] = 3;
	wbuf[1] = 0x1;
	wbuf[2] = 0x05;
	
	if((reason = i2c_master_write(wbuf,3,ADS_ADDRESS)) != 0){
		printk("error %d when setting Hi\n",reason);
	};
*/
	// write reg pointer: read from Hi thres
	buf[0] = 3;
	i2c_master_write(buf,1,ADS_ADDRESS);
	// 3. read the Hi register
	i2c_master_read(rbuf,2,ADS_ADDRESS);
	retVal = (rbuf[0] << 8) + rbuf[1];
	printk("Hi thres is %x\n",retVal);


	// specify to write for Lo thres
/*
	wbuf[0] = 2;
	wbuf[1] = 0x0;
	wbuf[2] = 0x15;
	if((reason = i2c_master_write(wbuf,3,ADS_ADDRESS)) != 0){
		printk("error %d when setting Lo\n",reason);
	};
*/
	// write reg pointer: read from Lo thres
	buf[0] = 2;
	i2c_master_write(buf,1,ADS_ADDRESS);
	// 3. read the lo register
	i2c_master_read(rbuf,2,ADS_ADDRESS);
	retVal = (rbuf[0] << 8) + rbuf[1];
	printk("Lo thres is %x\n",retVal);

}


uint16_t adc_read(uint8_t channel) {

	uint16_t config_value = ADS_CONTINU_CONFIG | ADS_CHANNEL0_MASK;
	switch(channel){
		case 0: config_value = ADS_CONTINU_CONFIG | ADS_CHANNEL0_MASK;
		break;
		case 1: config_value = ADS_CONTINU_CONFIG | ADS_CHANNEL1_MASK;
		break;
		case 2: config_value = ADS_CONTINU_CONFIG | ADS_CHANNEL2_MASK;
		break;
		case 3: config_value = ADS_CONTINU_CONFIG | ADS_CHANNEL3_MASK;
		break;
		default:
		return 0;
	}
	// config the config register to set the AIN
	adc_write_config(config_value);

	return adc_read_conversion();

}
