################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_assert.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_burtc.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_cmu.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_core.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_emu.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_eusart.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_gpio.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_ldma.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_rtcc.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_system.c \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_usart.c 

OBJS += \
./gecko_sdk_4.0.2/platform/emlib/src/em_assert.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_burtc.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_cmu.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_core.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_emu.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_eusart.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_gpio.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_ldma.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_rtcc.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_system.o \
./gecko_sdk_4.0.2/platform/emlib/src/em_usart.o 

C_DEPS += \
./gecko_sdk_4.0.2/platform/emlib/src/em_assert.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_burtc.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_cmu.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_core.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_emu.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_eusart.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_gpio.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_ldma.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_rtcc.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_system.d \
./gecko_sdk_4.0.2/platform/emlib/src/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.2/platform/emlib/src/em_assert.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_assert.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_assert.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_burtc.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_burtc.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_burtc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_cmu.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_cmu.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_cmu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_core.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_core.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_core.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_emu.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_emu.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_emu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_eusart.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_eusart.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_eusart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_gpio.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_gpio.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_ldma.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_ldma.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_ldma.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_rtcc.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_rtcc.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_rtcc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_system.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_system.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_system.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/emlib/src/em_usart.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_usart.c gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -IC:/Users/r/Projects/mulib-examples/platform -IC:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emlib/src/em_usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

