TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = AFG3022B
# AFG3022B.dbd will be created and installed
DBD += AFG3022B.dbd

# AFG3022B.dbd will be made up from these files:
AFG3022B_DBD += base.dbd

# Include dbd files from all support applications:
AFG3022B_DBD += stream.dbd
AFG3022B_DBD += asyn.dbd
AFG3022B_DBD += drvAsynSerialPort.dbd
AFG3022B_DBD += drvAsynIPPort.dbd
AFG3022B_DBD += devIocStats.dbd
AFG3022B_DBD += drvVxi11.dbd
#AFG3022B_DBD += drv488Gpib.dbd

AFG3022B_LIBS += stream pcre
AFG3022B_LIBS += asyn devIocStats

# AFG3022B_registerRecordDeviceDriver.cpp derives from AFG3022B.dbd
AFG3022B_SRCS += AFG3022B_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
AFG3022B_SRCS_DEFAULT += AFG3022BMain.cpp
AFG3022B_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#AFG3022B_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
AFG3022B_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

