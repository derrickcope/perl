#!/usr/bin/perl
#===============================================================================
#
#         FILE: perlfeed.pl
#
#        USAGE: ./perlfeed.pl  
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
#      CREATED: 08/27/2016 01:14:23 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

use XML::Feed;

#my $news = 'frontpage.html';

#open NEWS, '>', $news;

#select NEWS; 


my $feed = XML::Feed->parse(URI->new('http://codenewbie.blubrry.com/feed/podcast/'))
        or die XML::Feed->errstr;
say $feed->title;

for my $entry ($feed->entries) {
    say $entry->title;
    my  $content = $entry->content->body;
    my  $link = $entry->link;
    say $content. "\n";
 
#    say $link ."\n";
};

#my @feeds = XML::Feed->find_feeds('http://www.pilatesshanghai.com');

#say @feeds;

