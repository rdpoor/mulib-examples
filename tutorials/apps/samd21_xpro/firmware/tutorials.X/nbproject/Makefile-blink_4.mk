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
ifeq "$(wildcard nbproject/Makefile-local-blink_4.mk)" "nbproject/Makefile-local-blink_4.mk"
include nbproject/Makefile-local-blink_4.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=blink_4
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/tutorial_conf/bsp/bsp.c ../src/config/tutorial_conf/peripheral/clock/plib_clock.c ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/tutorial_conf/peripheral/port/plib_port.c ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/tutorial_conf/stdio/xc32_monitor.c ../src/config/tutorial_conf/initialization.c ../src/config/tutorial_conf/interrupts.c ../src/config/tutorial_conf/exceptions.c ../src/config/tutorial_conf/startup_xc32.c ../src/config/tutorial_conf/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_4.c ../../../../morse_blinker.c ../../../../morse_msg.c ../../../../mulib/core/mu_pqueue.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1987221186/bsp.o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ${OBJECTDIR}/_ext/1590353207/plib_port.o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ${OBJECTDIR}/_ext/1602753554/initialization.o ${OBJECTDIR}/_ext/1602753554/interrupts.o ${OBJECTDIR}/_ext/1602753554/exceptions.o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_4.o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ${OBJECTDIR}/_ext/1568745167/morse_msg.o ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1987221186/bsp.o.d ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1590353207/plib_port.o.d ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d ${OBJECTDIR}/_ext/1602753554/initialization.o.d ${OBJECTDIR}/_ext/1602753554/interrupts.o.d ${OBJECTDIR}/_ext/1602753554/exceptions.o.d ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d ${OBJECTDIR}/_ext/1157254703/mu_list.o.d ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d ${OBJECTDIR}/_ext/1157254703/mu_str.o.d ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d ${OBJECTDIR}/_ext/1157254703/mu_task.o.d ${OBJECTDIR}/_ext/1539294015/mu_time.o.d ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1568745167/blink_4.o.d ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d ${OBJECTDIR}/_ext/1568745167/morse_msg.o.d ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1987221186/bsp.o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ${OBJECTDIR}/_ext/1590353207/plib_port.o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ${OBJECTDIR}/_ext/1602753554/initialization.o ${OBJECTDIR}/_ext/1602753554/interrupts.o ${OBJECTDIR}/_ext/1602753554/exceptions.o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_4.o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ${OBJECTDIR}/_ext/1568745167/morse_msg.o ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o

# Source Files
SOURCEFILES=../src/config/tutorial_conf/bsp/bsp.c ../src/config/tutorial_conf/peripheral/clock/plib_clock.c ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/tutorial_conf/peripheral/port/plib_port.c ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/tutorial_conf/stdio/xc32_monitor.c ../src/config/tutorial_conf/initialization.c ../src/config/tutorial_conf/interrupts.c ../src/config/tutorial_conf/exceptions.c ../src/config/tutorial_conf/startup_xc32.c ../src/config/tutorial_conf/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_4.c ../../../../morse_blinker.c ../../../../morse_msg.c ../../../../mulib/core/mu_pqueue.c

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
	${MAKE}  -f nbproject/Makefile-blink_4.mk ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1987221186/bsp.o: ../src/config/tutorial_conf/bsp/bsp.c  .generated_files/flags/blink_4/efc2b79452e10ca7e69af97b4c4fdf5ee39ce570 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1987221186" 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987221186/bsp.o.d" -o ${OBJECTDIR}/_ext/1987221186/bsp.o ../src/config/tutorial_conf/bsp/bsp.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2044210712/plib_clock.o: ../src/config/tutorial_conf/peripheral/clock/plib_clock.c  .generated_files/flags/blink_4/3081fcd3d6d07124f215685af6da26adb312f67e .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2044210712" 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2044210712/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ../src/config/tutorial_conf/peripheral/clock/plib_clock.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2046360198/plib_evsys.o: ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_4/8c6f3f73ec1d1a30a4fa412dc0da9efa766a376 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2046360198" 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590300056/plib_nvic.o: ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_4/b2997e411c990ee805e4251d7f6f528369bc6783 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590300056" 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o: ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_4/f171a3f62a6d7dfaa63d5541753b4362dd6a34a4 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1151464678" 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590353207/plib_port.o: ../src/config/tutorial_conf/peripheral/port/plib_port.c  .generated_files/flags/blink_4/594420fe24ec2cd16554bb475f03c74f5098441d .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590353207" 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590353207/plib_port.o.d" -o ${OBJECTDIR}/_ext/1590353207/plib_port.o ../src/config/tutorial_conf/peripheral/port/plib_port.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o: ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_4/aae1802f20e91b3691c6ca81171415cd5181db1a .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/466945771" 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o: ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_4/d72303087512f2ceea302da4b1abcbe8a531c55 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/946880333" 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1525165492/xc32_monitor.o: ../src/config/tutorial_conf/stdio/xc32_monitor.c  .generated_files/flags/blink_4/f42091e3c40b006aee3195c44fd1378104ccf2f .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1525165492" 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ../src/config/tutorial_conf/stdio/xc32_monitor.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/initialization.o: ../src/config/tutorial_conf/initialization.c  .generated_files/flags/blink_4/c710e961c80a0bf03b43782d8c47efd4d890e309 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/initialization.o.d" -o ${OBJECTDIR}/_ext/1602753554/initialization.o ../src/config/tutorial_conf/initialization.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/interrupts.o: ../src/config/tutorial_conf/interrupts.c  .generated_files/flags/blink_4/cd45fb133ac801eb23b1385114310d9a4c1a437 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/interrupts.o.d" -o ${OBJECTDIR}/_ext/1602753554/interrupts.o ../src/config/tutorial_conf/interrupts.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/exceptions.o: ../src/config/tutorial_conf/exceptions.c  .generated_files/flags/blink_4/7b42b68fd2bfb1b39fbb5b9e4f29da000d3c17e9 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/exceptions.o.d" -o ${OBJECTDIR}/_ext/1602753554/exceptions.o ../src/config/tutorial_conf/exceptions.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/startup_xc32.o: ../src/config/tutorial_conf/startup_xc32.c  .generated_files/flags/blink_4/5ff2bd9d763d470ec4fe35e4095b418e2e87c135 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ../src/config/tutorial_conf/startup_xc32.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/libc_syscalls.o: ../src/config/tutorial_conf/libc_syscalls.c  .generated_files/flags/blink_4/6e9a4d0bc9b5c3a7189cb09cbea317bd01833c4a .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ../src/config/tutorial_conf/libc_syscalls.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_4/75013bb8ba5d7e847773c57bf47f2ccb1887022f .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_4/d0a30bd5bd23ac693896a7b4dd39aeac08b86f3e .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_4/5a12e581c8cf5ee233faa70a0a6db727a014c8ca .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_4/f16b1a1a888ce10e44467b7f0f93c8624e9044cc .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_4/d1fa84378eb5f80cb493455ecdccfbfecb547525 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_4/c596e37926376ac1b37f7558488b5c619ae11d4b .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_4/be3abd4b46d5d0665dc4e26879e8212908006048 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_4/f7ed9db3f5c7fd5e0682153214c95b6c777d7af6 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_4/4630b889abece171b51f7e06172645af7986a2cf .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_4/1ab1dbe4fb6fa3c318cfde90e10d7330caac1eee .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_4/1f4b9da10e15e404fe3edc8fd49a770a05a3d1de .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_4/b8450c7376c2f3379d6f41ad768fb3dd0480fe32 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_4.o: ../../../../blink_4.c  .generated_files/flags/blink_4/b0fc08a1d2e039f74b134f6be2feff319b4bfc54 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_4.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_4.o ../../../../blink_4.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_blinker.o: ../../../../morse_blinker.c  .generated_files/flags/blink_4/f59468d1f254b294b8d3543dc13765b386c7ee6d .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ../../../../morse_blinker.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_msg.o: ../../../../morse_msg.c  .generated_files/flags/blink_4/a7fbc683b1de63c0ca2c469827fcb21263aaefd2 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_msg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_msg.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_msg.o ../../../../morse_msg.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_pqueue.o: ../../../../mulib/core/mu_pqueue.c  .generated_files/flags/blink_4/fd4ebb7290340ed354e1d1287c216a467efd95df .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o ../../../../mulib/core/mu_pqueue.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1987221186/bsp.o: ../src/config/tutorial_conf/bsp/bsp.c  .generated_files/flags/blink_4/19701ac7c972b1b0452f093b0e94c758d0bb8629 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1987221186" 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987221186/bsp.o.d" -o ${OBJECTDIR}/_ext/1987221186/bsp.o ../src/config/tutorial_conf/bsp/bsp.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2044210712/plib_clock.o: ../src/config/tutorial_conf/peripheral/clock/plib_clock.c  .generated_files/flags/blink_4/3bc56e9140b73a50a94b1a51851df6e1e798a75d .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2044210712" 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2044210712/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ../src/config/tutorial_conf/peripheral/clock/plib_clock.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2046360198/plib_evsys.o: ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_4/1b7ca3b72f6f65e83a05001b98e3fecaeb698c38 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2046360198" 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590300056/plib_nvic.o: ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_4/ed3efffe3d7f93c1b7d1ecd2d7db5f4dd7cff829 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590300056" 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o: ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_4/37b32c77fe873443da664bdf8d6eac41e94d2885 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1151464678" 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590353207/plib_port.o: ../src/config/tutorial_conf/peripheral/port/plib_port.c  .generated_files/flags/blink_4/1918cf4c4dc4abd0d20bc8274e6203b9720c1962 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590353207" 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590353207/plib_port.o.d" -o ${OBJECTDIR}/_ext/1590353207/plib_port.o ../src/config/tutorial_conf/peripheral/port/plib_port.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o: ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_4/75ecaebe450297d04bdfa32a09fdd23d41798750 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/466945771" 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o: ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_4/496bddfaca64106ebbbd356c8f36c36a5fc492e9 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/946880333" 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1525165492/xc32_monitor.o: ../src/config/tutorial_conf/stdio/xc32_monitor.c  .generated_files/flags/blink_4/4744a01e191b6c93d010e80b5e3a1823080c9f41 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1525165492" 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ../src/config/tutorial_conf/stdio/xc32_monitor.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/initialization.o: ../src/config/tutorial_conf/initialization.c  .generated_files/flags/blink_4/50439e71d7aaf1dc220bbee120ecd0fc1da0b013 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/initialization.o.d" -o ${OBJECTDIR}/_ext/1602753554/initialization.o ../src/config/tutorial_conf/initialization.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/interrupts.o: ../src/config/tutorial_conf/interrupts.c  .generated_files/flags/blink_4/1e3a52485e79a4b0ad771c0a930ce6b67f09b901 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/interrupts.o.d" -o ${OBJECTDIR}/_ext/1602753554/interrupts.o ../src/config/tutorial_conf/interrupts.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/exceptions.o: ../src/config/tutorial_conf/exceptions.c  .generated_files/flags/blink_4/395429bf4e0c1ac223a4bde04491c3f87563e49c .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/exceptions.o.d" -o ${OBJECTDIR}/_ext/1602753554/exceptions.o ../src/config/tutorial_conf/exceptions.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/startup_xc32.o: ../src/config/tutorial_conf/startup_xc32.c  .generated_files/flags/blink_4/1798661cdaac43ea60881f0282b78e5477328c7e .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ../src/config/tutorial_conf/startup_xc32.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/libc_syscalls.o: ../src/config/tutorial_conf/libc_syscalls.c  .generated_files/flags/blink_4/c7eaba5a002e16384416c0ce17491ec110ab9683 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ../src/config/tutorial_conf/libc_syscalls.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_4/47821a2d15ce02870d5f1f440a932e125af47f8f .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_4/d3581b953a8bee9d4ea70dfaa1b2d1cf1d36ace7 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_4/eb401fcefd6585874247cc5422bc998f9e03fe9b .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_4/93470777e051f48d4ec16b9178d0613ddab1377 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_4/c0a0f009fcf077a2af8b0236745aad5251c22cb4 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_4/bcf2ec231fc49aae8463ea8b4e591814d246030f .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_4/c8960a0b0dacf11ad184c52f75c6ed07c651589e .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_4/45676c9e745969310492eab5047722dc69e8b4e .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_4/7df16c0b1affcfc21b9ffbeda09fbc414ee38bd4 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_4/6ecd6dc7f8772bd1ef4d6b5a492580d262d67ac3 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_4/e8edf357787a7f93913b358f006153de37f812d0 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_4/d50640f30304163d8d5ed2fa8f8bc0b1ac269f0d .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_4.o: ../../../../blink_4.c  .generated_files/flags/blink_4/107e24527836f6ef946098cc9343094fef4c6a6c .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_4.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_4.o ../../../../blink_4.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_blinker.o: ../../../../morse_blinker.c  .generated_files/flags/blink_4/7aeaf2b30ee61142f63ca5c512cfe38e5afc7fcc .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ../../../../morse_blinker.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_msg.o: ../../../../morse_msg.c  .generated_files/flags/blink_4/12f56a8572a51952c84c7577d83376ffc18e9a62 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_msg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_msg.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_msg.o ../../../../morse_msg.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_pqueue.o: ../../../../mulib/core/mu_pqueue.c  .generated_files/flags/blink_4/47db59d4992c43ff0b89e02198c753cf94895ca .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o ../../../../mulib/core/mu_pqueue.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/tutorial_conf/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
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
