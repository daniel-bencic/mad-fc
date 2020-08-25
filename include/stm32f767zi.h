#ifndef STM32F767ZI_H
#define STM32F767ZI_H

#define __R	volatile const
#define __W	volatile
#define __RW	volatile

typedef struct {
	__RW unsigned long MODER;	/* 0x00 */
	__RW unsigned long OTYPER;	/* 0x04 */
	__RW unsigned long OSPEEDR;	/* 0x08 */
	__RW unsigned long PUPDR;	/* 0x0C */
	__R unsigned long IDR;		/* 0x10 */
	__RW unsigned long ODR;		/* 0x14 */
	__W unsigned long BSRR;		/* 0x18 */
	__RW unsigned long LCKR;	/* 0x1C */
	__RW unsigned long AFRL;	/* 0x20 */
	__RW unsigned long AFRH;	/* 0x24 */
} __GPIO;

#define MODER0_GPO_MASK	(0x1UL)
#define BS0		(0x1UL)
#define BR0		(0x1UL << 16U)

typedef struct {
	__RW unsigned long CR;		/* 0x00 */
	__RW unsigned long PLLCFGR;	/* 0x04 */
	__RW unsigned long CFGR;	/* 0x08 */
	__RW unsigned long CIR;		/* 0x0C */
	__RW unsigned long AHB1RSTR;	/* 0x10 */
	__RW unsigned long AHB2RSTR;	/* 0x14 */
	__RW unsigned long AHB3RSTR;	/* 0x18 */
	unsigned long FILL0;
	__RW unsigned long APB1RSTR;	/* 0x20 */
	__RW unsigned long APB2RSTR;	/* 0x24 */
	unsigned long FILL1[2];
	__RW unsigned long AHB1ENR;	/* 0x30 */
	__RW unsigned long AHB2ENR;	/* 0x34 */
	__RW unsigned long AHB3ENR;	/* 0x38 */
	unsigned long FILL2;
	__RW unsigned long APB1ENR;	/* 0x40 */
	__RW unsigned long APB2ENR;	/* 0x44 */
	unsigned long FILL3[2];
	__RW unsigned long AHB1LPENR;	/* 0x50 */
	__RW unsigned long AHB2LPENR;	/* 0x54 */
	__RW unsigned long AHB3LPENR;	/* 0x58 */
	unsigned long FILL4;
	__RW unsigned long APB1LPENR;	/* 0x60 */
	__RW unsigned long APB2LPENR;	/* 0x64 */
	unsigned long FILL5[2];
	__RW unsigned long BDCR;	/* 0x70 */
	__RW unsigned long CSR;		/* 0x74 */
	unsigned long FILL6[2];
	__RW unsigned long SSCGR;	/* 0x80 */
	__RW unsigned long PLLI2SCFGR;	/* 0x84 */
	__RW unsigned long PLLSAICFGR;	/* 0x88 */
	__RW unsigned long DCKCFGR1;	/* 0x8C */
	__RW unsigned long DCKCFGR2;	/* 0x90 */
} __RCC;

#define GPIOBEN_MASK	(0x1UL << 1U)

#define PERIPH_BASE	0x40000000UL

#define AHB1_BASE	(PERIPH_BASE + 0x00020000UL)

#define GPIOB_BASE	(AHB1_BASE + 0x00400UL)
#define RCC_BASE	(AHB1_BASE + 0x03800UL)

#define GPIOB		((__GPIO *)GPIOB_BASE)

#define RCC		((__RCC *)RCC_BASE)

#endif
