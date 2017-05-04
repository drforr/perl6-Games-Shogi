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
	method piece-abbreviation { die; }
}

# vim: ft=perl6 et sw=4
