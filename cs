#!/usr/bin/perl
$Usage = "cs <project name, such as 62632>";
$target = shift(@ARGV);
if($target eq ""){
	echo $Usage;
	exit(1);
}
$csdir = `findcsdir $target`;
$dir = `finddir $target`;
#system("cd $csdir;export EDITOR=/usr/bin/gvim;xterm -geometry 120x40 -title $dir -fg green -bg black -e cscope -Cd &");
system("cd $csdir;export EDITOR=/usr/bin/gvim;xterm -geometry 120x40 -title $dir -fg green -bg black -e cscope -p3 -Cd &");
#system("cd $csdir;/bin/bash -c cscope -Cd &");
