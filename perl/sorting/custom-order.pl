#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my %weight = (
    xyzzy => 2,
    frog  => 4,
);

my @words = qw( foo bar baz flub glub lub xyzzy bar bear grill dog frog hammer );

# using a Schwartzian Transform
foreach my $word ( map { $_->{name} } sort { $b->{weight} <=> $a->{weight} || $a->{name} cmp $b->{name} } map { {name => $_, weight => $weight{$_} || 0,} } @words ) {
    say "$word";
}

print '-' x 30 . "\n";

foreach my $word (sort { ($weight{$b} // 0) <=> ($weight{$a} // 0) || $a cmp $b } @words) {
    say "$word";
}
