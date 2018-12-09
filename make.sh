#! /bin/bash

set -e

export TEXINPUTS="$TEXINPUTS:media"
export TEXINPUTS="$TEXINPUTS:qbx-skunkworks/experiments"
export TEXINPUTS="$TEXINPUTS:data"

unset PYTHONWARNINGS

LATEXRUN="latexrun --verbose-cmds -O out poster.tex"

if [[ "$1" = "watch" ]]; then
  git ls-files | entr $LATEXRUN
else
  $LATEXRUN
fi
