# Makefile for Asyn AFG3XXX support
#
# Created by mjc23 on Fri Nov 22 10:30:02 2013
# Based on the Asyn streamSCPI template

TOP = .
include $(TOP)/configure/CONFIG

DIRS := configure
DIRS += $(wildcard *[Ss]up)
DIRS += $(wildcard *[Aa]pp)
DIRS += $(wildcard ioc[Bb]oot)

include $(TOP)/configure/RULES_TOP
