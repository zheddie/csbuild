#!/usr/bin/perl
$target = shift(@ARGV);
$home = $ENV{'HOME'};
$mydata = "$home/mydata";
$dir = `finddir $target`;
#if (open($dir/cuep.include))
#system("ln -s $mydata/J9Codes/ibmi/cuep.include $dir/cuep.include");
$csdir = `findcsdir $target`;
print "csdir=$csdir\n";
system("mkdir -p $csdir");
#`find -L $dir -type f|grep -E "\\.candl\$|\\.prcrules\$|\\.obi\$|\\.lst\$|\\.mk\$|\\.html\$|\\.ops\$|\\.map\$|\\.htm\$|\\.java\$|\\.files\$|\/makefile\$|\/makefile\.as400\$|\\.obi\$|\\.cl\$|\\.c400\$|\\.txt\$|\\.perl\$|\\.prcrules\$|\\.candl\$|\\.ruvpd\$|\\.exportsrc\$|\\.xml\$|\\.exp\$|\\.sh\$|\\.c\$|\\.cpp\$|\\.plmi\$|\\.hpp\$|\\.s\$|\\.S\$|\\.C\$|\\.inc\$|\\.cinc\$|\\.cleinc\$|\\.exp\$|\\.h\$|\\.H\$|\\.asm\$" |grep -v "zos_390"|grep -v "\\/\\.">$csdir/cscope.files`;
`find -L $dir -type f|grep -E "\\.candl\$|\\.prcrules\$|\\.obi\$|\\.html\$|\\.ops\$|\\.map\$|\\.mk\$|\\.htm\$|\\.java\$|\\.files\$|\/makefile\$|\/makefile\.as400\$|\\.obi\$|\\.cl\$|\\.c400\$|\\.txt\$|\\.perl\$|\\.prcrules\$|\\.candl\$|\\.ruvpd\$|\\.exportsrc\$|\\.xml\$|\\.exp\$|\\.sh\$|\\.c\$|\\.cpp\$|\\.plmi\$|\\.hpp\$|\\.s\$|\\.S\$|\\.C\$|\\.inc\$|\\.cinc\$|\\.cleinc\$|\\.exp\$|\\.h\$|\\.H\$|\\.asm\$" |grep -v "zos_390"|grep -v "\\/\\.">$csdir/cscope.files`;
