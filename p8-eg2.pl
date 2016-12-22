#!/usr/bin/perl -w
use strict;
use warnings;
use lib "/CQ-word";
use p8-e3;
use p8-e4;
my @file_data = ();
my $dna = '';
@file_data = get_file_data("sample.dna");
$dna = extract_sequence_from_fasta_data(@file_data);
print_sequence($dna,25);
exit;

