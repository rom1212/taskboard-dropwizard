#!/bin/bash
set -x

mvn "archetype:generate" "-DinteractiveMode=false" "-DarchetypeGroupId=io.dropwizard.archetypes" "-DarchetypeArtifactId=java-simple" "-DarchetypeVersion=1.3.0" "-DgroupId=taskboard.io" "-DartifactId=taskboard-service" "-Dpackage=io.taskboard.service" "-Dname=TaskBoardService" "-Dversion=0.1-SNAPSHOT" "-Dshaded=true" "-Ddescription=Task Board Service"


# command output
# ./generate-taskboard-service.sh 
# + mvn archetype:generate -DinteractiveMode=false -DarchetypeGroupId=io.dropwizard.archetypes -DarchetypeArtifactId=java-simple -DarchetypeVersion=1.3.0 -DgroupId=taskboard.io -DartifactId=taskboard-service -Dpackage=io.taskboard.service -Dname=TaskBoardService -Dversion=0.1-SNAPSHOT -Dshaded=true '-Ddescription=Task Board Service'
# [INFO] Scanning for projects...
# [INFO]                                                                         
# [INFO] ------------------------------------------------------------------------
# [INFO] Building Maven Stub Project (No POM) 1
# [INFO] ------------------------------------------------------------------------
# [INFO] 
# [INFO] >>> maven-archetype-plugin:3.0.1:generate (default-cli) > generate-sources @ standalone-pom >>>
# [INFO] 
# [INFO] <<< maven-archetype-plugin:3.0.1:generate (default-cli) < generate-sources @ standalone-pom <<<
# [INFO] 
# [INFO] --- maven-archetype-plugin:3.0.1:generate (default-cli) @ standalone-pom ---
# [INFO] Generating project in Batch mode
# [INFO] Archetype repository not defined. Using the one from [io.dropwizard.archetypes:java-simple:1.3.1] found in catalog remote
# [INFO] ----------------------------------------------------------------------------
# [INFO] Using following parameters for creating project from Archetype: java-simple:1.3.0
# [INFO] ----------------------------------------------------------------------------
# [INFO] Parameter: groupId, Value: taskboard.io
# [INFO] Parameter: artifactId, Value: taskboard-service
# [INFO] Parameter: version, Value: 0.1-SNAPSHOT
# [INFO] Parameter: package, Value: io.taskboard.service
# [INFO] Parameter: packageInPathFormat, Value: io/taskboard/service
# [INFO] Parameter: package, Value: io.taskboard.service
# [INFO] Parameter: version, Value: 0.1-SNAPSHOT
# [INFO] Parameter: name, Value: TaskBoardService
# [INFO] Parameter: groupId, Value: taskboard.io
# [INFO] Parameter: description, Value: Task Board Service
# [INFO] Parameter: shaded, Value: true
# [INFO] Parameter: artifactId, Value: taskboard-service
# [INFO] Project created from Archetype in dir: /home/xxx/github.com/taskboard-dropwizard/taskboard-service
# [INFO] ------------------------------------------------------------------------
# [INFO] BUILD SUCCESS
# [INFO] ------------------------------------------------------------------------
# [INFO] Total time: 10.995 s
# [INFO] Finished at: 2018-04-18T11:27:16-07:00
# [INFO] Final Memory: 18M/221M
# [INFO] ------------------------------------------------------------------------
