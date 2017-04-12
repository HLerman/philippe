#!/usr/bin/perl
use strict;
use warnings;
use Encode qw(encode_utf8);
use JSON::PP;

my $quoteFolder = './quote/';

opendir(my $dh, $quoteFolder) or die "Cannot access to the quote folder $quoteFolder";
my @files = grep { /\.json$/ } readdir($dh);
my $file = $files[rand(scalar(@files))];

if(not -z "$quoteFolder$file")
{
    open(my $fh, "$quoteFolder$file") or die "Cannot open the file $file";
        my $json = '';
        while(defined(my $l = <$fh>))
        {
            $json .= $l;
        }
        $json = decode_json encode_utf8($json);
        print $json->{'quote'}[rand(scalar(@{$json->{'quote'}}))]."\n";
    close($fh);
}
else
{
    die "Cannot use an empty file : $file";
}
closedir($dh);
