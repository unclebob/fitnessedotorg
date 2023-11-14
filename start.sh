#! /bin/sh

VERSION=`cat VERSION`
echo "Using FitNesse Version $VERSION."

java -classpath classes:releases/$VERSION/fitnesse-standalone.jar fitnesseMain.FitNesseMain -p 8080

