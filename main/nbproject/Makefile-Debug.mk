#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../hello1lib/dist/Debug/GNU-Linux/libhello1lib.a ../hello2lib/dist/Debug/GNU-Linux/libhello2lib.a -Wl,-rpath,../hello3lib/dist/Debug/GNU-Linux -L../hello3lib/dist/Debug/GNU-Linux -lhello3lib -Wl,-rpath,../hello4lib/dist/Debug/GNU-Linux -L../hello4lib/dist/Debug/GNU-Linux -lhello4lib

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../hello1lib/dist/Debug/GNU-Linux/libhello1lib.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../hello2lib/dist/Debug/GNU-Linux/libhello2lib.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../hello3lib/dist/Debug/GNU-Linux/libhello3lib.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../hello4lib/dist/Debug/GNU-Linux/libhello4lib.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/main.o: main.cc 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cc

# Subprojects
.build-subprojects:
	cd ../hello1lib && ${MAKE} -f Makefile CONF=Debug
	cd ../hello2lib && ${MAKE} -f Makefile CONF=Debug
	cd ../hello3lib && ${MAKE}  -f Makefile CONF=Debug
	cd ../hello4lib && ${MAKE}  -f Makefile CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main

# Subprojects
.clean-subprojects:
	cd ../hello1lib && ${MAKE} -f Makefile CONF=Debug clean
	cd ../hello2lib && ${MAKE} -f Makefile CONF=Debug clean
	cd ../hello3lib && ${MAKE}  -f Makefile CONF=Debug clean
	cd ../hello4lib && ${MAKE}  -f Makefile CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
