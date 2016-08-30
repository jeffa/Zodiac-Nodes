package Zodiac::Nodes;
use strict;
use warnings FATAL => 'all';
our $VERSION = '0.01';

use Time::Piece;

our $TIME;
our @ZODIAC = qw(  aries taurus gemini cancer leo virgo libra scorpio sagittarius capricorn aquarius pisces );

sub new {
    my $class = shift;
    my %attrs = ref($_[0]) eq 'HASH' ? %{+shift} : @_;
    my $self = bless { %attrs }, $class;
    $TIME = Time::Piece->strptime( $self->{date}, $self->{format} || '%Y-%m-%d' );
    return $self;
}

1;

__END__

=head1 notes

ARIES
 Jan 27, 1949 - Jul 26, 1950 
 Aug 20, 1967 - Apr 19, 1969 
 Apr 7, 1986  - Dec 2, 1987 
 Dec 27, 2004 - Jun 22, 2006 

TAURUS
 Aug 3, 1947  - Jan 26, 1949 
 Feb 20, 1966 - Aug 19, 1967 
 Sep 12, 1984 - Apr 6, 1986 
 Apr 15, 2003 - Dec 26, 2004

GEMINI
 Dec 14, 1945 - Aug 2, 1947 
 Aug 26, 1964 - Feb 19, 1966 
 Mar 17, 1983 - Sep 11, 1984 
 Oct 14, 2001 - Apr 14, 2003

CANCER
 May 12, 1944 - Dec 3, 1945 
 Dec 24, 1962 - Aug 25, 1964 
 Sep 25, 1981 - Mar 16, 1983 
 Apr 10, 2000 - Oct 13, 2001

LEO
 Nov 22, 1942 - May 11, 1944 
 Jun 11, 1961 - Dec 23, 1962 
 Jan 6, 1980  - Sep 24, 1981 
 Apr 10, 2000 - Oct 13, 2001 
 May 10, 2017 - Nov 6, 2018

VIRGO
 May 25, 1941 - Nov 21, 1942 
 Dec 16, 1959 - Jun 10, 1961 
 Jul 6, 1978  - Jan 5, 1980 
 Jan 26, 1997 - Oct 20, 1998 
 Nov 12, 2015 - May 9, 2017

LIBRA
 Jun 17, 1958 - Dec 15, 1959 
 Jan 8, 1977  - Jul 5, 1978 
 Aug 1, 1995  - Jan 25, 1997 
 Feb 19, 2014 - Nov 11, 2015

SCORPIO
 Oct 5, 1956  - Jun 16, 1958 
 Jul 10, 1975 - Jan 7, 1977 
 Feb 2, 1994  - Jul 31, 1995 
 Aug 30, 2012 - Feb 18, 2014

SAGITTARIUS
 Apr 3, 1955  - Oct 4, 1956 
 Oct 28, 1973 - Jul 9, 1975 
 Aug 2, 1992  - Feb 1, 1994 
 Mar 4, 2011  - Aug 29, 2012

CAPRICORN
 Oct 10, 1953 - Apr 2, 1955 
 Apr 28, 1972 - Oct 27, 1973 
 Nov 19, 1990 - Aug 1, 1992 
 Aug 22, 2009 - Mar 3, 2011

AQUARIUS
 Mar 29, 1952 - Oct 9, 1953 
 Nov 3, 1970  - Apr 27, 1972 
 May 23, 1989 - Nov 18, 1990 
 Dec 19, 2007 - Aug 21, 2009

PISCES
 Jul 27, 1950 - Mar 28, 1952 
 Apr 20, 1969 - Nov 2, 1970 
 Dec 3, 1987  - May 22, 1989 
 Jun 23, 2006 - Dec 18, 2007

=head1 NAME

Zodiac::Nodes - Calculate North and South nodes.

=head1 SYNOPSIS

Object oriented interface:

    use Zodiac::Nodes;

    my $object = Zodiac::Nodes->new();
    my @nodes  = $object->nodes();

Procedural interface:

    use Zodiac::Nodes qw( nodes );

=head1 DESCRIPTION

Calculate North and South nodes from given date.

=head1 METHODS

=over 4

=item * C<new()>

=back

=head1 REQUIRES

=over 4

=item * L<Time::Piece>

=back

=head1 BUGS AND LIMITATIONS

Please report any bugs or feature requests to either

=over 4

=item * Email: C<bug-zodiac-nodes at rt.cpan.org>

=item * Web: L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Zodiac-Nodes>

=back

I will be notified, and then you'll automatically be notified of progress
on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Zodiac::Nodes

The Github project is L<https://github.com/jeffa/Zodiac-Nodes>

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here) L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Zodiac-Nodes>

=item * AnnoCPAN: Annotated CPAN documentation L<http://annocpan.org/dist/Zodiac-Nodes>

=item * CPAN Ratings L<http://cpanratings.perl.org/d/Zodiac-Nodes>

=item * Search CPAN L<http://search.cpan.org/dist/Zodiac-Nodes/>

=back

=head1 AUTHOR

Jeff Anderson, C<< <jeffa at cpan.org> >>

=head1 LICENSE AND COPYRIGHT

Copyright 2016 Jeff Anderson.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut
