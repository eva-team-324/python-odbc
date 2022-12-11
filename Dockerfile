ARG PYTHON_VERSION
FROM docker.io/library/python:${PYTHON_VERSION}
RUN true \
    && apt-get update \
    && apt-get install -y \
    \
    unixodbc-dev=2.3.6-0.1 \
    \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/