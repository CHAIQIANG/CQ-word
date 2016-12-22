#codon2aa
#codon to amino acid
sub codon2aa{
my($codon) = @_;
if($codon =~ /GC./i) {return 'A'} #Ala
elsif($codon =~ /TG[TC]/i) {return 'C'} #Cys
elsif($codon =~ /GA[TC]/i) {return 'D'} #Asp
elsif($codon =~ /GA[AG]/i) {return 'E'} #gLU
elsif($codon =~ /TT[TC]/i) {return 'F'} #PHE
elsif($codon =~ /GG./i) {return 'G'} #GLY
elsif($codon =~ /CA[TC]/i) {return 'H'} #his
elsif($codon =~ /AT[TCA]/i) {return 'I'} #ISO
elsif($codon =~ /AA[AG]/i) {return 'K'} #LYS
elsif($codon =~ /TT[AG]|CT./i) {return 'L'} #LEU
elsif($codon =~ /ATG/i) {return 'M'} #METH
elsif($codon =~ /AA[TC]/i) {return 'N'} #ASP
elsif($codon =~ /CC./i)    {return 'p'} #pro
elsif($codon =~ /CA[AG]/i) {return 'Q'} #GLU
elsif($codon =~ /CG.|AG[AG]/i)  {return 'R'} #ARG
elsif($codon =~ /TC.|AG[TC]/i)  {return 'S'} #SER
elsif($codon =~ /AC./i) {return 'T'} #THR
elsif($codon =~ /GT./i) {return 'V'} #VAL
elsif($codon =~ /TGG/i) {return 'W'} #TRY
elsif($codon =~ /TA[TC]/i) {return 'Y'} #TYR
elsif($codon =~ /TA[AG]|TGA/i) {return '_'} #stop
else{
print STDERR "Bad codon \"$codon\"!!\n";
exit;
}
}
1;
