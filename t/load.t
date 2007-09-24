# $Id: load.t 1431 2004-09-08 00:25:42Z comdog $
BEGIN {
	@classes = qw(Tie::Toggle);
	}

use Test::Builder;
use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}
