#
# This file is part of Dancer-Plugin-Redis
#
# This software is copyright (c) 2011 by celogeek <me@celogeek.com>.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
package RedisWithAuthSupport;

# ABSTRACT: add support to Redis

use strict;
use warnings;
our $VERSION = '0.2';    # VERSION
use parent 'Redis';

## no critic qw(Subroutines::ProhibitUnusedPrivateSubroutines)

sub new {
    my ( $class, %param ) = @_;

    my $self = $class->SUPER::new(%param);
    $self->{password} = delete $param{password};
    $self->__auth;

    return $self;
}

sub __connect {
    my $self = shift;

    $self->SUPER::__connect;
    $self->__auth;

    return;
}

sub __auth {
    my $self = shift;

    $self->auth( $self->{password} ) if defined $self->{password};

    return;
}

1;

__END__
=pod

=head1 NAME

RedisWithAuthSupport - add support to Redis

=head1 VERSION

version 0.2

=head1 METHODS

=head2 new

Add password option to Redis module

    RedisWithAuthSupport->new(password => 'yourpassword');

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
https://github.com/celogeek/Dancer-Plugin-Redis/issues

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

celogeek <me@celogeek.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by celogeek <me@celogeek.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

