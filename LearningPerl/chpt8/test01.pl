#!usr/bin/perl
#
while(<>) {
    chomp;
    if (/(\b.{4}a\b)/) {
        print "Matched: |$`<$&>$'|\n";
        print " \$1 contains '$1'\n"
    } else {
        print "No Match ";
    }
}
