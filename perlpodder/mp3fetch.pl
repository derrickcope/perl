#!/usr/bin/perl
#===============================================================================
#
#         FILE: mp3fetch.pl
#
#        USAGE: ./mp3fetch.pl  
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
#      CREATED: 08/27/2016 08:31:33 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

use MP3::PodcastFetch;
use LWP::Simple;    
use FindBin '$Bin';
use Config::IniFiles;
use IO::File;
use File::Path 'mkpath';
use File::Spec;
use File::Basename 'dirname';
use POSIX 'strftime';
use lib "$Bin/../lib";
use Digest::MD5 qw(md5_hex);
    
my $feed = MP3::PodcastFetch->new(  -base => '/home/derrick/podcasts',
                                    -rss  => 'http://feeds.twit.tv/tnss.xml',
                                    -rewrite_filename => 1,
                                    -upgrade_tag => 'auto');


#say $feed;

$feed->fetch_pods;
print "fetched ", $feed->fetched, " new podcasts\n";
for my $file ($feed->fetched_files) {
   print $file,"\n";
}

#my $rss = MP3::PodcastFetch::Feed->new('http://feeds.twit.tv/tnss.xml');
#say $rss;

#$rss->timeout(100);

#my @channels = $rss->read_feed;
#for my $c (@channels) {
#    print "Title = ", $c->items,"\n";
#}


