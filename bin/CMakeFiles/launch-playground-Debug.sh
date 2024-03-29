#!/bin/sh
bindir=$(pwd)
cd /Users/conorbroderick/Opengl/OpenglTutorials/playground/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/conorbroderick/Opengl/bin/Debug/playground 
	else
		"/Users/conorbroderick/Opengl/bin/Debug/playground"  
	fi
else
	"/Users/conorbroderick/Opengl/bin/Debug/playground"  
fi
