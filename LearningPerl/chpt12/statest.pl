#!/usr/bin/perl
#
$filename = 'test.txt';
my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat($filename);

print "$mode\n";

