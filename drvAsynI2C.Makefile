#
#  Copyright (c) 2019    European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : Jeong Han Lee
# email   : jeonghan.lee@gmail.com
# Date    : Friday, October 11 23:02:23 CEST 2019
# version : 0.0.1
#

## The following lines are mandatory, please don't change them.
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS

ifneq ($(strip $(ASYN_DEP_VERSION)),)
asyn_VERSION=$(ASYN_DEP_VERSION)
endif

## Exclude linux-ppc64e6500
##EXCLUDE_ARCHS += linux-ppc64e6500
##EXCLUDE_ARCHS += linux-corei7-poky

APP:=drvAsynI2CApp
APPDB:=$(APP)/Db
APPSRC:=$(APP)/src


HEADERS += $(APPSRC)/asynI2C.h

SOURCES += $(APPSRC)/drvAsynI2C.cpp

DBDS += $(APPSRC)/drvAsynI2C.dbd

SCRIPTS += $(wildcard ../iocsh/*.iocsh)

db: 

.PHONY: db 

vlibs:

.PHONY: vlibs


