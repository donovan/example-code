#!/usr/bin/perl

use strict;
use warnings;
use LWP::Simple;

my $url = shift;

my $content = get($url);

die "Couldn't get it!" unless defined $content;

if ($content) {
    print "$content\n";
}
else {
    print "could not retrieve content from $url\n";
}
