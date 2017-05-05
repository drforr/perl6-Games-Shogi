=begin pod

=begin NAME

Games::Shogi::Board::Tori - Roles for Tori Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 7;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Tori {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { True }
	method promotion-rank { 5 }
	method starting-configuration {
		# 7     6     5     4     3     2     1
		[ 'RQ', 'Pt', 'Cr', 'Ph', 'Cr', 'Pt', 'LQ' ], # a
		[ '',   '',   '',   'Fa', '',   '',   ''   ], # b
		[ 'Sw', 'Sw', 'Sw', 'Sw', 'Sw', 'Sw', 'Sw' ], # c
		[ '',   '',   'Sw', '',   'Sw', '',   ''   ], # d
		[ 'Sw', 'Sw', 'Sw', 'Sw', 'Sw', 'Sw', 'Sw' ], # e
		[ '',   '',   '',   'Fa',  '',  '',   ''   ], # f
		[ 'LQ', 'Pt', 'Cr', 'Ph', 'Cr', 'Pt', 'RQ' ]  # g
	}
	method piece-abbreviation {
		Cr => Games::Shogi::Piece::Crane,
		Ea => Games::Shogi::Piece::Eagle,
		Fa => Games::Shogi::Piece::Falcon,
		Go => Games::Shogi::Piece::Goose,
		LQ => Games::Shogi::Piece::Quail-Left,
		Ph => Games::Shogi::Piece::Phoenix,
		Pt => Games::Shogi::Piece::Pheasant,
		RQ => Games::Shogi::Piece::Quail-Right,
	}
}

# vim: ft=perl6 et sw=4
