
FROM ubuntu:14.04

RUN sudo apt-get update

RUN sudo apt-get install flex bison build-essential csh libxaw7-dev wget --assume-yes
 
RUN sudo mkdir /usr/class

RUN chmod -R 0777 /usr/class

RUN wget https://courses.edx.org/asset-v1:StanfordOnline+SOE.YCSCS1+1T2020+type@asset+block@student-dist.tar.gz -P /usr/class

RUN tar -xf "/usr/class/asset-v1:StanfordOnline+SOE.YCSCS1+1T2020+type@asset+block@student-dist.tar.gz" -C /usr/class

ENV PATH=/usr/class/bin:$PATH

WORKDIR /usr/class/