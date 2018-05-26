FROM yukimochi/movable-type-environment:alpha
ARG MT_VERSION=7.0

USER root
COPY MT-$MT_VERSION.zip .

USER mt
RUN unzip -q MT-$MT_VERSION.zip && \
    mv MT-$MT_VERSION/* . && \
    rm -rf MT-$MT_VERSION MT-$MT_VERSION.zip
COPY mt-config.cgi .
VOLUME [ "/html" ]
EXPOSE 5000
