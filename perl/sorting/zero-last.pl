#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $data = {
    flubber => { order => 1, },
    blubber => { order => 2, },
    rubber  => { order => 3, },
    lubber  => { order => 4, },
    foo     => { order => 2, },
    bar     => { order => 0, },
    baz     => { order => 0, },
};

#foreach my $id ( sort { return 1 unless defined $data->{$a}{order}; return -1 unless defined $data->{$b}{order}; $data->{$a}{order} <=> $data->{$b}{order} } keys %{$data} ) {
foreach my $id ( sort { return 1 if $data->{$a}{order} == 0; return -1 if $data->{$b}{order} == 0; $data->{$a}{order} <=> $data->{$b}{order} } keys %{$data} ) {
    say "$id ($data->{$id}{order})";
}
