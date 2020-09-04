#include "stm32f767zi.h"
#include "../drivers/gpio.h"

void __main(void)
{
	gpio_init_port(PORTB);
	
	struct gpio ld1;
	ld1.port = PORTB;
	ld1.pin = 0;

	struct gpio_config c;
	c.mode = GPIO_MODE_OUT;
	c.outtype = GPIO_OTYPE_PP;
	c.speed = GPIO_OSPEED_L;
	c.pull = GPIO_PUPD_N;

	gpio_init_pin(&ld1, &c);

	while(1) {
		gpio_write(&ld1, HIGH);
		for (int i = 0; i < 1000000; i++);
		gpio_write(&ld1, LOW);
		for (int i = 0; i < 1000000; i++);
	}
}
