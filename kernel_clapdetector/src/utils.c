#include <utils.h>
#include <kstdint.h>

void ptr_set_bits(volatile uint32_t* paddr, uint32_t value, uint32_t mask)
{
    uint32_t v = *paddr;
    v = (v & ~mask) | (value & mask);
    *paddr = v;
}

uint32_t set_bits(uint32_t v, uint32_t value, uint32_t mask)
{
    return (v & ~mask) | (value & mask);
}
