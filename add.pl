#!/usr/bin/perl -w
$dna = 'CGACGTCTTCTCAGGCGA';
$longer_dna = addACGT($dna);
print "I added ACGT to $dna and got $longer_dna\n\n";
exit;
#sub(zichengxu)
sub addACGT{
my($dna) = @_;
$dna .= 'ACGT';
return $dna;
} 
