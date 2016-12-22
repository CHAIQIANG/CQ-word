#!/usr/bin/perl -w
#DNA to protein
use strict;
use warnings;
use p8-e1;
my $dna = 'CGACGTCTTCGTACGGGACTAGCTCGTGTCGGTCGC';
my $protein ='';
my $codon;
for(my $i = 0;$i<(length($dna)-2);$i += 3){
$codon = substr($dna,$i,3);
$protein .= codon2aa($codon);
}
print"translate the DNA \n\n$dna\n\n into the protein\n\n$protein\n\n";
exit;
