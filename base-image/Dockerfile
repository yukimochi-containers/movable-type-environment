FROM centos

RUN yum install -y -q epel-release
RUN yum install -y -q expat-devel \
    gcc \
    giflib-devel \
    ImageMagick-perl \
    libjpeg-devel \
    libpng-devel \
    openssl-devel \
    perl \
    perl-core \
    perl-AnyEvent \
    perl-AnyEvent-HTTP \
    perl-Any-Moose \
    perl-Apache-LogFormat-Compiler \
    perl-App-cpanminus \
    perl-asa \
    perl-B-Hooks-EndOfScope \
    perl-Canary-Stability \
    perl-CGI \
    perl-CGI-Compile \
    perl-CGI-Emulate-PSGI \
    perl-Class-Accessor-Lite \
    perl-Class-Inspector \
    perl-Class-Load \
    perl-Class-Load-XS \
    perl-Class-Method-Modifiers \
    perl-common-sense \
    perl-Cpanel-JSON-XS \
    perl-CPAN-Meta \
    perl-CPAN-Meta-Check \
    perl-CPAN-Meta-YAML \
    perl-Data-Dump \
    perl-Data-OptList \
    perl-Devel-GlobalDestruction \
    perl-Devel-OverloadInfo \
    perl-Devel-StackTrace \
    perl-Devel-StackTrace-AsHTML \
    perl-Digest-HMAC \
    perl-Dist-CheckConflicts \
    perl-Env \
    perl-Eval-Closure \
    perl-Exporter-Tiny \
    perl-ExtUtils-Config \
    perl-ExtUtils-Helpers \
    perl-ExtUtils-InstallPaths \
    perl-FCGI \
    perl-FCGI-Client \
    perl-FCGI-ProcManager \
    perl-File-pushd \
    perl-File-ShareDir \
    perl-File-ShareDir-Install \
    perl-Filesys-Notify-Simple \
    perl-Guard \
    perl-Hash-MultiValue \
    perl-HTTP-Headers-Fast \
    perl-HTTP-Server-Simple \
    perl-HTTP-Server-Simple-PSGI \
    perl-HTTP-Tiny \
    perl-IO-Handle-Util \
    perl-IO-String \
    perl-IPC-Signal \
    perl-JSON \
    perl-JSON-MaybeXS \
    perl-JSON-PP \
    perl-List-MoreUtils \
    perl-Module-Build-Tiny \
    perl-Module-Implementation \
    perl-Module-Metadata \
    perl-Module-Runtime \
    perl-Moose \
    perl-MRO-Compat \
    perl-namespace-clean \
    perl-Net-Server \
    perl-Package-DeprecationManager \
    perl-Package-Stash \
    perl-Package-Stash-XS \
    perl-Params-Util \
    perl-Scope-Guard \
    perl-Stream-Buffered \
    perl-Sub-Exporter \
    perl-Sub-Exporter-Progressive \
    perl-Sub-Identify \
    perl-Sub-Install \
    perl-Sub-Name \
    perl-Sub-Uplevel \
    perl-Test-CleanNamespaces \
    perl-Test-Deep \
    perl-Test-Exception \
    perl-Test-Fatal \
    perl-Test-Harness \
    perl-Test-MockTime \
    perl-Test-NoWarnings \
    perl-Test-Requires \
    perl-Test-SharedFork \
    perl-Test-Simple \
    perl-Test-TCP \
    perl-Test-Warn \
    perl-Test-Warnings \
    perl-Time-Piece \
    perl-Try-Tiny \
    perl-Variable-Magic \
    unzip && \
    yum clean -q all
RUN cpanm Task::Plack && \
    rm -rf .cpanm/*
RUN yum install -y -q mariadb-devel \
    perl-Authen-SASL \
    perl-Crypt-SSLeay \
    perl-DBD-MySQL \
    perl-DBI \
    perl-GD \
    perl-IPC-Run \
    perl-XML-LibXML \
    perl-YAML-Syck && \
    cpanm Cache::File \
    Cache::Memcached \
    Crypt::DSA \
    Image::Size \
    Imager \
    XML::SAX::Expat \
    XML::SAX::ExpatXS \
    XMLRPC::Transport::HTTP::Plack && \
    yum clean -q all && \
    rm -rf .cpanm/*
WORKDIR /mt
RUN adduser mt && \
chown -R mt /mt
USER mt
