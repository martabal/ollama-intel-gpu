FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT@sha256:1c6ff3dfbf1e2e249dff8c0bc65f08355e4365f4fb7e12f51b229a57c537eb5d

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