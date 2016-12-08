#!/usr/bin/perl -w
use strict;
my $i = 2;
simple_sub($i);
print "In main program,after sub call,\$i equals $i\n\n";
exit;
#sub
sub simple_sub{
my($i) = @_;
$i += 100;
print "In sub simple_sub,\$i equals $i\n\n";
} 

