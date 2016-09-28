#!/usr/bin/perl
#

$size = &filesize(@ARGV[0]);


sub filesize {
    return -s $_[0];
}

 print "$size\n";
