FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.3.0-SNAPSHOT@sha256:dfee7f8833f8cb557cc82a062c21a1af6711b2cf89d0e1407d21c2f60725dca1

ENV \
  OLLAMA_HOST=0.0.0.0:11434

WORKDIR /usr/local/bin

RUN \
  init-ollama

ENTRYPOINT ["ollama", "serve"]