FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.3.0-SNAPSHOT@sha256:be3c8142f88b09ed182ed20d05487bd3ca4baa2f6b60523cb76718e7f1f47706

ENV \
  OLLAMA_HOST=0.0.0.0:11434

WORKDIR /usr/local/bin

RUN \
  init-ollama

ENTRYPOINT ["ollama", "serve"]