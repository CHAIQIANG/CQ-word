#!/usr/bin/perl -w
print "type the filename:";
$proteinfilename = <STDIN>;
chomp $proteinfilename;
open my $PROTEINFILE,'<',$proteinfilename or die "$0:failed to open input file '$proteinfilename' :$!\n";
@protein = <$PROTEINFILE>;
close $PROTEINFILE or warn "$0:failed to close input file '$proteinfilename':$!\n";
$protein = join('',@protein);
$protein =~ s/\s//g;
do{
  print "enter a motif to search for:";
  $motif = <STDIN>;
  chomp $motif;
  if($protein =~ m/$motif/){
    print "found!\n\n";
  }
  else{
    print "not found.\n\n";
  }
}until($motif =~ /^\s*$/);
exit;
