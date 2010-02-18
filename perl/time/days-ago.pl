#!/usr/bin/perl

use strict;
use warnings;
use Time::Local;

my $date = shift;

my ($year, $mon, $mday) = split/-/, $date;
$year -= 1900;
$mon--;

my $unix_then = timelocal(0,0,12, $mday, $mon, $year);
my $unix_now = time;
print "unix_then = $unix_then unix_now = $unix_now\n";
my $seconds_ago = $unix_now - $unix_then;
print "seconds ago = $seconds_ago\n";
my $days_ago = int((($seconds_ago / 60) /60 )/ 24);

print "for 12pm on $date year = $year mon = $mon mday = $mday and unixtime = $unix_then\n";

print "$date = $days_ago days ago\n";
