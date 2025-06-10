#######################################################
# LineageOS14.1 / AOSP 7.1.2ビルド環境を自動で設定するDockerfileです。#
#######################################################

FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8

# パッケージのインストール（AOSP 7.1.2に必要なもの）
RUN apt-get update && apt-get install -y \
    bc bison build-essential curl flex g++-multilib gcc-multilib \
    git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev \
    lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev \
    libssl-dev libxml2 libxml2-utils lzop openjdk-8-jdk \
    pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev \
    python python2.7 python2.7-dev \
    wget unzip ccache repo \
    && apt-get clean

# Java環境設定
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
RUN perl -0777 -i -p -e 's/(jdk.tls.disabledAlgorithms=.*?), TLSv1, TLSv1\.1/$1/g' /etc/java-8-openjdk/security/java.security

# builderユーザーの作成
RUN useradd -m builder
USER builder
WORKDIR /home/builder
