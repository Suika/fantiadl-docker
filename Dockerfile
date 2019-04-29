FROM python:alpine
WORKDIR /opt/fantiadl
RUN apk add git && pip install --no-cache-dir requests && git clone https://github.com/bitbybyte/fantiadl.git --branch master --depth 1 --single-branch /opt/fantiadl && rm -rf /opt/fantiadl/.git && apk del git && rm -rf /var/cache/apk/*
ENTRYPOINT ["python3", "/opt/fantiadl/fantiadl.py"]
