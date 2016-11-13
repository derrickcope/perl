#!/usr/bin/perl
#===============================================================================
#
#         FILE: dataid.pl
#
#        USAGE: ./dataid.pl  
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
#      CREATED: 10/25/2016 09:39:21 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

use Digest::MD5;
use Data::UUID;

my $ug = Data::UUID->new;

my $uuid = $ug->create_b64();

say $uuid;


