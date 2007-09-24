# $Id: toggle.t 761 2002-12-17 18:39:02Z comdog $

use Test::More tests => 6;

use Tie::Toggle;

tie my $toggle, 'Tie::Toggle';

foreach( 0 .. 2 )
	{
	is( $toggle, '', "Toggle is false, iteration $_" );
	is( $toggle, 1, "Toggle is true, iteration $_" );
	}
