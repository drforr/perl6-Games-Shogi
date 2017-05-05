=begin pod

=begin NAME

Games::Shogi::Board::MakaDaiDai - Roles for Maka Dai Dai Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 19;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::MakaDaiDai {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		# 19    18    17    16    15    14    13    12    11    10    9     8     7     6     5     4     3     2     1
		[ 'L',  'E',  'St', 'T',  'I', 	'C',  'S',  'G',  'DS',	'K',  'Dv', 'G',  'S',  'C',  'I',  'T',  'St', 'E',  'L'  ], # a
		[ 'Rv', '',   'CS', '',	  'OM', '',   'RD', 'FL', 'BT',	'DE', 'BT', 'FL', 'Co',	'',   'CC', '',	  'CS', '',   'Rv' ], # b
		[ '',   'OR', '',   'AB', '',	'BB', '',   'EW', 'Ph',	'Ln', 'Kr', 'EW', '',   'BB', '',   'AB', '',   'OR', ''   ], # c
		[ 'Dn', '',   'N',  '',   'VO', '',   'FD', 'SD', 'GG',  'LD', 'W', 'BD', 'FD', '',   'VO', '',	  'N',  '',   'Dn' ], # d
		[ 'R',  'RC', 'SM', 'SF', 'VM',	'B',  'DH', 'DK', 'HM',	'Q',  'Ca', 'DK', 'DH', 'B',  'VM', 'SF', 'SM', 'LC', 'R'  ], # e
		[ 'p',  'p',  'p',  'p',  'p', 	'p',  'p',  'p',  'p', 	'p',  'p',  'p',  'p', 	'p',  'p',  'p',  'p',  'p',  'p'  ], # f
		[ '',   '',   '',   '',	  '',	'GB', '',   '',	  '',	'',   '',   '',	  '',	'GB', '',   '',   '',   '',   ''   ], # g
		[ '',   '',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',   '',   '',   ''   ], # h
		[ '',   '',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',   '',   '',   ''   ], # i
		[ '',   '',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',   '',   '',   ''   ], # j
		[ '',   '',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',   '',   '',   ''   ], # k
		[ '',   '',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',	  '',	'',   '',   '',   '',   '',   ''   ], # l
		[ '',   '',   '',   '',	  '',	'GB', '',   '',	  '',	'',   '',   '',	  '',	'GB', '',   '',   '',   '',   ''   ], # m
		[ 'p',  'p',  'p',  'p',  'p', 	'p',  'p',  'p',  'p', 	'p',  'p',  'p',  'p', 	'p',  'p',  'p',  'p',  'p',  'p'  ], # n
		[ 'R',  'LC', 'SM', 'SF', 'VM',	'B',  'DH', 'DK', 'Ca',	'Q',  'HM', 'DK', 'DH', 'B',  'VM', 'SF', 'SM', 'RC', 'R'  ], # o
		[ 'Dn', '',   'N',  '',   'VO', '',   'FD', 'BD', 'W',  'LD', 'GG', 'SD', 'FD', '',   'VO', '',	  'N',  '',   'Dn' ], # p
		[ '',   'OR', '',   'AB', '',	'BB', '',   'EW', 'Kr',	'Ln', 'Ph', 'EW', '',   'BB', '',   'AB', '',   'OR', ''   ], # q
		[ 'Rv', '',   'CS', '',	  'CC', '',   'Co', 'FL', 'BT',	'DE', 'BT', 'FL', 'RD',	'',   'OM', '',	  'CS', '',   'Rv' ], # r
		[ 'L',  'E',  'St', 'T',  'I', 	'C',  'S',  'G',  'Dv',	'K',  'DS', 'G',  'S',  'C',  'I',  'T',  'St', 'E',  'L'  ], # s
	}
	method piece-abbreviation {
		AB => Games::Shogi::Piece::Angry-Boar,
		B  => Games::Shogi::Piece::Bishop,
		BB => Games::Shogi::Piece::Blind-Bear,
		BD => Games::Shogi::Piece::Buddhist-Devil,
		BT => Games::Shogi::Piece::Blind-Tiger,
		C  => Games::Shogi::Piece::Copper-General,
		CC => Games::Shogi::Piece::Chinese-Cock,
		CS => Games::Shogi::Piece::Cat-Sword,
		Ca => Games::Shogi::Piece::Capricorn,
		Co => Games::Shogi::Piece::Coiled-serpent,
		DE => Games::Shogi::Piece::Drunk-Elephant,
		DH => Games::Shogi::Piece::Dragon-Horse,
		DK => Games::Shogi::Piece::Dragon-King,
		DS => Games::Shogi::Piece::Dark-Spirit,
		Dn => Games::Shogi::Piece::Donkey,
		Dv => Games::Shogi::Piece::Deva,
		E  => Games::Shogi::Piece::Earth-General,
		EW => Games::Shogi::Piece::Evil-Wolf,
		FD => Games::Shogi::Piece::Flying-Dragon,
		FL => Games::Shogi::Piece::Ferocious-Leopard,
		G  => Games::Shogi::Piece::Gold-General,
		GB => Games::Shogi::Piece::Go-Between,
		GG => Games::Shogi::Piece::Guardian-of-the-Gods,
		HM => Games::Shogi::Piece::Hook-Mover,
		I  => Games::Shogi::Piece::Iron-General,
		K  => Games::Shogi::Piece::King,
		Kr => Games::Shogi::Piece::Kirin,
		L  => Games::Shogi::Piece::Lance,
		LC => Games::Shogi::Piece::Left-Chariot
		LD => Games::Shogi::Piece::Lion-Dog,
		Ln => Games::Shogi::Piece::Lion,
		N  => Games::Shogi::Piece::Knight,
		OM => Games::Shogi::Piece::Old-Monkey
		OR => Games::Shogi::Piece::Old-Rat
		Ph => Games::Shogi::Piece::Phoenix,
		Q  => Games::Shogi::Piece::Queen,
		R  => Games::Shogi::Piece::Rook,
		RC => Games::Shogi::Piece::Right-Chariot, # XXX named Reverse Chariot elsewhere
		RD => Games::Shogi::Piece::Reclining-Dragon,
		Rv => Games::Shogi::Piece::Reverse-Chariot, # XXX abbreviated to RC elsewhere
		S  => Games::Shogi::Piece::Silver-General,
		SD => Games::Shogi::Piece::She-Devil,
		SF => Games::Shogi::Piece::Side-Flier,
		SM => Games::Shogi::Piece::Side-Mover,
		St => Games::Shogi::Piece::Stone-General,
		T  => Games::Shogi::Piece::Tile-General,
		VM => Games::Shogi::Piece::Vertical-Mover,
		VO => Games::Shogi::Piece::Violent-Ox,
		W  => Games::Shogi::Piece::Wrestler
		p  => Games::Shogi::Piece::Pawn,
	}
}

# vim: ft=perl6 et sw=4
