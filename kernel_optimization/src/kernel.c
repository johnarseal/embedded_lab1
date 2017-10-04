/**
 * @file   kernel.c
 *
 * @brief  lab1 optimization part
 *
 * @date   9/20/2016
 * @author Kyuin Lee <kyuinl@andrew.cmu.edu>
 */

#include <arm.h>
#include <kstdint.h>
#include <uart.h>
#include <printk.h>
#include <tic_toc.h>
#include <printk.h>

/** @brief The size of the array*/
#define SIZE 500

/** @brief The argument of the optimized function. Function will do computation on the array */
int array1[SIZE];
/** @brief The argument of the unoptimized function. Function will do computation on the array */
int array2[SIZE];

/** @brief The function to be optimized */
void optimize_me(int array[SIZE]);

/** @brief The function that was not optimized */
void unoptimized(int array[SIZE]);

/** @brief The main function of the kernel. Call two assembly function and compare */
void kernel_main(void)
{
  int i;
  int good = 1;
  uint32_t timerValue;

  uart_init();

 //initialize the two arrays
  for (i=0; i<SIZE; i++) 
  {
    array1[i] = i;
    array2[i] = i;
  }
  
  //Start measuring ticks for optimized function
  printk("+++++++Optimized Function+++++++\n");
  tic();
  optimize_me(array1);
  timerValue = toc();
  printk("%d\n",timerValue);

  //Start measuring ticks for unoptimized function
  printk("+++++++Unoptimized Function+++++++\n");
  tic();
  unoptimized(array2);
  timerValue = toc();
  printk("%d\n",timerValue);

  //checking the correctness.
  for (i=0; i<SIZE; i++) 
  {
    if (array1[i]!=array2[i])
    {   
      //Print failed
      printk("+++++++Test Failed+++++++\n");
      good = 0;
      break;
    }
  }
  if (good) 
  {
    //Print passed
    printk("+++++++Test Passed+++++++\n");
  }
  while (1) 
  {
    delay_cycles(100000);
  };
}
