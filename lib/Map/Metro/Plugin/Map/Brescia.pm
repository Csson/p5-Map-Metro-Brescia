use 5.14.0;

package Map::Metro::Plugin::Map::Brescia;

# VERSION
# ABSTRACT: Map::Metro map for Brescia

use Moose;
with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-brescia.metro',
);
sub map_version {
    return $VERSION;
}
sub map_package {
    return __PACKAGE__;
}

1;

__END__

=encoding utf-8

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Brescia')->parse;

Or:

    $ map-metro.pl route Brescia Casazza Volta

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

This map L<contains|Map::Metro::Plugin::Map::Brescia::Lines>:

=for :list
* The single metro line [L<wikipedia|https://en.wikipedia.org/wiki/Brescia_Metro>]

=for HTML <p><a href="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Brescia/master/static/images/brescia.png"><img src="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Brescia/master/static/images/brescia.png" style="max-width: 600px" /></a></p>

=cut
