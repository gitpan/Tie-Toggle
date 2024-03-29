# $Id: Toggle.pm 2255 2007-04-17 18:37:37Z comdog $
package Tie::Toggle;
use strict;

use base qw( Tie::Cycle );
use vars qw( $VERSION );

use Tie::Cycle;

#$VERSION = sprintf "%d.%02d", q$Revision: 2255 $ =~ m/ (\d+) \. (\d+) /xg;

$VERSION = 1.08;

sub TIESCALAR
	{
	my $class    = shift;

	my $self = [ 0, 2, [ 0 == 1, 1 == 1] ];

	bless $self, $class;
	}

__END__

=pod

=head1 NAME

Tie::Toggle - False and true, alternately, ad infinitum.

=head1 SYNOPSIS

    use Tie::Toggle;

    tie my $toggle, 'Tie::Toggle';

	foreach my $number ( 0 .. 10 )
		{
		next unless $toggle;

		print $number, "\n";
		}

=head1 DESCRIPTION

You use C<Tie::Toggle> to go back and forth between false
and true over and over again. You don't have to worry about
any of this since the magic of tie does that for you by
using C<Tie::Cycle>.  Any time you access the value, it
flips.

You can also use C<Tie::FlipFlop> by Abigail to do the same
thing, but with any two values.

=head1 SOURCE AVAILABILITY

This source is part of a SourceForge project which always has the
latest sources in CVS, as well as all of the previous releases.

	http://sourceforge.net/projects/brian-d-foy/

If, for some reason, I disappear from the world, one of the other
members of the project can shepherd this module appropriately.

=head1 AUTHOR

brian d foy, C<< <bdfoy@cpan.org> >>.

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2000-2007 brian d foy.  All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

