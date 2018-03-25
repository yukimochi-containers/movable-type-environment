FROM yukimochi/movable-type-environment
ARG MT_VERSION=6.3.7

USER root
COPY MT-$MT_VERSION.zip .
ADD mt-patches/* /mt/mt-patches/
RUN chown mt:mt -R mt-patches

USER mt
RUN unzip -q MT-$MT_VERSION.zip && \
    mv MT-$MT_VERSION/* . && \
    rm -rf MT-$MT_VERSION MT-$MT_VERSION.zip
RUN cd mt-patches &&\
    find *.zip | xargs -n1 unzip -d unzips &&\
    ls unzips | xargs -n1 -i% sh -c 'cp -r $(pwd)/unzips/%/* /mt/' &&\
    cd /mt &&\
    rm -rf /mt/mt-patches
COPY mt-config.cgi .
VOLUME [ "/html" ]
EXPOSE 5000
