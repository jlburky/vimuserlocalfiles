#!/bin/bash
# create_ctags.sh - generates the tags file injested by Vim.

usage() {
Usage: $0 [options]

Call this script with no options from the top of your Vim workspace/directory.

OPTIONS:
-h|--help        Show this help menu

EOF
}

if [[ ($# == "--help") || ($# == "-h") ]]; then
    usage
    exit 0
fi

# Find Explained TODO
# -type d         All directories 
#
find . -type d \
    \( -name ".[a-zA-Z]*" -prune -o \
    -name "export" -prune \) -o \
    -name "*.py" -print -o \
    -name "*.[ch]" -print -o \
    -name "*.cc" -print -o \
    -name "*.hh" -print \
    > .ctagsfiles

# Ctags Explained
# Note: to get kinds options use --list-kinds=all
# fields - by default 'fkst' are enabled
#  f  File-restricted scoping
#  k  Kind of tag as a single letter
#  s  Scope of tag definition
#  t Type and name of variable or typedef as "typeref:" field
ctags -L .ctagsfiles --python-kinds=-i --extra=+q
