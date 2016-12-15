#!/usr/bin/perl -w
use strict;
use warnings;
my $size_of_set = 12;
my $maximum_length = 30;
my $minimum_length = 15;
my @random_DNA = ();
srand(time | $$);
@random_DNA =
        make_random_DNA_set($minimum_length,$maximum_length,$size_of_set);
print"Here is an array of $size_of_set generated randomly DNA seq\n";
print"with lengths between $minimum_length and $maximum_length:\n\n";
foreach my $dna(@random_DNA){
print"$dna\n";
}
print"\n";
exit;
#sub
sub make_random_DNA_set{
my ($minimum_length,$maximum_length,$size_of_set) = @_;
my $length;
my $dna;
my @set;
for(my$i = 0;$i<$size_of_set;++$i){
$length = randomlength($minimum_length,$maximum_length);
$dna = make_random_DNA($length);
push(@set,$dna);
}
return @set;
}
sub randomlength{
my($minlength,$maxlength) = @_;
return(int(rand($maxlength-$minlength+1))+$minlength);
}
sub make_random_DNA{
my ($length) = @_;
my$dna;
for(my $i = 0;$i<$length;++$i){
$dna .= randomnucleotide();
}
return $dna;
}
sub randomnucleotide{
my(@nucleotides) = ('A','C','G','T');
return randomelement(@nucleotides);
}
sub randomelement{
my (@array) = @_;
return $array[rand @array];
}
