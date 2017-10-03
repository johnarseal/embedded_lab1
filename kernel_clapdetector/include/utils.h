#include <kstdint.h>


/** @brief Set/clear only the bits in value covered by the mask */
void ptr_set_bits(volatile uint32_t* paddr, uint32_t value, uint32_t mask);

/** @brief Set/clear only the bits in value covered by the mask */
uint32_t set_bits(uint32_t v, uint32_t value, uint32_t mask);
