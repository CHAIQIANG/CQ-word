#!usr/bin/perl -w
use strict;
# This a program used to extrac information from the results of mirnada
# Usage: perl extrac_information_miranda.pl *****.txt
my@input='';
my$line='';
# Open the input_file
open (IN, "<$ARGV[0]");
#@input=<IN>;
print "miRNA Target Tot-score Tot-energy Max-score Max-enerngy Strand Len1 Len2 Position\n";
#foreach my $line (@input) {
# Extract the information that we want
# if ($line =~ />>(.+) (.+)\s*7(.+)\s*3(.+)\s*2(.+)\s*3(.+)$/) {
while (my $line = <IN>) {
if ($line =~ />>(.+)$/) {
# print "$1;$2;$5;$6";
print "$1\n";
}
}
exit;
