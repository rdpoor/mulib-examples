################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include platform/subdir.mk
-include gecko_sdk_4.0.2/platform/service/udelay/src/subdir.mk
-include gecko_sdk_4.0.2/platform/service/system/src/subdir.mk
-include gecko_sdk_4.0.2/platform/service/sleeptimer/src/subdir.mk
-include gecko_sdk_4.0.2/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
-include gecko_sdk_4.0.2/platform/emdrv/uartdrv/src/subdir.mk
-include gecko_sdk_4.0.2/platform/emdrv/gpiointerrupt/src/subdir.mk
-include gecko_sdk_4.0.2/platform/emdrv/dmadrv/src/subdir.mk
-include gecko_sdk_4.0.2/platform/driver/leddrv/src/subdir.mk
-include gecko_sdk_4.0.2/platform/driver/button/src/subdir.mk
-include gecko_sdk_4.0.2/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32PG22/Source/GCC/subdir.mk
-include gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32PG22/Source/subdir.mk
-include gecko_sdk_4.0.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/subdir.mk
-include gecko_sdk_4.0.2/hardware/board/src/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := EFM32PG22
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: EFM32PG22.axf

# Tool invocations
EFM32PG22.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -T "C:\Users\r\Projects\mulib-examples\examples\test_stdbsp\EFM32PG22\autogen\linkerfile.ld" -Xlinker --gc-sections -Xlinker -Map="EFM32PG22.map" -mfpu=fpv5-sp-d16 -mfloat-abi=hard --specs=nano.specs -o EFM32PG22.axf -Wl,--start-group "./app.o" "./main.o" "./test_stdbsp.o" "./autogen/sl_board_default_init.o" "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./autogen/sl_simple_button_instances.o" "./autogen/sl_simple_led_instances.o" "./autogen/sl_uartdrv_init.o" "./gecko_sdk_4.0.2/hardware/board/src/sl_board_control_gpio.o" "./gecko_sdk_4.0.2/hardware/board/src/sl_board_init.o" "./gecko_sdk_4.0.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o" "./gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32PG22/Source/GCC/startup_efm32pg22.o" "./gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32PG22/Source/system_efm32pg22.o" "./gecko_sdk_4.0.2/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.0.2/platform/driver/button/src/sl_button.o" "./gecko_sdk_4.0.2/platform/driver/button/src/sl_simple_button.o" "./gecko_sdk_4.0.2/platform/driver/leddrv/src/sl_led.o" "./gecko_sdk_4.0.2/platform/driver/leddrv/src/sl_simple_led.o" "./gecko_sdk_4.0.2/platform/emdrv/dmadrv/src/dmadrv.o" "./gecko_sdk_4.0.2/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o" "./gecko_sdk_4.0.2/platform/emdrv/uartdrv/src/uartdrv.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_assert.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_burtc.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_core.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_emu.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_eusart.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_ldma.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_rtcc.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_system.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_usart.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_dcdc_s2.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_emu_s2.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_hfxo_s2.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_lfxo_s2.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.0.2/platform/service/sleeptimer/src/sl_sleeptimer.o" "./gecko_sdk_4.0.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o" "./gecko_sdk_4.0.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o" "./gecko_sdk_4.0.2/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.0.2/platform/service/system/src/sl_system_process_action.o" "./gecko_sdk_4.0.2/platform/service/udelay/src/sl_udelay.o" "./gecko_sdk_4.0.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o" "./platform/mu_stdbsp.o" "./platform/mu_time.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: EFM32PG22.hex'
	arm-none-eabi-objcopy -O ihex "EFM32PG22.axf" "EFM32PG22.hex"
	@echo ' '

	@echo 'Building bin file: EFM32PG22.bin'
	arm-none-eabi-objcopy -O binary "EFM32PG22.axf" "EFM32PG22.bin"
	@echo ' '

	@echo 'Building s37 file: EFM32PG22.s37'
	arm-none-eabi-objcopy -O srec "EFM32PG22.axf" "EFM32PG22.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "EFM32PG22.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) EFM32PG22.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
