#-------------------------------------------------------------------------------
# Copyright 2018 Dominik Salvet
# SPDX-License-Identifier: MIT
# https://github.com/dominiksalvet/vhdldep
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# DEFINITIONS
#-------------------------------------------------------------------------------

# environment configuration
SHELL := /bin/sh
ECHO := echo
SED := sed
COLUMN := column
CP := cp
RM_F := rm -f

# directory definitions
SRC_DIR := src
INSTALL_DIR := ~/.local/bin

#-------------------------------------------------------------------------------
# HELP GENERATOR
#-------------------------------------------------------------------------------

# sed script - get automatically target descriptions from a makefile
define GET_TARGET_DESCRIPTIONS
/^[^:=#[:blank:]]+[[:blank:]]*:[^:=#]*#/!d
s/[:=#[:blank:]][^#]*//
s/[[:blank:]#]*#[[:blank:]#]*/#/g
s/^/  /
endef
export GET_TARGET_DESCRIPTIONS

# shows generated help of a given makefile from it's comments
define show_generated_help
	@$(ECHO) 'USAGE: make [TARGET]...'
	@$(ECHO)
	@$(ECHO) 'TARGET:'
	@$(SED) -E -e "$$GET_TARGET_DESCRIPTIONS" $(1) | $(COLUMN) -t -s '#'
endef

#-------------------------------------------------------------------------------
# TARGETS
#-------------------------------------------------------------------------------

.PHONY: all install uninstall help

# there is no building required, so the default target references to the help target
all: help

install: # install the entire project
	$(CP) $(SRC_DIR)/vhdldep $(INSTALL_DIR)/

uninstall: # uninstall the project
	$(RM_F) $(INSTALL_DIR)/vhdldep

help: # default, show this help
	$(call show_generated_help,makefile)