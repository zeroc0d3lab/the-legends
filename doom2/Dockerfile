FROM zeroc0d3lab/ubuntu-wine
MAINTAINER ZeroC0D3 Team <zeroc0d3.team@gmail.com>

ENV USERNAME wine
ENV PATH_GAMES /home/${USERNAME}/games
ENV PATH_DOOM2 /doom2
ENV PATH_RUN ${PATH_GAMES}${PATH_DOOM2}

USER root
#-----------------------------------------------------------------------------
# Set Installation Repositories
#-----------------------------------------------------------------------------
RUN mkdir -p ${PATH_RUN}

#-----------------------------------------------------------------------------
# Installation Doom2
#-----------------------------------------------------------------------------
COPY rootfs/doom2.tar.gz ${PATH_RUN}
COPY rootfs/run_doom2.sh ${PATH_RUN}/run_doom2.sh

RUN tar zxvf ${PATH_RUN}/doom2.tar.gz \
    && chown -R ${USERNAME}:${USERNAME} ${PATH_RUN}/doom2 \
    && chmod +x -R ${PATH_RUN}/doom2

COPY rootfs/run_doom2.sh ${PATH_RUN}/run_doom2.sh

#-----------------------------------------------------------------------------
# Run Docker Container
#-----------------------------------------------------------------------------
CMD ${PATH_RUN}/run_doom2.sh