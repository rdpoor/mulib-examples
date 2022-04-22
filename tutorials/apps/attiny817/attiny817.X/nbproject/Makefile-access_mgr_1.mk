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
ifeq "$(wildcard nbproject/Makefile-local-access_mgr_1.mk)" "nbproject/Makefile-local-access_mgr_1.mk"
include nbproject/Makefile-local-access_mgr_1.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=access_mgr_1
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
SOURCEFILES_QUOTED_IF_SPACED=../../../platforms/ATTiny817/mu_time.c ../../../platforms/ATTiny817/tutorials_bsp.c mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/pin_manager.c mcc_generated_files/src/usart0.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/rtc.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c ../../../mulib/core/mu_access_mgr.c ../../../mulib/core/mu_list.c ../../../mulib/core/mu_periodic.c ../../../mulib/core/mu_queue.c ../../../mulib/core/mu_sched.c ../../../mulib/core/mu_spsc.c ../../../mulib/core/mu_str.c ../../../mulib/core/mu_strbuf.c ../../../mulib/core/mu_task.c ../../../mulib/core/mu_pqueue.c main.c ../../../access_mgr_1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/68593779/mu_time.o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ${OBJECTDIR}/_ext/993283936/mu_list.o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ${OBJECTDIR}/_ext/993283936/mu_queue.o ${OBJECTDIR}/_ext/993283936/mu_sched.o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ${OBJECTDIR}/_ext/993283936/mu_str.o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ${OBJECTDIR}/_ext/993283936/mu_task.o ${OBJECTDIR}/_ext/993283936/mu_pqueue.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/68593779/mu_time.o.d ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d ${OBJECTDIR}/_ext/993283936/mu_list.o.d ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d ${OBJECTDIR}/_ext/993283936/mu_queue.o.d ${OBJECTDIR}/_ext/993283936/mu_sched.o.d ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d ${OBJECTDIR}/_ext/993283936/mu_str.o.d ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d ${OBJECTDIR}/_ext/993283936/mu_task.o.d ${OBJECTDIR}/_ext/993283936/mu_pqueue.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/68593779/mu_time.o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/usart0.o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ${OBJECTDIR}/_ext/993283936/mu_list.o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ${OBJECTDIR}/_ext/993283936/mu_queue.o ${OBJECTDIR}/_ext/993283936/mu_sched.o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ${OBJECTDIR}/_ext/993283936/mu_str.o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ${OBJECTDIR}/_ext/993283936/mu_task.o ${OBJECTDIR}/_ext/993283936/mu_pqueue.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o

# Source Files
SOURCEFILES=../../../platforms/ATTiny817/mu_time.c ../../../platforms/ATTiny817/tutorials_bsp.c mcc_generated_files/examples/twi0_master_example.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/pin_manager.c mcc_generated_files/src/usart0.c mcc_generated_files/src/twi0_master.c mcc_generated_files/src/rtc.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c ../../../mulib/core/mu_access_mgr.c ../../../mulib/core/mu_list.c ../../../mulib/core/mu_periodic.c ../../../mulib/core/mu_queue.c ../../../mulib/core/mu_sched.c ../../../mulib/core/mu_spsc.c ../../../mulib/core/mu_str.c ../../../mulib/core/mu_strbuf.c ../../../mulib/core/mu_task.c ../../../mulib/core/mu_pqueue.c main.c ../../../access_mgr_1.c

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
	${MAKE}  -f nbproject/Makefile-access_mgr_1.mk ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny817
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/access_mgr_1/199786c34f0581c335411b76fcd1653ed37094cd .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -DDEBUG  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_access_mgr_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/access_mgr_1/a4fc17dfb1259d35470c0e58aef5b898620fab8a .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o mcc_generated_files/src/protected_io.S  -DXPRJ_access_mgr_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/src/protected_io.o.asm.d"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/68593779/mu_time.o: ../../../platforms/ATTiny817/mu_time.c  .generated_files/flags/access_mgr_1/bbe639eaca5c495daa4d6d06058af130c03e1e7f .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT ${OBJECTDIR}/_ext/68593779/mu_time.o  -o ${OBJECTDIR}/_ext/68593779/mu_time.o ../../../platforms/ATTiny817/mu_time.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/tutorials_bsp.o: ../../../platforms/ATTiny817/tutorials_bsp.c  .generated_files/flags/access_mgr_1/bb63c795c0686e42d72e2daf1f61c09e870c39d9 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o  -o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ../../../platforms/ATTiny817/tutorials_bsp.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/access_mgr_1/92942db35bc712b087873e956b0b800602de9d21 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/access_mgr_1/f7e0092b59a8f259e41c200eaeed6cb6bfa5c282 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/access_mgr_1/dcc063912ceab7e17383b1725e8b7d92b771dcd3 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/access_mgr_1/dd68d33740c08dffb15b76aecfbc556e8f6c3b60 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/access_mgr_1/bd52e8f37824f62158c170e47f53df580d8633b .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/access_mgr_1/72aa61ced6f2b2353baf4eb360142ee11af20ca7 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/access_mgr_1/41a9f73d9f979f89e9a0ba1c521f8670844b2afa .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/access_mgr_1/2e9c24928d1d66e53263b533501217a6d43679d .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_access_mgr.o: ../../../mulib/core/mu_access_mgr.c  .generated_files/flags/access_mgr_1/2c56eb669a99b3837f152fa309586558a862339e .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o  -o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ../../../mulib/core/mu_access_mgr.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_list.o: ../../../mulib/core/mu_list.c  .generated_files/flags/access_mgr_1/efb8153eac1215e7500067ab9f9c31a87197322f .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_list.o ../../../mulib/core/mu_list.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_periodic.o: ../../../mulib/core/mu_periodic.c  .generated_files/flags/access_mgr_1/8d8f9eef8e1836cc69dbbe3f5db0be3a142d7d50 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_periodic.o  -o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ../../../mulib/core/mu_periodic.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_queue.o: ../../../mulib/core/mu_queue.c  .generated_files/flags/access_mgr_1/aef148a8350b151693af51a422c7e6436ade5a8 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_queue.o  -o ${OBJECTDIR}/_ext/993283936/mu_queue.o ../../../mulib/core/mu_queue.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_sched.o: ../../../mulib/core/mu_sched.c  .generated_files/flags/access_mgr_1/c7813ff4e98180591e1bd0ac6630d84a0ceb81d8 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_sched.o  -o ${OBJECTDIR}/_ext/993283936/mu_sched.o ../../../mulib/core/mu_sched.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_spsc.o: ../../../mulib/core/mu_spsc.c  .generated_files/flags/access_mgr_1/9733d335da2d4d3c7dff63601b1fc782914a1e81 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_spsc.o  -o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ../../../mulib/core/mu_spsc.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_str.o: ../../../mulib/core/mu_str.c  .generated_files/flags/access_mgr_1/a37fd827670debf65c499e9996ee4a0f743c51b3 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_str.o  -o ${OBJECTDIR}/_ext/993283936/mu_str.o ../../../mulib/core/mu_str.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_strbuf.o: ../../../mulib/core/mu_strbuf.c  .generated_files/flags/access_mgr_1/39cf4ad46b2df52313f9ef74aec8cadf12f12e33 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_strbuf.o  -o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ../../../mulib/core/mu_strbuf.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task.o: ../../../mulib/core/mu_task.c  .generated_files/flags/access_mgr_1/378ea93adc0e22c32a1e2ae4e08701f38fcc4d17 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task.o  -o ${OBJECTDIR}/_ext/993283936/mu_task.o ../../../mulib/core/mu_task.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_pqueue.o: ../../../mulib/core/mu_pqueue.c  .generated_files/flags/access_mgr_1/e14d1e9a8d7baa96256f727fdfde9e67c6021827 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_pqueue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_pqueue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_pqueue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_pqueue.o  -o ${OBJECTDIR}/_ext/993283936/mu_pqueue.o ../../../mulib/core/mu_pqueue.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/access_mgr_1/e5c8d4774a43431e459a34e1e1ae0d99c48111c4 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/access_mgr_1.o: ../../../access_mgr_1.c  .generated_files/flags/access_mgr_1/6249267b194c7122545a369001a935b8bbe113cc .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/access_mgr_1.o.d" -MT "${OBJECTDIR}/_ext/2124829536/access_mgr_1.o.d" -MT ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o  -o ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o ../../../access_mgr_1.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/68593779/mu_time.o: ../../../platforms/ATTiny817/mu_time.c  .generated_files/flags/access_mgr_1/18669dc833f0751d33c7ca7775437c87c3137881 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/mu_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT "${OBJECTDIR}/_ext/68593779/mu_time.o.d" -MT ${OBJECTDIR}/_ext/68593779/mu_time.o  -o ${OBJECTDIR}/_ext/68593779/mu_time.o ../../../platforms/ATTiny817/mu_time.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/68593779/tutorials_bsp.o: ../../../platforms/ATTiny817/tutorials_bsp.c  .generated_files/flags/access_mgr_1/2dad931fe87ae891ca7e42237c5c286a25f6344a .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/68593779" 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT "${OBJECTDIR}/_ext/68593779/tutorials_bsp.o.d" -MT ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o  -o ${OBJECTDIR}/_ext/68593779/tutorials_bsp.o ../../../platforms/ATTiny817/tutorials_bsp.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o: mcc_generated_files/examples/twi0_master_example.c  .generated_files/flags/access_mgr_1/34c14288f7f0205ab9cd78a7783036b57334ac43 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/examples" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o  -o ${OBJECTDIR}/mcc_generated_files/examples/twi0_master_example.o mcc_generated_files/examples/twi0_master_example.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/access_mgr_1/9ccbaf14c56c2a61343c8dc23d4c1f14eec03e3f .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o  -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/access_mgr_1/57fb6fffee70ff5d20da3f416cf7536d61937e39 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o  -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/usart0.o: mcc_generated_files/src/usart0.c  .generated_files/flags/access_mgr_1/4866d8f4d33fc51d0e0341826e8fc932d053be56 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart0.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart0.o  -o ${OBJECTDIR}/mcc_generated_files/src/usart0.o mcc_generated_files/src/usart0.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/twi0_master.o: mcc_generated_files/src/twi0_master.c  .generated_files/flags/access_mgr_1/1b14e3a9bf0af65460d06bb6efc6da6a530ee740 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/twi0_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o  -o ${OBJECTDIR}/mcc_generated_files/src/twi0_master.o mcc_generated_files/src/twi0_master.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/access_mgr_1/2fba04e72f677143b9c464fb9334068511887805 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o  -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/access_mgr_1/6bc442c27eb68ba5e277524c85a6b78abf993142 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o  -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/access_mgr_1/d993372d9e74bec82151e57073653f62dcbf1d67 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o  -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_access_mgr.o: ../../../mulib/core/mu_access_mgr.c  .generated_files/flags/access_mgr_1/7c25357039795fbf0a818e9db043ddacdc9f1294 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_access_mgr.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o  -o ${OBJECTDIR}/_ext/993283936/mu_access_mgr.o ../../../mulib/core/mu_access_mgr.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_list.o: ../../../mulib/core/mu_list.c  .generated_files/flags/access_mgr_1/36feef95738af17c6b1f9bceeeb7a6a3c5cc37d4 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_list.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_list.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_list.o  -o ${OBJECTDIR}/_ext/993283936/mu_list.o ../../../mulib/core/mu_list.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_periodic.o: ../../../mulib/core/mu_periodic.c  .generated_files/flags/access_mgr_1/d9c87bbb2267702bd1fd6e2ef1687e6b92bb8667 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_periodic.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_periodic.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_periodic.o  -o ${OBJECTDIR}/_ext/993283936/mu_periodic.o ../../../mulib/core/mu_periodic.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_queue.o: ../../../mulib/core/mu_queue.c  .generated_files/flags/access_mgr_1/d242b9032b41df4bd5d1800d736f95b2c229fe21 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_queue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_queue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_queue.o  -o ${OBJECTDIR}/_ext/993283936/mu_queue.o ../../../mulib/core/mu_queue.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_sched.o: ../../../mulib/core/mu_sched.c  .generated_files/flags/access_mgr_1/670b661e7f387c325d62dfe8173620d91d9b379b .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_sched.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_sched.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_sched.o  -o ${OBJECTDIR}/_ext/993283936/mu_sched.o ../../../mulib/core/mu_sched.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_spsc.o: ../../../mulib/core/mu_spsc.c  .generated_files/flags/access_mgr_1/8c33376e275415701d9bc10fffb4b2f6b478551e .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_spsc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_spsc.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_spsc.o  -o ${OBJECTDIR}/_ext/993283936/mu_spsc.o ../../../mulib/core/mu_spsc.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_str.o: ../../../mulib/core/mu_str.c  .generated_files/flags/access_mgr_1/40caa8f3c48f52350f905c2c8e52d327db730c64 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_str.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_str.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_str.o  -o ${OBJECTDIR}/_ext/993283936/mu_str.o ../../../mulib/core/mu_str.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_strbuf.o: ../../../mulib/core/mu_strbuf.c  .generated_files/flags/access_mgr_1/8f717f9c91e3451fd1d7c74abbbe07bdaea737e4 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_strbuf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_strbuf.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_strbuf.o  -o ${OBJECTDIR}/_ext/993283936/mu_strbuf.o ../../../mulib/core/mu_strbuf.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_task.o: ../../../mulib/core/mu_task.c  .generated_files/flags/access_mgr_1/ef18c26c74242ae08d2752b68494484a8072e292 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_task.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_task.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_task.o  -o ${OBJECTDIR}/_ext/993283936/mu_task.o ../../../mulib/core/mu_task.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/993283936/mu_pqueue.o: ../../../mulib/core/mu_pqueue.c  .generated_files/flags/access_mgr_1/80c112e685d1c9c9342f3bee7c41bb3a48df75b2 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/993283936" 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/993283936/mu_pqueue.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/993283936/mu_pqueue.o.d" -MT "${OBJECTDIR}/_ext/993283936/mu_pqueue.o.d" -MT ${OBJECTDIR}/_ext/993283936/mu_pqueue.o  -o ${OBJECTDIR}/_ext/993283936/mu_pqueue.o ../../../mulib/core/mu_pqueue.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/access_mgr_1/1627d5ac9a71533a451c0e1a51abd19876bb986b .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2124829536/access_mgr_1.o: ../../../access_mgr_1.c  .generated_files/flags/access_mgr_1/7c8da0dbc96fc501ad975c16790b202df6bc4ec9 .generated_files/flags/access_mgr_1/f215d5a8ab88ef94d6c0dbd2f5bb11bbc63986fc
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny817 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums  -I "../../../mulib/core" -I "../../../platforms/ATTiny817" -I "../../../" -I "mcc_generated_files" -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2124829536/access_mgr_1.o.d" -MT "${OBJECTDIR}/_ext/2124829536/access_mgr_1.o.d" -MT ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o  -o ${OBJECTDIR}/_ext/2124829536/access_mgr_1.o ../../../access_mgr_1.c  -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny817 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\attiny817.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/attiny817.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_access_mgr_1=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
