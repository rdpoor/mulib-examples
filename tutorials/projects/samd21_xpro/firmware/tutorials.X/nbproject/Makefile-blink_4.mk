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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_4.c ../../../../morse_blinker.c ../../../../morse_msg.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_4.o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ${OBJECTDIR}/_ext/1568745167/morse_msg.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/118631595/bsp.o.d ${OBJECTDIR}/_ext/858834225/plib_clock.o.d ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1358159264/plib_port.o.d ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d ${OBJECTDIR}/_ext/399964549/initialization.o.d ${OBJECTDIR}/_ext/399964549/interrupts.o.d ${OBJECTDIR}/_ext/399964549/exceptions.o.d ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d ${OBJECTDIR}/_ext/1157254703/mu_event.o.d ${OBJECTDIR}/_ext/1157254703/mu_list.o.d ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d ${OBJECTDIR}/_ext/1157254703/mu_str.o.d ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d ${OBJECTDIR}/_ext/1157254703/mu_task.o.d ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d ${OBJECTDIR}/_ext/1539294015/mu_time.o.d ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1568745167/blink_4.o.d ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d ${OBJECTDIR}/_ext/1568745167/morse_msg.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_4.o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ${OBJECTDIR}/_ext/1568745167/morse_msg.o

# Source Files
SOURCEFILES=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_4.c ../../../../morse_blinker.c ../../../../morse_msg.c

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
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_4/8d93c64aea66ca8a82902c0265b8d8ddc6e48133 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_4/bad8b8c49ee18729d7f29a27dad442e065bd56e7 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_4/c4160cc3f4ff0a2ec00e30c53c5d3b7e23e7fac0 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_4/7cf0eb37d896dc5494554f1d3a204094a3a933f9 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_4/76bb342d7d978d49cc35ae6f8fc43bddf74a9b3b .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_4/d9f50beced115711ef313b7caa2defe98e723b3b .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_4/a162844f54dc4a7f59d5e4ce5a6b36ec97e3a39f .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_4/45fa46441694aeeecd34beac3c7922a297bef3d1 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_4/528e611d94cc6cae9a72312c151ac7137f3051a5 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_4/69a1670fb55cfb2905b497beddb6129bb785208f .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_4/1c09bdc51273ca68ea68555ac0dd1a8d61a7be0d .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_4/eda774e3f65b9a721f3d9019e2bceca2aba22735 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_4/e6dcadabcf8d2fb584e28e307662f17363fc2de1 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_4/3686410013402eef33d5ef72d59c80b6307cd2ca .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_4/aaf60511000c0d031b9c1b8d245ff696a987b45a .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_4/e29da86fb0acf2a95190966d8415532dad61ee94 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_4/54b40999c2b81d2996a6c07e17c28366ec8fc0d0 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_4/55e686aba96d3d222182c2aa7c219d271419d199 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_4/80f6e1591551f22d70230bfc48634635c606d3e3 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_4/7e67a13c9e21a934feab7ebd0e2c7e1f7cb99947 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_4/3ce4702cddabc28e8ac4ac523561e97b17869d85 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_4/183ec02d8ad65efebbec4f713a5abd2754e39cc5 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_4/ef93a850ab0644620af1efdd7ecf5d342aefd9f6 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_4/ca9fc0c750e098dd2b6ebe450d3aad3a3a145060 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_4/e5dd758e32aa780bc960de4e0046df519e5d3c8d .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_4/e75bc10512d6a828f453e287a9d2864ac0dac991 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_4/a13c1ae17cecfd0b4c74bd18cdeeaa2c8f06cebc .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_4/3c2344f6cc4dedbb37fda2252d4f285a0acb4bf6 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_4.o: ../../../../blink_4.c  .generated_files/flags/blink_4/cbe4fe6721badb83fb759cdf2e4f357b2d8506d5 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_4.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_4.o ../../../../blink_4.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_blinker.o: ../../../../morse_blinker.c  .generated_files/flags/blink_4/75073fd706e3e592ccecb4401fd4c42f73f3419b .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ../../../../morse_blinker.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_msg.o: ../../../../morse_msg.c  .generated_files/flags/blink_4/c7a7e0eb328e22d9b165aed23e6d0039c85167b1 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_msg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_msg.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_msg.o ../../../../morse_msg.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_4/68f0a4c32b144ac8aee789b82a692d182c13045d .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_4/990fea901bbea711d66371e605b792b7bb272422 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_4/3b1c4501d3e90dda077edd13390c365b51b5c124 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_4/aeaea704ee45bd312c589cb6ad3c07ccb130624b .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_4/57fe0a28f61fa4a640f446fa33b0a460b2b2df4c .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_4/92846ac03cd32a3bc87cbe06b98fd46bc14b5860 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_4/4b97d695ca76a958720fa48b75d2b4e6dcd343ea .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_4/ecea9fa62a656f942ff620e988b0d9f773730de2 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_4/5c4a966710ecb8b0ee34224852f5ad0c2bcb5adc .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_4/743c9e1e8f84dbd8a79952ce69d226908e8e19ab .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_4/e95eed0a7b3f6e30dfdf23ee1c8888bdbd84a6a6 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_4/69da5f6b8823bbd4915cab9521caa727fcbace44 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_4/689dfa29497fb8c035319583f72a4bf22c29aed3 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_4/228377f7a3da55de6d460c990d037cd57574e0d1 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_4/4ec03ca3247f3fb0a938c4b4b52e0bcdcbd14349 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_4/dbdfecefd923187f717678f507416c74b758c122 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_4/67f257559694bf4be2660d316511eafea579fd14 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_4/d187c2ce4bd124c688314a42945318c9846e30ff .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_4/ffc21ef82e0f2d4a77e49c74958085d16268e94c .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_4/fa0a06c662c29e987db262ae5494aae43f1e5062 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_4/f4af755ca8a53305889d994c90e986dfa98a7037 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_4/cd3e498a1a61c2d57ec59e38f5cb5912df23aa06 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_4/5febc0f89892e3d256cafaa6ba93c460a8c9ea73 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_4/7d4f24047bfb9eb0dde6cc3ac3f939dfa52a3e32 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_4/5f79b7cb75f5bf9a9862c8eb1337b32fe291703f .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_4/5f892e07987e61da727e8497cb4a9db6629bbd6b .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_4/10cca824c781151025aeb34f0558b176b3148c1c .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_4/e89505ea529f857bca388482310d89328df8959a .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_4.o: ../../../../blink_4.c  .generated_files/flags/blink_4/34e914327e5b43803234598b726605b34fd9be9f .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_4.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_4.o ../../../../blink_4.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_blinker.o: ../../../../morse_blinker.c  .generated_files/flags/blink_4/97afa9eb2a01e2d08a0369de584d45ef286b4da5 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_blinker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_blinker.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_blinker.o ../../../../morse_blinker.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/morse_msg.o: ../../../../morse_msg.c  .generated_files/flags/blink_4/73d91efc5fcfaed8d29a463bf2112afd0cc23251 .generated_files/flags/blink_4/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/morse_msg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/morse_msg.o.d" -o ${OBJECTDIR}/_ext/1568745167/morse_msg.o ../../../../morse_msg.c    -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_blink_4=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/tutorials.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/blink_1/ATSAMD21J18A.ld
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
