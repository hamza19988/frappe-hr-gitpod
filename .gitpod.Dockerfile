FROM python:3.10

# Install system dependencies
RUN apt update && apt install -y \
    git mariadb-server redis-server \
    curl xvfb wkhtmltopdf \
    libfontconfig libxrender1 libxext6 libx11-6 gnupg

# Install Node.js (v18 LTS) and Yarn
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt install -y nodejs && \
    npm install -g yarn

# Install Frappe Bench
RUN pip install frappe-bench

ENV PATH="/home/gitpod/.local/bin:$PATH"
