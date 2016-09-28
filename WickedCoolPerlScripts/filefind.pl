#!/usr/bin/perl
#===============================================================================
#
#         FILE: filefind.pl
#
#        USAGE: ./filefind.pl  
#
#  DESCRIPTION: find files in a directory and do something to them
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/20/2016 11:53:40 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

use File::Find;

find( sub { print $File::Find::name, "\n" if -d }, ".");


