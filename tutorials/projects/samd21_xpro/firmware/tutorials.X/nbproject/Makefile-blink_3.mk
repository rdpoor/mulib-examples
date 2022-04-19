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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/tutorial_conf/bsp/bsp.c ../src/config/tutorial_conf/peripheral/clock/plib_clock.c ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/tutorial_conf/peripheral/port/plib_port.c ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/tutorial_conf/stdio/xc32_monitor.c ../src/config/tutorial_conf/initialization.c ../src/config/tutorial_conf/interrupts.c ../src/config/tutorial_conf/exceptions.c ../src/config/tutorial_conf/startup_xc32.c ../src/config/tutorial_conf/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_3.c ../../../../morse_blinker.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1987221186/bsp.o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ${OBJECTDIR}/_ext/1590353207/plib_port.o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ${OBJECTDIR}/_ext/1602753554/initialization.o ${OBJECTDIR}/_ext/1602753554/interrupts.o ${OBJECTDIR}/_ext/1602753554/exceptions.o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_3.o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1987221186/bsp.o.d ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1590353207/plib_port.o.d ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d ${OBJECTDIR}/_ext/1602753554/initialization.o.d ${OBJECTDIR}/_ext/1602753554/interrupts.o.d ${OBJECTDIR}/_ext/1602753554/exceptions.o.d ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d ${OBJECTDIR}/_ext/1157254703/mu_event.o.d ${OBJECTDIR}/_ext/1157254703/mu_list.o.d ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d ${OBJECTDIR}/_ext/1157254703/mu_str.o.d ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d ${OBJECTDIR}/_ext/1157254703/mu_task.o.d ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d ${OBJECTDIR}/_ext/1539294015/mu_time.o.d ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1568745167/blink_3.o.d ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1987221186/bsp.o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ${OBJECTDIR}/_ext/1590353207/plib_port.o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ${OBJECTDIR}/_ext/1602753554/initialization.o ${OBJECTDIR}/_ext/1602753554/interrupts.o ${OBJECTDIR}/_ext/1602753554/exceptions.o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_3.o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o

# Source Files
SOURCEFILES=../src/config/tutorial_conf/bsp/bsp.c ../src/config/tutorial_conf/peripheral/clock/plib_clock.c ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/tutorial_conf/peripheral/port/plib_port.c ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/tutorial_conf/stdio/xc32_monitor.c ../src/config/tutorial_conf/initialization.c ../src/config/tutorial_conf/interrupts.c ../src/config/tutorial_conf/exceptions.c ../src/config/tutorial_conf/startup_xc32.c ../src/config/tutorial_conf/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_3.c ../../../../morse_blinker.c

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
MP_LINKER_FILE_OPTION=,--script="..\src\config\tutorial_conf\ATSAMD21J18A.ld"
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
${OBJECTDIR}/_ext/1987221186/bsp.o: ../src/config/tutorial_conf/bsp/bsp.c  .generated_files/flags/blink_3/1c56b652d6fdbeaf0589d3d10aa0e59430bb85bf .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1987221186" 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987221186/bsp.o.d" -o ${OBJECTDIR}/_ext/1987221186/bsp.o ../src/config/tutorial_conf/bsp/bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2044210712/plib_clock.o: ../src/config/tutorial_conf/peripheral/clock/plib_clock.c  .generated_files/flags/blink_3/f0b97946940c0973675d068cd18c7d180e6572e6 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2044210712" 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2044210712/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ../src/config/tutorial_conf/peripheral/clock/plib_clock.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2046360198/plib_evsys.o: ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_3/9e37c436884170028f418529e2f13dff853ab38c .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2046360198" 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590300056/plib_nvic.o: ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_3/82f4e35011c4ea5cd069bac1318792f04c544f09 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590300056" 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o: ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_3/629da30c144f512016eadfd060995785121a3364 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1151464678" 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590353207/plib_port.o: ../src/config/tutorial_conf/peripheral/port/plib_port.c  .generated_files/flags/blink_3/f2ce1fe11be9c08a7d655510d7eb537fafc34d00 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590353207" 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590353207/plib_port.o.d" -o ${OBJECTDIR}/_ext/1590353207/plib_port.o ../src/config/tutorial_conf/peripheral/port/plib_port.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o: ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_3/c38583a550409d3a1357979b81105261d2f4b697 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/466945771" 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o: ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_3/7bb627340e29bf4c8d9f41b92e611a104bc0b0f5 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/946880333" 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1525165492/xc32_monitor.o: ../src/config/tutorial_conf/stdio/xc32_monitor.c  .generated_files/flags/blink_3/ee5fc4168128e95348cbdd06106ccbd9d20ba716 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1525165492" 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ../src/config/tutorial_conf/stdio/xc32_monitor.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/initialization.o: ../src/config/tutorial_conf/initialization.c  .generated_files/flags/blink_3/4406e8ee64bb60873ca44d5fa9c65afa5f39aa2 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/initialization.o.d" -o ${OBJECTDIR}/_ext/1602753554/initialization.o ../src/config/tutorial_conf/initialization.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/interrupts.o: ../src/config/tutorial_conf/interrupts.c  .generated_files/flags/blink_3/66598d7cefffe34c95d82963274e520c33f5eece .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/interrupts.o.d" -o ${OBJECTDIR}/_ext/1602753554/interrupts.o ../src/config/tutorial_conf/interrupts.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/exceptions.o: ../src/config/tutorial_conf/exceptions.c  .generated_files/flags/blink_3/669493bb9b6b7ecd13cd96f4b1c1acba916ee1e7 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/exceptions.o.d" -o ${OBJECTDIR}/_ext/1602753554/exceptions.o ../src/config/tutorial_conf/exceptions.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/startup_xc32.o: ../src/config/tutorial_conf/startup_xc32.c  .generated_files/flags/blink_3/c582d2586c85cf01d05595f4174404ee5832f447 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ../src/config/tutorial_conf/startup_xc32.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/libc_syscalls.o: ../src/config/tutorial_conf/libc_syscalls.c  .generated_files/flags/blink_3/d22b2489bcf05e9b97c5b37dbc98d6d5cf3d77e9 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ../src/config/tutorial_conf/libc_syscalls.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_3/96680472f66f3766d136e583300dcf6291c351fb .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_3/567633ee39d4b14af5f0eac075ef208d06b9e434 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_3/ff90a0132294da4709b911516ce95eae9a551584 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_3/abd2de075e85276dd7a1b6baa205aa5a055a266b .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_3/39b0fdb9fa33bd59611b406b7e4b397e3d54501b .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_3/ce12951e72ea03eb6e6274135779f68980733848 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_3/f03ac55225600ad5fd9843384f71edc3cca160c6 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_3/52da295c77a3e2e730372ff636fde40de84421d7 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_3/fdb5324819e23cac8699fbcc6d56c45b4ba42474 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_3/6af1a92b5c49c8b8808207ac598bc4d78660f263 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_3/24b9298c1e4e3aafb21d363f94dbac676f097bc0 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_3/1e6c1999e323e559db783370cd8dd672771d2a3b .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_3/584f4f35fea5887289e4efd6fbd101969c81e61e .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_3/36e71cc27966c54588581ca1761bf0008ce7bff8 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_3.o: ../../../../blink_3.c  .generated_files/flags/blink_3/608bda72678581eda9329acf1b1d0040d084b741 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_3.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_3.o ../../../../blink_3.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_blinker.o: ../../../../morse_blinker.c  .generated_files/flags/blink_3/98fdfec39c382acd6a3be587f03adf31cc26f5a0 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ../../../../morse_blinker.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1987221186/bsp.o: ../src/config/tutorial_conf/bsp/bsp.c  .generated_files/flags/blink_3/583a175ae5ac58a3aa87758bdccb444656bcbfc3 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1987221186" 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987221186/bsp.o.d" -o ${OBJECTDIR}/_ext/1987221186/bsp.o ../src/config/tutorial_conf/bsp/bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2044210712/plib_clock.o: ../src/config/tutorial_conf/peripheral/clock/plib_clock.c  .generated_files/flags/blink_3/9712f116332fd200e142e857ecbea192ce641f00 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2044210712" 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2044210712/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ../src/config/tutorial_conf/peripheral/clock/plib_clock.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2046360198/plib_evsys.o: ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_3/d046cc2ebebdc50322c8746683178f5efbdbea72 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2046360198" 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590300056/plib_nvic.o: ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_3/36dc5177138e3f4807030554a25c4dd5d0da2fa5 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590300056" 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o: ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_3/83757805b1768e1a92841447352d03aeb623696f .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1151464678" 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590353207/plib_port.o: ../src/config/tutorial_conf/peripheral/port/plib_port.c  .generated_files/flags/blink_3/a93560671212739a0dbe10a6a06b04e24ac81fdb .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590353207" 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590353207/plib_port.o.d" -o ${OBJECTDIR}/_ext/1590353207/plib_port.o ../src/config/tutorial_conf/peripheral/port/plib_port.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o: ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_3/3421e8d8a444f14ca5ea5d315d3b3252ab593b79 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/466945771" 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o: ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_3/cdd2fb3f12ac0a5fcdb8dd73d65c7ecbe1a8ed3b .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/946880333" 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1525165492/xc32_monitor.o: ../src/config/tutorial_conf/stdio/xc32_monitor.c  .generated_files/flags/blink_3/69b49653951f1681d4e8417d111a6df60ad651be .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1525165492" 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ../src/config/tutorial_conf/stdio/xc32_monitor.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/initialization.o: ../src/config/tutorial_conf/initialization.c  .generated_files/flags/blink_3/294e9d77c255a8350536418113556b9963e16592 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/initialization.o.d" -o ${OBJECTDIR}/_ext/1602753554/initialization.o ../src/config/tutorial_conf/initialization.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/interrupts.o: ../src/config/tutorial_conf/interrupts.c  .generated_files/flags/blink_3/af2e19cb12e1590fcc7a65621c2c81c82d0dbd53 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/interrupts.o.d" -o ${OBJECTDIR}/_ext/1602753554/interrupts.o ../src/config/tutorial_conf/interrupts.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/exceptions.o: ../src/config/tutorial_conf/exceptions.c  .generated_files/flags/blink_3/12cfc9e1d8daa56d563cc21ee6f19256f320c23c .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/exceptions.o.d" -o ${OBJECTDIR}/_ext/1602753554/exceptions.o ../src/config/tutorial_conf/exceptions.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/startup_xc32.o: ../src/config/tutorial_conf/startup_xc32.c  .generated_files/flags/blink_3/a7c582222dda6f2968b0b698afa117ec24335822 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ../src/config/tutorial_conf/startup_xc32.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/libc_syscalls.o: ../src/config/tutorial_conf/libc_syscalls.c  .generated_files/flags/blink_3/d7c0811bb8ea08dd8dc08f7766a89b6e08c06a77 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ../src/config/tutorial_conf/libc_syscalls.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_3/df9d97074837dfe4d67e5e5216bf6b7c7fbec642 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_3/736008d23d9c4a4dda0db3d215842b8d0a0ae719 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_3/e09cc0056b10868a078509a1f580b3d4522275af .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_3/bc4df9f8c64a0f24618bd5190dcdac56bda7d423 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_3/53c7c3ef538d6fcf8dc1ce6b3c44a214bd3fc45c .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_3/1fc842ffecdc41d52ce4c55c132fc1df06ba3b4a .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_3/7b61cef6f5fce7870df35a346acdf43d8ee6c8f8 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_3/82bb5820792872deca4c8b130bfa89fa1cc7b46a .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_3/c11cfce4910ddb8d39c280b80461db3ce124c537 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_3/9507761f0f4a44a9de0aec23b5324398a61205a0 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_3/ff278bf8cf39d3c6f559319421ec9f6c9f9423b1 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_3/de747d0f73820c18563c584cf1f78d70131a820b .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_3/6f47c432f917b162e5eb0003a5d229fbb12954a6 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_3/a77a62cabe796c1582d1df02673892eaafb94561 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_3.o: ../../../../blink_3.c  .generated_files/flags/blink_3/15343cc5cafb8f45e44611192320e4c03f593fd5 .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_3.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_3.o ../../../../blink_3.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_blinker.o: ../../../../morse_blinker.c  .generated_files/flags/blink_3/ffcef296007032371e9c497fd3539c07b9da6e9d .generated_files/flags/blink_3/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ../../../../morse_blinker.c    -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/tutorial_conf/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_3=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/tutorial_conf/ATSAMD21J18A.ld
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
