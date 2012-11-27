#!/usr/bin/perl

use strict;
use warnings;

use Crypt::Eksblowfish::Bcrypt qw(bcrypt_hash en_base64 de_base64 bcrypt);

my $password = 'password';
my $salt = 'a58a4a3dce7c23b0';

for (1..31) {
    my $start = time;
    my $cost = sprintf("%02d", $_);

    my $settings = '$2a$' . $cost . '$' . en_base64($salt);
    my $hashed_password = bcrypt($password, $settings);

    my $end = time;

    print "$cost = " . ($end - $start) . "\n";
}

