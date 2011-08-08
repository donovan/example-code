#!/usr/bin/perl

# upload via a form

# curl -i -F "document=@/home/foo/test-pdf-4.pdf" -F "menu=Flubber" -F "description=Test with curl" http://flubber.com/api/document/add

use strict;
use warnings;

use List::Util qw(shuffle);
use LWP::UserAgent;
use HTTP::Request::Common qw(POST);

my @pdfs = glob("*.pdf");

foreach my $doc (shuffle(@pdfs)) {

    print "uploading doc $doc\n";

    my $ua = LWP::UserAgent->new();

    my $req = POST 'http://flubber.com/api/document/add',
        Content_Type => 'multipart/form-data',
        Content => [
            document    => [$doc],
            menu        => 'Flubber',
            description => $doc . ' uploaded with LWP',
        ];

    my $res = $ua->request($req);

    print $res->as_string;

}
