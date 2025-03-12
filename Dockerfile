FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT@sha256:f561c76774f48f263e43f79afbbc28327c4699c67c653b38b0571bcc02a38f3f

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