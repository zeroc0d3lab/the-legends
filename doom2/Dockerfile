FROM zeroc0d3lab/ubuntu-wine
MAINTAINER ZeroC0D3 Team <zeroc0d3.team@gmail.com>

ENV USERNAME wine
ENV PATH_GAMES /home/${USERNAME}/games
ENV PATH_DOOM2 /doom2
ENV PATH_RUN ${PATH_GAMES}${PATH_DOOM2}

#-----------------------------------------------------------------------------
# Set Installation Repositories
#-----------------------------------------------------------------------------
RUN mkdir -p ${PATH_RUN}

#-----------------------------------------------------------------------------
# Installation Doom2
#-----------------------------------------------------------------------------
RUN wget ftp://pixelrage.ro/demos/doom2_full.rar -O /tmp/doom2.rar \
    && 7z e /tmp/doom2.rar \
    && mv /tmp/doom2 ${PATH_RUN}

COPY rootfs/run_doom2.sh ${PATH_RUN}/run_doom2.sh

#-----------------------------------------------------------------------------
# Run Docker Container
#-----------------------------------------------------------------------------
CMD ${PATH_RUN}/run_doom2.sh