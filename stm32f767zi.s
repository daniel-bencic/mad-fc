	.syntax unified

/* Create vector table */
	.section .vector_table
	.long __stack_init		/* 0x00000000 Initial value of SP register */
	.long Reset_handler		/* 0x00000004 */
	.long NMI_handler		/* 0x00000008 */
	.long HardFault_handler		/* 0x0000000C */
	.long MemManage_handler		/* 0x00000010 */
	.long BusFault_handler		/* 0x00000014 */
	.long UsageFault_handler	/* 0x00000018 */
	.long 0				/* 0x0000001C */
	.long 0				/* 0x00000020 */
	.long 0				/* 0x00000024 */
	.long 0				/* 0x00000028 */
	.long SVCall_handler		/* 0x0000002C */
	.long 0				/* 0x00000030 */
	.long 0				/* 0x00000034 */
	.long PenSV_handler		/* 0x00000038 */
	.long SysTick_handler		/* 0x0000003C */
	/* ISRs */
	.long Default_handler		/* 0x00000040 */

	.type Reset_handler, %function
	.globl Reset_handler
Reset_handler:
	LDR R1, =__etext
	LDR R2, =__data_start__
	LDR R3, =__data_end__
/* Copy .data from FLASH to SRAM */
loop0:	
	CMP R2, R3
	ITTT LT
	LDRLT R0, [R1], #4
	STRLT R0, [R2], #4
	BLT loop0

	LDR R2, =__bss_start__
	LDR R3, =__bss_end__
/* Zero .bss section */
	MOV R0, 0
loop1:
	CMP R2, R3
	ITT LT
	STRLT R0, [R2], #4
	BLT loop1

	BL main

	.align 1
	.type Default_handler, %function
	.weak Default_handler
Default_handler:
	b .

	.macro def_handler name
	.weak \name
	.set \name, Default_handler
	.endm

	def_handler NMI_handler
	def_handler HardFault_handler
	def_handler MemManage_handler
	def_handler BusFault_handler
	def_handler UsageFault_handler
	def_handler SVCall_handler
	def_handler PenSV_handler
	def_handler SysTick_handler
