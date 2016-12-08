#!/usr/bin/perl -w
$dna = 'AAAAA';
$result = A_to_T($dna);
print "I changed all the A in $dna to T and got $result\n\n";
exit;
#sub
sub A_to_T{
my($input) = @_;
my $dna = $input;
$dna =~ s/A/T/g;
return $dna;
}
