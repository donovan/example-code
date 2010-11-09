#!/usr/bin/perl

use strict;
use warnings;
use Net::Netmask;

my @netblocks = qw(
192.168.1.0/24
192.168.2.0/24
192.168.3.0/24
192.168.4.0/24
192.168.5.0/24
192.168.6.0/24
192.168.7.0/24
192.168.1.24/32
192.168.1.0/28
192.168.1.0/24
192.168.0.0/16
);

my $outer_count = 0;
foreach my $netblock (@netblocks) {
    print "checking block $netblock\n";
    my $block = new Net::Netmask ($netblock);
    my $inner_count = 0;
    foreach my $nb (@netblocks) {
        next if $inner_count == $outer_count;
        # dont check if its the same block
        if ($block->contains($nb)) {
            print '    ' . $block . " contains $nb\n";
        }
        $inner_count++;
    }
    $outer_count++;
}
