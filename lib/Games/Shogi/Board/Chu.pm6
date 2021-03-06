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
		# 12    11    10   9     8     7     6     5     4     3     2     1
		[ 'L',  'FL', 'C',  'S',  'G',  'DE', 'K',  'G',  'S',  'C',  'FL', 'L'  ], # 12
		[ 'RC', '',   'B',  '',   'BT', 'Ph', 'Kr', 'BT', '',   'B',  '',   'RC' ], # 11
		[ 'SM', 'VM', 'R',  'DH', 'DK', 'Q',  'Ln', 'DK', 'DH', 'R',  'VM', 'SM' ], # 10
		[ 'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P'  ], # 9
		[ '',   '',   '',   'GB', '',   '',   '',   '',   'GB', '',   '',   ''   ], # 8
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # 7
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # 6
		[ '',   '',   '',   'GB', '',   '',   '',   '',   'GB', '',   '',   ''   ], # 5
		[ 'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P',  'P'  ], # 4
		[ 'SM', 'VM', 'R',  'DH', 'DK', 'Q',  'Ln', 'DK', 'DH', 'R',  'VM', 'SM' ], # 3
		[ 'RC', '',   'B',  '',   'BT', 'Ph', 'Kr', 'BT', '',   'B',  '',   'RC' ], # 2
		[ 'L',  'FL', 'C',  'S',  'G',  'DE', 'K',  'G',  'S',  'C',  'FL', 'L'  ], # 1
	}
	method piece-abbreviation {
		B  => Games::Shogi::Piece::Bishop,
		BT => Games::Shogi::Piece::Blind-Tiger,
		C  => Games::Shogi::Piece::Copper-General,
		DE => Games::Shogi::Piece::Drunk-Elephant,
		DH => Games::Shogi::Piece::Dragon-Horse,
		DK => Games::Shogi::Piece::Dragon-King,
		FL => Games::Shogi::Piece::Ferocious-Leopard,
		G  => Games::Shogi::Piece::Gold-General,
		GB => Games::Shogi::Piece::Go-Between,
		K  => Games::Shogi::Piece::King,
		Kr => Games::Shogi::Piece::Kirin,
		L  => Games::Shogi::Piece::Lance,
		Ln => Games::Shogi::Piece::Lion,
		Ph => Games::Shogi::Piece::Phoenix,
		Q  => Games::Shogi::Piece::Queen,
		R  => Games::Shogi::Piece::Rook,
		RC => Games::Shogi::Piece::Reverse-Chariot,
		S  => Games::Shogi::Piece::Silver-General,
		SM => Games::Shogi::Piece::Side-Mover,
		VM => Games::Shogi::Piece::Vertical-Mover
		p  => Games::Shogi::Piece::Pawn,
	}
}

# vim: ft=perl6 et sw=4
