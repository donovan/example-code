#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $data = {
    1 => { state => 'foo' },
    2 => { state => 'bar' },
    3 => { state => 'baz' },
    4 => { state => 'foo' },
    5 => { state => 'bar' },
    6 => { state => 'baz' },
};

my %order_for_state = (
    baz => 1,
    foo => 2,
    bar => 2,
);

foreach my $id ( sort { $order_for_state{$data->{$a}{state}} <=> $order_for_state{$data->{$b}{state}} or $a <=> $b } keys %{$data} ) {
    say "$id ($data->{$id}{state})";
}
