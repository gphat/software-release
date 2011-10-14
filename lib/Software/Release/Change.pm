package Software::Release::Change;
use Moose;

# ABSTRACT: A change made in a software release.

=head1 SYNOPSIS

    use DateTime;
    use Software::Release::Change;

    my $change = Software::Release::Change->new(
        author_name => 'gphat',
        author_email => 'gphat@cpan.org',
        change_id => 'abc1234',
        date => DateTime->now,
        description => 'Frozzled the wozjob'
    );

=head1 DESCRIPTION

Software::Release::Change represents a single change made in a software
release.

=attr author_email

The author's email address

=cut

has 'author_email' => (
    is => 'rw',
    isa => 'Str',
);

=attr author_name

The author's name

=cut

has 'author_name' => (
    is => 'rw',
    isa => 'Str',
);

=attr change_id

The id of the change.

=cut

has 'change_id' => (
    is => 'rw',
    isa => 'Str'
);

=attr committer_email

The committer's email address

=cut

has 'committer_email' => (
    is => 'rw',
    isa => 'Str',
);

=attr committer_name

The committer's name

=cut

has 'committer_name' => (
    is => 'rw',
    isa => 'Str',
);

=attr date

The date

=cut

has 'date' => (
    is => 'rw',
    isa => 'DateTime'
);

=attr description

The description of the change.

=cut

has 'description' => (
    is => 'rw',
    isa => 'Str'
);

__PACKAGE__->meta->make_immutable;
no Moose;
1;