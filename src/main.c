#include "stm32f767zi.h"
#include "../drivers/gpio.h"

void __main(void)
{
	RCC->AHB1ENR |= RCC_GPIOBEN_MSK;

	struct gpio_config c;
	c.mode = GPIO_MODE_OUT;
	c.outtype = GPIO_OTYPE_PP;
	c.speed = GPIO_OSPEED_L;
	c.pull = GPIO_PUPD_N;

	gpio_init_pin(GPIOB, 0, &c);

	while(1) {
		gpio_write(GPIOB, 0, HIGH);
		for (int i = 0; i < 1000000; i++);
		gpio_write(GPIOB, 0, LOW);
		for (int i = 0; i < 1000000; i++);
	}
}
