# run with:
# $ docker run -v /tmp:/tmp -u docker -e DISPLAY $CONTAINER_ID

FROM mono:latest

MAINTAINER f4bug@amsat.org

RUN curl -s http://percepio.com/downloads/Archive/TzForFreeRTOS-3.0.5.tgz | tar -C /opt -xzf -

ENTRYPOINT ["mono", "/opt/TzForFreeRTOS-3.0.5/TzForFreeRTOS.exe"]
