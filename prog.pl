#!/usr/bin/perl -w
use strict;
use warnings;
print "Introduction:\n\n";
print "It will randomly generate 20 English letters, and you should enter the correct 20 letters without any error. Otherwise you should try one more time. We will calculate the time you spent, and with the minimum of wining.\n\n";
print "are you ready? y/n\n";
my$first = <STDIN>;
chomp $first;
if ($first eq 'y')
{
print"\n\n";
my @direction = ('w','a','s','d','q','e','r','t','y','u','i','o','p','f','g','h','j','k','l','z','x','c','v','b','n','m');
srand(time|$$);
for(my $i = 0;$i<20;$i++){
my $dire =randomdirection(@direction);
print $dire;
print " ";
my $input = <STDIN>;
chomp $input;
if($input eq $dire){
print"good";
print " ";
}
else{
print"bad";
$i=0;
}
print"\n\n";
}
}
else{
print"good bye\n\n";
}
exit;
sub randomdirection{
my(@dires) = @_;
return $dires[rand @dires];
}
