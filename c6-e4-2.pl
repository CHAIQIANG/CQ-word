#!/usr/bin/perl -w
use strict;
use warnings;
my @i = ('1','2','3');
my @j = ('a','b','c');
print "in main program before sub:i = "."@i\n";
print "in main program before sub:j = "."@j\n";
reference_sub(\@i,\@j);
print "in main program after sub:i = "."@i\n";
print "in main program after sub:j = "."@j\n";
exit;
#sub
sub reference_sub{
my($i,$j) = @_;
print "\$i is $i\n\n";
print "\$j is $j\n\n";
print "in sub:i = "."@$i\n";
print "in sub:j = "."@$j\n";
push(@$i,'4');
shift(@$j);
}
