#!/bin/bash
set -e

rm -rf /tmp/spigot-build
mkdir -p /tmp/spigot-build
cd /tmp/spigot-build
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar BuildTools.jar --rev $1
mv spigot-*.jar $HOME/jars/
cd -
rm -rf /tmp/spigot-build
