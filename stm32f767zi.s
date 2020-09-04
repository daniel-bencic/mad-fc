	.syntax unified

/* Create vector table */
	.align 2
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
	/* IRQs */
	.long WWDG_IRQ_handler			/* 0x00000040 */
	.long PVD_IRQ_handler			/* 0x00000044 */
	.long TAMP_STAMP_IRQ_handler		/* 0x00000048 */
	.long RTC_WKUP_IRQ_handler		/* 0x0000004C */
	.long FLASH_IRQ_handler			/* 0x00000050 */
	.long RCC_IRQ_handler			/* 0x00000054 */
	.long EXTI0_IRQ_handler			/* 0x00000058 */
	.long EXTI1_IRQ_handler			/* 0x0000005C */
	.long EXTI2_IRQ_handler			/* 0x00000060 */
	.long EXTI3_IRQ_handler			/* 0x00000064 */
	.long EXTI4_IRQ_handler			/* 0x00000068 */
	.long DMA1_Stream0_IRQ_handler		/* 0x0000006C */
	.long DMA1_Stream1_IRQ_handler		/* 0x00000070 */
	.long DMA1_Stream2_IRQ_handler		/* 0x00000074 */
	.long DMA1_Stream3_IRQ_handler		/* 0x00000078 */
	.long DMA1_Stream4_IRQ_handler		/* 0x0000007C */
	.long DMA1_Stream5_IRQ_handler		/* 0x00000080 */
	.long DMA1_Stream6_IRQ_handler		/* 0x00000084 */
	.long ADC_IRQ_handler			/* 0x00000088 */
	.long CAN1_TX_IRQ_handler		/* 0x0000008C */
	.long CAN1_RX0_IRQ_handler		/* 0x00000090 */
	.long CAN1_RX1_IRQ_handler		/* 0x00000094 */
	.long CAN1_SCE_IRQ_handler		/* 0x00000098 */
	.long EXTI9_5_IRQ_handler		/* 0x0000009C */
	.long TIM1_BRK_TIM9_IRQ_handler		/* 0x000000A0 */
	.long TIM1_UP_TIM10_IRQ_handler		/* 0x000000A4 */
	.long TIM1_TRG_COM_TIM11_IRQ_handler	/* 0x000000A8 */
	.long TIM1_CC_IRQ_handler		/* 0x000000AC */
	.long TIM2_IRQ_handler			/* 0x000000B0 */
	.long TIM3_IRQ_handler			/* 0x000000B4 */
	.long TIM4_IRQ_handler			/* 0x000000B8 */
	.long I2C1_EV_IRQ_handler		/* 0x000000BC */
	.long I2C1_ER_IRQ_handler		/* 0x000000C0 */
	.long I2C2_EV_IRQ_handler		/* 0x000000C4 */
	.long I2C2_ER_IRQ_handler		/* 0x000000C8 */
	.long SPI1_IRQ_handler			/* 0x000000CC */
	.long SPI2_IRQ_handler			/* 0x000000D0 */
	.long USART1_IRQ_handler		/* 0x000000D4 */
	.long USART2_IRQ_handler		/* 0x000000D8 */
	.long USART3_IRQ_handler		/* 0x000000DC */
	.long EXTI15_10_IRQ_handler		/* 0x000000E0 */
	.long RTC_Alarm_IRQ_handler		/* 0x000000E4 */
	.long OTG_FS_WKUP_IRQ_handler		/* 0x000000E8 */
	.long TIM8_BRK_TIM12_IRQ_handler	/* 0x000000EC */
	.long TIM8_UP_TIM13_IRQ_handler		/* 0x000000F0 */
	.long TIM8_TRG_COM_TIM14_IRQ_handler	/* 0x000000F4 */
	.long TIM8_CC_IRQ_handler		/* 0x000000F8 */
	.long DMA1_Stream7_IRQ_handler		/* 0x000000FC */
	.long FMC_IRQ_handler			/* 0x00000100 */
	.long SDMMC1_IRQ_handler		/* 0x00000104 */
	.long TIM5_IRQ_handler			/* 0x00000108 */
	.long SPI3_IRQ_handler			/* 0x0000010C */
	.long UART4_IRQ_handler			/* 0x00000110 */
	.long UART5_IRQ_handler			/* 0x00000114 */
	.long TIM6_DAC_IRQ_handler		/* 0x00000118 */
	.long TIM7_IRQ_handler			/* 0x0000011C */
	.long DMA2_Stream0_IRQ_handler		/* 0x00000120 */
	.long DMA2_Stream1_IRQ_handler		/* 0x00000124 */
	.long DMA2_Stream2_IRQ_handler		/* 0x00000128 */
	.long DMA2_Stream3_IRQ_handler		/* 0x0000012C */
	.long DMA2_Stream4_IRQ_handler		/* 0x00000130 */
	.long ETH_IRQ_handler			/* 0x00000134 */
	.long ETH_WKUP_IRQ_handler		/* 0x00000138 */
	.long CAN2_TX_IRQ_handler		/* 0x0000013C */
	.long CAN2_RX0_IRQ_handler		/* 0x00000140 */
	.long CAN2_RX1_IRQ_handler		/* 0x00000144 */
	.long CAN2_SCE_IRQ_handler		/* 0x00000148 */
	.long OTG_FS_IRQ_handler		/* 0x0000014C */
	.long DMA2_Stream5_IRQ_handler		/* 0x00000150 */
	.long DMA2_Stream6_IRQ_handler		/* 0x00000154 */
	.long DMA2_Stream7_IRQ_handler		/* 0x00000158 */
	.long USART6_IRQ_handler		/* 0x0000015C */
	.long I2C3_EV_IRQ_handler		/* 0x00000160 */
	.long I2C3_ER_IRQ_handler		/* 0x00000164 */
	.long OTG_HS_EP1_OUT_IRQ_handler	/* 0x00000168 */
	.long OTG_HS_EP1_IN_IRQ_handler		/* 0x0000016C */
	.long OTG_HS_WKUP_IRQ_handler		/* 0x00000170 */
	.long OTG_HS_IRQ_handler		/* 0x00000174 */
	.long DCMI_IRQ_handler			/* 0x00000178 */
	.long CRYP_IRQ_handler			/* 0x0000017C */
	.long HASH_RNG_IRQ_handler		/* 0x00000180 */
	.long FPU_IRQ_handler			/* 0x00000184 */
	.long UART7_IRQ_handler			/* 0x00000188 */
	.long UART8_IRQ_handler			/* 0x0000018C */
	.long SPI4_IRQ_handler			/* 0x00000190 */
	.long SPI5_IRQ_handler			/* 0x00000194 */
	.long SPI6_IRQ_handler			/* 0x00000198 */
	.long SAI1_IRQ_handler			/* 0x0000019C */
	.long LCD_TFT_IRQ_handler		/* 0x000001A0 */
	.long LCD_TFT_ERR_IRQ_handler		/* 0x000001A4 */
	.long DMA2D_IRQ_handler			/* 0x000001A8 */
	.long SAI2_IRQ_handler			/* 0x000001AC */
	.long QuadSPI_IRQ_handler		/* 0x000001B0 */
	.long LP_Timer1_IRQ_handler		/* 0x000001B4 */
	.long HDMI_CEC_IRQ_handler		/* 0x000001B8 */
	.long I2C4_EV_IRQ_handler		/* 0x000001BC */
	.long I2C4_ER_IRQ_handler		/* 0x000001C0 */
	.long SPDIFRX_IRQ_handler		/* 0x000001C4 */
	.long DSIHOST_IRQ_handler		/* 0x000001C8 */
	.long DFSDM1_FLT0_IRQ_handler		/* 0x000001CC */
	.long DFSDM1_FLT1_IRQ_handler		/* 0x000001D0 */
	.long DFSDM1_FLT2_IRQ_handler		/* 0x000001D4 */
	.long DFSDM1_FLT3_IRQ_handler		/* 0x000001D8 */
	.long SDMMC2_IRQ_handler		/* 0x000001DC */
	.long CAN3_TX_IRQ_handler		/* 0x000001E0 */
	.long CAN3_RX0_IRQ_handler		/* 0x000001E4 */
	.long CAN3_RX1_IRQ_handler		/* 0x000001E8 */
	.long CAN3_SCE_IRQ_handler		/* 0x000001EC */
	.long JPEG_IRQ_handler			/* 0x000001F0 */
	.long MDIOS_IRQ_handler			/* 0x000001F4 */

	.text
	.align 1
	.type Reset_handler, %function
	.globl Reset_handler
Reset_handler:
/* Copy .data from FLASH to SRAM */
	LDR R1, =__etext
	LDR R2, =__data_start__
	LDR R3, =__data_end__
loop0:	
	CMP R2, R3
	ITTT LT
	LDRLT R0, [R1], #4
	STRLT R0, [R2], #4
	BLT loop0

/* Zero .bss section */
	LDR R2, =__bss_start__
	LDR R3, =__bss_end__
	MOV R0, 0
loop1:
	CMP R2, R3
	ITT LT
	STRLT R0, [R2], #4
	BLT loop1

	BL __main

	.align 1
	.type Default_handler, %function
	.weak Default_handler
Default_handler:
	B .

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
	def_handler WWDG_IRQ_handler
	def_handler PVD_IRQ_handler
	def_handler TAMP_STAMP_IRQ_handler
	def_handler RTC_WKUP_IRQ_handler
	def_handler FLASH_IRQ_handler
	def_handler RCC_IRQ_handler
	def_handler EXTI0_IRQ_handler
	def_handler EXTI1_IRQ_handler
	def_handler EXTI2_IRQ_handler
	def_handler EXTI3_IRQ_handler
	def_handler EXTI4_IRQ_handler
	def_handler DMA1_Stream0_IRQ_handler
	def_handler DMA1_Stream1_IRQ_handler
	def_handler DMA1_Stream2_IRQ_handler
	def_handler DMA1_Stream3_IRQ_handler
	def_handler DMA1_Stream4_IRQ_handler
	def_handler DMA1_Stream5_IRQ_handler
	def_handler DMA1_Stream6_IRQ_handler
	def_handler ADC_IRQ_handler
	def_handler CAN1_TX_IRQ_handler
	def_handler CAN1_RX0_IRQ_handler
	def_handler CAN1_RX1_IRQ_handler
	def_handler CAN1_SCE_IRQ_handler
	def_handler EXTI9_5_IRQ_handler
	def_handler TIM1_BRK_TIM9_IRQ_handler
	def_handler TIM1_UP_TIM10_IRQ_handler
	def_handler TIM1_TRG_COM_TIM11_IRQ_handler
	def_handler TIM1_CC_IRQ_handler
	def_handler TIM2_IRQ_handler
	def_handler TIM3_IRQ_handler
	def_handler TIM4_IRQ_handler
	def_handler I2C1_EV_IRQ_handler
	def_handler I2C1_ER_IRQ_handler
	def_handler I2C2_EV_IRQ_handler
	def_handler I2C2_ER_IRQ_handler
	def_handler SPI1_IRQ_handler
	def_handler SPI2_IRQ_handler
	def_handler USART1_IRQ_handler
	def_handler USART2_IRQ_handler
	def_handler USART3_IRQ_handler
	def_handler EXTI15_10_IRQ_handler
	def_handler RTC_Alarm_IRQ_handler
	def_handler OTG_FS_WKUP_IRQ_handler
	def_handler TIM8_BRK_TIM12_IRQ_handler
	def_handler TIM8_UP_TIM13_IRQ_handler
	def_handler TIM8_TRG_COM_TIM14_IRQ_handler
	def_handler TIM8_CC_IRQ_handler
	def_handler DMA1_Stream7_IRQ_handler
	def_handler FMC_IRQ_handler
	def_handler SDMMC1_IRQ_handler
	def_handler TIM5_IRQ_handler
	def_handler SPI3_IRQ_handler
	def_handler UART4_IRQ_handler
	def_handler UART5_IRQ_handler
	def_handler TIM6_DAC_IRQ_handler
	def_handler TIM7_IRQ_handler
	def_handler DMA2_Stream0_IRQ_handler
	def_handler DMA2_Stream1_IRQ_handler
	def_handler DMA2_Stream2_IRQ_handler
	def_handler DMA2_Stream3_IRQ_handler
	def_handler DMA2_Stream4_IRQ_handler
	def_handler ETH_IRQ_handler
	def_handler ETH_WKUP_IRQ_handler
	def_handler CAN2_TX_IRQ_handler
	def_handler CAN2_RX0_IRQ_handler
	def_handler CAN2_RX1_IRQ_handler
	def_handler CAN2_SCE_IRQ_handler
	def_handler OTG_FS_IRQ_handler
	def_handler DMA2_Stream5_IRQ_handler
	def_handler DMA2_Stream6_IRQ_handler
	def_handler DMA2_Stream7_IRQ_handler
	def_handler USART6_IRQ_handler
	def_handler I2C3_EV_IRQ_handler
	def_handler I2C3_ER_IRQ_handler
	def_handler OTG_HS_EP1_OUT_IRQ_handler
	def_handler OTG_HS_EP1_IN_IRQ_handler
	def_handler OTG_HS_WKUP_IRQ_handler
	def_handler OTG_HS_IRQ_handler
	def_handler DCMI_IRQ_handler
	def_handler CRYP_IRQ_handler
	def_handler HASH_RNG_IRQ_handler
	def_handler FPU_IRQ_handler
	def_handler UART7_IRQ_handler
	def_handler UART8_IRQ_handler
	def_handler SPI4_IRQ_handler
	def_handler SPI5_IRQ_handler
	def_handler SPI6_IRQ_handler
	def_handler SAI1_IRQ_handler
	def_handler LCD_TFT_IRQ_handler
	def_handler LCD_TFT_ERR_IRQ_handler
	def_handler DMA2D_IRQ_handler
	def_handler SAI2_IRQ_handler
	def_handler QuadSPI_IRQ_handler
	def_handler LP_Timer1_IRQ_handler
	def_handler HDMI_CEC_IRQ_handler
	def_handler I2C4_EV_IRQ_handler
	def_handler I2C4_ER_IRQ_handler
	def_handler SPDIFRX_IRQ_handler
	def_handler DSIHOST_IRQ_handler
	def_handler DFSDM1_FLT0_IRQ_handler
	def_handler DFSDM1_FLT1_IRQ_handler
	def_handler DFSDM1_FLT2_IRQ_handler
	def_handler DFSDM1_FLT3_IRQ_handler
	def_handler SDMMC2_IRQ_handler
	def_handler CAN3_TX_IRQ_handler
	def_handler CAN3_RX0_IRQ_handler
	def_handler CAN3_RX1_IRQ_handler
	def_handler CAN3_SCE_IRQ_handler
	def_handler JPEG_IRQ_handler
	def_handler MDIOS_IRQ_handler
