#!/usr/bin/perl
#===============================================================================
#
#         FILE: exit.pl
#
#        USAGE: ./exit.pl  
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
#      CREATED: 06/25/2016 05:16:29 PM
#     REVISION: ---
#===============================================================================

#use strict;
#use warnings;
use utf8;
use 5.010;
use Tk;


my $mw = MainWindow->new;
$mw->title("Hello World");
$mw->Button(-text => "Jackson",
            -command => sub {exit})->pack;
$mw->Button(-text => "Jackson",
            -command => sub {exit})->pack;



MainLoop;

