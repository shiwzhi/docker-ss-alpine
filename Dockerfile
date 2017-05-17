FROM alpine

RUN apk update;apk add python3;pip3 install shadowsocks

ENV method aes-256-cfb
ENV pass=swz
ENV port 9990
ENV ip 0.0.0.0

ENTRYPOINT ssserver -s $ip -k $pass -m $method -p $port