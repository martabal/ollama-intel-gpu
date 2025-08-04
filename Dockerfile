FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.3.0-SNAPSHOT@sha256:a23fbbd362d8506e2bb651239b5ff977eeeee83ec02e6fac621750f2442b380f

ENV \
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