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
FINAL_IMAGE=${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=../../../platforms/ATTiny817/mu_time.c ../../../platforms/ATTiny817/tutorials_bsp.c mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/pin_manager.c mcc_generated_files/src/usart0.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/rtc.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c ../../../mulib/core/mu_access_mgr.c ../../../mulib/core/mu_event.c ../../../mulib/core/mu_list.c ../../../mulib/core/mu_periodic.c ../../../mulib/core/mu_queue.c ../../../mulib/core/mu_sched.c ../../../mulib/core/mu_spsc.c ../../../mulib/core/mu_str.c ../../../mulib/core/mu_strbuf.c ../../../mulib/core/mu_task.c ../../../mulib/core/mu_task_list.c main.c ../../../blink_3.c ../../../morse_blinker.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/68593779/mu_time.o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ${OBJECTDIR}/_ext/993283936/mu_event.o ${OBJECTDIR}/_ext/993283936/mu_list.o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ${OBJECTDIR}/_ext/993283936/mu_queue.o ${OBJECTDIR}/_ext/993283936/mu_sched.o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ${OBJECTDIR}/_ext/993283936/mu_str.o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ${OBJECTDIR}/_ext/993283936/mu_task.o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2124829536/blink_3.o ${OBJECTDIR}/_ext/2124829536/morse_blinker.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/68593779/mu_time.o.d ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d ${OBJECTDIR}/_ext/993283936/mu_event.o.d ${OBJECTDIR}/_ext/993283936/mu_list.o.d ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d ${OBJECTDIR}/_ext/993283936/mu_queue.o.d ${OBJECTDIR}/_ext/993283936/mu_sched.o.d ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d ${OBJECTDIR}/_ext/993283936/mu_str.o.d ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d ${OBJECTDIR}/_ext/993283936/mu_task.o.d ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/2124829536/blink_3.o.d ${OBJECTDIR}/_ext/2124829536/morse_blinker.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/68593779/mu_time.o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ${OBJECTDIR}/_ext/993283936/mu_event.o ${OBJECTDIR}/_ext/993283936/mu_list.o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ${OBJECTDIR}/_ext/993283936/mu_queue.o ${OBJECTDIR}/_ext/993283936/mu_sched.o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ${OBJECTDIR}/_ext/993283936/mu_str.o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ${OBJECTDIR}/_ext/993283936/mu_task.o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2124829536/blink_3.o ${OBJECTDIR}/_ext/2124829536/morse_blinker.o

# Source Files
SOURCEFILES=../../../platforms/ATTiny817/mu_time.c ../../../platforms/ATTiny817/tutorials_bsp.c mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/pin_manager.c mcc_generated_files/src/usart0.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/rtc.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c ../../../mulib/core/mu_access_mgr.c ../../../mulib/core/mu_event.c ../../../mulib/core/mu_list.c ../../../mulib/core/mu_periodic.c ../../../mulib/core/mu_queue.c ../../../mulib/core/mu_sched.c ../../../mulib/core/mu_spsc.c ../../../mulib/core/mu_str.c ../../../mulib/core/mu_strbuf.c ../../../mulib/core/mu_task.c ../../../mulib/core/mu_task_list.c main.c ../../../blink_3.c ../../../morse_blinker.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/attiny817"



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
	${MAKE}  -f nbproject/Makefile-blink_3.mk ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny817
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/blink_3/5a00a16f1bd5ec74537c82a21ebd1f824ab38f25 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -DDEBUG  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_blink_3=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/blink_3/6211a28488f96e47f5af2dd2493209d3380a0a65 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_blink_3=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/68593779/mu_time.o: ../../../platforms/ATTiny817/mu_time.c  .generated_files/flags/blink_3/5a81a597d83f88f7bd53db82f265b86ff17d53a5 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT ${OBJECTDIR}/_ext/68593779/mu_time.o  -o ${OBJECTDIR}/_ext/68593779/mu_time.o ../../../platforms/ATTiny817/mu_time.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/tutorials_bsp.o: ../../../platforms/ATTiny817/tutorials_bsp.c  .generated_files/flags/blink_3/ef94b69f732f890200b4a8c0123d276bcba6077f .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o  -o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ../../../platforms/ATTiny817/tutorials_bsp.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/blink_3/b694c5cf365e03cba667aea68ae124fb64a364ad .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/blink_3/4ae3dad2e806b664f78b7a73b0d73108e09808d9 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/blink_3/22a576c6898c87168094e0305e98d7a1fca72b2c .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/blink_3/be0b57103d2b5eb22df7b769b700a046a1405407 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/blink_3/a1f2b499ee2c99b8ac800d60dfbb37b792e7298a .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/blink_3/dde69095ccf5b3b394f2f3b4480e5c1751c96231 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/blink_3/743f40e65098664bb63652afa4762d3b228350da .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/blink_3/6db1c6dc2ff8b0a0fe6f4adf45aa09ae271039 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_access_mgr.o: ../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_3/b02b9d5b39754434c4140be2b63e9b877ebf13bc .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o  -o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ../../../mulib/core/mu_access_mgr.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_event.o: ../../../mulib/core/mu_event.c  .generated_files/flags/blink_3/3ee39edf806b4f6f6948cfb4640edd73034ac1b4 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_event.o  -o ${OBJECTDIR}/_ext/993283936/mu_event.o ../../../mulib/core/mu_event.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_list.o: ../../../mulib/core/mu_list.c  .generated_files/flags/blink_3/43d0d62ecf7934defb1e83498197f525fdf088a0 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_list.o ../../../mulib/core/mu_list.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_periodic.o: ../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_3/f560010a3a1aaa0944409910faa280c449d9d681 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_periodic.o  -o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ../../../mulib/core/mu_periodic.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_queue.o: ../../../mulib/core/mu_queue.c  .generated_files/flags/blink_3/71c293b1e5b21c786c824488aa617639388e8fbb .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_queue.o  -o ${OBJECTDIR}/_ext/993283936/mu_queue.o ../../../mulib/core/mu_queue.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_sched.o: ../../../mulib/core/mu_sched.c  .generated_files/flags/blink_3/5a029619945cbf72dbc92c958cd873ace511582c .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_sched.o  -o ${OBJECTDIR}/_ext/993283936/mu_sched.o ../../../mulib/core/mu_sched.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_spsc.o: ../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_3/c6f3f992d4da19c38bccf7d40cea68c562eb9547 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_spsc.o  -o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ../../../mulib/core/mu_spsc.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_str.o: ../../../mulib/core/mu_str.c  .generated_files/flags/blink_3/3178e88d415d010587e4c0b2e85fb380be2753e4 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_str.o  -o ${OBJECTDIR}/_ext/993283936/mu_str.o ../../../mulib/core/mu_str.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_strbuf.o: ../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_3/906dfb5270ba596103ea7c89884e49553e0ffedf .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_strbuf.o  -o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ../../../mulib/core/mu_strbuf.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task.o: ../../../mulib/core/mu_task.c  .generated_files/flags/blink_3/15bf65e2b7ad8762aa0d4f115d0ce33a51e525e1 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task.o  -o ${OBJECTDIR}/_ext/993283936/mu_task.o ../../../mulib/core/mu_task.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task_list.o: ../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_3/6d88a1f0cf23648678500f50cfeeb77cded1e2b4 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ../../../mulib/core/mu_task_list.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/blink_3/8908ff295580a25b19ebf038d587475ec58ee3e5 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/blink_3.o: ../../../blink_3.c  .generated_files/flags/blink_3/25b3cde06e52a97787304b9ac4fa4dec2756f5fb .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_3.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/blink_3.o.d" -MT "${OBJECTDIR}/_ext/2124829536/blink_3.o.d" -MT ${OBJECTDIR}/_ext/2124829536/blink_3.o  -o ${OBJECTDIR}/_ext/2124829536/blink_3.o ../../../blink_3.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/morse_blinker.o: ../../../morse_blinker.c  .generated_files/flags/blink_3/af4ec97c2c06b1ebeccb08f6de7c443a40b598b9 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/morse_blinker.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/morse_blinker.o.d" -MT "${OBJECTDIR}/_ext/2124829536/morse_blinker.o.d" -MT ${OBJECTDIR}/_ext/2124829536/morse_blinker.o  -o ${OBJECTDIR}/_ext/2124829536/morse_blinker.o ../../../morse_blinker.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/68593779/mu_time.o: ../../../platforms/ATTiny817/mu_time.c  .generated_files/flags/blink_3/6951399da30fc91e1a543f8ed5af9edf0266d182 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT ${OBJECTDIR}/_ext/68593779/mu_time.o  -o ${OBJECTDIR}/_ext/68593779/mu_time.o ../../../platforms/ATTiny817/mu_time.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/tutorials_bsp.o: ../../../platforms/ATTiny817/tutorials_bsp.c  .generated_files/flags/blink_3/d3a59fc6fc01f78105c5acb07dfca317cf418837 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o  -o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ../../../platforms/ATTiny817/tutorials_bsp.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/blink_3/463ddc29e72e33694f65eaf7888ecc6a84929405 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/blink_3/e7205461b0d4858b941f371be8a782751c322e8b .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/blink_3/dbf8631fab324cb16e2d9e38d20db9f3c0e47d29 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/blink_3/21398429560f806787b1c127438890337df3dd46 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/blink_3/f3ac9a9e209e8138ad3e32dd8867bc7c74b4d7a8 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/blink_3/af4a341ca09d4f0aca3e464c540456b5b8bb1e17 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/blink_3/3d23ef504006eece4eb42514418d1babaacfa618 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/blink_3/5a2a50c979cabde197e434cd47eb6da26dd258f0 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_access_mgr.o: ../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_3/c2a7aa034c8876ddf236269d1f2ff45fefcec8b0 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o  -o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ../../../mulib/core/mu_access_mgr.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_event.o: ../../../mulib/core/mu_event.c  .generated_files/flags/blink_3/339ca7ba9b891461b9deb94fa460499aab5c77db .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_event.o  -o ${OBJECTDIR}/_ext/993283936/mu_event.o ../../../mulib/core/mu_event.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_list.o: ../../../mulib/core/mu_list.c  .generated_files/flags/blink_3/124aa70c8346424e99ae0defdd3fd495a43b6073 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_list.o ../../../mulib/core/mu_list.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_periodic.o: ../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_3/fddff2455f1911091f0033f05b585c00bcb9379e .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_periodic.o  -o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ../../../mulib/core/mu_periodic.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_queue.o: ../../../mulib/core/mu_queue.c  .generated_files/flags/blink_3/cb24efca0b7b7a10880c992491d6f983dde5fd92 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_queue.o  -o ${OBJECTDIR}/_ext/993283936/mu_queue.o ../../../mulib/core/mu_queue.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_sched.o: ../../../mulib/core/mu_sched.c  .generated_files/flags/blink_3/11bdb1d5d4a40b581a2f7d5ceaf2eda138c3f80e .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_sched.o  -o ${OBJECTDIR}/_ext/993283936/mu_sched.o ../../../mulib/core/mu_sched.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_spsc.o: ../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_3/550418357d7620d7f60b25c95de0394f70b3e1d3 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_spsc.o  -o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ../../../mulib/core/mu_spsc.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_str.o: ../../../mulib/core/mu_str.c  .generated_files/flags/blink_3/978cfe0c27d14a56a552adcaad4343404badac93 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_str.o  -o ${OBJECTDIR}/_ext/993283936/mu_str.o ../../../mulib/core/mu_str.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_strbuf.o: ../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_3/527c25582017238f25601ef3fbdae6f6cb43d86d .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_strbuf.o  -o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ../../../mulib/core/mu_strbuf.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task.o: ../../../mulib/core/mu_task.c  .generated_files/flags/blink_3/3da67ba5f6ac4a2b0eabe7a32d6806bef0d99ef4 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task.o  -o ${OBJECTDIR}/_ext/993283936/mu_task.o ../../../mulib/core/mu_task.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task_list.o: ../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_3/2fa47b0db47b47373c234c5db0c8aa8eb364c04e .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ../../../mulib/core/mu_task_list.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/blink_3/3e640c381da262c07dfe487b6e2acd78f1cc32e9 .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/blink_3.o: ../../../blink_3.c  .generated_files/flags/blink_3/5480cad2e675bb97ec8a741865115b0800850e4e .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_3.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/blink_3.o.d" -MT "${OBJECTDIR}/_ext/2124829536/blink_3.o.d" -MT ${OBJECTDIR}/_ext/2124829536/blink_3.o  -o ${OBJECTDIR}/_ext/2124829536/blink_3.o ../../../blink_3.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/morse_blinker.o: ../../../morse_blinker.c  .generated_files/flags/blink_3/c4276a1451b01025b1dfe86dcbcbff923d7f4b0b .generated_files/flags/blink_3/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/morse_blinker.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/morse_blinker.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/morse_blinker.o.d" -MT "${OBJECTDIR}/_ext/2124829536/morse_blinker.o.d" -MT ${OBJECTDIR}/_ext/2124829536/morse_blinker.o  -o ${OBJECTDIR}/_ext/2124829536/morse_blinker.o ../../../morse_blinker.c  -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_blink_3=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/attiny817.X.${IMAGE_TYPE}.hex"
	
	
	
	
	
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
