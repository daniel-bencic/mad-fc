#include "gpio.h"

void
gpio_init_port (enum gpio_port port)
{
	/* Enable clock for GPIO port */
	RCC->AHB1ENR |= (0b1U << (unsigned int)port);
}

void
gpio_init_pin (struct gpio        *io,
	       struct gpio_config *conf)
{
	struct GPIO_r *rg = (struct GPIO_r *)(AHB1_BASE + 0x400U * io->port);

	/* Configure GPIO pin */
	rg->MODER |= (unsigned int)conf->mode << (io->pin * 2U);
	rg->OTYPER |= (unsigned int)conf->outtype << io->pin;
	rg->OSPEEDR |= (unsigned int)conf->speed << (io->pin * 2U);
	rg->PUPDR |= (unsigned int)conf->pull << (io->pin * 2U);
}

void
gpio_write (struct gpio *io,
	    enum signal  sig)
{
	struct GPIO_r *rg = (struct GPIO_r *)(AHB1_BASE + 0x400U * io->port);

	/* Set or reset output bit */
	if (sig == HIGH)
		rg->BSRR = 0b1U << (unsigned int)io->pin;
	else
		rg->BSRR = 0b1U <<  (16U + (unsigned int)io->pin);
}
