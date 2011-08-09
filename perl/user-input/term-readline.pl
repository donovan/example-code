#!/usr/bin/perl

use strict;
use warnings;
use Term::ReadLine;

my $input = read_input('input >');

print "user input = '$input'\n";

sub read_input {
    my ($prompt) = @_;

    my $term = Term::ReadLine->new('example');

    die 'Need Term::ReadLine::Gnu installed' unless $term->ReadLine eq 'Term::ReadLine::Gnu';

    my $input = $term->readline($prompt);

    return $input;
}

sub read_password {
    my ($prompt) = @_;

    my $term = Term::ReadLine->new('example');

    die 'Need Term::ReadLine::Gnu installed' unless $term->ReadLine eq 'Term::ReadLine::Gnu';

    $term->{redisplay_function} = $term->{shadow_redisplay};
    my $password = $term->readline($prompt);
    $term->{redisplay_function} = undef;

    return $password;
}
