################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emdrv/uartdrv/src/uartdrv.c 

OBJS += \
./gecko_sdk_4.0.2/platform/emdrv/uartdrv/src/uartdrv.o 

C_DEPS += \
./gecko_sdk_4.0.2/platform/emdrv/uartdrv/src/uartdrv.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.2/platform/emdrv/uartdrv/src/uartdrv.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/emdrv/uartdrv/src/uartdrv.c gecko_sdk_4.0.2/platform/emdrv/uartdrv/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\r\Projects\mulib-examples\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\platform" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\config" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen" -I"C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/uartdrv/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/emdrv/uartdrv/src/uartdrv.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


