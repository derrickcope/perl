#!/usr/bin/perl

use strict;
use Getopt::Long;

my @color;
my $size;

GetOptions ("color=s{3}" => \@color,
            "size" => \$size,
) or die &usage;

if ( @color ) {
    foreach (@color) {
        print "$_\n";
    }
}

if ( $size ) {
    print "size\n";
}

sub usage {
    print   "--size print \$size\n",
            "-s print \$size\n",
            "--age print \$age\n",
            "-a print \$age\n";
}


