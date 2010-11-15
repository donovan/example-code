#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump qw(dump);

my $data = [];

my %hash1 = (
    foo1 => '1',
    bar1 => '1',
);

my %hash2 = (
    foo2 => '2',
    bar2 => '2',
);

my %hash3 = (
    foo3 => '3',
    bar3 => '3',
);

my %hash4 = (
    foo4 => '4',
    bar4 => '4',
);

my %hash5 = (
    foo5 => '5',
    bar5 => '5',
);

my $href1 = %hash3;
my $href2 = \%hash5;

push @$data, %hash1;    # pushes 4 elements of hash in list context
push @$data, \%hash2;
push @$data, $href1;    #href1 is not a ref
push @$data, { %hash4 };
push @$data, $href2;

dump($data);
