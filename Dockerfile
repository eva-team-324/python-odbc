ARG PYTHON_VERSION
FROM docker.io/library/python:${PYTHON_VERSION}

RUN true \
    && curl https://packages.microsoft.com/keys/microsoft.asc -o /tmp/microsoft.asc \
    && apt-key add /tmp/microsoft.asc \
    && curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list -o /etc/apt/sources.list.d/mssql-release.list \
    \
    && apt-get update \
    && ACCEPT_EULA=Y apt-get install -y \
    \
    unixodbc=2.3.7 \
    unixodbc-dev=2.3.7 \
    msodbcsql18=18.1.2.1-1 \
    mssql-tools18=18.1.1.1-1 \
    \
    && apt-get clean autoclean \
    && rm -f /tmp/microsoft.asc \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/