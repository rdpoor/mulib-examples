
#line 1 "C:\Users\r\Projects\mulib-examples\mu_platform\efm32gg12\mu_stdbsp.c" /0






















 
 
 
 
 
  
#line 1 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /0






















 
 




 
 
 
 
 
 
 
 
  
#line 1 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0




 
 
 
 
 
 
 
 typedef bit bool;
 enum{
 false = 0,
 true = 1,
 };
 
 
#line 19 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /1
 
 
 
 
 
 
 
  
  
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
#line 43 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0
 
 
 
#line 37 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /0
 
  
#line 1 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdint.h" /0




 
 
 
 
 
 
 
 typedef unsigned char uint8_t;
 typedef unsigned short uint16_t;
 typedef unsigned long uint32_t;
 typedef uint32_t uint64_t[2];
 
 typedef signed char int8_t;
 typedef short int16_t;
 typedef long int32_t;
 typedef int32_t int64_t[2];
 
 
 
#line 24 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdint.h" /1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 50 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdint.h" /0
 
 
#line 38 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /0
 
 
 
 
 
 
#line 44 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /1
 
 
#line 46 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /0
 
 
 
 
 
 
 


 
 void mu_stdbsp_init(void);
 


 
 void mu_stdbsp_led_on(void);


 
 void mu_stdbsp_led_off(void);


 
 void mu_stdbsp_led_toggle(void);
 


 
 bool mu_stdbsp_button_is_pressed(void);
 



 
 bool mu_stdbsp_serial_tx_is_ready(void);
 







 
 bool mu_stbsp_serial_tx_is_idle(void);
 





 
 bool mu_stdbsp_serial_tx_byte(uint8_t ch);
 



 
 bool mu_stdbsp_serial_rx_is_ready(void);
 





 
 bool mu_stdbsp_serial_rx_byte(uint8_t *ch);
 



 
 uint32_t mu_stdbsp_now(void);
 
 
 
 
 
#line 124 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /1
 
 
#line 126 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /0
 
 
#line 28 "C:\Users\r\Projects\mulib-examples\mu_platform\efm32gg12\mu_stdbsp.c" /0
 
 
 
#error *** WARNING C318 IN LINE 30 OF C:\Users\r\Projects\mulib-examples\mu_platform\efm32gg12\mu_stdbsp.c: can't open file 'definitions.h'
  
#line 1 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0




 
 
 
#line 8 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 45 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0
 
#line 31 "C:\Users\r\Projects\mulib-examples\mu_platform\efm32gg12\mu_stdbsp.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void mu_stdbsp_init(void) {
 RTC_Timer32Start();
 mu_stdbsp_led_off();
 }
 
 void mu_stdbsp_led_on(void) { LED_On(); }
 
 void mu_stdbsp_led_off(void) { LED_Off(); }
 
 void mu_stdbsp_led_toggle(void) { LED_Toggle(); }
 
 bool mu_stdbsp_button_is_pressed(void) {
 return SWITCH_Get() == SWITCH_STATE_PRESSED;
 }
 
 bool mu_stdbsp_serial_tx_is_ready(void) {
 return SERCOM2_USART_TransmitterIsReady();
 }
 
 bool mu_stbsp_serial_tx_is_idle(void) {
 return SERCOM2_USART_TransmitComplete();
 }
 
 bool mu_stdbsp_serial_tx_byte(uint8_t ch) {
 SERCOM2_USART_WriteByte(ch);
 return true;
 }
 
 bool mu_stdbsp_serial_rx_is_ready(void) {
 return SERCOM2_USART_ReceiverIsReady();
 }
 
 bool mu_stdbsp_serial_rx_byte(uint8_t *ch) {
 while (!SERCOM2_USART_ReceiverIsReady()) {
 asm("nop");
 }
 *ch = SERCOM2_USART_ReadByte();
 return true;
 }
 
 
 
