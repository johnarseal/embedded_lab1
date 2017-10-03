/**
 * @file   ads1015.h
 *
 * @brief  ADS1050 interface over I2C
 *
 * @date   12 Aug 2016
 * @author James Mackaman <jmackama@andrew.cmu.edu>
 */

#ifndef _ADS1050_H_
#define _ADS1050_H_

#include <kstdint.h>


/** @brief The address of ADS 0b1001000*/
#define	ADS_ADDRESS 0x49
/** @brief The configure register of ADS*/
#define	ADS_CONFIG_REG 0x01
/** @brief The conversion register of ADS*/
#define	ADS_CONVERS_REG 0x0
#define	ADS_GENERALCALL_ADDR	0x0
/** @brief The continuous mode of ADS 0b0000 0100 1000 0011, PGA=000*/
#define ADS_CONTINU_CONFIG 0x0083

/** @brief The mask of AIN0 */
#define ADS_CHANNEL0_MASK 0x4000
/** @brief The mask of AIN1 */
#define ADS_CHANNEL1_MASK 0x5000
/** @brief The mask of AIN2 */
#define ADS_CHANNEL2_MASK 0x6000
/** @brief The mask of AIN3 */
#define ADS_CHANNEL3_MASK 0x7000

/**
 * @brief initialize ADS1015
 */
void adc_init(void);

/**
 * @brief read a value from the ADC
 *
 * @param channel 0 through 3
 * @return the value read from the ADC
 */
uint16_t adc_read(uint8_t channel);

void display_light();

void clap_detect();

#endif /* _ADC_DRIVER_H_ */
