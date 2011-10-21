package Software::Release;
use Moose;

# ABSTRACT: Object representing a release of software.

=head1 SYNOPSIS

    use DateTime;
    use Software::Release;
    use Software::Release::Change;

    my $change = Software::Release::Change->new(
        author => 'gphat',
        change_id => 'abc1234',
        date => DateTime->now,
        description => 'Frozzled the wozjob'
    );

    my $rel = Software::Release->new(
        version => '0.1',
        name => 'Angry Anteater',
        date => DateTime->now,
    );

    $rel->add_to_changes($change);

=head1 DESCRIPTION

Software::Release is a purely informational collection of objects that you
can use to represent a release of software.  Its original use-case was to
provide a contract between a git log parser and a formatter class that outputs
a changelog, but it may be useful to others to create bug trackers, dashboards
or whathaveyou.

=attr changes

A list of L<Software::Release::Change> objects for this release.

=method add_to_changes ($change)

Add a change to this release's list of changes.

=method has_no_changes

Returns true if this release's list of changes is empty.

=cut

has changes => (
    traits => [ 'Array' ],
    is => 'rw',
    isa => 'ArrayRef[Software::Release::Change]',
    default => sub { [] },
    handles => {
        add_to_changes => 'push',
        has_no_changes => 'is_empty'
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
);

__PACKAGE__->meta->make_immutable;
no Moose;
1;
