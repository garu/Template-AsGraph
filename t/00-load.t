#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Template::AsGraph' );
}

diag( "Testing Template::AsGraph $Template::AsGraph::VERSION, Perl $], $^X" );
