#!/usr/bin/perl -w
print "type the DNA filename:";
$dna_filename = <STDIN>;
chomp $dna_filename;
open my $DNAFILE,'<',$dna_filename or die "$0:failed to open input file '$dna_filename' :$!\n";
@DNA = <$DNAFILE>;
close $DNAFILE;
$DNA = join('',@DNA);
$DNA =~ s/\s//g;
@DNA = split('',$DNA);
$count_of_A = 0;
$count_of_C = 0;
$count_of_G = 0;
$count_of_T = 0;
$errors     = 0;
foreach (@DNA){
if(/A/){
++$count_of_A;
}elsif(/C/){
++$count_of_C;
}elsif(/G/){
++$count_of_G;
}elsif(/T/){
++$count_of_T;
}else{
print "!!!!!error don't recognize:";
print;
print "\n";
++$errors;
}
}
print "A = $count_of_A\n";
print "C = $count_of_C\n";
print "G = $count_of_G\n";
print "T = $count_of_T\n";
print "errors = $errors\n";
exit;
