FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.3.0-SNAPSHOT@sha256:ce55300ac5eaeea3639a473314d54adbd80bcb8113c99addbe1673272e3b34f4

ENV \
  OLLAMA_HOST=0.0.0.0:11434

WORKDIR /usr/local/bin

RUN \
  init-ollama

ENTRYPOINT ["ollama", "serve"]