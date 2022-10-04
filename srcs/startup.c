void	blink(void);




unsigned int vectors[] __attribute__ ((section (".isr_vector"))) = {
	0x20020000,
	(unsigned int )blink
};
