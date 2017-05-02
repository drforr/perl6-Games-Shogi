=begin pod

=begin NAME

Games::Shogi::Board::Tai - Tai Shogi board and initial piece layout

=end NAME

=begin DESCRIPTION

A sample board role that you can use to create a Tai Shogi game board. You can use the provided C<Rank> and C<File> subsets to constrain pieces to remain within the 25x25 board, or you can use the C<side> method to check whether a piece is within bounds.

It also has an initial board setup in the C<setup> method. It's worth noting immediately that Tai is unique among Shogi variants in that when a piece captures, it promotes.

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 25;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Tai {
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
