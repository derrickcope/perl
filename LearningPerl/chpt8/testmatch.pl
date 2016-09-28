#!usr/bin/perl
#
while(<>) {
    chomp;
    if (/\b.{4}a\b/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|/s";
    }
}
