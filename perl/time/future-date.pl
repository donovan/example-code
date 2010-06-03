#!/usr/bin/perl

use strict;
use warnings;

my $days = shift;

my $days_in_seconds = $days * 24 * 60 * 60;

my $unix_now = time;

my $unix_then = $unix_now + $days_in_seconds;

print "unix_then = $unix_then unix_now = $unix_now\n";

my ($mday, $month, $year) = (localtime($unix_then))[3,4,5];
$mday = 0 . $mday if $mday < 10;
$month++;
$month = 0 . $month if $month < 10;
$year = $year +1900;

print "In $days days time the date will be $year-$month-$mday\n";
