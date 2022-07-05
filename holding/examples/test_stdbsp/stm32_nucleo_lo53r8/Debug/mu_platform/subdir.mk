################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mu_platform/mu_stdbsp.c \
../mu_platform/mu_time.c 

OBJS += \
./mu_platform/mu_stdbsp.o \
./mu_platform/mu_time.o 

C_DEPS += \
./mu_platform/mu_stdbsp.d \
./mu_platform/mu_time.d 


# Each subdirectory must supply rules for building sources it contributes
mu_platform/%.o mu_platform/%.su: ../mu_platform/%.c mu_platform/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L053xx -c -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -I../mu_platform -I../../src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-mu_platform

clean-mu_platform:
	-$(RM) ./mu_platform/mu_stdbsp.d ./mu_platform/mu_stdbsp.o ./mu_platform/mu_stdbsp.su ./mu_platform/mu_time.d ./mu_platform/mu_time.o ./mu_platform/mu_time.su

.PHONY: clean-mu_platform

