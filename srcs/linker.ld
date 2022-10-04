ENTRY(blink)

MEMORY
{
	FLASH(rx) : ORIGIN = 0x08000000, LENGTH = 512K
	SRAM(wr) : ORIGIN = 0x20000000, LENGTH = 128K
}

SECTIONS
{
	.text :
	{
		*(.isr_vector)
		*(.text)
	}
}
