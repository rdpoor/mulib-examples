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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/118631595/bsp.o.d ${OBJECTDIR}/_ext/858834225/plib_clock.o.d ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1358159264/plib_port.o.d ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d ${OBJECTDIR}/_ext/399964549/initialization.o.d ${OBJECTDIR}/_ext/399964549/interrupts.o.d ${OBJECTDIR}/_ext/399964549/exceptions.o.d ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d ${OBJECTDIR}/_ext/1157254703/mu_event.o.d ${OBJECTDIR}/_ext/1157254703/mu_list.o.d ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d ${OBJECTDIR}/_ext/1157254703/mu_str.o.d ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d ${OBJECTDIR}/_ext/1157254703/mu_task.o.d ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d ${OBJECTDIR}/_ext/1539294015/mu_time.o.d ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1568745167/blink_1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/118631595/bsp.o ${OBJECTDIR}/_ext/858834225/plib_clock.o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ${OBJECTDIR}/_ext/1358159264/plib_port.o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ${OBJECTDIR}/_ext/399964549/initialization.o ${OBJECTDIR}/_ext/399964549/interrupts.o ${OBJECTDIR}/_ext/399964549/exceptions.o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ${OBJECTDIR}/_ext/1157254703/mu_event.o ${OBJECTDIR}/_ext/1157254703/mu_list.o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ${OBJECTDIR}/_ext/1157254703/mu_str.o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ${OBJECTDIR}/_ext/1157254703/mu_task.o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ${OBJECTDIR}/_ext/1539294015/mu_time.o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1568745167/blink_1.o

# Source Files
SOURCEFILES=../src/config/blink_1/bsp/bsp.c ../src/config/blink_1/peripheral/clock/plib_clock.c ../src/config/blink_1/peripheral/evsys/plib_evsys.c ../src/config/blink_1/peripheral/nvic/plib_nvic.c ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/blink_1/peripheral/port/plib_port.c ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/blink_1/stdio/xc32_monitor.c ../src/config/blink_1/initialization.c ../src/config/blink_1/interrupts.c ../src/config/blink_1/exceptions.c ../src/config/blink_1/startup_xc32.c ../src/config/blink_1/libc_syscalls.c ../../../../mulib/core/mu_access_mgr.c ../../../../mulib/core/mu_event.c ../../../../mulib/core/mu_list.c ../../../../mulib/core/mu_periodic.c ../../../../mulib/core/mu_queue.c ../../../../mulib/core/mu_sched.c ../../../../mulib/core/mu_spsc.c ../../../../mulib/core/mu_str.c ../../../../mulib/core/mu_strbuf.c ../../../../mulib/core/mu_task.c ../../../../mulib/core/mu_task_list.c ../../../../platforms/samd21_xpro/mu_time.c ../../../../platforms/samd21_xpro/tutorials_bsp.c ../src/main.c ../../../../blink_1.c

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
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_1/a28d4579c1bf23d56a9739b7ae762f4d637b7fd3 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_1/14ac6630de5275af5d475410541740e68a4ec3a8 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_1/ce0b8d887e7fd7256723be51d512638252caefc3 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_1/5c716ec89d8c55e8783d5629fb58b8da7646b264 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_1/19651719b06efc135ef04d5acf90332886137fa .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_1/63493fb10925d12362866e2c5d6049360387bb92 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_1/4af9ed44420ce277b402dd1e77e65031216b5a73 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_1/984db2a3154261c831ba4c25fd513aaa373f06ee .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_1/5834cee98f27a2bc58224f1330fd8c07a89e4f29 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_1/59cfffa3e543cd5b35703fc6f2bde5601b17074f .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_1/ee30a61c29acdc246fbfa2cffda6c5c3a0e98903 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_1/90d7d6f97b2bb9cf681643da5767d9bcde6da2c6 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_1/fc984df8fa17568df9b8409802d0e1a2f54efc08 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_1/359ecc3eb62715eae46592bfc11b505b395a328c .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_1/a2b3ceefdc74d4980fc498a20bf4b96cab7f6370 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_1/6773879d062be5691649ffeaeb4c35c2038b489e .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_1/7291025fdf366f4cd57ec8cd06f6aa16a7a80672 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_1/14cd31a86afcc5bebf2290238203466c00716e26 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_1/bae0666b563363c5a87efca26849c2ab8f6ddf8a .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_1/ff7b22dc974c86c35502e299c62bf7947edae395 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_1/56e41f4e56ec24c6a84c44185a9d2478d108665e .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_1/f6b795df6de954256cc1c3ece3dff8698d8a8959 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_1/14e5f290558165d29cb45de9d71fefe95e8e7f34 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_1/6231a5e0628798333f03187081d58df1454f23de .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_1/b2df18cd179872c63a245c4396e8e2df7a147942 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_1/55a98a70bc82369e92bd21ffec4936c819986ed0 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_1/f23a5915a5dde7c694a869ac2fd73242d17f7fab .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_1/fea87c136a4fa11e8ebf5f9cdf8a2213a2cd6812 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_1.o: ../../../../blink_1.c  .generated_files/flags/blink_1/d4e1c9cfa36a97a9d1e4042a15a85a2339b0f62e .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_1.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_1.o ../../../../blink_1.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/118631595/bsp.o: ../src/config/blink_1/bsp/bsp.c  .generated_files/flags/blink_1/2be4a53f72092e6c5d745616b3559c966b88c01b .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/118631595" 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/118631595/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118631595/bsp.o.d" -o ${OBJECTDIR}/_ext/118631595/bsp.o ../src/config/blink_1/bsp/bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/858834225/plib_clock.o: ../src/config/blink_1/peripheral/clock/plib_clock.c  .generated_files/flags/blink_1/78ce11e176bfdab826eb4b9e2f6f898648b7895f .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/858834225" 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/858834225/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/858834225/plib_clock.o.d" -o ${OBJECTDIR}/_ext/858834225/plib_clock.o ../src/config/blink_1/peripheral/clock/plib_clock.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/856684739/plib_evsys.o: ../src/config/blink_1/peripheral/evsys/plib_evsys.c  .generated_files/flags/blink_1/1ae14ce834d9dfbac0448e3962f544155ab79364 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/856684739" 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/856684739/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856684739/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/856684739/plib_evsys.o ../src/config/blink_1/peripheral/evsys/plib_evsys.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358106113/plib_nvic.o: ../src/config/blink_1/peripheral/nvic/plib_nvic.c  .generated_files/flags/blink_1/673b5536c8509a41ae73375c0e7a0518964b519b .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358106113" 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358106113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358106113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1358106113/plib_nvic.o ../src/config/blink_1/peripheral/nvic/plib_nvic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o: ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/blink_1/1630eded168be736e1b5a510e45c92f69cb5641c .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/751093265" 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/751093265/plib_nvmctrl.o ../src/config/blink_1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1358159264/plib_port.o: ../src/config/blink_1/peripheral/port/plib_port.c  .generated_files/flags/blink_1/e52c3d1cf82762e02de0f290fa2071cde150302 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1358159264" 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1358159264/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1358159264/plib_port.o.d" -o ${OBJECTDIR}/_ext/1358159264/plib_port.o ../src/config/blink_1/peripheral/port/plib_port.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o: ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/blink_1/6d2433068b0d31c4067152c1dcc95860e37fcbe2 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1480207006" 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1480207006/plib_rtc_timer.o ../src/config/blink_1/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o: ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/blink_1/992fde39d3a1c899bb2ccaf2b40bb75c9763f313 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1045772618" 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/1045772618/plib_sercom3_usart.o ../src/config/blink_1/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1943432715/xc32_monitor.o: ../src/config/blink_1/stdio/xc32_monitor.c  .generated_files/flags/blink_1/d3d4cf50e6352d7149aa1e3450456c4ec1a157e5 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1943432715" 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1943432715/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1943432715/xc32_monitor.o ../src/config/blink_1/stdio/xc32_monitor.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/initialization.o: ../src/config/blink_1/initialization.c  .generated_files/flags/blink_1/3d5f7b01d74d4d1125c151a57e8ac180d15619d0 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/initialization.o.d" -o ${OBJECTDIR}/_ext/399964549/initialization.o ../src/config/blink_1/initialization.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/interrupts.o: ../src/config/blink_1/interrupts.c  .generated_files/flags/blink_1/b8c1fa7e2b15bfe572f533effe183324b0bd7c80 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/interrupts.o.d" -o ${OBJECTDIR}/_ext/399964549/interrupts.o ../src/config/blink_1/interrupts.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/exceptions.o: ../src/config/blink_1/exceptions.c  .generated_files/flags/blink_1/e1a7e5102085e301e3a8262cb2e8652620552ac7 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/exceptions.o.d" -o ${OBJECTDIR}/_ext/399964549/exceptions.o ../src/config/blink_1/exceptions.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/startup_xc32.o: ../src/config/blink_1/startup_xc32.c  .generated_files/flags/blink_1/fd2bcfde7bc45ac1d9dfd86e3bce7437dfb40743 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/399964549/startup_xc32.o ../src/config/blink_1/startup_xc32.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/399964549/libc_syscalls.o: ../src/config/blink_1/libc_syscalls.c  .generated_files/flags/blink_1/dc73bc2dfd30096a0bdf62c3e2796aa01e2acf3d .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/399964549" 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/399964549/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/399964549/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/399964549/libc_syscalls.o ../src/config/blink_1/libc_syscalls.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o: ../../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_1/c4d30b9ea3b913863b0080ab341b9f5510576b29 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_access_mgr.o ../../../../mulib/core/mu_access_mgr.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_event.o: ../../../../mulib/core/mu_event.c  .generated_files/flags/blink_1/6d9bf3e900e68b0f97c8edc33583cd13dbb62a55 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_event.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_event.o ../../../../mulib/core/mu_event.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_list.o: ../../../../mulib/core/mu_list.c  .generated_files/flags/blink_1/54601ccef628c8f39a6ce3c43540f3eb6da7eb7d .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_list.o ../../../../mulib/core/mu_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_periodic.o: ../../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_1/c660631784e11e179b660e99414a7726a243bc1f .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_periodic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_periodic.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_periodic.o ../../../../mulib/core/mu_periodic.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_queue.o: ../../../../mulib/core/mu_queue.c  .generated_files/flags/blink_1/996d7823c5eb44c54ede98e096ed0a1152057a7 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_queue.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_queue.o ../../../../mulib/core/mu_queue.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_sched.o: ../../../../mulib/core/mu_sched.c  .generated_files/flags/blink_1/24731e6ef5cc5ffba4dbde6b9113dcf30be01b63 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_sched.o ../../../../mulib/core/mu_sched.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_spsc.o: ../../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_1/6eeedd5709fcb678b9566f3678a5687864fded1a .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_spsc.o ../../../../mulib/core/mu_spsc.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_str.o: ../../../../mulib/core/mu_str.c  .generated_files/flags/blink_1/1448ed40f9cf216cdb349da82ddb19914666aa7e .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_str.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_str.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_str.o ../../../../mulib/core/mu_str.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_strbuf.o: ../../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_1/575de1f7dd013be5050f08771dc5e667cefc5b9 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_strbuf.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_strbuf.o ../../../../mulib/core/mu_strbuf.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task.o: ../../../../mulib/core/mu_task.c  .generated_files/flags/blink_1/9b8ea7f2cddc88834796c323d16f1dc140b54848 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task.o ../../../../mulib/core/mu_task.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1157254703/mu_task_list.o: ../../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_1/6beb0e65f174f46c4553762bea8cd91965e8f397 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1157254703" 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157254703/mu_task_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1157254703/mu_task_list.o.d" -o ${OBJECTDIR}/_ext/1157254703/mu_task_list.o ../../../../mulib/core/mu_task_list.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/mu_time.o: ../../../../platforms/samd21_xpro/mu_time.c  .generated_files/flags/blink_1/27f8a602c7ba1b98392f5845039acf0013595e65 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/mu_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/mu_time.o.d" -o ${OBJECTDIR}/_ext/1539294015/mu_time.o ../../../../platforms/samd21_xpro/mu_time.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o: ../../../../platforms/samd21_xpro/tutorials_bsp.c  .generated_files/flags/blink_1/8cea8398b96688280a7debc6e997be0d58d9630 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1539294015" 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o.d" -o ${OBJECTDIR}/_ext/1539294015/tutorials_bsp.o ../../../../platforms/samd21_xpro/tutorials_bsp.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/blink_1/9c266b36e609e0d52a6163298fbcca701bc0c579 .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1568745167/blink_1.o: ../../../../blink_1.c  .generated_files/flags/blink_1/bab52c2ed531345fcbed0157c3073a176bc56b9b .generated_files/flags/blink_1/432f9cdec26d5725061bbc0525710627852d6da6
	@${MKDIR} "${OBJECTDIR}/_ext/1568745167" 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1568745167/blink_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/blink_1" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../" -I"../../../../mulib/core" -I"../../../../mulib/extras" -I"../../../../platforms/samd21_xpro" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1568745167/blink_1.o.d" -o ${OBJECTDIR}/_ext/1568745167/blink_1.o ../../../../blink_1.c    -DXPRJ_blink_1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
