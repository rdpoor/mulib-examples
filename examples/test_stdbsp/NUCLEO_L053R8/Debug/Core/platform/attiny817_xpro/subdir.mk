################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/Projects/mulib-examples/platform/attiny817_xpro/mu_stdbsp.c 

OBJS += \
./Core/platform/attiny817_xpro/mu_stdbsp.o 

C_DEPS += \
./Core/platform/attiny817_xpro/mu_stdbsp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/platform/attiny817_xpro/mu_stdbsp.o: C:/Users/r/Projects/mulib-examples/platform/attiny817_xpro/mu_stdbsp.c Core/platform/attiny817_xpro/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L053xx -c -I../Core/Inc -I"C:/Users/r/Projects/mulib-examples/platform" -I"C:/Users/r/Projects/mulib-examples/platform/nucleo_l053r8" -I"C:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src" -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-platform-2f-attiny817_xpro

clean-Core-2f-platform-2f-attiny817_xpro:
	-$(RM) ./Core/platform/attiny817_xpro/mu_stdbsp.d ./Core/platform/attiny817_xpro/mu_stdbsp.o ./Core/platform/attiny817_xpro/mu_stdbsp.su

.PHONY: clean-Core-2f-platform-2f-attiny817_xpro

