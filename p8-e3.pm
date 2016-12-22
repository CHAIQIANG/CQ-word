#get_file_data
sub get_file_data{
my($filename) = @_;
use strict;
use warnings;
my @filedata = ();
unless(open(GET_FILE_DATA,$filename)){
print STDERR"Cannot open file \"$filename\"\n\n";
exit;
}
@filedata = <GET_FILE_DATA>;
close GET_FILE_DATA;
return @filedata;
}
#extract_sequence_from_fasta_data
sub extract_sequence_from_fasta_data{
my(@fasta_file_data) = @_;
use strict;
use warnings;
my $sequence = '';
foreach my $line (@fasta_file_data){
if($line =~ /^\s*$/){
next;
}elsif($line =~ /^\s*#/){
next;
}elsif($line =~ /^>/){
next;
}else{
$sequence .= $line;
}
}
$sequence =~ s/\s//g;
return $sequence;
}
1;
