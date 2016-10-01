#!/usr/bin/perl
#===============================================================================
#
#         FILE: help.pl
#
#        USAGE: ./help.pl  
#
#  DESCRIPTION: help test
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/18/2016 04:17:36 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

=pod

=head1 NAME

help -this program shows you how to make a help file

=head1 description

-h will show help message

--help

=cut

if (($ARGV[0] eq "--help") || ($ARGV[0] eq "-h")) {
    system("perldoc $0");
    ex
    it (0);
}
else {
    print "You didn't type --help\n";
}
