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
ifeq "$(wildcard nbproject/Makefile-local-blink_2.mk)" "nbproject/Makefile-local-blink_2.mk"
include nbproject/Makefile-local-blink_2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=blink_2
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
SOURCEFILES_QUOTED_IF_SPACED=../../../platforms/ATTiny817/mu_time.c ../../../platforms/ATTiny817/tutorials_bsp.c mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/pin_manager.c mcc_generated_files/src/usart0.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/rtc.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c ../../../mulib/core/mu_access_mgr.c ../../../mulib/core/mu_event.c ../../../mulib/core/mu_list.c ../../../mulib/core/mu_periodic.c ../../../mulib/core/mu_queue.c ../../../mulib/core/mu_sched.c ../../../mulib/core/mu_spsc.c ../../../mulib/core/mu_str.c ../../../mulib/core/mu_strbuf.c ../../../mulib/core/mu_task.c ../../../mulib/core/mu_task_list.c main.c ../../../blink_2.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/68593779/mu_time.o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ${OBJECTDIR}/_ext/993283936/mu_event.o ${OBJECTDIR}/_ext/993283936/mu_list.o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ${OBJECTDIR}/_ext/993283936/mu_queue.o ${OBJECTDIR}/_ext/993283936/mu_sched.o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ${OBJECTDIR}/_ext/993283936/mu_str.o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ${OBJECTDIR}/_ext/993283936/mu_task.o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2124829536/blink_2.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/68593779/mu_time.o.d ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d ${OBJECTDIR}/_ext/993283936/mu_event.o.d ${OBJECTDIR}/_ext/993283936/mu_list.o.d ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d ${OBJECTDIR}/_ext/993283936/mu_queue.o.d ${OBJECTDIR}/_ext/993283936/mu_sched.o.d ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d ${OBJECTDIR}/_ext/993283936/mu_str.o.d ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d ${OBJECTDIR}/_ext/993283936/mu_task.o.d ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/2124829536/blink_2.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/68593779/mu_time.o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ${OBJECTDIR}/_ext/993283936/mu_event.o ${OBJECTDIR}/_ext/993283936/mu_list.o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ${OBJECTDIR}/_ext/993283936/mu_queue.o ${OBJECTDIR}/_ext/993283936/mu_sched.o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ${OBJECTDIR}/_ext/993283936/mu_str.o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ${OBJECTDIR}/_ext/993283936/mu_task.o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2124829536/blink_2.o

# Source Files
SOURCEFILES=../../../platforms/ATTiny817/mu_time.c ../../../platforms/ATTiny817/tutorials_bsp.c mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/pin_manager.c mcc_generated_files/src/usart0.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/rtc.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c ../../../mulib/core/mu_access_mgr.c ../../../mulib/core/mu_event.c ../../../mulib/core/mu_list.c ../../../mulib/core/mu_periodic.c ../../../mulib/core/mu_queue.c ../../../mulib/core/mu_sched.c ../../../mulib/core/mu_spsc.c ../../../mulib/core/mu_str.c ../../../mulib/core/mu_strbuf.c ../../../mulib/core/mu_task.c ../../../mulib/core/mu_task_list.c main.c ../../../blink_2.c

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
	${MAKE}  -f nbproject/Makefile-blink_2.mk ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny817
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/blink_2/21dc2cc5243d57f16d8ee5c05beac544a8dc2b77 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -DDEBUG  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_blink_2=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/blink_2/f00d1c12cea48f11902a599d09fb138c06b6b60a .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_blink_2=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/68593779/mu_time.o: ../../../platforms/ATTiny817/mu_time.c  .generated_files/flags/blink_2/53bd9197bca58296dcef276edb7ca638a21fa1ff .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT ${OBJECTDIR}/_ext/68593779/mu_time.o  -o ${OBJECTDIR}/_ext/68593779/mu_time.o ../../../platforms/ATTiny817/mu_time.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/tutorials_bsp.o: ../../../platforms/ATTiny817/tutorials_bsp.c  .generated_files/flags/blink_2/42902a11e3ebf64570598decf6be78ffa72f383a .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o  -o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ../../../platforms/ATTiny817/tutorials_bsp.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/blink_2/44639e3804afb4ff4d09ca1f053afc232fa30b45 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/blink_2/3b405bcd701d6506b6dfe61c490495f4ffc01d90 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/blink_2/8f4bfd46350a57449fc3ac29b899c0d423835a24 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/blink_2/f62616acba60e43c8b0160839b54ee384c81a0f8 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/blink_2/3b456455999d0f8ac28e86138fb7b87f554d028d .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/blink_2/36f54aa811c1db112e895de2dc38214141d924db .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/blink_2/1135453deb6b2d3ffc1ca27be23e043eff690ded .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/blink_2/8098ed4bd4357cea11998b7ddb22bfbd33c5235e .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_access_mgr.o: ../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_2/ea53c8df55f7cf6425f38c47cc2e16c3f7599e84 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o  -o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ../../../mulib/core/mu_access_mgr.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_event.o: ../../../mulib/core/mu_event.c  .generated_files/flags/blink_2/7657fb48189bee5133a1156b0f04bb8f75fb5047 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_event.o  -o ${OBJECTDIR}/_ext/993283936/mu_event.o ../../../mulib/core/mu_event.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_list.o: ../../../mulib/core/mu_list.c  .generated_files/flags/blink_2/c502e2b9148d748824f9b916b2c06070a46c8476 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_list.o ../../../mulib/core/mu_list.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_periodic.o: ../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_2/b1893c189dee53a3569d5ce8d2a436811d5c788a .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_periodic.o  -o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ../../../mulib/core/mu_periodic.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_queue.o: ../../../mulib/core/mu_queue.c  .generated_files/flags/blink_2/5edf824d6ea5ad66c5f7492e1bcd57edb61d74ab .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_queue.o  -o ${OBJECTDIR}/_ext/993283936/mu_queue.o ../../../mulib/core/mu_queue.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_sched.o: ../../../mulib/core/mu_sched.c  .generated_files/flags/blink_2/9f41b838914ff6ca8a3ec0ffec1cdc7c54923818 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_sched.o  -o ${OBJECTDIR}/_ext/993283936/mu_sched.o ../../../mulib/core/mu_sched.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_spsc.o: ../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_2/726707c451fefbf1daf69faf298acc55a544adb0 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_spsc.o  -o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ../../../mulib/core/mu_spsc.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_str.o: ../../../mulib/core/mu_str.c  .generated_files/flags/blink_2/c2458846201343b2dc98f18aec41858259295ed6 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_str.o  -o ${OBJECTDIR}/_ext/993283936/mu_str.o ../../../mulib/core/mu_str.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_strbuf.o: ../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_2/1aed4ea5525a2a6e2dd36ddb66c6b32125f5a528 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_strbuf.o  -o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ../../../mulib/core/mu_strbuf.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task.o: ../../../mulib/core/mu_task.c  .generated_files/flags/blink_2/eab38ff3b57eb86fe6c855fd2b118bf9bd996c1a .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task.o  -o ${OBJECTDIR}/_ext/993283936/mu_task.o ../../../mulib/core/mu_task.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task_list.o: ../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_2/6e441b8dfcfa651d38a900c8ea7c05e46f2e5dda .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ../../../mulib/core/mu_task_list.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/blink_2/1b816cca54c675011d7d16b9f31164b9a518caca .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/blink_2.o: ../../../blink_2.c  .generated_files/flags/blink_2/ad055ec801df520534e622d9d994195118a782ac .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_2.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/blink_2.o.d" -MT "${OBJECTDIR}/_ext/2124829536/blink_2.o.d" -MT ${OBJECTDIR}/_ext/2124829536/blink_2.o  -o ${OBJECTDIR}/_ext/2124829536/blink_2.o ../../../blink_2.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/68593779/mu_time.o: ../../../platforms/ATTiny817/mu_time.c  .generated_files/flags/blink_2/3e71de51c7277b53bd1798c912af7420959bfa13 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT ${OBJECTDIR}/_ext/68593779/mu_time.o  -o ${OBJECTDIR}/_ext/68593779/mu_time.o ../../../platforms/ATTiny817/mu_time.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/tutorials_bsp.o: ../../../platforms/ATTiny817/tutorials_bsp.c  .generated_files/flags/blink_2/12cdfd66e21cd08c147fc097033ae341e67dab4 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o  -o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ../../../platforms/ATTiny817/tutorials_bsp.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/blink_2/13b636e7595d8edc174bd0d09bd3dbbb89a79e58 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/blink_2/d96276ea7862319578cb128d443d1f534e2f7c36 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/blink_2/df788aa5a059fcfe23c133a4544e807b2d92918 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/blink_2/796a5305dd49a608db34c74143a83b71d6327c .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/blink_2/2c0cf7e2a1301c7ed3b1f9676771151512b9d78f .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/blink_2/ca73226b7aa25e3c650995e630efcc9e5e6acfe6 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/blink_2/6405aa4a6fb027ccc88c246b324fc32a10193c57 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/blink_2/768aabbfe93b1d710571193f8a4d9f95fef69e42 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_access_mgr.o: ../../../mulib/core/mu_access_mgr.c  .generated_files/flags/blink_2/9a771acf2a8ec8c920a982ddb9e4acec583f6dae .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o  -o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ../../../mulib/core/mu_access_mgr.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_event.o: ../../../mulib/core/mu_event.c  .generated_files/flags/blink_2/b4c55f001661b6195901d3295b944b0d7d701f3a .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_event.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_event.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_event.o  -o ${OBJECTDIR}/_ext/993283936/mu_event.o ../../../mulib/core/mu_event.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_list.o: ../../../mulib/core/mu_list.c  .generated_files/flags/blink_2/285dd5ccb24d85c0d63dcce968a03c509d989828 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_list.o ../../../mulib/core/mu_list.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_periodic.o: ../../../mulib/core/mu_periodic.c  .generated_files/flags/blink_2/abd52974b7dc646e9f7d431785341cface32a2d0 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_periodic.o  -o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ../../../mulib/core/mu_periodic.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_queue.o: ../../../mulib/core/mu_queue.c  .generated_files/flags/blink_2/fb5c74f0a500a19a2d998259c81b3ca2b9a0bbcc .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_queue.o  -o ${OBJECTDIR}/_ext/993283936/mu_queue.o ../../../mulib/core/mu_queue.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_sched.o: ../../../mulib/core/mu_sched.c  .generated_files/flags/blink_2/cf1aa8ded1cb41eb741bb8dae5a1feb9c16a8adb .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_sched.o  -o ${OBJECTDIR}/_ext/993283936/mu_sched.o ../../../mulib/core/mu_sched.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_spsc.o: ../../../mulib/core/mu_spsc.c  .generated_files/flags/blink_2/5717dee99fdcdab7555f0c70e30a031ee85438ce .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_spsc.o  -o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ../../../mulib/core/mu_spsc.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_str.o: ../../../mulib/core/mu_str.c  .generated_files/flags/blink_2/ea47a87cb8185d082bcb34494ba49c9a1a11e44e .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_str.o  -o ${OBJECTDIR}/_ext/993283936/mu_str.o ../../../mulib/core/mu_str.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_strbuf.o: ../../../mulib/core/mu_strbuf.c  .generated_files/flags/blink_2/5e29bd88f8219fa3f8f2b32ae8fbbb47de02bba .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_strbuf.o  -o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ../../../mulib/core/mu_strbuf.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task.o: ../../../mulib/core/mu_task.c  .generated_files/flags/blink_2/575347ac4e9fc4c7403d772d10384a592398251a .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task.o  -o ${OBJECTDIR}/_ext/993283936/mu_task.o ../../../mulib/core/mu_task.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task_list.o: ../../../mulib/core/mu_task_list.c  .generated_files/flags/blink_2/d262ed739bcfa41037bef0e3dc624f48b0c846d7 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_task_list.o ../../../mulib/core/mu_task_list.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/blink_2/dc8f8ba05cd27d1a167c1fc4f6fa5a2dcdc83531 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/blink_2.o: ../../../blink_2.c  .generated_files/flags/blink_2/b3204b2f0bbe1996691f560002aa051991a390c6 .generated_files/flags/blink_2/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blink_2.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/blink_2.o.d" -MT "${OBJECTDIR}/_ext/2124829536/blink_2.o.d" -MT ${OBJECTDIR}/_ext/2124829536/blink_2.o  -o ${OBJECTDIR}/_ext/2124829536/blink_2.o ../../../blink_2.c  -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_blink_2=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
