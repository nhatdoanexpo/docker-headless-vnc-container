#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Maven 3.8.6" 
# Install Maven 3.8.6
export VER="3.8.6"
wget http://www-eu.apache.org/dist/maven/maven-3/${VER}/binaries/apache-maven-${VER}-bin.tar.gz
tar xvf apache-maven-${VER}-bin.tar.gz
mv apache-maven-${VER} /opt/maven

export MAVEN_HOME=/opt/maven
export PATH=\$PATH:\$MAVEN_HOME/bin
