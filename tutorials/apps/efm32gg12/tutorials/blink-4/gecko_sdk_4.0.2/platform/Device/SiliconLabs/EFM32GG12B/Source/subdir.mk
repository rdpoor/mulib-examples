################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/Device/SiliconLabs/EFM32GG12B/Source/system_efm32gg12b.c 

OBJS += \
./gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/system_efm32gg12b.o 

C_DEPS += \
./gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/system_efm32gg12b.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/system_efm32gg12b.o: C:/Users/r/SimplicityStudio/SDKs/gecko_sdk/platform/Device/SiliconLabs/EFM32GG12B/Source/system_efm32gg12b.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG12B810F1024GM64=1' '-DSL_BOARD_NAME="BRD2207A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\config" -I"C:\Users\r\Projects\mulib-examples\tutorials\mulib\core" -I"C:\Users\r\Projects\mulib-examples\tutorials" -I"C:\Users\r\Projects\mulib-examples\tutorials\platforms\efm32gg12" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\autogen" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG12B/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/system_efm32gg12b.d" -MT"gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/system_efm32gg12b.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


