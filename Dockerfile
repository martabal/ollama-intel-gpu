FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT@sha256:21f970942b9621790807a869e5661f3b0df50865d9c07db870acca7fb3cf7539

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