FROM python:3-slim

WORKDIR /usr/src/app

RUN apt-get update \
 && apt-get install -y --no-install-recommends git \
 && apt-get purge -y --auto-remove \
 && rm -rf /var/lib/apt/lists/* \
 && pip install mkdocs \
    mkdocs-mermaid2-plugin \
    mkdocs-unused-files \
    mkdocs-material

COPY . .

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]

EXPOSE 8000
