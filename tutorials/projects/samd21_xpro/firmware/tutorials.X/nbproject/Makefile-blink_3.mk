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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_3.c ../../../../morse_blinker.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_3.o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/118631595/bsp.o.d ${OBJECTDIR}/_ext/858834225/plib_clock.o.d ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1358159264/plib_port.o.d ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d ${OBJECTDIR}/_ext/399964549/initialization.o.d ${OBJECTDIR}/_ext/399964549/interrupts.o.d ${OBJECTDIR}/_ext/399964549/exceptions.o.d ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d ${OBJECTDIR}/_ext/1157254703/mu_event.o.d ${OBJECTDIR}/_ext/1157254703/mu_list.o.d ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d ${OBJECTDIR}/_ext/1157254703/mu_str.o.d ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d ${OBJECTDIR}/_ext/1157254703/mu_task.o.d ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d ${OBJECTDIR}/_ext/1539294015/mu_time.o.d ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1568745167/blink_3.o.d ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_3.o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o

# Source Files
SOURCEFILES=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_3.c ../../../../morse_blinker.c

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
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_3/ffa3a2e92d937a50d25388aac533481d068a6d5c .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_3/93e102bcc50f507d9049c0c30432f3f894725677 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_3/6baa6fcff50ae8c63a5b2bcc7d3c8db9493ea863 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_3/eb26b682a2427b4e9f5a513e1a57f3be590ee932 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_3/543a92309c29c98834b9d984e6aca03cbf507e90 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_3/2f0823dda386acd6f0e4009ddaec93080db52fc .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_3/21739d91b51fa32eb4a70a89aa78a1fc85c3ad7a .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_3/397ce726e2401573813833d365adc3370e2f48e6 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_3/97db6462a202bd2019f8ec00749fbcd07b3dd690 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_3/39f88ab737da0f7b5e20ba2acdbb771695939311 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_3/a19b3514c2da9b9a9a72ac971a4c6feaac01a446 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_3/bb1c60a215c130415d11169d4b4cfa1b58bd8207 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_3/7550c1b53274c9f93c22b1c51cc349b7106f32ac .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_3/94630057c6e755aff01287ba22d00fc376d3dd17 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_3/eeeab80f64f0964fc1e5582fe1531cf9ee8a854a .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_3/9b8a93579c8c175debfa68250da43cff2f497186 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_3/c2e1ceec8b1ec221f27ce66ca8634d19cdfd5ee5 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_3/c87aef82ceb6b672b57ceb15cd7cb18bd6e6ed6d .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_3/34c7d5d311d083d23a72a5bd747d693580429788 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_3/8762c84020345ad6e0f5ec18c8d025dff3afa7c .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_3/d4f1329f83c511d1a845ce2da512c149c52578ff .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_3/74db19c524528aacba5573ea0688100fc0f1b91a .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_3/6dbd35f823f440243c605860ff1ae6adcb60f45d .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_3/46c05079a6c7f19a9fbb99ca4ef16d39f95d764d .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_3/363861a7d6f80311c5da73ab9955499452c95e3f .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_3/ded2c963ad1841209149f3e4297d8d46aafa8cde .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_3/d8850bcfae0efa19270a049f06b16c939e8f5f65 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_3/666bf730430dc93374f05f175c589cd2fd04dc8a .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_3.o: ../../../../blink_3.c  .generated_files/flags/blink_3/a22605c73d37043a8e2cf2ab5e80a6d6af089185 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_3.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_3.o ../../../../blink_3.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_blinker.o: ../../../../morse_blinker.c  .generated_files/flags/blink_3/338e7afd79a9ac7c33a1ca2d9ae7145fdbf2ff81 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ../../../../morse_blinker.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_3/c5ba97608c3e625ec89d372817093f38607ca0b4 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_3/e79da65e9d903394728db7a00b5e8454e750242 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_3/53b3342bc191721b5c6eb6c09100262286233d59 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_3/2598ec3f1006554484bbbe041cf401473e7566eb .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_3/d7fee4a7bc284eeefd53d6c873f11810809198ec .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_3/5c42b21fb91f64781d4702121e7cbd12b6301e5 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_3/6fddd4b631f94d2cd9c2de96094e7060df0b195 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_3/92049899ca4beb29d69914d4f8402fcc866b022e .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_3/4df5d65195aa15c6ea5c51de714307ce675bbb1b .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_3/c1a5e3244d06d61d555b60785759d57c3ca241c0 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_3/37584dcf31f5b2fa933af6b316c5c2be4664ab2b .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_3/47ce886419ec6b39b445ebbf421fb352936713b2 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_3/7b71d594c450c951f727d341554acc1385d32333 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_3/4a54076111e2ff561fb1ad7f6c831857689a4808 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_3/d650b58015b5ec1f9305ff0629f1bf15969083c6 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_3/cae5d7f735e5846060db287b4c296a43e789bc56 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_3/898e1204bd04addfd90cb63e2dbe0ece3a394c22 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_3/e9a360808f830e07692d3b23866ebde833e1a4fa .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_3/75de86eb2d2299cb719f3248c658238070f7ae8 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_3/1debdcac86d23b89cdea57441b43c5651b61c85b .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_3/5b2ef44e16f99c784390dad2e219e893d4e62259 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_3/244872802c1156aa3aeb8daf750cc4ec3ecd2b87 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_3/8980f8c762744bc4e1a8822ddafbf2766d46234e .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_3/b4751c4dcf7ae19b60c388df23d923b1ccac8ebf .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_3/ebda62855fe4392e2087ee2b1c6ba6d79a873e8e .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_3/b42debeecd44104c90f9c4dec2385f111a9ef74e .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_3/7c20feaea4454e7c66fe8f4993eb9ecd319820a6 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_3/52c73ff1e1bef9ec56ec1e8328bbc886ee595750 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_3.o: ../../../../blink_3.c  .generated_files/flags/blink_3/e714e96872e14224f90e9297bf61a008047e97b1 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_3.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_3.o ../../../../blink_3.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_blinker.o: ../../../../morse_blinker.c  .generated_files/flags/blink_3/501e74b5cda5ee5071bfcdac2adc19d10420d489 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ../../../../morse_blinker.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
