#!/usr/bin/perl
#
$filename = @ARGV[0]; 
if (-e $filename) {
    print "$filename exists\n";
}

$filesize = -s $filename;
print "file size is $filesize\n";
