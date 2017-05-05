=begin pod

=begin NAME

Games::Shogi::Board::Tenjiku - Roles for Tenjiku Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 16;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Tenjiku {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		# 16    15    14    13    12    11    10    9     8     7     6     5     4     3     2     1
		[ 'L',  'N',  'FL', 'I',  'C',  'S',  'G',  'DE', 'K',  'G',  'S',  'C',  'I',  'FL', 'N',  'L'  ], # a
		[ 'RC', '',   'CS', 'CS', '',   'BT', 'Ph', 'Q',  'Ln', 'Kr', 'BT', '',   'CS', 'CS', '',   'RC' ], # b
		[ 'SS', 'VS', 'B',  'DH', 'DK', 'WB', 'FD', 'FE', 'LH', 'FD', 'WB', 'DK', 'DH', 'B',  'VS', 'SS' ], # c
		[ 'SM', 'VM', 'R',  'HF', 'SE', 'BG', 'RG', 'VG', 'GG', 'RG', 'BG', 'SE', 'HF', 'R',  'VM', 'SM' ], # d
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # e
		[ '',   '',   '',   '',   'D',  '',   '',   '',   '',   '',   '',   'D',  '',   '',   '',   ''   ], # f
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # g
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # h
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # i
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # j
		[ '',   '',   '',   '',   'D',  '',   '',   '',   '',   '',   '',   'D',  '',   '',   '',   ''   ], # k
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # l
		[ 'SM', 'VM', 'R',  'HF', 'SE', 'BG', 'RG', 'GG', 'VG', 'RG', 'BG', 'SE', 'HF', 'R',  'VM', 'SM' ], # m
		[ 'SS', 'VS', 'B',  'DH', 'DK', 'WB', 'FD', 'LH', 'FE', 'FD', 'WB', 'DK', 'DH', 'B',  'VS', 'SS' ], # o
		[ 'RC', '',   'CS', 'CS', '',   'BT', 'Kr', 'Ln', 'Q',  'Ph', 'BT', '',   'CS', 'CS', '',   'RC' ], # p
		[ 'L',  'N',  'FL', 'I',  'C',  'S',  'G',  'K',  'DE', 'G',  'S',  'C',  'I',  'FL', 'N',  'L'  ], # q
	}
	method piece-abbreviation {
		B  => Games::Shogi::Piece::Bishop,
		BG => Games::Shogi::Piece::Bishop-General,
		BT => Games::Shogi::Piece::Blind-Tiger,
		C  => Games::Shogi::Piece::Copper-General,
		CS => Games::Shogi::Piece::Chariot-Soldier,
		D  => Games::Shogi::Piece::Dog,
		DE => Games::Shogi::Piece::Drunk-Elephant,
		DH => Games::Shogi::Piece::Dragon-Horse,
		DK => Games::Shogi::Piece::Dragon-King,
		FD => Games::Shogi::Piece::Fire-Demon,
		FE => Games::Shogi::Piece::Free-Eagle,
		FL => Games::Shogi::Piece::Ferocious-Leopard,
		G  => Games::Shogi::Piece::Gold-General,
		GG => Games::Shogi::Piece::Great-General,
		HF => Games::Shogi::Piece::Horned-Falcon,
		I  => Games::Shogi::Piece::Iron-General,
		K  => Games::Shogi::Piece::King,
		Kr => Games::Shogi::Piece::Kirin,
		L  => Games::Shogi::Piece::Lance,
		LH => Games::Shogi::Piece::Lion-Hawk,
		Ln => Games::Shogi::Piece::Lion,
		N  => Games::Shogi::Piece::Knight,
		Ph => Games::Shogi::Piece::Phoenix,
		Q  => Games::Shogi::Piece::Queen,
		R  => Games::Shogi::Piece::Rook,
		RC => Games::Shogi::Piece::Reverse-Chariot, # XXX abbreviated to Rv elsewhere
		RG => Games::Shogi::Piece::Rook-General,
		S  => Games::Shogi::Piece::Silver-General,
		SE => Games::Shogi::Piece::Soaring-Eagle,
		SM => Games::Shogi::Piece::Side-Mover,
		SS => Games::Shogi::Piece::Side-Soldier,
		VG => Games::Shogi::Piece::Vice-General,
		VM => Games::Shogi::Piece::Vertical-Mover,
		VS => Games::Shogi::Piece::Vertical-Soldier,
		WB => Games::Shogi::Piece::Water-Buffalo,
		p  => Games::Shogi::Piece::Pawn,
	}
}

# vim: ft=perl6 et sw=4
