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
/^\s*use\s.*\;/b
/^\s*use\s/,/\;/!d
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
s/$/\.o/
s|^|'"$3"'|
'

local_use_dependencies='
:next
$bdone
N
bnext
:done
s/\n/ /g
'

sed_result=$(
sed -e "$remove_comments" \
    -e "$get_uses" \
    "$1" |
sed -e "$one_use_per_line" \
    -e "$one_local_use_dependency_per_line" |
sed -e "$local_use_dependencies"
)

echo "$2: $1 $sed_result"
