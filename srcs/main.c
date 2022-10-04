#define GPIOA_ADDR 0x40020000
#define RCC_ADDR 0x40023800

#define RCC_AHB1 *(volatile unsigned int *)(RCC_ADDR + 0x30)
#define GPIOA_ODR *(volatile unsigned int *)(GPIOA_ADDR + 0x14)
#define GPIOA_MODER *(volatile unsigned int *)(GPIOA_ADDR + 0x00)
#define GPIOA_OTYPER *(volatile unsigned int *)(GPIOA_ADDR + 0x04)
#define GPIOA_OSPEEDER *(volatile unsigned int *)(GPIOA_ADDR + 0x08)
#define PIN5_ON (1 << 5)
#define PIN5_OFF 0x0

void	blink(void)
{
	RCC_AHB1 = 0x01; // enable clock for ahb
/*	GPIOA_MODER = (1 << 10);
	GPIOA_OSPEEDER = 0x00;
	GPIOA_OTYPER = (0 << 5); // probably will change


	while(1)
	{
		GPIOA_ODR = PIN5_ON;
		for (int i = 0; i < 5000000; ++i);
		GPIOA_ODR = PIN5_OFF;
		for (int i = 0; i < 5000000; ++i);
	}*/

	while(1);
}
