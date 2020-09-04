#ifndef STM32F767ZI_H
#define STM32F767ZI_H

#define __R	volatile const
#define __W	volatile
#define __RW	volatile

/* GPIO registers */
struct GPIO_r {
	__RW unsigned long MODER;	/* 0x00 */
	__RW unsigned long OTYPER;	/* 0x04 */
	__RW unsigned long OSPEEDR;	/* 0x08 */
	__RW unsigned long PUPDR;	/* 0x0C */

	__R unsigned long  IDR;		/* 0x10 */
	__RW unsigned long ODR;		/* 0x14 */
	__W unsigned long  BSRR;	/* 0x18 */

	__RW unsigned long LCKR;	/* 0x1C */

	__RW unsigned long AFRL;	/* 0x20 */
	__RW unsigned long AFRH;	/* 0x24 */
};

/* GPIO options */
#define GPIO_MODE_IN		(0x00UL)
#define GPIO_MODE_OUT		(0x01UL)
#define GPIO_MODE_AF		(0x10UL)
#define GPIO_MODE_AN		(0x11UL)
#define GPIO_OTYPE_PP		(0x0UL)
#define GPIO_OTYPE_OD		(0x1UL)
#define GPIO_OSPEED_L		(0x00UL)
#define GPIO_OSPEED_M		(0x01UL)
#define GPIO_OSPEED_H		(0x10UL)
#define GPIO_OSPEED_VH		(0x11UL)
#define GPIO_PUPD_N		(0x00UL)
#define GPIO_PUPD_U		(0x01UL)
#define GPIO_PUPD_D		(0x10UL)

/* RCC registers */
struct RCC_r {
	__RW unsigned long CR;		/* 0x00 */

	__RW unsigned long PLLCFGR;	/* 0x04 */
	__RW unsigned long CFGR;	/* 0x08 */

	__RW unsigned long CIR;		/* 0x0C */

	__RW unsigned long AHB1RSTR;	/* 0x10 */
	__RW unsigned long AHB2RSTR;	/* 0x14 */
	__RW unsigned long AHB3RSTR;	/* 0x18 */

	unsigned long      FILL0;

	__RW unsigned long APB1RSTR;	/* 0x20 */
	__RW unsigned long APB2RSTR;	/* 0x24 */

	unsigned long      FILL1[2];

	__RW unsigned long AHB1ENR;	/* 0x30 */
	__RW unsigned long AHB2ENR;	/* 0x34 */
	__RW unsigned long AHB3ENR;	/* 0x38 */

	unsigned long      FILL2;

	__RW unsigned long APB1ENR;	/* 0x40 */
	__RW unsigned long APB2ENR;	/* 0x44 */

	unsigned long      FILL3[2];

	__RW unsigned long AHB1LPENR;	/* 0x50 */
	__RW unsigned long AHB2LPENR;	/* 0x54 */
	__RW unsigned long AHB3LPENR;	/* 0x58 */

	unsigned long      FILL4;

	__RW unsigned long APB1LPENR;	/* 0x60 */
	__RW unsigned long APB2LPENR;	/* 0x64 */

	unsigned long      FILL5[2];

	__RW unsigned long BDCR;	/* 0x70 */
	__RW unsigned long CSR;		/* 0x74 */

	unsigned long      FILL6[2];

	__RW unsigned long SSCGR;	/* 0x80 */

	__RW unsigned long PLLI2SCFGR;	/* 0x84 */
	__RW unsigned long PLLSAICFGR;	/* 0x88 */

	__RW unsigned long DCKCFGR1;	/* 0x8C */
	__RW unsigned long DCKCFGR2;	/* 0x90 */
};


/* ADDRESSES */
#define PERIPH_BASE	0x40000000UL
#define AHB1_BASE	(PERIPH_BASE + 0x00020000UL)
#define RCC_BASE	(AHB1_BASE + 0x03800UL)

#define RCC		((struct RCC_r *)RCC_BASE)

#endif /* STM32F767ZI_H */
