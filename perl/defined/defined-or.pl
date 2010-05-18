#!/usr/bin/perl

use strict;
use warnings;

# some examples of using defined or

my $x = 0;
my $y = 0;

print "initially x = '$x' and y = '$y'\n";

$x ||= 'z';
$y //= 'z';

print "now x = '$x' and y = '$y'\n";

my $foo = 'x';
my $bar = 'y';

my $zog = $foo // $bar;

print "zog = $zog\n";

my $a = undef;
my $b = undef;
my $c = undef;
my $d = undef;
my $e = 'i am an e and i exist!';;
my $f = undef;
my $g = undef;
my $h = undef;

my $letter = $a // $b // $c // $d // $e // $f // $g // $h;

print "letter = $letter\n";
