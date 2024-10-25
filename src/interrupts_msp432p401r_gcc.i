# 1 "interrupts_msp432p401r_gcc.c"
# 1 "/home/maximiliano/EmbeddedSystems/IntroductionEmbedded/C1M2-Martinez/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "interrupts_msp432p401r_gcc.c"
# 37 "interrupts_msp432p401r_gcc.c"
# 1 "/usr/lib/gcc/arm-none-eabi/10.3.1/include/stdint.h" 1 3 4
# 34 "/usr/lib/gcc/arm-none-eabi/10.3.1/include/stdint.h" 3 4

# 34 "/usr/lib/gcc/arm-none-eabi/10.3.1/include/stdint.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 38 "interrupts_msp432p401r_gcc.c" 2



# 40 "interrupts_msp432p401r_gcc.c"
extern int main(void);


extern void SystemInit(void);
# 59 "interrupts_msp432p401r_gcc.c"
extern uint32_t __data_load__;
extern uint32_t __data_start__;
extern uint32_t __data_end__;





__attribute__((interrupt,section(".text:Reset_Handler")))
void Reset_Handler(void)
{

     uint32_t *pui32Src, *pui32Dest;

     pui32Src = &__data_load__;
     for(pui32Dest = &__data_start__; pui32Dest < &__data_end__; )
     {
         *pui32Dest++ = *pui32Src++;
     }


     __asm("    ldr     r0, =__bss_start__\n"
           "    ldr     r1, =__bss_end__\n"
           "    mov     r2, #0\n"
           "    .thumb_func\n"
           "zero_loop:\n"
           "    cmp     r0, r1\n"
           "    it      lt\n"
           "    strlt   r2, [r0], #4\n"
           "    blt     zero_loop");


  SystemInit();


     main();
}




__attribute__((interrupt,section(".text:NMI_Handler")))
void NMI_Handler(void)
{

    while(1)
    {
    }
}





__attribute__((interrupt,section(".text:HardFault_Handler")))
void HardFault_Handler(void)
{

    while(1)
    {
    }
}

__attribute__((interrupt,section(".text:Default_Handler")))
void Default_Handler(void)
{

 while(1)
 {
 }
}

__attribute__((weak,alias("Default_Handler")))
void MemManage_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void BusFault_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void UsageFault_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void SVC_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void DebugMon_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void PendSV_Handler(void);


__attribute__((weak,alias("Default_Handler")))
void SysTick_Handler(void);
__attribute__((weak,alias("Default_Handler")))
void PSS_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void CS_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PCM_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void WDT_A_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void FPU_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void FLCTL_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void COMP_E0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void COMP_E1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA0_0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA0_N_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA1_0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA1_N_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA2_0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA2_N_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA3_0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void TA3_N_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIA0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIA1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIA2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIA3_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIB0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIB1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIB2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void EUSCIB3_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void ADC14_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void T32_INT1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void T32_INT2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void T32_INTC_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void AES256_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void RTC_C_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_ERR_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_INT3_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_INT2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_INT1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void DMA_INT0_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT1_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT2_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT3_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT4_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT5_IRQHandler(void);
__attribute__((weak,alias("Default_Handler")))
void PORT6_IRQHandler(void);
