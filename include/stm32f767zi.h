#ifndef STM32F767ZI_H
#define STM32F767ZI_H

#define __R	volatile const
#define __W	volatile
#define __RW	volatile

/* GPIO registers */
struct GPIO_r {
	__RW unsigned int MODER;	/* 0x00 */
	__RW unsigned int OTYPER;	/* 0x04 */
	__RW unsigned int OSPEEDR;	/* 0x08 */
	__RW unsigned int PUPDR;	/* 0x0C */

	__R unsigned int  IDR;		/* 0x10 */
	__RW unsigned int ODR;		/* 0x14 */
	__W unsigned int  BSRR;	/* 0x18 */

	__RW unsigned int LCKR;	/* 0x1C */

	__RW unsigned int AFRL;	/* 0x20 */
	__RW unsigned int AFRH;	/* 0x24 */
};

/* GPIO options */
#define GPIO_MODE_IN		(0b00)
#define GPIO_MODE_OUT		(0b01)
#define GPIO_MODE_AF		(0b10)
#define GPIO_MODE_AN		(0b11)
#define GPIO_OTYPE_PP		(0b0)
#define GPIO_OTYPE_OD		(0b1)
#define GPIO_OSPEED_L		(0b00)
#define GPIO_OSPEED_M		(0b01)
#define GPIO_OSPEED_H		(0b10)
#define GPIO_OSPEED_VH		(0b11)
#define GPIO_PUPD_N		(0b00)
#define GPIO_PUPD_U		(0b01)
#define GPIO_PUPD_D		(0b10)

/* RCC registers */
struct RCC_r {
	__RW unsigned int CR;		/* 0x00 */

	__RW unsigned int PLLCFGR;	/* 0x04 */
	__RW unsigned int CFGR;	/* 0x08 */

	__RW unsigned int CIR;		/* 0x0C */

	__RW unsigned int AHB1RSTR;	/* 0x10 */
	__RW unsigned int AHB2RSTR;	/* 0x14 */
	__RW unsigned int AHB3RSTR;	/* 0x18 */

	unsigned int      FILL0;

	__RW unsigned int APB1RSTR;	/* 0x20 */
	__RW unsigned int APB2RSTR;	/* 0x24 */

	unsigned int      FILL1[2];

	__RW unsigned int AHB1ENR;	/* 0x30 */
	__RW unsigned int AHB2ENR;	/* 0x34 */
	__RW unsigned int AHB3ENR;	/* 0x38 */

	unsigned int      FILL2;

	__RW unsigned int APB1ENR;	/* 0x40 */
	__RW unsigned int APB2ENR;	/* 0x44 */

	unsigned int      FILL3[2];

	__RW unsigned int AHB1LPENR;	/* 0x50 */
	__RW unsigned int AHB2LPENR;	/* 0x54 */
	__RW unsigned int AHB3LPENR;	/* 0x58 */

	unsigned int      FILL4;

	__RW unsigned int APB1LPENR;	/* 0x60 */
	__RW unsigned int APB2LPENR;	/* 0x64 */

	unsigned int      FILL5[2];

	__RW unsigned int BDCR;	/* 0x70 */
	__RW unsigned int CSR;		/* 0x74 */

	unsigned int      FILL6[2];

	__RW unsigned int SSCGR;	/* 0x80 */

	__RW unsigned int PLLI2SCFGR;	/* 0x84 */
	__RW unsigned int PLLSAICFGR;	/* 0x88 */

	__RW unsigned int DCKCFGR1;	/* 0x8C */
	__RW unsigned int DCKCFGR2;	/* 0x90 */
};

/* RCC masks */
#define RCC_GPIOAEN_MSK	1
#define RCC_GPIOBEN_MSK	(1 <<  1)
#define RCC_GPIOCEN_MSK	(1 <<  2)
#define RCC_GPIODEN_MSK	(1 <<  3)
#define RCC_GPIOEEN_MSK	(1 <<  4)
#define RCC_GPIOFEN_MSK	(1 <<  5)
#define RCC_GPIOGEN_MSK	(1 <<  6)
#define RCC_GPIOHEN_MSK	(1 <<  7)
#define RCC_GPIOIEN_MSK	(1 <<  8)
#define RCC_GPIOJEN_MSK	(1 <<  9)
#define RCC_GPIOKEN_MSK	(1 << 10)


/* Bus base addresses */
#define PERIPH_BASE	0x40000000U
#define APB1_BASE	PERIPH_BASE
#define APB2_BASE	(PERIPH_BASE + 0x00010000U)
#define AHB1_BASE	(PERIPH_BASE + 0x00020000U)
#define AHB2_BASE	(PERIPH_BASE + 0x10000000U)
#define AHB3_BASE	(PERIPH_BASE + 0x60000000U)

/* Peripheral base addresses */
#define GPIOA_BASE	AHB1_BASE
#define GPIOB_BASE	(AHB1_BASE + 0x0400U)
#define GPIOC_BASE	(AHB1_BASE + 0x0800U)
#define GPIOD_BASE	(AHB1_BASE + 0x0C00U)
#define GPIOE_BASE	(AHB1_BASE + 0x1000U)
#define GPIOF_BASE	(AHB1_BASE + 0x1400U)
#define GPIOG_BASE	(AHB1_BASE + 0x1800U)
#define GPIOH_BASE	(AHB1_BASE + 0x1C00U)
#define GPIOI_BASE	(AHB1_BASE + 0x2000U)
#define GPIOJ_BASE	(AHB1_BASE + 0x2400U)
#define GPIOK_BASE	(AHB1_BASE + 0x2800U)
#define RCC_BASE	(AHB1_BASE + 0x3800U)

/* Struct pointers */
#define GPIOA		((struct GPIO_r *)GPIOA_BASE)
#define GPIOB		((struct GPIO_r *)GPIOB_BASE)
#define GPIOC		((struct GPIO_r *)GPIOC_BASE)
#define GPIOD		((struct GPIO_r *)GPIOD_BASE)
#define GPIOE		((struct GPIO_r *)GPIOE_BASE)
#define GPIOF		((struct GPIO_r *)GPIOF_BASE)
#define GPIOG		((struct GPIO_r *)GPIOG_BASE)
#define GPIOH		((struct GPIO_r *)GPIOH_BASE)
#define GPIOI		((struct GPIO_r *)GPIOI_BASE)
#define GPIOJ		((struct GPIO_r *)GPIOJ_BASE)
#define GPIOK		((struct GPIO_r *)GPIOK_BASE)
#define RCC		((struct RCC_r *)RCC_BASE)

#endif /* STM32F767ZI_H */
