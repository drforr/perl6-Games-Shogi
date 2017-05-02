=begin pod

=begin NAME

Games::Shogi::Board::Chu - Roles for Chu Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 12;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Chu {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		die;
	}
	method piece-abbreviation { die; }
}

# vim: ft=perl6 et sw=4