package Software::Release::Change;
use Moose;

has 'author' => (
    is => 'rw',
    isa => 'Str',
);

has 'change_id' => (
    is => 'rw',
    isa => 'Str'
);

has 'date' => (
    is => 'rw',
    isa => 'DateTime'
);

has 'description' => (
    is => 'rw',
    isa => 'Str'
);

__PACKAGE__->meta->make_immutable;
no Moose;
1;