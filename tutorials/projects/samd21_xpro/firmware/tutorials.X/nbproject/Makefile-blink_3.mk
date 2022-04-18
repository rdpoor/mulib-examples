#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-blink_3.mk)" "nbproject/Makefile-local-blink_3.mk"
include nbproject/Makefile-local-blink_3.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=blink_3
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_3/blink_3.c ../../../../blink_3/morse_blinker.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1762752720/blink_3.o ${OBJECTDIR}/_ext/1762752720/morse_blinker.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/118631595/bsp.o.d ${OBJECTDIR}/_ext/858834225/plib_clock.o.d ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1358159264/plib_port.o.d ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d ${OBJECTDIR}/_ext/399964549/initialization.o.d ${OBJECTDIR}/_ext/399964549/interrupts.o.d ${OBJECTDIR}/_ext/399964549/exceptions.o.d ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d ${OBJECTDIR}/_ext/1157254703/mu_event.o.d ${OBJECTDIR}/_ext/1157254703/mu_list.o.d ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d ${OBJECTDIR}/_ext/1157254703/mu_str.o.d ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d ${OBJECTDIR}/_ext/1157254703/mu_task.o.d ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d ${OBJECTDIR}/_ext/1539294015/mu_time.o.d ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1762752720/blink_3.o.d ${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1762752720/blink_3.o ${OBJECTDIR}/_ext/1762752720/morse_blinker.o

# Source Files
SOURCEFILES=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_3/blink_3.c ../../../../blink_3/morse_blinker.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-blink_3.mk ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21J18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\blink_1\ATSAMD21J18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_3/9ddbabb04db2f075fee9ca04b1f6f1811536e244 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_3/2c1de19a4ee80c1b837b694c710e1e6b1910ff3e .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_3/d0be682dfb3252ea20587e8f9541da8cee3a1010 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_3/c783482ac0b4c99aa99c4cdf083d40902b50eff .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_3/d2a63e24da6a7f0ae4b2c440cb072309d8139062 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_3/7f8c231e1ff8dc46e0713c8cce78f7cf60426ff7 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_3/d28e62db2870d07329d21ea516a7f0788e43fa98 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_3/c17808e7865860f43f3cd20ec5a4bb36f1919087 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_3/b28c8b4766efff5e91b5fd1ebdfd8355a708fa9e .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_3/9f4b6c00cb6ac1fcb9cc0349784f6d33531ddc0 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_3/129351b98bdd04e34ed6ed3b5cc34726181e6526 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_3/ed771048eacbd9796c0ddcca11b7561c41211702 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_3/ce82be25824b19a6883490f8c7e3e794f0863ce2 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_3/aff89c2fe9ae41cd8082f2875ef483423921677 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_3/2a00207844e1c80779a7f67404cffb70db3f5eea .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_3/4cd391b1dec04ee00ba2026c68c611142a2eea3d .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_3/7636ecf735809ccf83608e0197099826d2db6aac .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_3/6bbf73b428b2cc7d350e469ab4f005f40afd90d6 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_3/8a4b2d567f06111eaaa94ff0c94f7e75590c97dc .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_3/af237728018c62c7310e953014d685ee4ff3b151 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_3/6183a8e32f41c1727a6ce1f69158152a14ad792 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_3/9b35171fa749763ebed427a10db39244a2964fa1 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_3/612cda11a75d308d9a9bce446bbd5b713811607f .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_3/9c6768dd7a76393a621bcbfde9a0ab69b4d9f1fe .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_3/3bf35a6580d2d347fa6b3efc2e41076d934206fd .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_3/d8e3304eddf94da7ca9a420fefe403c663dad6a8 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_3/b9ee06a7353fc5256b325941b79321e9fa6753ab .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_3/a7b15ce02291ef0737d8e4c6d5667e5d23990dab .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752720/blink_3.o: ../../../../blink_3/blink_3.c  .generated_files/flags/blink_3/488bdd201e81161e909baa4444946154601cb857 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752720" 
	@${RM} ${OBJECTDIR}/_ext/1762752720/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752720/blink_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752720/blink_3.o.d" -o ${OBJECTDIR}/_ext/1762752720/blink_3.o ../../../../blink_3/blink_3.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752720/morse_blinker.o: ../../../../blink_3/morse_blinker.c  .generated_files/flags/blink_3/667506027b9b6bcb87d4b60800644ab4147e118b .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752720" 
	@${RM} ${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752720/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1762752720/morse_blinker.o ../../../../blink_3/morse_blinker.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_3/39a10d16f8403efc565f574c9ee2159658770f10 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_3/4cc9281201ae7117f6fd6a71b6deb9843d6125d .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_3/c246e3ab2fb7d57e1803a0a4b5679969551c00b0 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_3/cf1e5ebbbf3a501f7d140da389cbb705b4301fd3 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_3/cfcbc89911cb85366f1af541eb1b771118d72e7a .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_3/34931a3cab1a0eeee0a649802a2577cf07277169 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_3/149844b8a6b20186ed9d859cc91ada6d980886a .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_3/6e68a2660dc1c6b47405db8e135a5d6cfd70f358 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_3/82b8551902a5043893da7773d0a8f8c01e6c52e8 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_3/42e3947cd40a96169b38e2b1e9afa3edaed617f5 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_3/c8b2e8c1a0a39b8b293a4528b96488f45a21061b .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_3/bc9a4491bc24d40d0cdf4dfd8df1faed73ac7fe5 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_3/5fd1fdd25fa000c06489bfaf0a7a64489743a49c .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_3/8f66e4a6de957562eac0d8dd9e09d0dff429141e .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_3/4e901cd7e96044dd6d094963a86040c6015a0986 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_3/ac0551f4eaa91a5392950e43d482d71b291ed6b8 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_3/e08750fb1e611f083fad3622323102e0194c2270 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_3/596e2dda7e61d96affec28a6730b2a230d8405c6 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_3/95c8213a9b9155aa53063b0e24d04b6729f49f88 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_3/e23e1a2c994b3e95c7e612700cbcb440f7d48753 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_3/1f3a83c40914c3466c03108ecfc222b0dcb01397 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_3/6b8c7c4c1a9a8f87a1b4a66cb8543584ba79ee1f .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_3/cb0cb45fe7c77ea3991e56861a5091f3eda3c526 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_3/f212d146f1564fb5d8d5949cbba1e82c4c267876 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_3/f6947673ea595300931a25e5fbe784b1c9a1e280 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_3/e6986dc576c0e84b036467e9218d7220fbbcc6ab .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_3/c1dfe9d5af1ee357a509da0be88c360572ecaeca .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_3/611b5f872e02dffc9a095e99f63a63da670b519d .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752720/blink_3.o: ../../../../blink_3/blink_3.c  .generated_files/flags/blink_3/a7dc77a9c85566097cb95140f05407a432a01942 .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752720" 
	@${RM} ${OBJECTDIR}/_ext/1762752720/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752720/blink_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752720/blink_3.o.d" -o ${OBJECTDIR}/_ext/1762752720/blink_3.o ../../../../blink_3/blink_3.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752720/morse_blinker.o: ../../../../blink_3/morse_blinker.c  .generated_files/flags/blink_3/3f0d12f2d56d8fbc395636f5cfca8bd3d164244c .generated_files/flags/blink_3/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752720" 
	@${RM} ${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752720/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_3" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1762752720/morse_blinker.o ../../../../blink_3/morse_blinker.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/blink_1/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/blink_1/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
