#!/usr/bin/perl

use strict;
use warnings;
use Data::UUID;

my $ug     = new Data::UUID;
my $uuid1  = $ug->create();
my $token  = $ug->to_string($uuid1);
my $string = $ug->create_str();


print "token = $token and string = $string\n";
