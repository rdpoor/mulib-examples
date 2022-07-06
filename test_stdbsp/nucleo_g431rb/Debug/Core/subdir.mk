################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/Projects/mulib-examples/test_stdbsp/common/test_stdbsp.c 

OBJS += \
./Core/test_stdbsp.o 

C_DEPS += \
./Core/test_stdbsp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/test_stdbsp.o: C:/Users/r/Projects/mulib-examples/test_stdbsp/common/test_stdbsp.c Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/r/Projects/mulib-examples/test_stdbsp/nucleo_g431rb/../common" -I"C:/Users/r/Projects/mulib-examples/test_stdbsp/nucleo_g431rb/../../mu_platform/common" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core

clean-Core:
	-$(RM) ./Core/test_stdbsp.d ./Core/test_stdbsp.o ./Core/test_stdbsp.su

.PHONY: clean-Core

