#!/bin/sh

#-------------------------------------------------------------------------------
# Copyright (C) 2018 Dominik Salvet
# SPDX-License-Identifier: MIT
#-------------------------------------------------------------------------------

# $1 - VHDL file
# $2 - target name
# $3 - object files prefix

phase1='
/^\s*use/!d
s/use//
s/\s*//g
/^ieee\|^std/d
s/\;$//
s/\.all$//
s/^.*\.//
s/^.*/&.o/
s|^|'"$3"'|
'
phase2='
:next
$bdone
N
bnext
:done
s/\n/ /g
s|^|'"$1"' |
s|^|'"$2"': |
'

sed -e "$phase1" "$1" |
sed -e "$phase2"
