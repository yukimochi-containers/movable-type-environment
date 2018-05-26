FROM alpine:edge

RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk add -U gd \
    expat \
    libxml2 \
    perl \
    perl-dbi \
    perl-crypt-ssleay \
    perl-db_file \
    perl-dbd-mysql \
    perl-net-ssleay \
    perl-soap-lite@testing \
    perl-posix-strftime-compiler \
    perl-xml-parser \
    && apk add -t .dep build-base \
    expat-dev \
    gd-dev \
    libxml2-dev \
    perl-dev \
    perl-module-build \
    && wget -q -O - http://xrl.us/cpanm > /bin/cpanm \
    && chmod +x /bin/cpanm \
    && cpanm --no-wget CGI \
    Image::Size \
    File::Spec \
    CGI::Cookie \
    LWP::UserAgent \
    parent \
    HTML::Entities \
    Scalar::Util \
    && cpanm --no-wget Task::Plack \
    && cpanm --no-wget XMLRPC::Transport::HTTP::Plack \
    Archive::Zip \
    Crypt::DSA \
    XML::SAX::ExpatXS \
    YAML::Syck \
    XML::SAX::Expat \
    GD \
    Cache::File \
    Authen::SASL \
    XML::LibXML::SAX \
    Mozilla::CA \
    && apk del .dep \
    && rm -rf /tmp/* /var/cache/apk/*

WORKDIR /mt
RUN adduser -h /mt -s /bin/sh -D mt \
    && chown -R mt /mt
USER mt
