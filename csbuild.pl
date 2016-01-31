#!/usr/bin/perl
$Usage = "Usage:\n\tcsbuild.pl <projectName>";
$target=shift(@ARGV);
if ($target eq ""){
	print($Usage);
	exit(1);
}
print "CS building for project $target.....\n";
if(not $target eq ""){
	$dir = `finddir $target`;
	$csdir = `findcsdir $target`;
	#update the code from CMVC side.
	@splts=split(/\/jre\/lib\/ppc/,"$dir");
	$rootdir=$splts[0];
	if( -f "$rootdir/src.zip"){
		if( -d "$dir/srczip"){
			#we already unzip it before.
		}
		else{
			#print("dir=$dir\n");
			system("mkdir -p $dir/srczip");
			@splts=split(/\/jre\/lib\/ppc/,"$dir");
			$rootdir=$splts[0];
			#print("rootdir=$rootdir\n");
			system("unzip -d $dir/srczip/ $rootdir/src.zip > /dev/null");
		}
	}
	system("crtcsfiles.pl $target");  # //cscope.files would be created for cscope use.
	chdir($csdir);
#	system("cscope -bvq ");
	system("cscope -Rbvq ");
	#system("ctags --verbose=yes -h \".h.hpp.H.inc\" -L cscope.files");
	system("ctags -h \".h.hpp.H.inc\" -L cscope.files");
}
