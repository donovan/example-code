#!/usr/bin/perl

use strict;
use warnings;

use Crypt::Eksblowfish::Bcrypt qw(bcrypt_hash en_base64 de_base64 bcrypt);

my $password = shift;

my $salt = 'a58a4a3dce7c23b0';
my $cost = '09'; # max cost supported

my $hash = bcrypt_hash({
    key_nul => 1,
    cost    => $cost,
    salt    => $salt,
}, $password);

my $hash_text = en_base64($hash);

print "$password => $hash_text\n";

my $settings = '$2a$' . $cost . '$' . en_base64($salt);

print "settings = $settings\n";

my $hashed_password = bcrypt($password, $settings);

print "$hashed_password\n";
