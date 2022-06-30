# syntax=docker/dockerfile:1
FROM alpine:latest

WORKDIR /code

RUN apk add --no-cache curl unzip gcompat libgcc libstdc++ icu
# RUN apt update &&apt install curl unzip -y 
RUN curl -L https://github.com/tpill90/Battlenet-lancache-prefill/releases/download/v1.2.0/linux-x64.zip -o linux-x64.zip
RUN unzip linux-x64.zip; exit 0
RUN mv BattleNetPrefill-linux-x64/BattleNetPrefill BattleNetPrefill
RUN chmod +x BattleNetPrefill
ENTRYPOINT ["./BattleNetPrefill"]
