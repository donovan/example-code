#!/usr/bin/perl

use warnings;
use strict;

print "calling sub in void context\n";
_search(1, 2);

print "calling sub in scalar context\n";
my $foo = _search(1, 2);
print "we got $foo when requesting a scalar\n";

print "calling sub in list context\n";
my ($bar, $baz) = _search(1, 2);
print "we got $bar and $baz when requesting a list\n";

sub _search { # {{{
    my $m_id = shift;
    my $r_number = shift;

    return undef unless ( $m_id =~ /\d+/ );
    return undef unless ( $r_number =~ /\d+/ );

    my $r_id = '4567';
    my $status = 'status';

    if (wantarray()) {
        print "Called in list context\n";
        return ($r_id, $status);
    } elsif (defined wantarray()) {
        print "Called in scalar context\n";
        return $r_id;
    } else {
        print "Called in void context\n";
        return;  # nothing
    }
} # }}}
