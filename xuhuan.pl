#!/usr/bin/perl -w
$proteinfilename = 'NM_021964fragment.pep';
open my $PROTEINFILE,'<',$proteinfilename or die "$0:failed to open input file '$proteinfilename' :$!\n";
while($protein = <$PROTEINFILE>){
print "#### Here is the next line of the file:\n";
print $protein;
}
close $PROTEINFILE or warn "$0:failed to close input file '$proteinfilename':$!\n";
exit;


















