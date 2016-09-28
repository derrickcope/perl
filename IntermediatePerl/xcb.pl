#!/usr/bin/perl
#===============================================================================
#
#         FILE: xcb.pl
#
#        USAGE: ./xcb.pl  
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
#      CREATED: 08/08/2016 02:31:10 PM
#     REVISION: ---
#===============================================================================

#use strict;
use warnings;
use utf8;
use 5.010;

use X11::XCB::Connection;

my $x = X11::XCB::Connection->new;
my $window = $x->root->create_child(
        class => WINDOW_CLASS_INPUT_OUTPUT,
        rect => [0, 0, 200, 200],
      
        background_color => '#FF00FF',
);

 
$window->map;

