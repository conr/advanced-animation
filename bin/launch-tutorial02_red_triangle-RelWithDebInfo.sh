#!/bin/sh
bindir=$(pwd)
cd /Users/conorbroderick/Opengl/OpenglTutorials/tutorial02_red_triangle/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/conorbroderick/Opengl/bin/RelWithDebInfo/tutorial02_red_triangle 
	else
		"/Users/conorbroderick/Opengl/bin/RelWithDebInfo/tutorial02_red_triangle"  
	fi
else
	"/Users/conorbroderick/Opengl/bin/RelWithDebInfo/tutorial02_red_triangle"  
fi
