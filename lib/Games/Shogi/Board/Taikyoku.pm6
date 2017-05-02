=begin pod

=begin NAME

Games::Shogi::Board::Taikyoku - Taikyoku Shogi board and initial piece layout

=end NAME

=begin DESCRIPTION

Taikyoku Shogi was only recently rediscovered, and as such is still debated. I'll go with the basic description found on Wikipedia for this.

A sample board role that you can use to create a Taikyoku Shogi game board. You can use the provided C<Rank> and C<File> subsets to constrain pieces to remain within the 36x36 board, or you can use the C<side> method to check whether a piece is within bounds.

It also has an initial board setup in the C<starting-configuration> method.

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 36;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Taikyoku {
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
