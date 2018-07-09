FROM openjdk:8

ENV SCALA_VERSION 2.12.6
ENV SBT_VERSION 1.1.6
ENV COURSIER_VERSION 1.0.3

RUN \
  curl -sL -o sbt-$SBT_VERSION.deb http://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  mkdir -p /root/.sbt/${SBT_VERSION%.*}/plugins src/main/scala project && \
  echo 'addSbtPlugin("io.get-coursier" % "sbt-coursier" % "'$COURSIER_VERSION'")' >> /root/.sbt/${SBT_VERSION%.*}/plugins/plugins.sbt && \
  echo 'object Bootstrap extends App {}' > src/main/scala/Main.scala && \
  echo "sbt.version = $SBT_VERSION" > project/build.properties && \
  sbt ++$SCALA_VERSION run && \
  rm -rf project src target

WORKDIR /root
