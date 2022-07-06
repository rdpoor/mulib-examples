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
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L053xx -c -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/r/Projects/mulib-examples/test_stdbsp/nucleo_lo53r8/../common" -I"C:/Users/r/Projects/mulib-examples/test_stdbsp/nucleo_lo53r8/../../mu_platform/common" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core

clean-Core:
	-$(RM) ./Core/test_stdbsp.d ./Core/test_stdbsp.o ./Core/test_stdbsp.su

.PHONY: clean-Core

