################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/Projects/mulib-examples/tutorials/blink_4.c \
../main.c \
C:/Users/r/Projects/mulib-examples/tutorials/morse_blinker.c \
C:/Users/r/Projects/mulib-examples/tutorials/morse_msg.c 

OBJS += \
./blink_4.o \
./main.o \
./morse_blinker.o \
./morse_msg.o 

C_DEPS += \
./blink_4.d \
./main.d \
./morse_blinker.d \
./morse_msg.d 


# Each subdirectory must supply rules for building sources it contributes
blink_4.o: C:/Users/r/Projects/mulib-examples/tutorials/blink_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG12B810F1024GM64=1' '-DSL_BOARD_NAME="BRD2207A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\config" -I"C:\Users\r\Projects\mulib-examples\tutorials\mulib\core" -I"C:\Users\r\Projects\mulib-examples\tutorials" -I"C:\Users\r\Projects\mulib-examples\tutorials\platforms\efm32gg12" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\autogen" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG12B/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"blink_4.d" -MT"blink_4.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG12B810F1024GM64=1' '-DSL_BOARD_NAME="BRD2207A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\config" -I"C:\Users\r\Projects\mulib-examples\tutorials\mulib\core" -I"C:\Users\r\Projects\mulib-examples\tutorials" -I"C:\Users\r\Projects\mulib-examples\tutorials\platforms\efm32gg12" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\autogen" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG12B/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

morse_blinker.o: C:/Users/r/Projects/mulib-examples/tutorials/morse_blinker.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG12B810F1024GM64=1' '-DSL_BOARD_NAME="BRD2207A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\config" -I"C:\Users\r\Projects\mulib-examples\tutorials\mulib\core" -I"C:\Users\r\Projects\mulib-examples\tutorials" -I"C:\Users\r\Projects\mulib-examples\tutorials\platforms\efm32gg12" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\autogen" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG12B/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"morse_blinker.d" -MT"morse_blinker.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

morse_msg.o: C:/Users/r/Projects/mulib-examples/tutorials/morse_msg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG12B810F1024GM64=1' '-DSL_BOARD_NAME="BRD2207A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\config" -I"C:\Users\r\Projects\mulib-examples\tutorials\mulib\core" -I"C:\Users\r\Projects\mulib-examples\tutorials" -I"C:\Users\r\Projects\mulib-examples\tutorials\platforms\efm32gg12" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials\autogen" -I"C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG12B/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/r/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"morse_msg.d" -MT"morse_msg.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


