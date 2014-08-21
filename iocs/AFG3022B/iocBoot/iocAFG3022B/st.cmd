#!../../bin/windows-x64/AFG3022B

## You may have to change AFG3022B to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "IOCNAME" "$(P=$(MYPVPREFIX))AFG3022B"
epicsEnvSet "IOCSTATS_DB" "$(DEVIOCSTATS)/db/iocAdminSoft.db"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/../../AFG3XXXSup"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/AFG3022B.dbd"
AFG3022B_registerRecordDeviceDriver pdbbase

vxi11Configure("GPIB0", "130.246.49.179", 0, 0.0,"inst0", 0, 0)
#asynSetTraceIOMask("GPIB0",0,2)
#asynSetTraceMask("GPIB0",0,255)


## Load record instances
dbLoadRecords("$(TOP)/../../db/devAFG3XXX.db","P=$(IOCNAME):, PORT=GPIB0")
#dbLoadRecords("$(IOCSTATS_DB)","IOC=$(IOCNAME)")

cd ${TOP}/iocBoot/${IOC}
iocInit
