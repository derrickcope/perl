#!/usr/bin/perl
#===============================================================================
#
#         FILE: spreadsheet.pl
#
#        USAGE: ./spreadsheet.pl  
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
#      CREATED: 08/08/2016 04:08:20 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

use Spreadsheet::WriteExcel;

# Create workbook
my $workbook = Spreadsheet::WriteExcel->new('perl.xls');

# Add a worksheet
my $worksheet = $workbook->add_worksheet();

# Add content
$worksheet->write('A1', 'hello world',);

say 'I made the excel sheet';
