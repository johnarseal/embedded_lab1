#include <kstdint.h>

/** @brief read the value from the address */ 
extern uint32_t peri_read(volatile uint32_t* paddr);

/** @brief write a value to the address */ 
extern void peri_write(volatile uint32_t* paddr, uint32_t value);


/** @brief Set/clear only the bits in value covered by the mask */
void peri_set_bits(volatile uint32_t* paddr, uint32_t value, uint32_t mask);

/** @brief Set/clear only the bits in value covered by the mask */
uint32_t set_bits(uint32_t v, uint32_t value, uint32_t mask);
