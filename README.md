# Docker sbt-scala-coursier image

[![Docker Build Status](https://img.shields.io/docker/build/zifeo/sbt-scala-coursier.svg)](https://hub.docker.com/r/zifeo/sbt-scala-coursier/)

The image contains ready-to-use and preloaded [sbt](http://www.scala-sbt.org) (build tool), [scala](http://scala-lang.org) (compiler) and [coursier](https://github.com/alexarchambault/coursier) (fast artifact fetcher).

## Getting started

- install [docker](https://docs.docker.com/engine/installation/)
- run
```shell
docker run -it --rm zifeo/sbt-scala-coursier
```

- or build from this sources
```shell
docker build github.com/zifeo/sbt-scala-coursier
```

## Local development example

```shell
docker run -it --rm -v "$(pwd):/root" zifeo/sbt-scala-coursier
```

## Gitlab-CI example

```yml
image: zifeo/sbt-scala-coursier:latest

project:
  script:
  - sbt clean test
```
