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
/** @brief We are using BSC1 this time */
#define BSC_BASE_PTR (volatile uint32_t *)(BSC1_BASE)

/** @brief below are the define of BSC field */
#define BSC_C 			0x0000 /*!< BSC Master Control */
#define BSC_S 			0x0004 /*!< BSC Master Status */
#define BSC_DLEN		0x0008 /*!< BSC Master Data Length */
#define BSC_A 			0x000c /*!< BSC Master Slave Address */
#define BSC_FIFO		0x0010 /*!< BSC Master Data FIFO */
#define BSC_DIV			0x0014 /*!< BSC Master Clock Divider */
#define BSC_DEL			0x0018 /*!< BSC Master Data Delay */
#define BSC_CLKT		0x001c /*!< BSC Master Clock Stretch Timeout */


/* Register masks for BSC_C */
#define BSC_C_I2CEN 		0x00008000 /*!< I2C Enable, 0 = disabled, 1 = enabled */
#define BSC_C_INTR 		0x00000400 /*!< Interrupt on RX */
#define BSC_C_INTT 		0x00000200 /*!< Interrupt on TX */
#define BSC_C_INTD 		0x00000100 /*!< Interrupt on DONE */
#define BSC_C_ST 		0x00000080 /*!< Start transfer, 1 = Start a new transfer */
#define BSC_C_CLEAR_1 		0x00000020 /*!< Clear FIFO Clear */
#define BSC_C_CLEAR_2 		0x00000010 /*!< Clear FIFO Clear */
#define BSC_C_READ 		0x00000001 /*!<	Read transfer */

/* Register masks for BSC_S */
#define BSC_S_CLKT 		0x00000200 /*!< Clock stretch timeout */
#define BSC_S_ERR 		0x00000100 /*!< ACK error */
#define BSC_S_RXF 		0x00000080 /*!< RXF FIFO full, 0 = FIFO is not full, 1 = FIFO is full */
#define BSC_S_TXE 		0x00000040 /*!< TXE FIFO full, 0 = FIFO is not full, 1 = FIFO is full */
#define BSC_S_RXD 		0x00000020 /*!< RXD FIFO contains data */
#define BSC_S_TXD 		0x00000010 /*!< TXD FIFO can accept data */
#define BSC_S_RXR 		0x00000008 /*!< RXR FIFO needs reading (full) */
#define BSC_S_TXW 		0x00000004 /*!< TXW FIFO needs writing (full) */
#define BSC_S_DONE 		0x00000002 /*!< Transfer DONE */
#define BSC_S_TA 		0x00000001 /*!< Transfer Active */

#define BSC_FIFO_SIZE   	16 /*!< BSC FIFO size */



typedef enum
{
    I2C_REASON_OK   	     = 0x00,      /*!< Success */
    I2C_REASON_ERROR_NACK    = 0x01,      /*!< Received a NACK */
    I2C_REASON_ERROR_CLKT    = 0x02,      /*!< Received Clock Stretch Timeout */
    I2C_REASON_ERROR_DATA    = 0x04       /*!< Not all data is sent / received */
} I2CReasonCodes;





/** @brief BSC1 control register */
#define CTRL_BSC1 (volatile uint32_t *)(MMIO_BSC1_PHYSICAL + 0x0)
/** @brief BSC1 status register */
#define STATUS_BSC1 (volatile uint32_t *)(MMIO_BSC1_PHYSICAL + 0x4)
/** @brief BSC1 status register */
#define DLEN_BSC1 (volatile uint32_t *)(MMIO_BSC1_PHYSICAL + 0x8)
/** @brief BSC1 slave address */
#define SLAVE_BSC1 (volatile uint32_t *)(MMIO_BSC1_PHYSICAL + 0xc)
/** @brief BSC1 slave address */
#define FIFO_BSC1 (volatile uint32_t *)(MMIO_BSC1_PHYSICAL + 0x10)

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
