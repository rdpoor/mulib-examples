################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/Projects/mulib-examples/mu_platform/nucleo_g431rb/mu_stdbsp.c 

OBJS += \
./Core/mu_platform/mu_stdbsp.o 

C_DEPS += \
./Core/mu_platform/mu_stdbsp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/mu_platform/mu_stdbsp.o: C:/Users/r/Projects/mulib-examples/mu_platform/nucleo_g431rb/mu_stdbsp.c Core/mu_platform/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/r/Projects/mulib-examples/test_stdbsp/nucleo_g431rb/../common" -I"C:/Users/r/Projects/mulib-examples/test_stdbsp/nucleo_g431rb/../../mu_platform/common" -I"C:/Users/r/Projects/mulib-examples/test_stdbsp/nucleo_g431rb/../../mu_platform/nucleo_g431rb" -O0 -ffunction-sections -fdata-sections -Wall -fcommon -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-mu_platform

clean-Core-2f-mu_platform:
	-$(RM) ./Core/mu_platform/mu_stdbsp.d ./Core/mu_platform/mu_stdbsp.o ./Core/mu_platform/mu_stdbsp.su

.PHONY: clean-Core-2f-mu_platform

