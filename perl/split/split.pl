#!/usr/bin/perl

use strict;
use warnings;

my $string = 'a.b.c.d.e.f';

my $item_num = 1;

my $item = ( split/\./, $string )[$item_num];

print "item $item_num of string '$string' is $item\n";

my ($first) = split/\./, $string;

print "first item of string '$string' is $first\n";
