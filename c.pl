#!/usr/bin/perl -w
$proteinfilename = 'NM_021964fragment.pep';
open my $PROTEINFILE,'<',$proteinfilename or die "$0:failed to open input file '$proteinfilename' :$!\n";
$protein = <$PROTEINFILE>;
close $PROTEINFILE or warn "$0:failed to close input file '$proteinfilename':$!\n";
print "here is the protein:\n\n";
print $protein;
exit;
