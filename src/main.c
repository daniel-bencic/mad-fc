#include "stm32f767zi.h"

void __main(void)
{
	RCC->AHB1ENR |= GPIOBEN_MASK;
	GPIOB->MODER |= MODER0_GPO_MASK;

	while(1) {
		GPIOB->BSRR = BS0;
		for (int i = 0; i < 1000000; i++);
		GPIOB->BSRR = BR0;
		for (int i = 0; i < 1000000; i++);
	}
}
