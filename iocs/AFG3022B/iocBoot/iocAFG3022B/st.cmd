#!../../bin/windows-x64/AFG3022B

## You may have to change AFG3022B to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "IOCNAME" "$(P=$(MYPVPREFIX))AFG3022B"
epicsEnvSet "IOCSTATS_DB" "$(DEVIOCSTATS)/db/iocAdminSoft.db"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/../../AFG3XXXSup"
epicsEnvSet "TTY" "$(TTY=\\\\\\\\.\\\\COM18)"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/AFG3022B.dbd"
AFG3022B_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure ("IP", "130.246.50.160:4000")
#GpibBoardDriverConfig("GPIB0","1","0","3","0")

## Load record instances
dbLoadRecords("$(TOP)/../../db/devAFG3XXX.db","P=$(IOCNAME):, PORT=GPIB0")
#dbLoadRecords("$(IOCSTATS_DB)","IOC=$(IOCNAME)")

cd ${TOP}/iocBoot/${IOC}
iocInit
