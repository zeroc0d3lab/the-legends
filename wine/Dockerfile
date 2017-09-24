FROM zeroc0d3lab/ubuntu-wine
MAINTAINER ZeroC0D3 Team <zeroc0d3.team@gmail.com>

#-----------------------------------------------------------------------------
# Create User
#-----------------------------------------------------------------------------
ENV USERNAME wine
RUN useradd -u 1001 -d /home/${USERNAME} -m -s /bin/bash wine \
    && mkdir /tmp/.X11-unix \
    && chmod 1777 /tmp/.X11-unix

USER ${USERNAME}
ENV HOME /home/${USERNAME} \
    WINEPREFIX /home/${USERNAME}/.wine \
    WINEARCH win32 \
    WINEDEBUG -all

WORKDIR ${HOME}

#-----------------------------------------------------------------------------
# Run Docker Container
#-----------------------------------------------------------------------------
CMD []