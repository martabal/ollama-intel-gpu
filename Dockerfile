FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT@sha256:bfc5a40d4d5d79eec0c680971ffc898a412387fcf86223d0aa533806157d209e

ENV \
  OLLAMA_HOST=0.0.0.0:11434

COPY serve.sh /app/serve.sh

ENTRYPOINT ["/app/serve.sh"]