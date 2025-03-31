FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT@sha256:3be7cd9c6b97fbbe65b406a5a3f765c89fc1c7add39620b05b1b09d07ba5c912

ENV \
  OLLAMA_HOST=0.0.0.0:11434

COPY serve.sh /app/serve.sh

ENTRYPOINT ["/app/serve.sh"]