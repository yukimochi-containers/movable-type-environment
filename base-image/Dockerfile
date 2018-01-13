FROM centos

RUN yum install -y -q epel-release
RUN yum install -y -q expat-devel \
    gcc \
    gd-devel \
    giflib-devel \
    ImageMagick-perl \
    libjpeg-devel \
    libpng-devel \
    libxml2-devel \
    mariadb-devel \
    openssl-devel \
    perl \
    perl-core \
    perl-App-cpanminus \
    unzip && \
    yum clean -q all
RUN cpanm -q Test::Simple && \
    cpanm -q Moose && \
    cpanm -q Task::Plack && \
    cpanm -q Authen::SASL \
    Cache::File \
    Cache::Memcached \
    CGI \
    CGI::Cookie \
    Crypt::DSA \
    Crypt::SSLeay \
    DBD::mysql \
    DBI \
    File::Spec \
    GD \
    Image::Size \
    Imager \
    IPC::Run \
    LWP::UserAgent \
    parent \
    XML::LibXML::SAX \
    XML::SAX::Expat \
    XML::SAX::ExpatXS \
    XMLRPC::Transport::HTTP::Plack \
    YAML::Syck && \
    rm -rf .cpanm/*
WORKDIR /mt
RUN adduser mt && \
    chown -R mt /mt
USER mt
