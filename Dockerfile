FROM ghcr.io/seg-way/containers/segway-connect-system-base-source:1.1.12

COPY etc/syslog-ng/conf.d/plugin /etc/syslog-ng/conf.d/plugin

COPY python /app/plugin
RUN . /app/.venv/bin/activate ;\
    pushd /app/plugin ;\
    poetry install
