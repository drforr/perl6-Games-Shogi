=begin pod

=begin NAME

Games::Shogi::Board::Dōbutsu - Roles for Dōbutsu Shogi

=end NAME

=begin DESCRIPTION

Dōbutsu is included in this collection because it's the only Shogi variant that's been strongly solved. The game board is only 3 x 4, but the game tree is 79 plies deep. It's also the only game so far in the collection that is on a non-square board, and therefore justifies the separate C<height> and C<width> accessors.

=end DESCRIPTION

=begin PIECES

=item g - Giraffe (Rook - but only one square)

=item l - Lion (King)

=item e - Elephant (Bishop - but only one square)

=item c - Chick (Pawn)

=item h - Hen (promoted Chick)

=end PIECES

=end pod

use Games::Shogi::Board;

my constant RANK = 4;
my constant FILE = 3;

subset Rank of Int where 0 <= * <= RANK;
subset File of Int where 0 <= * <= FILE;

role Games::Shogi::Board::Dōbutsu {
	also does Games::Shogi::Board;

	method height returns Int { RANK }
	method width returns Int { FILE }
	method promotion-rank { 3 } # referenced from 0
	method allow-drops returns Bool { True }
	method starting-configuration {
		# 3    2    1
		[ 'G', 'L', 'E' ], # a
		[ ' ', 'C', ' ' ], # b
		[ ' ', 'C', ' ' ], # c
		[ 'E', 'L', 'G' ], # d
	}
	method piece-abbreviation {
		C => 'Games::Shogi::Piece::Chick',
		E => 'Games::Shogi::Piece::Elephant',
		G => 'Games::Shogi::Piece::Giraffe',
		H => 'Games::Shogi::Piece::Hen',
		L => 'Games::Shogi::Piece::Lion',
	}
}

# vim: ft=perl6 et sw=4
