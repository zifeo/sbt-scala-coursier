# Docker sbt-scala image

Docker image for continuous [sbt](http://www.scala-sbt.org)-[scala](http://scala-lang.org) integration testing.
[Coursier](https://github.com/alexarchambault/coursier) sbt plugin is included for faster artefacts fetching and [Scoverage](https://github.com/scoverage/sbt-scoverage) for code coverage.

Available versions (sbt/scala): `0.13.13/2.11.8 (latest)`

## Getting started

- install [docker](https://docs.docker.com/engine/installation/)
- run
```shell
docker run -it --rm zifeo/sbt-scala
```

- or build from this sources
```shell
docker build github.com/zifeo/docker-sbt-scala
```

## Gitlab-CI example

```yml
image: zifeo/sbt-scala:latest

project:
  script:
  - sbt clean test
```

You can then use `\[\d+.\d+\%\]` for coverage extraction.

## License

Forked from [scala-sbt](https://github.com/hseeberger/scala-sbt) under the [Apache 2.0 License](https://github.com/zifeo/docker-sbt-scala/blob/master/LICENSE) with updated versions and inclusions.

