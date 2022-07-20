################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/r/Projects/mulib-examples/mu_platform/efm32gg12/mu_stdbsp.c 

OBJS += \
./mu_platform/mu_stdbsp.OBJ 


# Each subdirectory must supply rules for building sources it contributes
mu_platform/mu_stdbsp.OBJ: C:/Users/r/Projects/mulib-examples/mu_platform/efm32gg12/mu_stdbsp.c mu_platform/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	C51 "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

mu_platform/mu_stdbsp.OBJ: C:/Users/r/Projects/mulib-examples/mu_platform/common/mu_stdbsp.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3/Device/shared/si8051Base/stdbool.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.3/Device/shared/si8051Base/stdint.h


