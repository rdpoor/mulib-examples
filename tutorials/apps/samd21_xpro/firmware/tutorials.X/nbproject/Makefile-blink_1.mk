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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/tutorial_conf/bsp/bsp.c ../src/config/tutorial_conf/peripheral/clock/plib_clock.c ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/tutorial_conf/peripheral/port/plib_port.c ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/tutorial_conf/stdio/xc32_monitor.c ../src/config/tutorial_conf/initialization.c ../src/config/tutorial_conf/interrupts.c ../src/config/tutorial_conf/exceptions.c ../src/config/tutorial_conf/startup_xc32.c ../src/config/tutorial_conf/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_1.c ../../../../mulib/core/mu_pqueue.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1987221186/bsp.o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ${OBJECTDIR}/_ext/1590353207/plib_port.o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ${OBJECTDIR}/_ext/1602753554/initialization.o ${OBJECTDIR}/_ext/1602753554/interrupts.o ${OBJECTDIR}/_ext/1602753554/exceptions.o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_1.o ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1987221186/bsp.o.d ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1590353207/plib_port.o.d ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d ${OBJECTDIR}/_ext/1602753554/initialization.o.d ${OBJECTDIR}/_ext/1602753554/interrupts.o.d ${OBJECTDIR}/_ext/1602753554/exceptions.o.d ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d ${OBJECTDIR}/_ext/1157254703/mu_list.o.d ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d ${OBJECTDIR}/_ext/1157254703/mu_str.o.d ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d ${OBJECTDIR}/_ext/1157254703/mu_task.o.d ${OBJECTDIR}/_ext/1539294015/mu_time.o.d ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1568745167/blink_1.o.d ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1987221186/bsp.o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ${OBJECTDIR}/_ext/1590353207/plib_port.o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ${OBJECTDIR}/_ext/1602753554/initialization.o ${OBJECTDIR}/_ext/1602753554/interrupts.o ${OBJECTDIR}/_ext/1602753554/exceptions.o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_1.o ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o

# Source Files
SOURCEFILES=../src/config/tutorial_conf/bsp/bsp.c ../src/config/tutorial_conf/peripheral/clock/plib_clock.c ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/tutorial_conf/peripheral/port/plib_port.c ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/tutorial_conf/stdio/xc32_monitor.c ../src/config/tutorial_conf/initialization.c ../src/config/tutorial_conf/interrupts.c ../src/config/tutorial_conf/exceptions.c ../src/config/tutorial_conf/startup_xc32.c ../src/config/tutorial_conf/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_1.c ../../../../mulib/core/mu_pqueue.c

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
${OBJECTDIR}/_ext/1987221186/bsp.o: ../src/config/tutorial_conf/bsp/bsp.c  .generated_files/flags/blink_1/aeddb4f0d467481d29e7e9d8e823f275d404e1f4 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1987221186" 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987221186/bsp.o.d" -o ${OBJECTDIR}/_ext/1987221186/bsp.o ../src/config/tutorial_conf/bsp/bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2044210712/plib_clock.o: ../src/config/tutorial_conf/peripheral/clock/plib_clock.c  .generated_files/flags/blink_1/97828ea05f39ce90dd8e271fa2123d61a2ff280d .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2044210712" 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2044210712/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ../src/config/tutorial_conf/peripheral/clock/plib_clock.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2046360198/plib_evsys.o: ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_1/b801a23b89ad7bd9fa1fbb007a2f15a2c6bdbf45 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2046360198" 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590300056/plib_nvic.o: ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_1/2c1f5cb9a56862e917d90aeab0519d51f3c5df88 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590300056" 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o: ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_1/3378f1536eb1c0f6b26ca3966b97f7e03e169b78 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1151464678" 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590353207/plib_port.o: ../src/config/tutorial_conf/peripheral/port/plib_port.c  .generated_files/flags/blink_1/25a5a0f19dc5f593a0a371a261fb4590b844e141 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590353207" 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590353207/plib_port.o.d" -o ${OBJECTDIR}/_ext/1590353207/plib_port.o ../src/config/tutorial_conf/peripheral/port/plib_port.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o: ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_1/2ded81aa2e6934e84a01d13ab95979abc7451f8f .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/466945771" 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o: ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_1/12114f8e73d35efb31a35634ddd3520da0e7416c .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/946880333" 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1525165492/xc32_monitor.o: ../src/config/tutorial_conf/stdio/xc32_monitor.c  .generated_files/flags/blink_1/10f96b04058cb130973fe18b9972f96866e3598d .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1525165492" 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ../src/config/tutorial_conf/stdio/xc32_monitor.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/initialization.o: ../src/config/tutorial_conf/initialization.c  .generated_files/flags/blink_1/4946906c4ac8617e8226dca2c30b9d7f6ee27d6a .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/initialization.o.d" -o ${OBJECTDIR}/_ext/1602753554/initialization.o ../src/config/tutorial_conf/initialization.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/interrupts.o: ../src/config/tutorial_conf/interrupts.c  .generated_files/flags/blink_1/3cafb037eed21bee79fcdf81da3af1f7f30a48a0 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/interrupts.o.d" -o ${OBJECTDIR}/_ext/1602753554/interrupts.o ../src/config/tutorial_conf/interrupts.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/exceptions.o: ../src/config/tutorial_conf/exceptions.c  .generated_files/flags/blink_1/a5ce3416667204b8c7aa4d3f5bec81389e5bf815 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/exceptions.o.d" -o ${OBJECTDIR}/_ext/1602753554/exceptions.o ../src/config/tutorial_conf/exceptions.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/startup_xc32.o: ../src/config/tutorial_conf/startup_xc32.c  .generated_files/flags/blink_1/8cd6b7e4345aa41efc7a0cd961cf102801fd068b .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ../src/config/tutorial_conf/startup_xc32.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/libc_syscalls.o: ../src/config/tutorial_conf/libc_syscalls.c  .generated_files/flags/blink_1/1304dc81c40b205b74296a341317e5a694e08601 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ../src/config/tutorial_conf/libc_syscalls.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_1/df2cebd11fca6ba92e88039712d01fd03969f023 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_1/57788cff2d156e199893b6cbaf40075e14dc3999 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_1/55d841f48c9183e42f9c5a06ebfba8bc4c6ca8db .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_1/9e5fcb5f4554fa8dfa5ef9b682d0cf850aede54e .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_1/cc3f61cea7e3cb3001e7d1e71252a87c3fa7c06f .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_1/9e84d60c6a9da5d9321c2cca15d30cff5ed071c5 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_1/130791d08218c6f9df103ec64d0fe6e1fe4169d5 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_1/11100db1a72c407dd62e11a22c7745a05c86432d .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_1/370ee9b1c354468e3db9c00fc40932e29dcee1f0 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_1/f1dc1c5db60016b19011a9e0e87a44c02a29734b .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_1/50061b87d1f49232bb01983479998c6ec00d4918 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_1/606de92a09c07f5d7a0523f0f140494ccf0ea9e1 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_1.o: ../../../../blink_1.c  .generated_files/flags/blink_1/dafee73def82e85730024911c7e3664291a59058 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_1.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_1.o ../../../../blink_1.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_pqueue.o: ../../../../mulib/core/mu_pqueue.c  .generated_files/flags/blink_1/c00ba340ae0fdbfca6bba34f87c2a4216bee1915 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o ../../../../mulib/core/mu_pqueue.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1987221186/bsp.o: ../src/config/tutorial_conf/bsp/bsp.c  .generated_files/flags/blink_1/deeba2fa25080307edee4d5921cbfec2acdc8e66 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1987221186" 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987221186/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987221186/bsp.o.d" -o ${OBJECTDIR}/_ext/1987221186/bsp.o ../src/config/tutorial_conf/bsp/bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2044210712/plib_clock.o: ../src/config/tutorial_conf/peripheral/clock/plib_clock.c  .generated_files/flags/blink_1/aa5511b6e9731b2cae9cdccf0a61cf6474aa07bc .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2044210712" 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2044210712/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2044210712/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2044210712/plib_clock.o ../src/config/tutorial_conf/peripheral/clock/plib_clock.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2046360198/plib_evsys.o: ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_1/d7f589891f82aab22bb993ac31cf28079ccafa96 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/2046360198" 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046360198/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046360198/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2046360198/plib_evsys.o ../src/config/tutorial_conf/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590300056/plib_nvic.o: ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_1/8cf62ad3d2c4d4638fbc8d6464aed04ae7a2737d .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590300056" 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590300056/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590300056/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1590300056/plib_nvic.o ../src/config/tutorial_conf/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o: ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_1/7d8fa1e43e4b9fa515ec17e41dad5ea411df8626 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1151464678" 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1151464678/plib_nvmctrl.o ../src/config/tutorial_conf/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1590353207/plib_port.o: ../src/config/tutorial_conf/peripheral/port/plib_port.c  .generated_files/flags/blink_1/9ab0a214a7b040b47f4763f559a29aeb51c40762 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1590353207" 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1590353207/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1590353207/plib_port.o.d" -o ${OBJECTDIR}/_ext/1590353207/plib_port.o ../src/config/tutorial_conf/peripheral/port/plib_port.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o: ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_1/9c4d78569b558dc1cbe2a494eec2b19f9ce4e73b .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/466945771" 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/466945771/plib_rtc_timer.o ../src/config/tutorial_conf/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o: ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_1/ae5d6650147eaf2e813c10937148feae6f1efd4c .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/946880333" 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/946880333/plib_sercom3_usart.o ../src/config/tutorial_conf/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1525165492/xc32_monitor.o: ../src/config/tutorial_conf/stdio/xc32_monitor.c  .generated_files/flags/blink_1/76807242d46b6e03c1e1ab1e139772481b8ff991 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1525165492" 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1525165492/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1525165492/xc32_monitor.o ../src/config/tutorial_conf/stdio/xc32_monitor.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/initialization.o: ../src/config/tutorial_conf/initialization.c  .generated_files/flags/blink_1/63624f550372d6d5db9050be3a242fa44116c9ef .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/initialization.o.d" -o ${OBJECTDIR}/_ext/1602753554/initialization.o ../src/config/tutorial_conf/initialization.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/interrupts.o: ../src/config/tutorial_conf/interrupts.c  .generated_files/flags/blink_1/6037a8210fda087e9cd0d2dae825ca01cc9f5654 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/interrupts.o.d" -o ${OBJECTDIR}/_ext/1602753554/interrupts.o ../src/config/tutorial_conf/interrupts.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/exceptions.o: ../src/config/tutorial_conf/exceptions.c  .generated_files/flags/blink_1/e6a81bda93a59374629a9833b19da4d5141f371a .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/exceptions.o.d" -o ${OBJECTDIR}/_ext/1602753554/exceptions.o ../src/config/tutorial_conf/exceptions.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/startup_xc32.o: ../src/config/tutorial_conf/startup_xc32.c  .generated_files/flags/blink_1/5fe61126571cda5f9fe72ff02f4431a4ee9f7259 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1602753554/startup_xc32.o ../src/config/tutorial_conf/startup_xc32.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602753554/libc_syscalls.o: ../src/config/tutorial_conf/libc_syscalls.c  .generated_files/flags/blink_1/85b62b06cb08a59e6a92a411ddf82c4b6aa8364e .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1602753554" 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602753554/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1602753554/libc_syscalls.o ../src/config/tutorial_conf/libc_syscalls.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_1/129482357b6e0dc71694c00b05630bdf2d04ca82 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_1/755de4c18f7ccd4017fbfcd95f96892207253985 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_1/a49c575f182f3b5a3787dc2f37321ac47e1c6307 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_1/207e9fc047e21784f7567ae6802acf6eb9aed11 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_1/93edb4d5037366b72dad6c624a693a97ce012a37 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_1/4f5ce8bb504b9ba868cd792238a26cfee2850a0a .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_1/2d95743c300d242c7a7962b115b94e2bf21909e0 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_1/240ab325a223628230b7829f8f987065d787eaf .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_1/f29e0000d8dda13f4f426b4a87251fc376753959 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_1/deee04d019f90c359452cd9066a42c32644ca53f .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_1/4fc8d50577a45bccde4f943bd4f1a1dc0db08098 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_1/92da6bd2f554e0925df194577bcf0d0b6474ab51 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_1.o: ../../../../blink_1.c  .generated_files/flags/blink_1/f0fc6d3a4d9d9d71e1be0958ffcce35b4448af4c .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_1.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_1.o ../../../../blink_1.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_pqueue.o: ../../../../mulib/core/mu_pqueue.c  .generated_files/flags/blink_1/3d63920cdd06fb321039f18a0710c86982aff8a8 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/tutorial_conf" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_pqueue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_pqueue.o ../../../../mulib/core/mu_pqueue.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/tutorial_conf/ATSAMD21J18A.ld
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
