/**
 * @file   tic_toc.c
 *
 * @brief  Implementation of tic-toc routines for interacting with ARM timer
 *
 * @date   Sep 26, 2017
 * @author John Zhong <zhenz2@andrew.cmu.edu>
 */

#include <tic_toc.h>

/** @brief ALL MMIO on the Raspberry Pi 2 begin at 0x3F000000 */
#define MMIO_BASE_PHYSICAL 0x3F000000
/** @brief The Timer Load register */
#define TIMER_LOAD_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0XB400)
/** @brief The Timer Value register */
#define TIMER_VAL_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0XB404)
/** @brief The Timer control register */
#define TIMER_CTRL_REG (volatile uint32_t *)(MMIO_BASE_PHYSICAL + 0XB408)



void tic(void) {
    
    // Enable Timer, set the counter 32-bit
    *TIMER_CTRL_REG = 0x82;
    // SET THE TIMER VALUE TO MAX VALUE
    *TIMER_LOAD_REG = 0xffffffff;

  return;
}

uint32_t toc(void) {

    // read the timer value
    uint32_t cur_val = *TIMER_VAL_REG;
    return (uint32_t) (0xffffffff-cur_val);
    
}
