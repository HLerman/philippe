#!/usr/bin/perl
use strict;
use warnings;

my @quote = (
    "Philippe, je sais où tu t'caches !",
    "Viens ici que j'te bute enculé",
    "Ta gueule",
    "Salaud !",
);

print $quote[rand(scalar(@quote))]."\n";
