FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT

ENV \
  ZES_ENABLE_SYSMAN=1 \
  OLLAMA_HOST=0.0.0.0:11434

RUN \
  mkdir -p /llm/ollama && \
  cd /llm/ollama && \
  init-ollama && \
  ln -s \
    /llm/ollama/ollama \
    /usr/bin/ollama

WORKDIR /llm/ollama

ENTRYPOINT ["ollama", "serve"]