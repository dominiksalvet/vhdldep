#-------------------------------------------------------------------------------
# Copyright 2018-2019 Dominik Salvet
# SPDX-License-Identifier: MIT
# https://github.com/dominiksalvet/vhdldep
#-------------------------------------------------------------------------------
# DESCRIPTION:
#   This file represents a makefile for vhdldep. It is meant to work with gim.
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# DEFINITIONS
#-------------------------------------------------------------------------------

.POSIX: # this file should be processed as a POSIX makefile
.SILENT: # do not print the lines that are being executed

# environment definitions
MKDIR_P = mkdir -p --
CP = cp --
RM_F = rm -f --
ECHO = echo

# directory definitions
BIN_DIR = bin
PREFIX = $(HOME)/.local

#-------------------------------------------------------------------------------
# TARGETS
#-------------------------------------------------------------------------------

all: # there is no building required

install:
	$(MKDIR_P) '$(PREFIX)'/bin/
	$(CP) '$(BIN_DIR)'/vhdldep '$(PREFIX)'/bin/

uninstall:
	$(RM_F) '$(PREFIX)'/bin/vhdldep

help:
	$(ECHO) 'USAGE:'
	$(ECHO) '  make [TARGET...] [MACRO=VALUE...]'
	$(ECHO)
	$(ECHO) 'TARGET:'
	$(ECHO) '  all        do nothing (default)'
	$(ECHO) '  install    install vhdldep'
	$(ECHO) '  uninstall  uninstall vhdldep'
	$(ECHO) '  help       show this help'
	$(ECHO)
	$(ECHO) 'MACRO:'
	$(ECHO) '  PREFIX  installation prefix'
