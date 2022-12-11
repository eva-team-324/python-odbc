python-odbc
===========

Official python image + pyodbc dependencies

# Usage

Build new image:

```sh
export PYTHON_VERSION=<python-version> # e.g. 3.8.5
docker build --build-arg PYTHON_VERSION=${PYTHON_VERSION} -t docker.io/evateam324/python-odbc:${PYTHON_VERSION} .
```

If image is not already present, push it:

```sh
docker login -u evateam324
docker push docker.io/evateam324/python-odbc:${PYTHON_VERSION}
```

You can always pull a previously pushed image:

```sh
docker pull docker.io/evateam324/python-odbc:<python-version> # e.g. 3.8.5
```
