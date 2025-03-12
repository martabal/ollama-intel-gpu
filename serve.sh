#!/bin/bash
# shellcheck source=/dev/null

cd /llm/scripts/ || exit
source ipex-llm-init --gpu --device Arc

mkdir -p /llm/ollama
cd /llm/ollama || exit
init-ollama
./ollama serve
