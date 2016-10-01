#!/usr/bin/perl
#===============================================================================
#
#         FILE: findduplicate.pl
#
#        USAGE: ./findduplicate.pl  
#
#  DESCRIPTION: find duplicate files in specified directories
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/29/2016 12:05:59 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use File::Find;
use Digest::MD5;

=pod

=head1 Find Duplicates

help -this program helps to find duplicate files

=head1 description

-h will show this message

--help will show this message

=cut

if (($ARGV[0] eq "--help") || ($ARGV[0] eq "-h")) {
    system("perldoc $0");
     exit (0);
}

sub find_dups(@) {

    my @dir_list = @_; # list of directories to search
    
    if ( $#dir_list < 0 ) { #if no argument then return undefined
        return (undef);
    }

    my %files; # hash of files indexed by size

    find( sub { -f && push @{ $files{ -s _ } }, $File::Find::name }, @dir_list );
    # different from book, push @{$files{(stat(_))[7]}}, 
    # autovivification of hash ref of file size to filenames
    
    my @result = ();

    foreach my $size ( keys %files ) {
        if ($#{$files{$size}} < 1 ) {
            next;
        }
        my %md5;


        foreach my $cur_file (@{$files{$size}}) {
            open(FILE, $cur_file) or next;
            binmode(FILE);
            push @{$md5{ Digest::MD5->new->addfile(*FILE)->hexdigest}}, $cur_file;
            close(FILE);
        }
        foreach my $hash (keys %md5) {
            if ($#{$md5{$hash}} >= 1 ) {
                push( @result, [@{$md5{$hash}}]);
            }
        }
    }
    return @result
}
my @dups = find_dups(@ARGV);

foreach my $cur_dup (@dups) {
    print "Duplicates\n";
    foreach my $cur_file (@$cur_dup) {
        print "\t$cur_file\n";
    }
}



