#!/usr/bin/perl
use strict;
use 5.010;
use LWP::Simple;
use XML::Feed;
use Data::Dumper;


sub feedurl {
    my $config = "config";
    open CONFIG, '<', $config;
    while (my $line = <CONFIG>) {
        chomp $line;
        say $line;
        push my @feedurls, $line;
        print Dumper(@feedurls);
    }
#    my $rssurl = pop(@feedurls);
#   say $rssurl;
}  


&feedurl;

#my $feed = XML::Feed->parse(URI->new($rssurl)) or die XML::Feed->errstr;
#print $feed->title, "\n";
#print $feed->first_link;
#print $feed->item;
#for ($feed->entries) {
#    say $_->title;
#    say $_->link;

#}
