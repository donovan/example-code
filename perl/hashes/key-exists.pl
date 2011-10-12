#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump qw(dump);

my $data = {
    foo => {},
    bar => {},
    baz => {},
};

foreach my $key (qw(foo zoo)) {
    if (exists $data->{$key}) {
        print "$key exists\n";
    }
    else {
        print "$key does not exist\n";
    }

    if (defined $data->{$key}) {
        print "$key is defined\n";
    }
    else {
        print "$key is not defined\n";
    }
}

print "Watch out, testing for existance and cause existance!!\n";

dump($data);

print "testing exists \$data->{baz}{baz}{baz}{baz}{baz}{baz}\n";

exists $data->{baz}{baz}{baz}{baz}{baz}{baz};

dump($data);
