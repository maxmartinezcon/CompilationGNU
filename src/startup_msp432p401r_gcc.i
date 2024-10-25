# 1 "startup_msp432p401r_gcc.c"
# 1 "/home/maximiliano/EmbeddedSystems/IntroductionEmbedded/C1M2-Martinez/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "startup_msp432p401r_gcc.c"
# 37 "startup_msp432p401r_gcc.c"
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
# 38 "startup_msp432p401r_gcc.c" 2



# 40 "startup_msp432p401r_gcc.c"
extern void Reset_Handler(void);
extern void NMI_Handler(void);
extern void HardFault_Handler(void);
extern void MemManage_Handler(void);
extern void BusFault_Handler(void);
extern void UsageFault_Handler(void);
extern void SVC_Handler(void);
extern void DebugMon_Handler(void);
extern void PendSV_Handler(void);


extern void SysTick_Handler(void);
extern void PSS_IRQHandler(void);
extern void CS_IRQHandler(void);
extern void PCM_IRQHandler(void);
extern void WDT_A_IRQHandler(void);
extern void FPU_IRQHandler(void);
extern void FLCTL_IRQHandler(void);
extern void COMP_E0_IRQHandler(void);
extern void COMP_E1_IRQHandler(void);
extern void TA0_0_IRQHandler(void);
extern void TA0_N_IRQHandler(void);
extern void TA1_0_IRQHandler(void);
extern void TA1_N_IRQHandler(void);
extern void TA2_0_IRQHandler(void);
extern void TA2_N_IRQHandler(void);
extern void TA3_0_IRQHandler(void);
extern void TA3_N_IRQHandler(void);
extern void EUSCIA0_IRQHandler(void);
extern void EUSCIA1_IRQHandler(void);
extern void EUSCIA2_IRQHandler(void);
extern void EUSCIA3_IRQHandler(void);
extern void EUSCIB0_IRQHandler(void);
extern void EUSCIB1_IRQHandler(void);
extern void EUSCIB2_IRQHandler(void);
extern void EUSCIB3_IRQHandler(void);
extern void ADC14_IRQHandler(void);
extern void T32_INT1_IRQHandler(void);
extern void T32_INT2_IRQHandler(void);
extern void T32_INTC_IRQHandler(void);
extern void AES256_IRQHandler(void);
extern void RTC_C_IRQHandler(void);
extern void DMA_ERR_IRQHandler(void);
extern void DMA_INT3_IRQHandler(void);
extern void DMA_INT2_IRQHandler(void);
extern void DMA_INT1_IRQHandler(void);
extern void DMA_INT0_IRQHandler(void);
extern void PORT1_IRQHandler(void);
extern void PORT2_IRQHandler(void);
extern void PORT3_IRQHandler(void);
extern void PORT4_IRQHandler(void);
extern void PORT5_IRQHandler(void);
extern void PORT6_IRQHandler(void);




void (* const interruptVectors[])(void) __attribute__ ((section (".intvecs"))) =
{
    (void (*)(void))((uint32_t)0x20004000),

    &Reset_Handler,
    &NMI_Handler,
    &HardFault_Handler,
    &MemManage_Handler,
    &BusFault_Handler,
    &UsageFault_Handler,
    0,
    0,
    0,
    0,
    &SVC_Handler,
    &DebugMon_Handler,
    0,
    &PendSV_Handler,
    &SysTick_Handler,
    &PSS_IRQHandler,
    &CS_IRQHandler,
    &PCM_IRQHandler,
    &WDT_A_IRQHandler,
    &FPU_IRQHandler,
    &FLCTL_IRQHandler,
    &COMP_E0_IRQHandler,
    &COMP_E1_IRQHandler,
    &TA0_0_IRQHandler,
    &TA0_N_IRQHandler,
    &TA1_0_IRQHandler,
    &TA1_N_IRQHandler,
    &TA2_0_IRQHandler,
    &TA2_N_IRQHandler,
    &TA3_0_IRQHandler,
    &TA3_N_IRQHandler,
    &EUSCIA0_IRQHandler,
    &EUSCIA1_IRQHandler,
    &EUSCIA2_IRQHandler,
    &EUSCIA3_IRQHandler,
    &EUSCIB0_IRQHandler,
    &EUSCIB1_IRQHandler,
    &EUSCIB2_IRQHandler,
    &EUSCIB3_IRQHandler,
    &ADC14_IRQHandler,
    &T32_INT1_IRQHandler,
    &T32_INT2_IRQHandler,
    &T32_INTC_IRQHandler,
    &AES256_IRQHandler,
    &RTC_C_IRQHandler,
    &DMA_ERR_IRQHandler,
    &DMA_INT3_IRQHandler,
    &DMA_INT2_IRQHandler,
    &DMA_INT1_IRQHandler,
    &DMA_INT0_IRQHandler,
    &PORT1_IRQHandler,
    &PORT2_IRQHandler,
    &PORT3_IRQHandler,
    &PORT4_IRQHandler,
    &PORT5_IRQHandler,
    &PORT6_IRQHandler,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
};
