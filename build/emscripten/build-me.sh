#!/bin/bash

set -euo pipefail

_DIR=${BASH_SOURCE[0]%${BASH_SOURCE[0]##*/}}
_DIR=${_DIR:-.}

cd "$_DIR"

emcmake cmake ../../
emmake make

echo "tidy.js built successfully" >&2
