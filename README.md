Docker image based off of https://github.com/mlafeldt/docker-ps2dev with the gsKit and ps2sdk-ports libraries added so that it can build OPL.

# A Docker Image for PS2 Development

[![](https://images.microbadger.com/badges/image/einsteinx2/ps2dev-extra-libs.svg)](https://microbadger.com/images/einsteinx2/ps2dev-extra-libs)
[![](https://img.shields.io/docker/pulls/einsteinx2/ps2dev-extra-libs.svg?maxAge=604800)](https://hub.docker.com/r/einsteinx2/ps2dev-extra-libs/)

Cross-compile your PS2 homebrew projects inside a Docker container based on
[ps2toolchain](https://github.com/ps2dev/ps2toolchain).

## Quick Start

Run this command in your project's root folder to build it inside a Docker
container:

```bash
docker run -it --rm -v "$PWD:/src" einsteinx2/ps2dev-extra-libs make
```

This will mount the current folder to `/src` in the container and then run
`make` inside `/src`. You may execute other commands, of course.

Omit the command to get a login shell (`/bin/bash`) in the running container:

```bash
docker run -it --rm -v "$PWD:/src" einsteinx2/ps2dev-extra-libs
```

## Continuous Integration

With the Docker image in hand, you can also build and test your PS2 applications
on CI platforms. Here's an example configuration for Travis CI:

```yaml
# .travis.yml
language: c

sudo: required

services:
  - docker

script: docker run -it --rm -v "$PWD:/src" einsteinx2/ps2dev-extra-libs make test
```

## Examples

Projects known to use the Docker image:

* [PS2rd](https://github.com/mlafeldt/ps2rd)
* [PS2SDK](https://github.com/ps2dev/ps2sdk)
* [ps2link](https://github.com/ps2dev/ps2link)

## Author

This project is being developed by [Mathias Lafeldt](https://twitter.com/mlafeldt).

Some years ago I already created a [Vagrant Box for PS2 development](https://mlafeldt.github.io/blog/building-a-vagrant-box-for-ps2-development/).
