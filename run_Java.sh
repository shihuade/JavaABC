#!/bin/bash


#****************************************************
#    study note
#  --1) javac
#       for each .java file, is better to given structure
#       output path for .class file like ./class/ModuleA(package)
#        ./class/MoudleB(Package)
#
#  --2) java
#       just run the final main function in the main entry class
#       need other class file like ./class/MoudleA(Package)
#                                  ./class/MoudleB(Package)
#       So need to specialfy the actual denpendency class path
#       by using option -classpath or -cp, like:
#       java  -classpath ${ClassDir01}:${ClassDir02}
#
#       at this stage, there is no need for the source code (.java)
#
# date 2016.05.09
# huashi@cisco.com
#***************************************************
run_Main()
{
	OutDir="./out"
	SourceDir="./Src"
	
    ClassDir=$OutDir
    ClassDir02=$SourceDir
    MainClassFile="FreshJuiceTest"
        
	echo "compile with javac"
	echo "with option -d for class output dir, -sourcepath for input/denpence source files dir"
	echo "***********************************"
	echo "javac -d ${OutDir} -sourcepath ${SourceDir} ${SourceDir}/${MainClassFile}.java"
	javac -d ${OutDir} -sourcepath ${SourceDir} ${SourceDir}/${MainClassFile}.java
		
	
	echo "run main java function"
	echo "***********************************"
	java  -classpath ${ClassDir}:${ClassDir02}  ${MainClassFile}
}


run_Main

