ARG PYTHON_VERSION
FROM docker.io/library/python:${PYTHON_VERSION}
RUN true \
    && apt-get update \
    \
    && apt-get install -y unixodbc=2.3.6-0.1 \
    \
    && apt-get clean autoclean \
    # && apt-get autoremove --yes \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/