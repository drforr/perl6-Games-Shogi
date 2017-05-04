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
		'RQ' => Games::Shogi::Piece::Quail-Right,
		'LQ' => Games::Shogi::Piece::Quail-Left,
		'Pt' => Games::Shogi::Piece::Pheasant,
		'Cr' => Games::Shogi::Piece::Crane,
		'Ph' => Games::Shogi::Piece::Phoenix,
		'Fa' => Games::Shogi::Piece::Falcon,

		# Promoted pieces
		#
		'Ea' => Games::Shogi::Piece::Eagle,
		'Go' => Games::Shogi::Piece::Goose,
	}
}

# vim: ft=perl6 et sw=4
