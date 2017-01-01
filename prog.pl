#!/usr/bin/perl -w
use strict;
use warnings;
my @direction = ('w','a','s','d');
srand(time|$$);
for(my $i = 0;$i<20;++$i){
print randomdirection(@direction)," ";
sleep(2);
my $dire =randomdirection(@direction);
my $input = <STDIN>;
chomp $input;
if($input eq $dire){
print"good";
}
else{
print"bad";
}
print"\n\n";
}
exit;
sub randomdirection{
my(@dires) = @_;
return $dires[rand @dires];
}
