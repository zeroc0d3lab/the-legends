FROM zeroc0d3lab/ubuntu-wine
MAINTAINER ZeroC0D3 Team <zeroc0d3.team@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV WINE_MONO_VERSION 4.5.6
ENV WINE_GECKO_VERSION 2.40

#-----------------------------------------------------------------------------
# Wine User
#-----------------------------------------------------------------------------
ENV USERNAME wine

# RUN useradd -u 1001 -d /home/${USERNAME} -m -s /bin/bash wine \
#     && mkdir /tmp/.X11-unix \
#     && chmod 1777 /tmp/.X11-unix

USER ${USERNAME}
ENV HOME /home/${USERNAME} \
    WINEPREFIX /home/${USERNAME}/.wine \
    WINEARCH win32 \
    WINEDEBUG -all

WORKDIR ${HOME}
# RUN echo "alias winegui='wine explorer /desktop=DockerDesktop,1024x768'" > ~/.bash_aliases

#-----------------------------------------------------------------------------
# Run Docker Container
#-----------------------------------------------------------------------------
CMD ["bash"]