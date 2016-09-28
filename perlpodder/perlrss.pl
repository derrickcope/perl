#!/usr/bin/perl
#===============================================================================
#
#         FILE: perlrss.pl
#
#        USAGE: ./perlrss.pl  
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
#      CREATED: 08/26/2016 04:11:44 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

use XML::RSS::Feed;
use LWP::Simple qw(get);

my $rss;

$rss = XML::RSS::Feed->new(
    url => "http://www.pilatesshanghai.com/blog/feed.rss",
    name => "User Error",
    tmpdir => "/tmp",
    init_headlines_seen => 0,
);

$rss->parse(get($rss->url));

foreach ( $rss->late_breaking_news ) {
    say $_->headline;
    say $_->item;
};

#foreach ($rss->headlines) {
#    say $_->headline;
#};

#my $feed = XML::RSS::Feed->new(
#    url    => "http://inside.twit.tv/blog/rss.xml",
#    name   => "blog",
#    delay  => 10,   
#    debug  => 1,
#    tmpdir => "/tmp", # optional caching
#);
#say $feed;

#while (1) {
#    $feed->parse(get($feed->url));
#    print $_->headline . "\n" for $feed->late_breaking_news;
#     sleep($feed->delay); 
#}
#
#
#use LWP::Simple qw(get);
#use XML::RSS;
#use HTML::Strip;
#use Data::Dumper;
#binmode(STDOUT, ":utf8");


#my $url = "http://feeds.gawker.com/gizmodo/full";
#my $url = "http://www.pilatesshanghai.com/blog/feed.rss";

#say $url;

#my $hs = HTML::Strip->new();

#my $rss = XML::RSS->new();

#my $data = get( $url );

#print Dumper ($data);

#$rss->parse( $data );

#my $channel = $rss->{channel};

#my $title   = $channel->{title};
#my $link    = $channel->{link};
#my $desc    = $channel->{description};


#$foreach my $item ( @{ $rss->{items} } )
#{
#    my $link  = $item->{link};
#    my $title = $item->{title};
#    my $desc  = $item->{description};
 
#    print $title, "\n", $hs->parse($desc), "\n\n\n";
#}

#$hs->eof;
