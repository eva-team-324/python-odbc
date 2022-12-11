FROM docker.io/library/python:3.8.4
RUN true \
    && echo "deb http://archive.ubuntu.com/ubuntu jammy main restricted universe multiverse" > /etc/apt/sources.list.d/official-package-repositories.list \
    && apt-get update \
    \
    && apt-get install unixodbc=2.3.9-5 \
    \
    && apt-get clean autoclean \
    && apt-get autoremove --yes \
    && rm -f /etc/apt/sources.list.d/official-package-repositories.list \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/