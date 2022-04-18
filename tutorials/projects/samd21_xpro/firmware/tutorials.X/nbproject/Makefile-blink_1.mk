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
ifeq "$(wildcard nbproject/Makefile-local-blink_1.mk)" "nbproject/Makefile-local-blink_1.mk"
include nbproject/Makefile-local-blink_1.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=blink_1
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_1/blink_1.c ../../../../blink_3/blink_3.c ../../../../blink_3/morse_blinker.c ../../../../blink_4/blink_4.c ../../../../blink_4/morse_msg.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1762752718/blink_1.o ${OBJECTDIR}/_ext/1762752720/blink_3.o ${OBJECTDIR}/_ext/1762752720/morse_blinker.o ${OBJECTDIR}/_ext/1762752721/blink_4.o ${OBJECTDIR}/_ext/1762752721/morse_msg.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/118631595/bsp.o.d ${OBJECTDIR}/_ext/858834225/plib_clock.o.d ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1358159264/plib_port.o.d ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d ${OBJECTDIR}/_ext/399964549/initialization.o.d ${OBJECTDIR}/_ext/399964549/interrupts.o.d ${OBJECTDIR}/_ext/399964549/exceptions.o.d ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d ${OBJECTDIR}/_ext/1157254703/mu_event.o.d ${OBJECTDIR}/_ext/1157254703/mu_list.o.d ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d ${OBJECTDIR}/_ext/1157254703/mu_str.o.d ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d ${OBJECTDIR}/_ext/1157254703/mu_task.o.d ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d ${OBJECTDIR}/_ext/1539294015/mu_time.o.d ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1762752718/blink_1.o.d ${OBJECTDIR}/_ext/1762752720/blink_3.o.d ${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d ${OBJECTDIR}/_ext/1762752721/blink_4.o.d ${OBJECTDIR}/_ext/1762752721/morse_msg.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1762752718/blink_1.o ${OBJECTDIR}/_ext/1762752720/blink_3.o ${OBJECTDIR}/_ext/1762752720/morse_blinker.o ${OBJECTDIR}/_ext/1762752721/blink_4.o ${OBJECTDIR}/_ext/1762752721/morse_msg.o

# Source Files
SOURCEFILES=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_1/blink_1.c ../../../../blink_3/blink_3.c ../../../../blink_3/morse_blinker.c ../../../../blink_4/blink_4.c ../../../../blink_4/morse_msg.c

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
	${MAKE}  -f nbproject/Makefile-blink_1.mk ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_1/2dbd47428f88245f352f53000273b465e8517f29 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_1/43d59fdbaa8ac24a4662fd527af7196526f37caf .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_1/fc2f1dc277113135815f6238283c64b0589663f .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_1/79e0949a5450e8f449dcaa7996a859c8f39c7de1 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_1/7966b7997ba3c53749e866f78bc89741b28325c2 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_1/5c8bc53fddf43c33a9d8a89b70b3dd3d4d75af0f .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_1/ad742240805e0b712d3a143e36cf4e5f35959d27 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_1/41d88aaeb4c08f166c289043821d2521507ba1c8 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_1/953fdaff22bef92bc486873a467b0506c706325e .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_1/f9eb48e551b3fdfe0ac6577f41ef40ca953aa7a6 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_1/c0e505393f886d3d084bd09dcafbdd4b85e8e528 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_1/d831462f0627985abffe5d6560f7433ee2206350 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_1/305288339529f43a29ac260ab3f85a033e25c3cb .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_1/b0fe2829dc083a6008b1cea750d6327df1b59c36 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_1/463ccec722e8b65841039a8b4dba082e5f90bef .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_1/a848d26fa5c323c0d2063840b5375ac5823b0155 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_1/c78b49d029e3bbd213670e18c9328ccaa7a02ab2 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_1/ef8ed030dadf62417146eb42ec774bda41bfe9f0 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_1/e1e2c7cd3452373be4310611f1da9b8a72685ffb .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_1/14b644e9a542fe574062ce3e767c389577c1afad .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_1/d255e62deaf36e9e44e972711fcc119a4425696a .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_1/126ed83ab360830e44a990895c4013f12eefbb .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_1/d957d5017d12844e87f5a087d4bf72f087487d37 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_1/c6b334c1790ea1887ba75df727c5cc8ce5087244 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_1/26c3ceda6ea66d34cabd2eb3c28f1b88f1873eb5 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_1/e4d44e8e72b20bbf03d83b2d9eb99995f7687229 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_1/ac9fe3f9a091551113db3cfd770d9eb23b77911d .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_1/e4f3d284d91cea09424a9e1b944fda7e2d8e9d2d .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752718/blink_1.o: ../../../../blink_1/blink_1.c  .generated_files/flags/blink_1/592c970c8b1ba8906acc19cdcd5267c27982d47 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752718" 
	@${RM} ${OBJECTDIR}/_ext/1762752718/blink_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752718/blink_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752718/blink_1.o.d" -o ${OBJECTDIR}/_ext/1762752718/blink_1.o ../../../../blink_1/blink_1.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752720/blink_3.o: ../../../../blink_3/blink_3.c  .generated_files/flags/blink_1/690875fb950a8c5e0a6e3047d5ee56f310158cf1 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752720" 
	@${RM} ${OBJECTDIR}/_ext/1762752720/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752720/blink_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752720/blink_3.o.d" -o ${OBJECTDIR}/_ext/1762752720/blink_3.o ../../../../blink_3/blink_3.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752720/morse_blinker.o: ../../../../blink_3/morse_blinker.c  .generated_files/flags/blink_1/c1a1547fee44795a84a64ee080e37a3538583716 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752720" 
	@${RM} ${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752720/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1762752720/morse_blinker.o ../../../../blink_3/morse_blinker.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752721/blink_4.o: ../../../../blink_4/blink_4.c  .generated_files/flags/blink_1/d2b9bb6f43082dbdc7e612295641dda1321c340f .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752721" 
	@${RM} ${OBJECTDIR}/_ext/1762752721/blink_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752721/blink_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752721/blink_4.o.d" -o ${OBJECTDIR}/_ext/1762752721/blink_4.o ../../../../blink_4/blink_4.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752721/morse_msg.o: ../../../../blink_4/morse_msg.c  .generated_files/flags/blink_1/350ea4558dede16731d73551bc7007d6face6a9f .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752721" 
	@${RM} ${OBJECTDIR}/_ext/1762752721/morse_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752721/morse_msg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752721/morse_msg.o.d" -o ${OBJECTDIR}/_ext/1762752721/morse_msg.o ../../../../blink_4/morse_msg.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_1/387bb9214d0bf34773973dbd986ba2debb0b8f34 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_1/48bc3e76aa377b239cf3ea2e4ec5e2c6d486afd2 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_1/2011f5efd55a725a1d6c55de4aa1f627b8f6a653 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_1/b9fb1216f480eabf9a93c527ac403c856340b2b7 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_1/5e0576c1bdef8cfd6be91ead13905f88798f6a6c .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_1/a3603c266bf99a7cd59bb48bbbb3919eedc97e3d .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_1/67ee64b8b557d034f0c4f08ea3e9f0b3b639a073 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_1/70e7e7bab8a9b9d5b04fc3ef8f92a44a86cf4b98 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_1/8770d1beeca03995c41b70d490d492dc17c62e5a .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_1/69a89668d0aace9e446518c2f83a913e403b92c0 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_1/786af073887b9dc788187b28f06f051972abf4f6 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_1/9631fb6cec5fbd9b5b0d12aca074e87731d4be3b .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_1/7bbb9a84b6ee0562dcf184db125c405c90eb777e .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_1/c809b744a57086e427901daf94dd49fcaf2a2981 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_1/d0c41168d3cc1af848d8f061754406f6dd863884 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_1/430f50d2a3f1e74e7d574a293ea24336de2374c9 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_1/7af56a37751e74551c1adb0ce5ca820e2bec37d .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_1/4b35935e699ab47dceb37c954a683df0f25a4008 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_1/d4c6b303ee89fcdd5ad3791e24c67b943897193d .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_1/851e98038a63b0a79ba55e66da09ec0844a1cc77 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_1/5b470cd48f99b4d88c45aee639442402c750c45a .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_1/2a53b521d7b9b258ef40ae1b002d9c3636e19c6 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_1/e62532424c38adf2c46bb688a059a3ef6a4eb098 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_1/a6bdebc29e687fefe4958a4c0e4dd57394a40208 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_1/52a0814efb0cda8ab6289703b2ce3e5f66f4f52 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_1/49092dc1bd6e8f871ced04c6edd1b958f519ac6b .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_1/5ca83828e895d96ca3d3f7090ec92637e91ec1fa .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_1/9e1974ce190c6b9ae99177ae7a2f087df760a756 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752718/blink_1.o: ../../../../blink_1/blink_1.c  .generated_files/flags/blink_1/3eea0752309d2003cbc6508186ed475dc6f2f1a .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752718" 
	@${RM} ${OBJECTDIR}/_ext/1762752718/blink_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752718/blink_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752718/blink_1.o.d" -o ${OBJECTDIR}/_ext/1762752718/blink_1.o ../../../../blink_1/blink_1.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752720/blink_3.o: ../../../../blink_3/blink_3.c  .generated_files/flags/blink_1/2959a4ee4a2ee2843801df9de40e6fec69ec4393 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752720" 
	@${RM} ${OBJECTDIR}/_ext/1762752720/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752720/blink_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752720/blink_3.o.d" -o ${OBJECTDIR}/_ext/1762752720/blink_3.o ../../../../blink_3/blink_3.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752720/morse_blinker.o: ../../../../blink_3/morse_blinker.c  .generated_files/flags/blink_1/46c8ce471439099fada105f89181d7b26d00c73b .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752720" 
	@${RM} ${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752720/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752720/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1762752720/morse_blinker.o ../../../../blink_3/morse_blinker.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752721/blink_4.o: ../../../../blink_4/blink_4.c  .generated_files/flags/blink_1/90530bd307551200cf7f1cf8f6a18d2cb3be7d39 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752721" 
	@${RM} ${OBJECTDIR}/_ext/1762752721/blink_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752721/blink_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752721/blink_4.o.d" -o ${OBJECTDIR}/_ext/1762752721/blink_4.o ../../../../blink_4/blink_4.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1762752721/morse_msg.o: ../../../../blink_4/morse_msg.c  .generated_files/flags/blink_1/c21bbb8214a61dc89a320aa5b5a07cd5140784f8 .generated_files/flags/blink_1/2f62ee05a8a5cdfee28df3329d0035abbde4acf5
	@${MKDIR} "${OBJECTDIR}/_ext/1762752721" 
	@${RM} ${OBJECTDIR}/_ext/1762752721/morse_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1762752721/morse_msg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../blink_1" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1762752721/morse_msg.o.d" -o ${OBJECTDIR}/_ext/1762752721/morse_msg.o ../../../../blink_4/morse_msg.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/blink_1/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
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
