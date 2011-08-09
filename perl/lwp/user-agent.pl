#!/usr/bin/perl

use strict;
use warnings;

use LWP::UserAgent;

my $url = shift;

my $ua = LWP::UserAgent->new;
# lets be ie8
$ua->agent('Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648)');

my $req = HTTP::Request->new(GET => $url);
$req->header('Accept' => 'text/html');

# send request
my $res = $ua->request($req);

# check the outcome
if ($res->is_success) {
    print $res->decoded_content . "\n";;
}
else {
    print "Error: " . $res->status_line . "\n";
}
