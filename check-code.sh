#!/bin/bash
set -x

if [ -z "$PMDRUN" ]; then
    echo -e "please set variable PMDRUN, e.g. export PMDRUN=~/pmd-bin-6.2.0/bin/run.sh"
    exit 1
fi

${PMDRUN} pmd -d taskboard-service -R java-basic,java-empty,java-imports,java-unnecessary,java-unusedcode -f text -version 1.8 -language java

if [ -z "$SPOTBUGSBIN" ]; then
    echo "Pleaase set SPOTBUGSBIN, e.g. export SPOTBUGSBIN=~/spotbugs-3.1.1/bin/spotbugs"
    exit 1
fi

# spotbugs checks the compiled code, not the source code.
${SPOTBUGSBIN} -maxHeap 512 -effort:min -medium -auxclasspath ${HOME}/.m2/repository/io:${HOME}/.m2/repository/javax:${HOME}/.m2/repository/org -output spotbugs.out taskboard-service/target/classes/
