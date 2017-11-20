#!/usr/bin/perl

use strict;
use warnings;
use Time::Local;

my $timestamp = shift;

unless (defined $timestamp and $timestamp =~ m{ \A 20\d\d-\d\d-\d\dT\d\d:\d\d:\d\d \z }xms) {
    print "Usage $0 2017-11-20T18\n";
    exit 1;
}

my ($date_part, $time_part) = split/T/, $timestamp;

my ($year, $mon, $mday) = split/-/, $date_part;
$year -= 1900;
$mon--;

my ($hour, $min, $sec) = split/:/, $time_part;

my $unix_then = timelocal($sec, $min, $hour, $mday, $mon, $year);
print "the unix time for $timestamp is $unix_then\n";
