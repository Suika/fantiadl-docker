FROM alpine:latest
ENTRYPOINT ["/opt/fantiadl/entrypoint.sh"]
CMD ["--help"]
WORKDIR /opt/fantiadl
ENV UID=${UID:-1000} GID=${GID:-1000}

COPY entrypoint.sh /opt/fantiadl/entrypoint.sh
RUN apk add --update --no-cache python3 shadow su-exec
RUN pip3 install --no-cache-dir requests && \
    wget https://github.com/bitbybyte/fantiadl/archive/master.tar.gz -qO- | tar xzf - --strip-components=1 -C /opt/fantiadl && \
    addgroup -g 1000 fantia && \
    adduser -h /opt/fantiadl -u 1000 -H -S -G fantia fantia && \
    chown fantia:fantia -R /opt/fantiadl && \
    python3 -m pip uninstall --yes setuptools pip && \
    find / | grep -E "(__pycache__|\.pyc|\.exe|\.pyo$)" | xargs rm -rf