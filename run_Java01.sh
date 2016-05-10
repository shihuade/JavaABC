#!/bin/bash



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

