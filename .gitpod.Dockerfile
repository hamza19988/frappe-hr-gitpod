FROM gitpod/workspace-full

USER root

RUN apt-get update && apt-get install -y \
    mariadb-server \
    redis-server \
    curl \
    wkhtmltopdf \
    xvfb \
    libfontconfig \
    libxrender1 \
    libxext6 \
    libx11-6 \
    nodejs \
    npm \
    yarn

USER gitpod
