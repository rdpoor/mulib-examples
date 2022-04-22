#ifndef PIN_CONFIG_H
#define PIN_CONFIG_H

// $[ACMP0]
// [ACMP0]$

// $[ACMP1]
// [ACMP1]$

// $[ACMP2]
// [ACMP2]$

// $[ADC0]
// [ADC0]$

// $[ADC1]
// [ADC1]$

// $[BU]
// [BU]$

// $[CAN0]
// [CAN0]$

// $[CAN1]
// [CAN1]$

// $[CMU]
// [CMU]$

// $[DBG]
// [DBG]$

// $[EBI]
// [EBI]$

// $[ETM]
// [ETM]$

// $[GPIO]
// [GPIO]$

// $[I2C0]
// [I2C0]$

// $[I2C1]
// [I2C1]$

// $[IDAC0]
// [IDAC0]$

// $[LCD]
// [LCD]$

// $[LESENSE]
// [LESENSE]$

// $[LETIMER0]
// [LETIMER0]$

// $[LETIMER1]
// [LETIMER1]$

// $[LEUART0]
// [LEUART0]$

// $[LEUART1]
// [LEUART1]$

// $[LFXO]
// [LFXO]$

// $[PCNT0]
// [PCNT0]$

// $[PCNT1]
// [PCNT1]$

// $[PCNT2]
// [PCNT2]$

// $[PDM]
// [PDM]$

// $[PRS.CH0]
// [PRS.CH0]$

// $[PRS.CH1]
// [PRS.CH1]$

// $[PRS.CH2]
// [PRS.CH2]$

// $[PRS.CH3]
// [PRS.CH3]$

// $[PRS.CH4]
// [PRS.CH4]$

// $[PRS.CH5]
// [PRS.CH5]$

// $[PRS.CH6]
// [PRS.CH6]$

// $[PRS.CH7]
// [PRS.CH7]$

// $[PRS.CH8]
// [PRS.CH8]$

// $[PRS.CH9]
// [PRS.CH9]$

// $[PRS.CH10]
// [PRS.CH10]$

// $[PRS.CH11]
// [PRS.CH11]$

// $[PRS.CH12]
// [PRS.CH12]$

// $[PRS.CH13]
// [PRS.CH13]$

// $[PRS.CH14]
// [PRS.CH14]$

// $[PRS.CH15]
// [PRS.CH15]$

// $[QSPI0]
// [QSPI0]$

// $[SDIO]
// [SDIO]$

// $[TIMER0]
// [TIMER0]$

// $[TIMER1]
// [TIMER1]$

// $[TIMER2]
// [TIMER2]$

// $[TIMER3]
// [TIMER3]$

// $[UART0]
// [UART0]$

// $[UART1]
// [UART1]$

// $[USART0]
// USART0 RX on PE6
#define USART0_RX_PORT                           gpioPortE
#define USART0_RX_PIN                            6
#define USART0_RX_LOC                            1

// USART0 TX on PE7
#define USART0_TX_PORT                           gpioPortE
#define USART0_TX_PIN                            7
#define USART0_TX_LOC                            1

// [USART0]$

// $[USART1]
// [USART1]$

// $[USART2]
// [USART2]$

// $[USART3]
// [USART3]$

// $[USART4]
// [USART4]$

// $[USB]
// [USB]$

// $[VDAC0]
// [VDAC0]$

// $[WFXO]
// [WFXO]$

// $[WTIMER0]
// [WTIMER0]$

// $[WTIMER1]
// [WTIMER1]$

// $[CUSTOM_PIN_NAME]
#define LED_R0_PORT                              gpioPortA
#define LED_R0_PIN                               12

#define LED_G0_PORT                              gpioPortA
#define LED_G0_PIN                               13

#define LED_B0_PORT                              gpioPortA
#define LED_B0_PIN                               14

#define PB0_PORT                                 gpioPortD
#define PB0_PIN                                  5

#define LED_R1_PORT                              gpioPortD
#define LED_R1_PIN                               6

#define PB1_PORT                                 gpioPortD
#define PB1_PIN                                  8

#define LED_B1_PORT                              gpioPortE
#define LED_B1_PIN                               12

#define LED_G1_PORT                              gpioPortF
#define LED_G1_PIN                               12

// [CUSTOM_PIN_NAME]$

#endif // PIN_CONFIG_H

