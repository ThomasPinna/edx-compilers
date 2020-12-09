FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y flex bison build-essential \
    csh libxaw7-dev wget \
    libc6-i386 \
    vim git tree

RUN mkdir /usr/class
#RUN chmod -R 0777 /usr/class

RUN wget https://courses.edx.org/asset-v1:StanfordOnline+SOE.YCSCS1+1T2020+type@asset+block@student-dist.tar.gz -P /usr/class

RUN tar xzf "/usr/class/asset-v1:StanfordOnline+SOE.YCSCS1+1T2020+type@asset+block@student-dist.tar.gz" -C /usr/class

ENV PATH=/usr/class/bin:$PATH

WORKDIR /usr/class/
