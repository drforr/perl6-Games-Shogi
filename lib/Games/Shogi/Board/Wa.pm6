=begin pod

=begin NAME

Games::Shogi::Board::Wa - Roles for Wa Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 11;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Wa {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		# 11    10    9     8     7     6      5     4    3     2     1
		[ 'LH', 'CM', 'SO', 'FC', 'VS', 'CK', 'VW', 'FG', 'SC', 'BD', 'OC' ], # a
		[ '',   'CE', '',   '',   '',   'SW', '',   '',   '',   'FF', ''   ], # b
		[ 'SP', 'SP', 'SP', 'RR', 'SP', 'SP', 'SP', 'TF', 'SP', 'SP', 'SP' ], # c
		[ '',   '',   '',   'SP', '',   '',   '',   'SP', '',   '',   ''   ], # d
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # e
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # f
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # g
		[ '',   '',   '',   'SP', '',   '',   '',   'SP', '',   '',   ''   ], # h
		[ 'SP', 'SP', 'SP', 'TF', 'SP', 'SP', 'SP', 'RR', 'SP', 'SP', 'SP' ], # i
		[ '',   'FF', '',   '',   '',   'SW', '',   '',   '',   'CE', ''   ], # j
		[ 'OC', 'BD', 'SC', 'FG', 'VW', 'CK', 'VS', 'FC', 'SO', 'CM', 'LH' ]  # k
	}
	method piece-abbreviation {
		BD => Games::Shogi::Piece::Blind-Dog,
		CE => Games::Shogi::Piece::Cloud-Eagle,
		CK => Games::Shogi::Piece::Crane-King,
		CM => Games::Shogi::Piece::Climbing-Monkey,
		FC => Games::Shogi::Piece::Flying-Cock,
		FF => Games::Shogi::Piece::Flying-Falcon,
		FG => Games::Shogi::Piece::Flying-Goose,
		LH => Games::Shogi::Piece::Liberated-Horse,
		OC => Games::Shogi::Piece::Oxcart,
		OW => Games::Shogi::Piece::Swooping-Owl,
		RR => Games::Shogi::Piece::Running-Rabbit,
		SC => Games::Shogi::Piece::Strutting-Crow,
		SP => Games::Shogi::Piece::Sparrow-Pawn,
		SW => Games::Shogi::Piece::Swallows-Wings,
		TF => Games::Shogi::Piece::Treacherous-Fox,
		VS => Games::Shogi::Piece::Violent-Stag,
		VW => Games::Shogi::Piece::Violent-Wolf,
	}
}

# vim: ft=perl6 et sw=4
