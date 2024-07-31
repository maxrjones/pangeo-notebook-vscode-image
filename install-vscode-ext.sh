#!/bin/bash

# Install VSCode extensions.
# These get installed to $CONDA_PREFIX/envs/notebook/share/code-server/extensions/

extensions=("ms-python.python" "ms-toolsai.jupyter" "quarto.quarto")

for EXT in "${extensions[@]}"; do
    do code-server --install-extension "${EXT}"
done