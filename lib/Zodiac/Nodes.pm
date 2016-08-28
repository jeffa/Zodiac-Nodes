package Zodiac::Nodes;
use strict;
use warnings FATAL => 'all';
our $VERSION = '0.01';

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

=head1 REQUIRES

=over 4

=item * L<some moddule>

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

=head1 ACKNOWLEDGEMENTS

Thank you very much! :)

=over 4

=item * Neil Bowers

Helped with Makefile.PL suggestions and corrections.

=item * L<Math::Matrix>

Implementation of 2D array transposition.

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
