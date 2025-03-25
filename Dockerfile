FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT@sha256:570be754812f1eff0cf24792daac85303a0763e9526e2d7315825786e8a48793

ENV \
  OLLAMA_HOST=0.0.0.0:11434

COPY serve.sh /app/serve.sh

ENTRYPOINT ["/app/serve.sh"]