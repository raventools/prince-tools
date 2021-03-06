#! /bin/sh

LIBSRC="\
    Prince.java \
    PrinceEvents.java \
    Util.java"

# remove old class and JAR files
rm -rf com prince.jar

# build new class files
javac -d . $LIBSRC

# create JAR file
jar cf prince.jar com

#--------------------------

TSTSRC="\
    Test.java"

javac -classpath prince.jar $TSTSRC

# rm -f prince-java-r3.zip
# zip prince-java-r3.zip prince.jar README.txt

