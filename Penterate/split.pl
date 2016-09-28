#!/usr/bin/perl
#===============================================================================
#
#         FILE: split.pl
#
#        USAGE: ./split.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/13/2016 09:39:40 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;
use LWP::Simple;

my $url = $ARGV[0];

my $page = get( $url ) or die "could not get url did you add http:// $!";

my @page = split /\n/, $page;  

#print Dumper @page;
my $a = 1;
foreach (@page) {
    if ($_=~ m/img *src="(.*\.jpg|.*\.png)"/ig) {
        print $1, "\n";
        my $pic = "$url\/$1";
              
        my $status = getstore("$url\/$1", "pic".$a ."\.jpg");
        $a++;
        if ( is_success($status) ) {
            print "downloaded\n";
        }
        else {
            print "error: $status\n";
        }
    }
}
