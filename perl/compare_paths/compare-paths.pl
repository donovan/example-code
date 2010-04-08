#!/usr/bin/perl

use strict;
use warnings;

use File::Find;
use Data::Dumper;

my $dir_1 = shift;
my $dir_2 = shift;

my $data = {};

find(\&process_file1, $dir_1);
find(\&process_file2, $dir_2);

sub process_file1 {
    my $file = $File::Find::name;
    if (-f $file) {
        $file =~ s{$dir_1}{}xms;
        $data->{$dir_1}{files}{$file}++;
    }
}
sub process_file2 {
    my $file = $File::Find::name;
    if (-f $file) {
        $file =~ s{$dir_2}{}xms;
        $data->{$dir_2}{files}{$file}++;
    }
}
print Dumper($data);

print "$dir_1\n";
foreach my $file (sort keys %{$data->{$dir_1}{files}}) {
    unless ($data->{$dir_2}{files}{$file}) {
        print "file $file only occurs in $dir_1\n";
    }
}
print "\n\n";

print "$dir_2\n";
foreach my $file (sort keys %{$data->{$dir_2}{files}}) {
    unless ($data->{$dir_1}{files}{$file}) {
        print "file $file only occurs in $dir_2\n";
    }
}
print "\n\n";
