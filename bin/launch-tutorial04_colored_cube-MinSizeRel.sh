#!/bin/sh
bindir=$(pwd)
cd /Users/conorbroderick/Opengl/OpenglTutorials/tutorial04_colored_cube/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/conorbroderick/Opengl/bin/MinSizeRel/tutorial04_colored_cube 
	else
		"/Users/conorbroderick/Opengl/bin/MinSizeRel/tutorial04_colored_cube"  
	fi
else
	"/Users/conorbroderick/Opengl/bin/MinSizeRel/tutorial04_colored_cube"  
fi
