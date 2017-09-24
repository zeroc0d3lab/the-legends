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

USER ${USERNAME}
ENV HOME /home/${USERNAME} \
    WINEPREFIX /home/${USERNAME}/.wine \
    WINEARCH win32 \
    WINEDEBUG -all

WORKDIR ${HOME}

#-----------------------------------------------------------------------------
# Set Installation Repositories
#-----------------------------------------------------------------------------
RUN mkdir -p ${PATH_RUN}

#-----------------------------------------------------------------------------
# Installation Doom2
#-----------------------------------------------------------------------------
RUN mkdir -p /tmp/doom2 \
    && wget http://www.dr-shost.com/freqs/dosgam/doom2.rar -O /tmp/doom2/doom2.rar \
    && wget http://www.dr-shost.com/freqs/dosgam/doom2.r00 -O /tmp/doom2/doom2.r00 \
    && wget http://www.dr-shost.com/freqs/dosgam/doom2.r01 -O /tmp/doom2/doom2.r01 \
    && wget http://www.dr-shost.com/freqs/dosgam/doom2.r02 -O /tmp/doom2/doom2.r02 \
    && wget http://www.dr-shost.com/freqs/dosgam/doom2.r03 -O /tmp/doom2/doom2.r03 \
    && 7z x /tmp/doom2/doom2.r00 -tiso.split -o /tmp/doom2 \
    && mv /tmp/doom2 ${PATH_RUN}

COPY doom2/rootfs/run_doom2.sh ${PATH_RUN}/run_doom2.sh

#-----------------------------------------------------------------------------
# Run Docker Container
#-----------------------------------------------------------------------------
# CMD ${PATH_RUN}/run_doom2.sh