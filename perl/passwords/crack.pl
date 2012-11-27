#!/usr/bin/perl

use strict;
use warnings;

use Crypt::Eksblowfish::Bcrypt qw(bcrypt_hash en_base64 de_base64 bcrypt);

my $target = shift;

my $salt = 'a58a4a3dce7c23b0';
my $cost = '09';


for (0001..9999) {
    my $password = sprintf("%04d", $_);

    print "trying $password\n";

    my $hash = bcrypt_hash({
        key_nul => 1,
        cost    => $cost,
        salt    => $salt,
    }, $password);

    my $hash_text = en_base64($hash);

    if ($hash_text eq $target) {
        print "password = $password\n";
        exit;
    }
}
