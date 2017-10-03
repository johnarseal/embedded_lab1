/**
 * @file   i2c.h
 *
 * @brief  I2C interface on rpi 2
 *
 * @date   Sep 29 2017
 * @author John Zhong <zhenz2@andrew.cmu.edu>
 */

#include <kstdint.h>
#include <BCM2836.h>

// I2C pins
#define I2C1_SDA 2
#define I2C1_SCL 3

/** @brief Base Address of the BSC1 registers */
#define BSC1_BASE  0x3f804000
/** @brief We are using BSC1 for ads */
#define BSC_BASE_ADDR BSC1_BASE

/** @brief below are the define of BSC field */

/** @brief BSC control register */
#define BSC_C_REG		(volatile uint32_t *)(BSC_BASE_ADDR)
/** @brief BSC status register */
#define BSC_S_REG		(volatile uint32_t *)(BSC_BASE_ADDR + 0x04)
/** @brief BSC Data Length Register */
#define BSC_DLEN_REG		(volatile uint32_t *)(BSC_BASE_ADDR + 0x08)
/** @brief BSC slave register */
#define BSC_A_REG		(volatile uint32_t *)(BSC_BASE_ADDR + 0x0c)
/** @brief BSC Data FIFO Register */
#define BSC_FIFO_REG		(volatile uint32_t *)(BSC_BASE_ADDR + 0x10)
/** @brief BSC CLK divider Register */
#define BSC_DIV_REG		(volatile uint32_t *)(BSC_BASE_ADDR + 0x14)


/* @brief below are the register masks for BSC control */

/** @brief I2C Enable, 0 = disabled, 1 = enabled */
#define BSC_C_I2CEN 		0x8000
/** @brief Start transfer, 1 = Start a new transfer */
#define BSC_C_ST 		0x0080
/** @brief Clear FIFO Clear */
#define BSC_C_CLEAR_1 		0x0020
/** @brief Clear FIFO Clear */
#define BSC_C_CLEAR_2 		0x0010
/** @brief Read transfer */
#define BSC_C_READ 		0x0001 

/* @brief below are the register masks for BSC status */

/** @brief Clock stretch timeout */
#define BSC_S_CLKT 		0x00000200
/** @brief ACK error */
#define BSC_S_ERR 		0x00000100
/** @brief FIFO contains data */
#define BSC_S_RXD 		0x00000020 
/** @brief FIFO can accept data */
#define BSC_S_TXD 		0x00000010
/** @brief Transfer DONE */
#define BSC_S_DONE 		0x00000002

#define BSC_FIFO_MAX   	16 /* BSC FIFO size */



typedef enum
{
    I2C_REASON_OK   	     = 0x00,      /*!< Success */
    I2C_REASON_ERROR_NACK    = 0x01,      /*!< Received a NACK */
    I2C_REASON_ERROR_CLKT    = 0x02,      /*!< Received Clock Stretch Timeout */
    I2C_REASON_ERROR_DATA    = 0x04       /*!< Not all data is sent / received */
} I2CReasonCodes;



// I2C Clock speeds
#define I2C_CLK_100KHZ 0x5dc

/**
 * @brief initializes the I2C module
 * 
 * @param clk bus clock speed
 */ 
extern void i2c_master_init(uint16_t clk);

/**
 * @brief writes to I2C device
 * 
 * @param buf pointer to output data buffer
 * @param len length of output data buffer in bytes
 * @param addr slave device address
 */
extern uint8_t i2c_master_write(uint8_t *buf, uint16_t len, uint8_t addr);
  
/**
 * @brief reads from I2C device
 * 
 * @param buf pointer to input data buffer
 * @param len number of bytes to read
 * @param addr slave device address
 */
extern uint8_t i2c_master_read(uint8_t *buf, uint16_t len, uint8_t addr);
