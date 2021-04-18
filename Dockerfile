FROM ubuntu:20.04
LABEL maintainer="Saliuk Ivan <iwan.salyuk@gmail.com>"

RUN apt update && apt install netcat -y
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["./run.sh"]

EXPOSE 81
