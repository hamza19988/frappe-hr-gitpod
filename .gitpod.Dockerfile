FROM python:3.10

RUN apt update && apt install -y \
    git mariadb-server redis-server \
    npm curl xvfb wkhtmltopdf libfontconfig libxrender1 libxext6 libx11-6 && \
    rm -rf /var/lib/apt/lists/*

RUN pip install frappe-bench

ENV PATH="/home/gitpod/.local/bin:$PATH"
