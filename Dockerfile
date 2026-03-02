FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y tesseract-ocr \
    tesseract-ocr-eng \
    poppler-utils && \
    apt-get clean

ENV N8N_ENABLE_EXECUTE_COMMAND=true

USER node
