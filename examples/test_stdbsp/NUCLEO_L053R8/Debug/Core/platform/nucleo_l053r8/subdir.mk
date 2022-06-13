################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/Projects/mulib-examples/platform/nucleo_l053r8/mu_stdbsp.c \
C:/Users/r/Projects/mulib-examples/platform/nucleo_l053r8/mu_time.c 

OBJS += \
./Core/platform/nucleo_l053r8/mu_stdbsp.o \
./Core/platform/nucleo_l053r8/mu_time.o 

C_DEPS += \
./Core/platform/nucleo_l053r8/mu_stdbsp.d \
./Core/platform/nucleo_l053r8/mu_time.d 


# Each subdirectory must supply rules for building sources it contributes
Core/platform/nucleo_l053r8/mu_stdbsp.o: C:/Users/r/Projects/mulib-examples/platform/nucleo_l053r8/mu_stdbsp.c Core/platform/nucleo_l053r8/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L053xx -c -I../Core/Inc -I"C:/Users/r/Projects/mulib-examples/platform" -I"C:/Users/r/Projects/mulib-examples/platform/nucleo_l053r8" -I"C:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src" -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -Werror -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/platform/nucleo_l053r8/mu_time.o: C:/Users/r/Projects/mulib-examples/platform/nucleo_l053r8/mu_time.c Core/platform/nucleo_l053r8/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L053xx -c -I../Core/Inc -I"C:/Users/r/Projects/mulib-examples/platform" -I"C:/Users/r/Projects/mulib-examples/platform/nucleo_l053r8" -I"C:/Users/r/Projects/mulib-examples/examples/test_stdbsp/src" -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -Werror -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-platform-2f-nucleo_l053r8

clean-Core-2f-platform-2f-nucleo_l053r8:
	-$(RM) ./Core/platform/nucleo_l053r8/mu_stdbsp.d ./Core/platform/nucleo_l053r8/mu_stdbsp.o ./Core/platform/nucleo_l053r8/mu_stdbsp.su ./Core/platform/nucleo_l053r8/mu_time.d ./Core/platform/nucleo_l053r8/mu_time.o ./Core/platform/nucleo_l053r8/mu_time.su

.PHONY: clean-Core-2f-platform-2f-nucleo_l053r8

