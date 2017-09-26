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
COPY rootfs/doom2.tar.gz ${PATH_GAMES}
COPY rootfs/run_doom2.sh ${PATH_RUN}/run_doom2.sh

RUN tar zxvf ${PATH_GAMES}/doom2.tar.gz \
    && chown -R ${USERNAME}:${USERNAME} ${PATH_GAMES} \
    && chmod +x -R ${PATH_GAMES} \
    && chmod 777 ${PATH_RUN}/run_doom2.sh

WORKDIR ${HOME}
# RUN echo "alias winegui='wine explorer /desktop=DockerDesktop,1024x768'" > ~/.bash_aliases

#-----------------------------------------------------------------------------
# Run Docker Container
#-----------------------------------------------------------------------------
USER ${USERNAME}
# ONBUILD RUN ${PATH_RUN}/run_doom2.sh

CMD [${PATH_RUN}"/run_doom2.sh"]