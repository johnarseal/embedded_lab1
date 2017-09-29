#include <utils.h>
#include <kstdint.h>

uint32_t peri_read(volatile uint32_t* paddr){
	return *paddr;
}

void peri_write(volatile uint32_t* paddr, uint32_t value){
	*paddr = value;
}

void peri_set_bits(volatile uint32_t* paddr, uint32_t value, uint32_t mask)
{
    uint32_t v = peri_read(paddr);
    v = (v & ~mask) | (value & mask);
    peri_write(paddr, v);
}

uint32_t set_bits(uint32_t v, uint32_t value, uint32_t mask)
{
    return (v & ~mask) | (value & mask);
}
