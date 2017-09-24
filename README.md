# The-Legends
[![Build Status](https://travis-ci.org/zeroc0d3lab/the-legends.svg?branch=master)](https://travis-ci.org/zeroc0d3lab/the-legends) [![](https://images.microbadger.com/badges/image/zeroc0d3lab/the-legends.svg)](https://microbadger.com/images/zeroc0d3lab/the-legends "Layers") [![](https://images.microbadger.com/badges/version/zeroc0d3lab/the-legends.svg)](https://microbadger.com/images/zeroc0d3lab/the-legends "Version") [![GitHub issues](https://img.shields.io/github/issues/zeroc0d3lab/the-legends.svg)](https://github.com/zeroc0d3lab/the-legends/issues) [![GitHub forks](https://img.shields.io/github/forks/zeroc0d3lab/the-legends.svg)](https://github.com/zeroc0d3lab/the-legends/network) [![GitHub stars](https://img.shields.io/github/stars/zeroc0d3lab/the-legends.svg)](https://github.com/zeroc0d3lab/the-legends/stargazers) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/zeroc0d3lab/the-legends/master/LICENSE)

[![forthebadge](http://forthebadge.com/badges/ages-12.svg)](https://github.com/zeroc0d3lab/the-legends)  [![forthebadge](http://forthebadge.com/badges/built-by-developers.svg)](https://github.com/zeroc0d3lab)

90's Legends Game Docker Container

## How To Start ?
* Build container
```
docker build -it [name_container] [folder_dockerfile]
```

example:
```
docker build -t zeroc0d3lab/the-legends-wine wine
docker build -t zeroc0d3lab/the-legends-doom2 doom2
```

* Run Container
```
docker run -it [name_container]
```

example:
```
docker run -t zeroc0d3lab/the-legends-wine wine
docker run -t zeroc0d3lab/the-legends-doom2 doom2
```

* Running Inside Container
```
## Check all running docker
docker ps
## Get name_container / id_container (from "docker ps")
docker inspect [name_container/id_container]
## Run terminal inside container
docker exec -it [name_container/id_container] /bin/bash
```

example:
```
docker ps

CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS              PORTS               NAMES
bd7a29f05d2c        f1aea966a1e2            "/bin/sh -c 'apt-g..."   26 minutes ago      Up 26 minutes                           the-legends
80bda8ce44c1        docker/compose:1.11.1   "/usr/bin/docker-c..."   26 minutes ago      Up 26 minutes                           serene_booth
```

```
docker inspect the-legends    ## Or ##
docker inspect bd7a29f05d2c

[
  {
  ...

    "NetworkSettings": {
        "Bridge": "",
        "SandboxID": "4584d5aa3cd906d87956275da20e3767daea79eb575f3121a60ecf52a4389cd2",
        "HairpinMode": false,
        "LinkLocalIPv6Address": "",
        "LinkLocalIPv6PrefixLen": 0,
        "Ports": {},
        "SandboxKey": "/var/run/docker/netns/4584d5aa3cd9",
        "SecondaryIPAddresses": null,
        "SecondaryIPv6Addresses": null,
        "EndpointID": "27965d83028d5497c6e1899386689bcec61f4e53b2201751130286344921e4d2",
        "Gateway": "172.17.0.1",
        "GlobalIPv6Address": "",
        "GlobalIPv6PrefixLen": 0,
        "IPAddress": "172.17.0.3",
        "IPPrefixLen": 16,
        "IPv6Gateway": "",
        "MacAddress": "02:42:ac:11:00:03",
        "Networks": {
            "bridge": {
                "IPAMConfig": null,
                "Links": null,
                "Aliases": null,
                "NetworkID": "a756943708ebacd70905bf11cac68ae38def966cfdb11b6bd0d12481aa05c7fc",
                "EndpointID": "27965d83028d5497c6e1899386689bcec61f4e53b2201751130286344921e4d2",
                "Gateway": "172.17.0.1",
                "IPAddress": "172.17.0.3",
                "IPPrefixLen": 16,
                "IPv6Gateway": "",
                "GlobalIPv6Address": "",
                "GlobalIPv6PrefixLen": 0,
                "MacAddress": "02:42:ac:11:00:03"
            }
        }
    }
  }
]
```

```
docker exec -it the-legends /bin/bash  ## Or ##
docker exec -it bd7a29f05d2c /bin/bash
```

## Build All (Shortcut)
```
./configure
make build
```

## Docker Compose
* Copy `.env.example` to `.env`
* Copy `docker-compose.skeleton.yml` to `docker-compose.yml`
* Build & running
  ```
  docker-compose build && docker-compose up
  ```
* Force recreate container
  ```
  docker-compose build && docker-compose up --force-recreate
  ```
* Running container only
  ```
  docker-compose up
  ```

## License
[**MIT License**](https://github.com/zeroc0d3lab/the-legends/blob/master/LICENSE)
