FROM yukimochi/movable-type-environment
ARG MT_VERSION=6.3.6

COPY MT-$MT_VERSION.zip .
RUN unzip -q MT-$MT_VERSION.zip && \
mv MT-$MT_VERSION/* . && \
rm -rf MT-$MT_VERSION MT-$MT_VERSION.zip
COPY mt-config.cgi .
VOLUME [ "/html" ]
EXPOSE 5000
