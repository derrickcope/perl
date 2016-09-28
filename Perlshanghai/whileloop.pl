#!/usr/bin/perl
#===============================================================================
#
#         FILE: whileloop.pl
#
#        USAGE: ./whileloop.pl  
#
#  DESCRIPTION: count to upper limit
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/27/2016 03:34:45 PM
#     REVISION: ---
#===============================================================================

#use strict;
#use warnings;
#use utf8;
#use 5.014;

print "Enter upper limit\n";
$limit = <STDIN>;
$count = 0;

while ( $count <= $limit ) {
    print "$count\n";
    $count += 1;
}

print "Done!\n";
