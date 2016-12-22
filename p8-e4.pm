#print_sequence geshihua
sub print_sequence{
my($sequence,$length) = @_;
use strict;
use warnings;
for(my $pos = 0;$pos < length($sequence);$pos += $length){
print substr($sequence,$pos,$length),"\n";
}
}
1;
