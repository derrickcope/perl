#!/usr/bin/perl
#get the active groups
#

open GROUPS, '<', '/tmp/groups.sh/active'
    or die;

while ( <GROUPS> ) {
    chomp;
    $groups = join " ", $_, $groups;
}
print "$groups\n";

