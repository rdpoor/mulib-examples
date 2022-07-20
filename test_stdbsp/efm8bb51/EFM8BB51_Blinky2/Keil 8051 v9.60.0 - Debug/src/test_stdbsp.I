
#line 1 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /0






















 
 






 
 
 
 
 
  
#line 1 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.h" /0






















 
 





 
 
 
 
 
 
 
 
  
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
 
 
#line 38 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.h" /0
 
  
#line 1 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0




 
 
 
 
 
 
 
 typedef bit bool;
 enum{
 false = 0,
 true = 1,
 };
 
 
#line 19 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /1
 
 
 
 
 
 
 
  
  
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
#line 43 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0
 
 
 
#line 39 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.h" /0
 
 
 
 
 
 
#line 45 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.h" /1
 
 
#line 47 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.h" /0
 
 
 
 
 
 
 


 
 void test_stdbsp_init(void);
 


 
 void test_stdbsp_step(void);
 
 
 
 
 
#line 68 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.h" /1
 
 
#line 70 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.h" /0
 
 
#line 36 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /0
 
 
  
#line 1 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /0






















 
 




 
 
 
 
 
 
 
 
  
#line 1 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0




 
 
 
#line 8 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 45 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0
 
#line 37 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /0
 
  
#line 1 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdint.h" /0




 
 
 
#line 8 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdint.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 38 "C:\Users\r\Projects\mulib-examples\mu_platform\common\mu_stdbsp.h" /0
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
 
 
#line 38 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /0
 
  
#line 1 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0




 
 
 
#line 8 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 45 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdbool.h" /0
 
#line 39 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /0
 
  
#line 1 "C:\SiliconLabs\SimplicityStudio\v5\developer\toolchains\keil_8051\9.60\INC\stddef.h" /0







 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned int size_t;
 
 
 
 
 typedef char wchar_t;
 
 
 
#line 28 "C:\SiliconLabs\SimplicityStudio\v5\developer\toolchains\keil_8051\9.60\INC\stddef.h" /1
 
 
#line 30 "C:\SiliconLabs\SimplicityStudio\v5\developer\toolchains\keil_8051\9.60\INC\stddef.h" /0
 typedef long   ptrdiff_t;    
 
 
 
 
 
#line 40 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /0
 
  
#line 1 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdint.h" /0




 
 
 
#line 8 "C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3//Device/shared/si8051Base\stdint.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 41 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /0
#line 41 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /0
 
 
 
 
 
 
 
 








 
 
 typedef enum { TEST_STDBSP_STATE_INIT, TEST_STDBSP_STATE_LED_HELP, TEST_STDBSP_STATE_LED_TEST, TEST_STDBSP_STATE_BUTTON_HELP, TEST_STDBSP_STATE_BUTTON_TEST, TEST_STDBSP_STATE_TIME_HELP, TEST_STDBSP_STATE_TIME_TEST, TEST_STDBSP_STATE_ERR, } test_stdbsp_state_t;
 
 typedef struct {
 test_stdbsp_state_t state;
 uint32_t time_at;
 
 uint8_t prev_button;
 
#line 67 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /1
 
 
#line 69 "C:\Users\r\Projects\mulib-examples\test_stdbsp\common\test_stdbsp.c" /0
 } test_stdbsp_ctx_t;
 
 
 
 
 static test_stdbsp_ctx_t s_test_stdbsp_ctx;
 
 
 
 
 static void test_putstr(const char *str);
 
 static bool user_typed_space(void);
 
 static void print_uint32(uint32_t n);
 
 static bool time_precedes(uint32_t t1, uint32_t t2);
 
 static uint32_t time_offset(uint32_t t1, int32_t dt);
 
 
 
 
 void test_stdbsp_init(void) {
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_INIT;
 mu_stdbsp_init();
 }
 
 void test_stdbsp_step(void) {
 switch (s_test_stdbsp_ctx.state) {
 case TEST_STDBSP_STATE_INIT: {
 test_putstr("\n##########"
 "\ntest_stdbsp: exercise the mu_stdbsp API");
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_HELP;
 } break;
 
 case TEST_STDBSP_STATE_LED_HELP: {
 test_putstr("\nType 0 to turn off LED, 1 to turn on, 2 to toggle, "
 "<space> to advance to next test.");
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_TEST;
 } break;
 
 case TEST_STDBSP_STATE_LED_TEST: {
 uint8_t ch;
 test_putstr("\ncmd: ");
 if (!mu_stdbsp_serial_rx_byte(&ch)) {
 test_putstr("\nmu_stdbsp_serial_rx_byte() failed -- quitting");
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_ERR;
 } else {
 mu_stdbsp_serial_tx_byte(ch);  
 switch (ch) {
 case '0': {
 mu_stdbsp_led_off();
 } break;
 case '1': {
 mu_stdbsp_led_on();
 } break;
 case '2': {
 mu_stdbsp_led_toggle();
 } break;
 case ' ': {
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_BUTTON_HELP;
 } break;
 default: {
 test_putstr("\nUnrecognized command '");
 mu_stdbsp_serial_tx_byte(ch);
 test_putstr("'");
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_HELP;
 }
 }
 }
 } break;
 
 case TEST_STDBSP_STATE_BUTTON_HELP: {
 test_putstr("\nPress button to turn on LED, release button to turn off, "
 "<space> to advance to next test: ");
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_BUTTON_TEST;
 s_test_stdbsp_ctx.prev_button = false;
 } break;
 
 case TEST_STDBSP_STATE_BUTTON_TEST: {
 if (user_typed_space()) {
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_TIME_HELP;
 } else {
 bool curr_button = mu_stdbsp_button_is_pressed();
 if (curr_button != s_test_stdbsp_ctx.prev_button) {
 if (curr_button) {
 test_putstr("\nButton pressed");
 mu_stdbsp_led_on();
 } else {
 test_putstr("\nButton released");
 mu_stdbsp_led_off();
 }
 s_test_stdbsp_ctx.prev_button = curr_button;
 }
 }
 } break;
 
 case TEST_STDBSP_STATE_TIME_HELP: {
 test_putstr("\nWatch for messages once per second.  "
 "Type <space> to quit: ");
 s_test_stdbsp_ctx.time_at = time_offset(mu_stdbsp_now(), 32768);
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_TIME_TEST;
 } break;
 
 case TEST_STDBSP_STATE_TIME_TEST: {
 uint32_t now = mu_stdbsp_now();
 if (user_typed_space()) {
 s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_INIT;
 } else if (!time_precedes(now, s_test_stdbsp_ctx.time_at)) {
 
 mu_stdbsp_led_toggle();
 mu_stdbsp_serial_tx_byte('\n');
 print_uint32(now);
 s_test_stdbsp_ctx.time_at =
 time_offset(s_test_stdbsp_ctx.time_at, 32768);
 
 }
 } break;
 
 case TEST_STDBSP_STATE_ERR: {
 
 } break;
 
 }  
 }
 
 
 
 
 static void test_putstr(const char *str) {
 while (*str) {
 mu_stdbsp_serial_tx_byte((uint8_t)*str++);
 }
 }
 
 static bool user_typed_space(void) {
 uint8_t ch;
 
 if (!mu_stdbsp_serial_rx_is_ready()) {
 
 return false;
 
 } else if (!mu_stdbsp_serial_rx_byte(&ch)) {
 
 return false;
 
 } else if (ch != ' ') {
 
 return false;
 
 } else {
 
 return true;
 }
 }
 
 static void print_uint32(uint32_t v) {
 uint8_t n_digits = 0;
 uint32_t v2 = 0;
 
 
 
 if (v == 0) {
 
 n_digits = 1;
 }
 
 while (v != 0) {
 v2 *= 10;
 v2 += v % 10;
 v /= 10;
 n_digits += 1;
 }
 
 while (n_digits-- != 0) {
 mu_stdbsp_serial_tx_byte(v2 % 10 + '0');
 v2 /= 10;
 }
 }
 
 
 
 
 
 static bool time_precedes(uint32_t t1, uint32_t t2) {
 return (t1 - t2) > 0x7ffffff;
 }
 
 static uint32_t time_offset(uint32_t t1, int32_t dt) { return t1 + dt; }
