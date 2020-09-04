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
#define GPIO_MODE_IN		(0b00U)
#define GPIO_MODE_OUT		(0b01U)
#define GPIO_MODE_AF		(0b10U)
#define GPIO_MODE_AN		(0b11U)
#define GPIO_OTYPE_PP		(0b0U)
#define GPIO_OTYPE_OD		(0b1U)
#define GPIO_OSPEED_L		(0b00U)
#define GPIO_OSPEED_M		(0b01U)
#define GPIO_OSPEED_H		(0b10U)
#define GPIO_OSPEED_VH		(0b11U)
#define GPIO_PUPD_N		(0b00U)
#define GPIO_PUPD_U		(0b01U)
#define GPIO_PUPD_D		(0b10U)

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


/* ADDRESSES */
#define PERIPH_BASE	0x40000000U
#define AHB1_BASE	(PERIPH_BASE + 0x00020000U)
#define RCC_BASE	(AHB1_BASE + 0x03800U)

#define RCC		((struct RCC_r *)RCC_BASE)

#endif /* STM32F767ZI_H */
