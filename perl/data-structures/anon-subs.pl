#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump qw(dump);

my $data = {
    foo => {
        name => 'foo_the_mighty',
        convert => sub { uc($_[0]) },
    },
    bar => {
        name => 'bar_the_meak',
        convert => sub {
            my $ret = shift;
            $ret =~ s{ _ }{-}gxms;
            return $ret;
        },
    },
    baz => {
        name => 'bazza_of_baz',
        convert => sub { ucfirst($_[0]) },
    },
    dog => {
        name => 'fido_mac_dougal',
        convert => sub {
            my $ret = shift;
            $ret = lcfirst(uc($ret));
            return $ret;
        },
    },
    cat => {
        name => 'fritz_the_cat',
        convert => sub { lc($_[0]) },
    },
};

foreach my $key (keys %$data) {
    my $name = $data->{$key}{name};
    my $converted = $data->{$key}{convert}->($name);
    print "'$name' => '$converted'\n";
}

#dump($data);
