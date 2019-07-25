FROM mlafeldt/ps2dev

MAINTAINER Ben Baron <ben@einsteinx2.com>

ENV GSKIT $PS2DEV/gsKit

RUN git clone https://github.com/ps2dev/gsKit.git /gsKit \
    && make -C /gsKit \
    && make install -C /gsKit \
    && git clone https://github.com/ps2dev/ps2sdk-ports.git /ps2sdk-ports \
    && make -C /ps2sdk-ports \
    && rm -rf \
        /gsKit \
        /ps2sdk-ports

WORKDIR /src
CMD ["/bin/bash"]
