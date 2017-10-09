FROM debian:stable

MAINTAINER f4bug@amsat.org

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -yy \
        curl \
        libcroco3 \
        libgail18 \
        libgtk2.0-bin \
        librsvg2-2 \
        libmono-system-windows-forms4.0-cil \
        mono-runtime

RUN curl -s https://percepio.com/downloads/TzForFreeRTOS-3.1.3.tgz | tar -C /opt -xzf -

ENTRYPOINT ["mono", "/opt/TzForFreeRTOS-3.1.3/TzForFreeRTOS.exe"]
