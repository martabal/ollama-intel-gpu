FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT@sha256:d46fa7e9fb68d568c5427a1dffe1c257121b4efecf9a87f88057e23f9e6e7846

ENV \
  OLLAMA_HOST=0.0.0.0:11434

COPY serve.sh /app/serve.sh

ENTRYPOINT ["/app/serve.sh"]