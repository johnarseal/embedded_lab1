/**
 * @file   timer.h
 *
 * @brief  Routines for interacting with the ARM timer.
 *
 * @date   September 26, 2015
 * @author Kenneth Li <kyli@andrew.cmu.edu>
 */

#ifndef _TIMER_H_
#define _TIMER_H_

#include <kstdint.h>	// to support uint32_t data types

/**
 * @brief Configures the arm timer to start running with the given frequency.
 *
 * @param freq  frequency at which to run the timer
 */
void tic(uint32_t freq);

/**
 * @brief Disables timer IRQs
 */
uint32_t toc(void);

#endif /* _TIC_TOC_H_ */
