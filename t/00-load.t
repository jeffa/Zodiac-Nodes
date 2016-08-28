#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Zodiac::Nodes' ) || print "Bail out!\n";
}

diag( "Testing Zodiac::Nodes $Zodiac::Nodes::VERSION, Perl $], $^X" );
