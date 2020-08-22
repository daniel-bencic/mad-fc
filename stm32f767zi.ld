MEMORY
{
	FLASH(rx) : ORIGIN = 0x08000000, LENGTH = 2M
	SRAM(rwx) : ORIGIN = 0x20000000, LENGTH = 512K
}

ENTRY(Reset_handler)

SECTIONS
{
	.text :
	{
		. = ALIGN(4);
		*(.vector_table)
		*(.text)
		*(.rodata)
	} >FLASH

	__etext = ALIGN(4);

	.data : AT ( __etext )
	{
		. = ALIGN(4);
		__data_start__ = .;

		*(.data)

		. = ALIGN(4);
		__data_end__ = .;
	} >SRAM

	.bss :
	{
		. = ALIGN(4);
		__bss_start__ = .;
		
		*(.bss)
		*(COMMON)
		
		. = ALIGN(4);
		__bss_end__ = .;
	} >SRAM

	__stack_init = ORIGIN(SRAM) + LENGTH(SRAM) - 8;
}
