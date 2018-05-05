#!/bin/sh

#-------------------------------------------------------------------------------
# Copyright (C) 2018 Dominik Salvet
# SPDX-License-Identifier: MIT
#-------------------------------------------------------------------------------

# $1 - VHDL file
# $2 - target name
# $3 - object files prefix

remove_comments='s/--.*$//'

get_uses='
/^\s*use.*\;/b
/^\s*use/,/\;/!d
'

one_use_per_line='
/use/!b
:next
/\;/bdone
N
bnext
:done
s/\n//g
'

one_local_use_dependency_per_line='
s/use//
s/\s*//g
/^ieee\|^std/d
s/\;$//
s/\.all$//
s/^.*\.//
s/^.*/&\.o/
s|^|'"$3"'|
'

one_local_dependency_per_line='1s/^/'"$1"'\n/'

make_rule_format='
:next
$bdone
N
bnext
:done
s/\n/ /g
s|^|'"$2"': |
'

sed -e "$remove_comments" \
    -e "$get_uses" \
    "$1" | \
sed -e "$one_use_per_line" \
    -e "$one_local_use_dependency_per_line" | \
sed -e "$one_local_dependency_per_line" \
    -e "$make_rule_format"
