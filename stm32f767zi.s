	.syntax unified

/* Create vector table */
	.align 2
	.section .vector_table
	.word __stack_init		/* 0x00000000 Initial value of SP register */
	.word Reset_handler		/* 0x00000004 */
	.word NMI_handler		/* 0x00000008 */
	.word HardFault_handler		/* 0x0000000C */
	.word MemManage_handler		/* 0x00000010 */
	.word BusFault_handler		/* 0x00000014 */
	.word UsageFault_handler	/* 0x00000018 */
	.word 0				/* 0x0000001C */
	.word 0				/* 0x00000020 */
	.word 0				/* 0x00000024 */
	.word 0				/* 0x00000028 */
	.word SVCall_handler		/* 0x0000002C */
	.word 0				/* 0x00000030 */
	.word 0				/* 0x00000034 */
	.word PenSV_handler		/* 0x00000038 */
	.word SysTick_handler		/* 0x0000003C */
	/* IRQs */
	.word WWDG_IRQ_handler			/* 0x00000040 */
	.word PVD_IRQ_handler			/* 0x00000044 */
	.word TAMP_STAMP_IRQ_handler		/* 0x00000048 */
	.word RTC_WKUP_IRQ_handler		/* 0x0000004C */
	.word FLASH_IRQ_handler			/* 0x00000050 */
	.word RCC_IRQ_handler			/* 0x00000054 */
	.word EXTI0_IRQ_handler			/* 0x00000058 */
	.word EXTI1_IRQ_handler			/* 0x0000005C */
	.word EXTI2_IRQ_handler			/* 0x00000060 */
	.word EXTI3_IRQ_handler			/* 0x00000064 */
	.word EXTI4_IRQ_handler			/* 0x00000068 */
	.word DMA1_Stream0_IRQ_handler		/* 0x0000006C */
	.word DMA1_Stream1_IRQ_handler		/* 0x00000070 */
	.word DMA1_Stream2_IRQ_handler		/* 0x00000074 */
	.word DMA1_Stream3_IRQ_handler		/* 0x00000078 */
	.word DMA1_Stream4_IRQ_handler		/* 0x0000007C */
	.word DMA1_Stream5_IRQ_handler		/* 0x00000080 */
	.word DMA1_Stream6_IRQ_handler		/* 0x00000084 */
	.word ADC_IRQ_handler			/* 0x00000088 */
	.word CAN1_TX_IRQ_handler		/* 0x0000008C */
	.word CAN1_RX0_IRQ_handler		/* 0x00000090 */
	.word CAN1_RX1_IRQ_handler		/* 0x00000094 */
	.word CAN1_SCE_IRQ_handler		/* 0x00000098 */
	.word EXTI9_5_IRQ_handler		/* 0x0000009C */
	.word TIM1_BRK_TIM9_IRQ_handler		/* 0x000000A0 */
	.word TIM1_UP_TIM10_IRQ_handler		/* 0x000000A4 */
	.word TIM1_TRG_COM_TIM11_IRQ_handler	/* 0x000000A8 */
	.word TIM1_CC_IRQ_handler		/* 0x000000AC */
	.word TIM2_IRQ_handler			/* 0x000000B0 */
	.word TIM3_IRQ_handler			/* 0x000000B4 */
	.word TIM4_IRQ_handler			/* 0x000000B8 */
	.word I2C1_EV_IRQ_handler		/* 0x000000BC */
	.word I2C1_ER_IRQ_handler		/* 0x000000C0 */
	.word I2C2_EV_IRQ_handler		/* 0x000000C4 */
	.word I2C2_ER_IRQ_handler		/* 0x000000C8 */
	.word SPI1_IRQ_handler			/* 0x000000CC */
	.word SPI2_IRQ_handler			/* 0x000000D0 */
	.word USART1_IRQ_handler		/* 0x000000D4 */
	.word USART2_IRQ_handler		/* 0x000000D8 */
	.word USART3_IRQ_handler		/* 0x000000DC */
	.word EXTI15_10_IRQ_handler		/* 0x000000E0 */
	.word RTC_Alarm_IRQ_handler		/* 0x000000E4 */
	.word OTG_FS_WKUP_IRQ_handler		/* 0x000000E8 */
	.word TIM8_BRK_TIM12_IRQ_handler	/* 0x000000EC */
	.word TIM8_UP_TIM13_IRQ_handler		/* 0x000000F0 */
	.word TIM8_TRG_COM_TIM14_IRQ_handler	/* 0x000000F4 */
	.word TIM8_CC_IRQ_handler		/* 0x000000F8 */
	.word DMA1_Stream7_IRQ_handler		/* 0x000000FC */
	.word FMC_IRQ_handler			/* 0x00000100 */
	.word SDMMC1_IRQ_handler		/* 0x00000104 */
	.word TIM5_IRQ_handler			/* 0x00000108 */
	.word SPI3_IRQ_handler			/* 0x0000010C */
	.word UART4_IRQ_handler			/* 0x00000110 */
	.word UART5_IRQ_handler			/* 0x00000114 */
	.word TIM6_DAC_IRQ_handler		/* 0x00000118 */
	.word TIM7_IRQ_handler			/* 0x0000011C */
	.word DMA2_Stream0_IRQ_handler		/* 0x00000120 */
	.word DMA2_Stream1_IRQ_handler		/* 0x00000124 */
	.word DMA2_Stream2_IRQ_handler		/* 0x00000128 */
	.word DMA2_Stream3_IRQ_handler		/* 0x0000012C */
	.word DMA2_Stream4_IRQ_handler		/* 0x00000130 */
	.word ETH_IRQ_handler			/* 0x00000134 */
	.word ETH_WKUP_IRQ_handler		/* 0x00000138 */
	.word CAN2_TX_IRQ_handler		/* 0x0000013C */
	.word CAN2_RX0_IRQ_handler		/* 0x00000140 */
	.word CAN2_RX1_IRQ_handler		/* 0x00000144 */
	.word CAN2_SCE_IRQ_handler		/* 0x00000148 */
	.word OTG_FS_IRQ_handler		/* 0x0000014C */
	.word DMA2_Stream5_IRQ_handler		/* 0x00000150 */
	.word DMA2_Stream6_IRQ_handler		/* 0x00000154 */
	.word DMA2_Stream7_IRQ_handler		/* 0x00000158 */
	.word USART6_IRQ_handler		/* 0x0000015C */
	.word I2C3_EV_IRQ_handler		/* 0x00000160 */
	.word I2C3_ER_IRQ_handler		/* 0x00000164 */
	.word OTG_HS_EP1_OUT_IRQ_handler	/* 0x00000168 */
	.word OTG_HS_EP1_IN_IRQ_handler		/* 0x0000016C */
	.word OTG_HS_WKUP_IRQ_handler		/* 0x00000170 */
	.word OTG_HS_IRQ_handler		/* 0x00000174 */
	.word DCMI_IRQ_handler			/* 0x00000178 */
	.word CRYP_IRQ_handler			/* 0x0000017C */
	.word HASH_RNG_IRQ_handler		/* 0x00000180 */
	.word FPU_IRQ_handler			/* 0x00000184 */
	.word UART7_IRQ_handler			/* 0x00000188 */
	.word UART8_IRQ_handler			/* 0x0000018C */
	.word SPI4_IRQ_handler			/* 0x00000190 */
	.word SPI5_IRQ_handler			/* 0x00000194 */
	.word SPI6_IRQ_handler			/* 0x00000198 */
	.word SAI1_IRQ_handler			/* 0x0000019C */
	.word LCD_TFT_IRQ_handler		/* 0x000001A0 */
	.word LCD_TFT_ERR_IRQ_handler		/* 0x000001A4 */
	.word DMA2D_IRQ_handler			/* 0x000001A8 */
	.word SAI2_IRQ_handler			/* 0x000001AC */
	.word QuadSPI_IRQ_handler		/* 0x000001B0 */
	.word LP_Timer1_IRQ_handler		/* 0x000001B4 */
	.word HDMI_CEC_IRQ_handler		/* 0x000001B8 */
	.word I2C4_EV_IRQ_handler		/* 0x000001BC */
	.word I2C4_ER_IRQ_handler		/* 0x000001C0 */
	.word SPDIFRX_IRQ_handler		/* 0x000001C4 */
	.word DSIHOST_IRQ_handler		/* 0x000001C8 */
	.word DFSDM1_FLT0_IRQ_handler		/* 0x000001CC */
	.word DFSDM1_FLT1_IRQ_handler		/* 0x000001D0 */
	.word DFSDM1_FLT2_IRQ_handler		/* 0x000001D4 */
	.word DFSDM1_FLT3_IRQ_handler		/* 0x000001D8 */
	.word SDMMC2_IRQ_handler		/* 0x000001DC */
	.word CAN3_TX_IRQ_handler		/* 0x000001E0 */
	.word CAN3_RX0_IRQ_handler		/* 0x000001E4 */
	.word CAN3_RX1_IRQ_handler		/* 0x000001E8 */
	.word CAN3_SCE_IRQ_handler		/* 0x000001EC */
	.word JPEG_IRQ_handler			/* 0x000001F0 */
	.word MDIOS_IRQ_handler			/* 0x000001F4 */

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
