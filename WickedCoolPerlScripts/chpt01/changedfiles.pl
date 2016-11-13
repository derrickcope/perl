#!/usr/bin/perl
#===============================================================================
#
#         FILE: changedfiles.pl
#
#        USAGE: ./changedfiles.pl  
#
#  DESCRIPTION: check which files have been changed
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/01/2016 06:19:28 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use File::Find;
use Digest::MD5;
use Storable qw(nstore retrieve);

my $info_file_name = ".change.info"; # store change info this file

sub md5($) { #return the MD5 hash of a file
    my $cur_file = shift;
    
    open(FILE, $cur_file) or return("");
    binmode(FILE);
    my $result  = Digest::MD5->new->addfile(*FILE)->hexdigest;
    close (FILE);
    return ($result);
}

my $file_info;
my %real_info;
my @dir_list = @ARGV;

if (-f $info_file_name) { # check to see if file exists and retrieve info
    $file_info = retrieve($info_file_name);
}
    

if ($#dir_list < 0 ) {
     say "Nothing to see here!";
     exit (0);
     
}

find( sub { # go through file tree and put info in a hash
        -f && ($real_info{$File::Find::name} = md5($_));
    }, @dir_list
);


foreach my $file (sort keys %real_info) {
    if (not defined($file_info->{$file})) {
        print "New File: $file\n";
    } else {
        if ($real_info{$file} ne $file_info->{$file}) {
            print "Changed: $file\n";
        }
        delete $file_info->{$file};
    }
}

foreach my $file (sort keys %$file_info) {
    print "Deleted $file\n";
}

nstore \%real_info, $info_file_name;






























