FROM zeroc0d3lab/ubuntu-wine
MAINTAINER ZeroC0D3 Team <zeroc0d3.team@gmail.com>

#-----------------------------------------------------------------------------
# Wine User
#-----------------------------------------------------------------------------
ENV USERNAME wine
ENV PATH_GAMES /home/${USERNAME}/games
ENV PATH_DOOM2 /doom2
ENV PATH_RUN ${PATH_GAMES}${PATH_DOOM2}

# RUN useradd -u 1001 -d /home/${USERNAME} -m -s /bin/bash wine \
#     && mkdir /tmp/.X11-unix \
#     && chmod 1777 /tmp/.X11-unix

USER root
#-----------------------------------------------------------------------------
# Set Installation Repositories
#-----------------------------------------------------------------------------
RUN mkdir -p ${PATH_RUN}

#-----------------------------------------------------------------------------
# Installation Doom2
#-----------------------------------------------------------------------------
COPY rootfs/doom2.tar.gz ${PATH_GAMES}
COPY rootfs/run_doom2.sh ${PATH_RUN}/run_doom2.sh

RUN tar zxvf ${PATH_GAMES}/doom2.tar.gz \
    && chown -R ${USERNAME}:${USERNAME} ${PATH_GAMES} \
    && chmod +x -R ${PATH_GAMES}

USER ${USERNAME}
ENV HOME /home/${USERNAME} \
    WINEPREFIX /home/${USERNAME}/.wine \
    WINEARCH win32 \
    WINEDEBUG -all

WORKDIR ${HOME}

#-----------------------------------------------------------------------------
# Run Docker Container
#-----------------------------------------------------------------------------
# CMD ${PATH_RUN}/run_doom2.sh