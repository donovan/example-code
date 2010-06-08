#!/usr/bin/perl

use strict;
use warnings;

use POSIX; # provides strftime

my $days = shift;

my $days_in_seconds = $days * 24 * 60 * 60;

my $unix_now = time;

my $unix_then = $unix_now + $days_in_seconds;

print "unix_then = $unix_then unix_now = $unix_now\n";

print "\n";

my ($mday, $month, $year) = (localtime($unix_then))[3,4,5];
$mday = 0 . $mday if $mday < 10;
$month++;
$month = 0 . $month if $month < 10;
$year = $year +1900;

print "In $days days time the date will be $year-$month-$mday\n";

# less long winded way to do the same thing
my ($d, $m, $y) = (localtime($unix_then))[3,4,5];
my $date_then = sprintf('%04d-%02d-%02d', $y+1900, $m+1, $d);
print "In $days days time the date will be $date_then\n";

# even less longwinded version using strftime
print "In $days days time the date will be " . strftime('%F', localtime($unix_then)) . "\n";

print "\n";

print "if you have postgres available then you should be using:\n";
print qq{my \$due = \$dbh->selectrow_array("SELECT (current_timestamp + '7 days'::interval)::date AS date_in_seven_days");\n};
