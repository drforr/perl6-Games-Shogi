=begin pod

=begin NAME

Games::Shogi::Board::Standard - 9x9 Shogi board

=end NAME

=begin DESCRIPTION

A sample board role that you can use to create a "standard" (9x9) Shogi game board. You can use the provided C<Rank> and C<File> subsets to constrain pieces to remain within the 9x9 board, or you can use the C<side> method to check whether a piece is within bounds.

It also has an initial board setup in the C<setup> method. It's worth noting immediately that Tai is unique among Shogi variants in that when a piece captures, it promotes.

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 9;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Standard {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		#  9    8    7    6    5    4     3   2    1
		[ 'L', 'N', 'S', 'G', 'K', 'G', 'S', 'N', 'L' ], # a
		[ '',  'R', '',  '',  '',  '',  '',  'B',  '' ], # b
		[ 'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P' ], # c
		[ '',  '',  '',  '',  '',  '',  '',  '',  ''  ], # d
		[ '',  '',  '',  '',  '',  '',  '',  '',  ''  ], # e
		[ '',  '',  '',  '',  '',  '',  '',  '',  ''  ], # f
		[ 'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P' ], # g
		[ '',  'B', '',  '',  '',  '',  '',  'R',  '' ], # h
		[ 'L', 'N', 'S', 'G', 'K', 'G', 'S', 'N', 'L' ]  # i
	}
	method piece-abbreviation {
		L => Games::Shogi::Board::Lance,
		N => Games::Shogi::Board::Knight,
		S => Games::Shogi::Board::Silver,
		G => Games::Shogi::Board::Gold,
		K => Games::Shogi::Board::King,
		R => Games::Shogi::Board::Rook,
		B => Games::Shogi::Board::Bishop,
	}
}

# vim: ft=perl6 et sw=4
