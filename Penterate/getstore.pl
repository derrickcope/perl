#!/usr/bin/perl
#===============================================================================
#
#         FILE: getstore.pl
#
#        USAGE: ./getstore.pl  
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
#      CREATED: 09/14/2016 09:48:39 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
 
use LWP::Simple;
 
#-- fetch the zip and save it as perlhowto.zip
my $status = getstore("http://www.pilatesshanghai.com/img/Synapsewhitelogoweb.png", "perlhowto.png");
 
if ( is_success($status) )
{
  print "file downloaded correctly\n";
}
else
{
  print "error downloading file: $status\n";
}
