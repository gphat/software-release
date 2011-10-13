package Software::Release;
use Moose;

# ABSTRACT: Object representing a release of software.

=attr changes

A list of L<Software::Release::Change> objects for this release.

=cut

has changes => (
    traits => [ 'Array' ],
    is => 'rw',
    isa => 'ArrayRef[Software::Release::Change]',
    default => sub { [] },
    handles => {
        add_to_changes => 'push',
    }
);

=attr date

The date this software was released.

=cut

has date => (
    is => 'rw',
    isa => 'DateTime'
);

=attr name

The name of this release.

=cut

has name => (
    is => 'rw',
    isa => 'Str'
);

=attr version

The version of the release, as a string.

=cut

has version => (
    is => 'rw',
    isa => 'Str',
    required => 1,
);

__PACKAGE__->meta->make_immutable;
no Moose;
1;