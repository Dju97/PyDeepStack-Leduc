from kaixhin/torch

RUN apt-get update && apt-get install make 

WORKDIR ./usr/src/app

COPY . .

RUN cd ACPCServer; make
RUN luarocks install luasocket