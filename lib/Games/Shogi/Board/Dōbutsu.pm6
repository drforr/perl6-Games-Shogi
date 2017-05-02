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
	method piece-abbreviation {
		g => 'Games::Shogi::Piece::Giraffe',
		l => 'Games::Shogi::Piece::Lion',
		e => 'Games::Shogi::Piece::Elephant',
		c => 'Games::Shogi::Piece::Chick',
		h => 'Games::Shogi::Piece::Hen',
	}
	method starting-configuration {
		[ 'g', 'l', 'e' ],
		[ ' ', 'c', ' ' ],
		[ ' ', 'C', ' ' ],
		[ 'E', 'L', 'G' ],
	}
}

# vim: ft=perl6 et sw=4
