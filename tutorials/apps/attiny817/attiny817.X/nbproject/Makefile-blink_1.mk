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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/pin_manager.c mcc_generated_files/src/usart0.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/rtc.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c ../../../mulib/core/mu_access_mgr.c ../../../mulib/core/mu_event.c ../../../mulib/core/mu_list.c ../../../mulib/core/mu_periodic.c ../../../mulib/core/mu_queue.c ../../../mulib/core/mu_sched.c ../../../mulib/core/mu_spsc.c ../../../mulib/core/mu_str.c ../../../mulib/core/mu_strbuf.c ../../../mulib/core/mu_task.c ../../../mulib/core/mu_task_list.c main.c ../../../blink_1.c ../../../platforms/ATTiny817/mu_time.c ../../../platforms/ATTiny817/tutorials_bsp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ${OBJECTDIR}/_ext/993283936/mu_event.o ${OBJECTDIR}/_ext/993283936/mu_list.o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ${OBJECTDIR}/_ext/993283936/mu_queue.o ${OBJECTDIR}/_ext/993283936/mu_sched.o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ${OBJECTDIR}/_ext/993283936/mu_str.o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ${OBJECTDIR}/_ext/993283936/mu_task.o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2124829536/blink_1.o ${OBJECTDIR}/_ext/68593779/mu_time.o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d ${OBJECTDIR}/_ext/993283936/mu_event.o.d ${OBJECTDIR}/_ext/993283936/mu_list.o.d ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d ${OBJECTDIR}/_ext/993283936/mu_queue.o.d ${OBJECTDIR}/_ext/993283936/mu_sched.o.d ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d ${OBJECTDIR}/_ext/993283936/mu_str.o.d ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d ${OBJECTDIR}/_ext/993283936/mu_task.o.d ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/2124829536/blink_1.o.d ${OBJECTDIR}/_ext/68593779/mu_time.o.d ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ${OBJECTDIR}/_ext/993283936/mu_event.o ${OBJECTDIR}/_ext/993283936/mu_list.o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ${OBJECTDIR}/_ext/993283936/mu_queue.o ${OBJECTDIR}/_ext/993283936/mu_sched.o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ${OBJECTDIR}/_ext/993283936/mu_str.o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ${OBJECTDIR}/_ext/993283936/mu_task.o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2124829536/blink_1.o ${OBJECTDIR}/_ext/68593779/mu_time.o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o

# Source Files
SOURCEFILES=mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/pin_manager.c mcc_generated_files/src/usart0.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/rtc.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c ../../../mulib/core/mu_access_mgr.c ../../../mulib/core/mu_event.c ../../../mulib/core/mu_list.c ../../../mulib/core/mu_periodic.c ../../../mulib/core/mu_queue.c ../../../mulib/core/mu_sched.c ../../../mulib/core/mu_spsc.c ../../../mulib/core/mu_str.c ../../../mulib/core/mu_strbuf.c ../../../mulib/core/mu_task.c ../../../mulib/core/mu_task_list.c main.c ../../../blink_1.c ../../../platforms/ATTiny817/mu_time.c ../../../platforms/ATTiny817/tutorials_bsp.c

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
	${MAKE}  -f nbproject/Makefile-blink_1.mk ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny817
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/blink_1/4d8c37be0ae74d3b6a7387fdfd0fb242505a0200 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -DDEBUG  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_blink_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/blink_1/a3f032a8ebc465d4e91fa532779e6e3c89bb013b .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_blink_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/blink_1/42b58d6cbc1fcc1a41b90c05a9d7c03ca2114575 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/blink_1/c6f30764dcc2012a91158bf041336108c7bea00e .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/blink_1/96d87099679e3472cb9c560e039f688eceefcaf3 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/blink_1/7e7430f2e720bf96812940a3eb480eacbd3228f0 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/blink_1/6c7ba80e94848997ed09ba7941759606032e51c1 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/blink_1/cff10ad9285ce1c4554fa2617f7ad39fd6f7732a .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/blink_1/f0eb0bd05b3104c8fb4a36fe41d2f686b28dde86 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/blink_1/c3ee5d9ac6ece76cb45bbeb295f04de8cd682164 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_access_mgr.o: ../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_1/cb27cc2d328c67fa44039217999c23d604c6fbea .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o  -o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ../../../mulib/core/mu_access_mgr.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_event.o: ../../../mulib/core/mu_event.c  .generated_files/flags/blink_1/5d780fe56124ec788f6317859feb921f23f3ca93 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_event.o  -o ${OBJECTDIR}/_ext/993283936/mu_event.o ../../../mulib/core/mu_event.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_list.o: ../../../mulib/core/mu_list.c  .generated_files/flags/blink_1/6d13ac02258b6184889070fe4bbb3079f6cc6dd5 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_list.o ../../../mulib/core/mu_list.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_periodic.o: ../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_1/490c57c2d38e2ae93325403efba112ce067932fd .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_periodic.o  -o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ../../../mulib/core/mu_periodic.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_queue.o: ../../../mulib/core/mu_queue.c  .generated_files/flags/blink_1/441a0d96af8c756be6cd0bdef1f6207c17d699fa .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_queue.o  -o ${OBJECTDIR}/_ext/993283936/mu_queue.o ../../../mulib/core/mu_queue.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_sched.o: ../../../mulib/core/mu_sched.c  .generated_files/flags/blink_1/b44c0250f6b855468bf318cdb5cf0ea942b144b4 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_sched.o  -o ${OBJECTDIR}/_ext/993283936/mu_sched.o ../../../mulib/core/mu_sched.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_spsc.o: ../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_1/1d48d4987d6eec8cac3faf826209da37abcffd5a .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_spsc.o  -o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ../../../mulib/core/mu_spsc.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_str.o: ../../../mulib/core/mu_str.c  .generated_files/flags/blink_1/906c775600f0cdaa29a023ab3117c9a5d5b535a9 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_str.o  -o ${OBJECTDIR}/_ext/993283936/mu_str.o ../../../mulib/core/mu_str.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_strbuf.o: ../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_1/bacd4114032db4521982d9bb58c49b83f5f4ce32 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_strbuf.o  -o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ../../../mulib/core/mu_strbuf.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task.o: ../../../mulib/core/mu_task.c  .generated_files/flags/blink_1/ae66f0bf80f93287e396ca0dc52bfaf6ce3d21a1 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task.o  -o ${OBJECTDIR}/_ext/993283936/mu_task.o ../../../mulib/core/mu_task.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task_list.o: ../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_1/f380578484f0b7ad3c0e586df4fc64183fe2da41 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ../../../mulib/core/mu_task_list.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/blink_1/d8b7541d19729560fd467acafd28d64f5ad0512f .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/blink_1.o: ../../../blink_1.c  .generated_files/flags/blink_1/79a87ac418105c9b9f8cda1ceab76da716eb4300 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_1.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/blink_1.o.d" -MT "${OBJECTDIR}/_ext/2124829536/blink_1.o.d" -MT ${OBJECTDIR}/_ext/2124829536/blink_1.o  -o ${OBJECTDIR}/_ext/2124829536/blink_1.o ../../../blink_1.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/mu_time.o: ../../../platforms/ATTiny817/mu_time.c  .generated_files/flags/blink_1/c33cb62ac770b52067f0454ac3d6a947c8af3fef .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT ${OBJECTDIR}/_ext/68593779/mu_time.o  -o ${OBJECTDIR}/_ext/68593779/mu_time.o ../../../platforms/ATTiny817/mu_time.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/tutorials_bsp.o: ../../../platforms/ATTiny817/tutorials_bsp.c  .generated_files/flags/blink_1/195dc9508e7b315aabc678df264c8280a3a8082a .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o  -o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ../../../platforms/ATTiny817/tutorials_bsp.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/blink_1/655758124963e12365cfd59a65a94df7856953b8 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/blink_1/5dd3e0c58185d6d02f3805c2b286ef45556ebaaa .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/blink_1/e16a2491bbfc4cd6ac8a7daacfb00ce02e44dd83 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/blink_1/dd0cbe487ef279f4f7429ef8e7de2bbdd8a7bc44 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/blink_1/2eb9c91e5f44435d2e1eb0a34c4534c0d489f77d .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/blink_1/cf5c2227af5419f0abdb1c589c158bfe4b2f60a2 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/blink_1/c78357b24f32ca27ed5d6fbecfffc110c77b4ef1 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/blink_1/213b6cb360e085aab6601023cf8821686c7a188 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_access_mgr.o: ../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_1/6d7eecd3e1fced187c76da8ffc920411c758aa41 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o  -o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ../../../mulib/core/mu_access_mgr.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_event.o: ../../../mulib/core/mu_event.c  .generated_files/flags/blink_1/d024caee0e5559e988e08cbdb2fb208ee5c621fe .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_event.o  -o ${OBJECTDIR}/_ext/993283936/mu_event.o ../../../mulib/core/mu_event.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_list.o: ../../../mulib/core/mu_list.c  .generated_files/flags/blink_1/aa691332c976b324f5bb2c374dc01aa0a2b0fbca .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_list.o ../../../mulib/core/mu_list.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_periodic.o: ../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_1/399fe408c1902c2e946ca76a15c5bc4a15474ade .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_periodic.o  -o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ../../../mulib/core/mu_periodic.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_queue.o: ../../../mulib/core/mu_queue.c  .generated_files/flags/blink_1/a49eee256aa3b14b3e94fb9e5e9978cb5ff1b94a .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_queue.o  -o ${OBJECTDIR}/_ext/993283936/mu_queue.o ../../../mulib/core/mu_queue.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_sched.o: ../../../mulib/core/mu_sched.c  .generated_files/flags/blink_1/1835230a444184e22e16aa61d0099723dfb94cb3 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_sched.o  -o ${OBJECTDIR}/_ext/993283936/mu_sched.o ../../../mulib/core/mu_sched.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_spsc.o: ../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_1/f207babd03728290daa22ab5125049a5515ac20 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_spsc.o  -o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ../../../mulib/core/mu_spsc.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_str.o: ../../../mulib/core/mu_str.c  .generated_files/flags/blink_1/c3018aac6be935f926f8f2e919c31eafbeb23231 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_str.o  -o ${OBJECTDIR}/_ext/993283936/mu_str.o ../../../mulib/core/mu_str.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_strbuf.o: ../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_1/a1af06769aed54ed93e55b3552c3076f48ae4026 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_strbuf.o  -o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ../../../mulib/core/mu_strbuf.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task.o: ../../../mulib/core/mu_task.c  .generated_files/flags/blink_1/2245e9b845586082914be9c222ee35424ba6b779 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task.o  -o ${OBJECTDIR}/_ext/993283936/mu_task.o ../../../mulib/core/mu_task.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task_list.o: ../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_1/47a8c96bd0dba3610d50d9016fb2f6d9d51eb4ec .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ../../../mulib/core/mu_task_list.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/blink_1/757181ca32971256a1fc93562cc64bb480a5955d .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/blink_1.o: ../../../blink_1.c  .generated_files/flags/blink_1/a9b18bdffbdb5b1fbe65b8b0e70fb2a28c2b3985 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_1.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/blink_1.o.d" -MT "${OBJECTDIR}/_ext/2124829536/blink_1.o.d" -MT ${OBJECTDIR}/_ext/2124829536/blink_1.o  -o ${OBJECTDIR}/_ext/2124829536/blink_1.o ../../../blink_1.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/mu_time.o: ../../../platforms/ATTiny817/mu_time.c  .generated_files/flags/blink_1/e4607475c29d7a8fce6fb1063d95c1ceafb1fbc0 .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT ${OBJECTDIR}/_ext/68593779/mu_time.o  -o ${OBJECTDIR}/_ext/68593779/mu_time.o ../../../platforms/ATTiny817/mu_time.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/tutorials_bsp.o: ../../../platforms/ATTiny817/tutorials_bsp.c  .generated_files/flags/blink_1/e24c34a0e2c10e7db8269c403877d1302a78c0bf .generated_files/flags/blink_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o  -o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ../../../platforms/ATTiny817/tutorials_bsp.c  -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_blink_1=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
