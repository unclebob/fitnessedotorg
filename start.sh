#! /bin/sh

VERSION=`cat VERSION`
echo "Using FitNesse Version $VERSION."

JAR_FILE=fitnesse-standalone-$VERSION.jar


if ! [ -f $JAR_FILE ]; then
  echo "Downloading $JAR_FILE"
  rm fitnesse-standalone.jar
  wget https://raw.githubusercontent.com/fitnesse/fitnessedotorg/master/releases/$VERSION/fitnesse-standalone.jar
  mv fitnesse-standalone.jar $JAR_FILE
fi

java -classpath classes:$JAR_FILE fitnesseMain.FitNesseMain -p 8080

