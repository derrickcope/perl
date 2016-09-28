#!/usr/bin/perl
#===============================================================================
#
#         FILE: userinput.pl
#
#        USAGE: ./userinput.pl  
#
#  DESCRIPTION: getting user input
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/18/2016 09:24:39 PM
#     REVISION: ---
#===============================================================================

#use strict;
#use warnings;
#use utf8;
#use 5.014;

print "what is your name? ";
$name = <STDIN>;
chomp($name);
print "how old are you? ";
chomp($age = <STDIN>);
print "how tall are you? ";
chomp($height = <STDIN>);

print "your name is $name\n";
print "your age is $age\n";
print "your height is $height\n";
