#!/bin/bash

git pull

TITLE="ollama-intel-gpu"

URL="https://github.com/martabal/${TITLE}"

docker build \
    -t ghcr.io/martabal/ollama-intel-gpu:"$(git describe --tags --abbrev=0)" \
    -t ghcr.io/martabal/ollama-intel-gpu:latest \
    --label org.opencontainers.image.created="$(date -u +"%Y-%m-%dT%H:%M:%SZ")" \
    --label org.opencontainers.image.url="${URL}"\
    --label org.opencontainers.image.source="${URL}" \
    --label org.opencontainers.image.version=latest \
    --label org.opencontainers.image.revision="$(git rev-parse --abbrev-ref HEAD)" \
    --label org.opencontainers.image.vendor="${VENDOR}" \
    --label org.opencontainers.image.title="${TITLE}" \
    --label org.opencontainers.image.description="${DESCRIPTION}" \
    .

docker push ghcr.io/martabal/ollama-intel-gpu --all-tags
