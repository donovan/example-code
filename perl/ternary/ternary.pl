#!/usr/bin/perl

use warnings;
use strict;


my $params;

$params->{Account_Number} = undef;


my $accountno = $params->{Account_Number} ? $params->{Account_Number} : 'account number was undef and now it is this string';

print "account number = '$accountno'\n";

my $x = 'x';
my $y = 'y';

my $zog = $x // $y;

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
