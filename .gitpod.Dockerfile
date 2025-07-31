FROM gitpod/workspace-full

USER root

RUN apt-get update && apt-get install -y mariadb-server

USER gitpod
