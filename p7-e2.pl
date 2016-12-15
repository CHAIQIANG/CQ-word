#!/usr/bin/perl -w
use strict;
use warnings;
my $DNA = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA';
my $i;
my $mutant;
srand(time | $$);
$mutant = mutate($DNA);
print"\nmutate DNA\n\n";
print"\nHere is the original DNA:\n\n";
print"$DNA\n";
print"\nHere is the mutant DNA:\n\n";
print"$mutant\n";
print"\nHere are 10 more successive mutations:\n\n";
for($i = 0;$i<10;++$i){
$mutant = mutate($mutant);
print"$mutant\n";
}
exit;
#sub for p7-e2
sub mutate{
my ($dna) = @_;
my ($position) = randomnucleotide($dna);
my ($newbase) = randomnucleotide();
substr($dna,$position,1,$newbase);
return $dna;
}
#sub 
sub randomelement{
my (@array) = @_;
return $array[rand @array];
}
#sub
sub randomnucleotide{
my (@nucleotides) = ('A','C','G','T');
return randomelement(@nucleotides);
}
sub randomposition{
my ($string) = @_;
return int rand length $string;
}
