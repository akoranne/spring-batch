#!/bin/sh

set -e # fail fast
set -x # print commands

 
#JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64";
#export JAVA_HOME;

# The src from the 'develop' branch, injected by concourse
srcdir=`pwd`/source-code-develop

# change to the src directory
cd ${srcdir};

# do a clean build using gradle, and execute all tests.
# if everything succeeds, assemble the archive (will be in the build/libs)
./gradlew clean build test assemble;
