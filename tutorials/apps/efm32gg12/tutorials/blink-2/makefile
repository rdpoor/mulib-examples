################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include mulib/core/subdir.mk
-include gecko_sdk_4.0.2/platform/service/system/src/subdir.mk
-include gecko_sdk_4.0.2/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.0.2/platform/emlib/src/subdir.mk
-include gecko_sdk_4.0.2/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/GCC/subdir.mk
-include gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/subdir.mk
-include gecko_sdk_4.0.2/hardware/board/src/subdir.mk
-include efm32gg12/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: tutorials.axf

# Tool invocations
tutorials.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "C:\Users\r\Projects\mulib-examples\tutorials\projects\efm32gg12\tutorials/autogen/linkerfile.ld" -Xlinker --gc-sections -Xlinker -Map="tutorials.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o tutorials.axf -Wl,--start-group "./autogen/sl_board_default_init.o" "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./blink_2.o" "./main.o" "./efm32gg12/mu_time.o" "./efm32gg12/tutorials_bsp.o" "./gecko_sdk_4.0.2/hardware/board/src/sl_board_control_gpio.o" "./gecko_sdk_4.0.2/hardware/board/src/sl_board_init.o" "./gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/GCC/startup_efm32gg12b.o" "./gecko_sdk_4.0.2/platform/Device/SiliconLabs/EFM32GG12B/Source/system_efm32gg12b.o" "./gecko_sdk_4.0.2/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_assert.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_core.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_emu.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_rtcc.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_system.o" "./gecko_sdk_4.0.2/platform/emlib/src/em_usart.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_emu_s1.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_hfxo_s1.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_lfxo_s1.o" "./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.0.2/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.0.2/platform/service/system/src/sl_system_process_action.o" "./mulib/core/mu_access_mgr.o" "./mulib/core/mu_event.o" "./mulib/core/mu_list.o" "./mulib/core/mu_periodic.o" "./mulib/core/mu_queue.o" "./mulib/core/mu_sched.o" "./mulib/core/mu_spsc.o" "./mulib/core/mu_str.o" "./mulib/core/mu_strbuf.o" "./mulib/core/mu_task.o" "./mulib/core/mu_task_list.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: tutorials.hex'
	arm-none-eabi-objcopy -O ihex "tutorials.axf" "tutorials.hex"
	@echo ' '

	@echo 'Building bin file: tutorials.bin'
	arm-none-eabi-objcopy -O binary "tutorials.axf" "tutorials.bin"
	@echo ' '

	@echo 'Building s37 file: tutorials.s37'
	arm-none-eabi-objcopy -O srec "tutorials.axf" "tutorials.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "tutorials.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) tutorials.axf
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
