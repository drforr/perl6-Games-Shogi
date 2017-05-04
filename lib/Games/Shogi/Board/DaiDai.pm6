=begin pod

=begin NAME

Games::Shogi::Board::DaiDai - Roles for Dai Dai Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 17;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::DaiDai {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		#  17   16    15    14    13    12    11    10    9     8     7     6     5     4     3     2     1
		[ 'L',  'HM', 'Dv', 'R',  'Sq', 'DK', 'FT', 'RG', 'K',  'LG', 'Q',  'Fr', 'DH', 'Ra', 'SD', 'Lo', 'L'  ], # a
		[ 'Rv', 'Po', 'LD', 'BM', 'FD', 'RB', 'Kr', 'G',  'NK', 'G',  'Ph', 'CS', 'PS', 'OR', 'Ln', 'OK', 'Rv' ], # b
		[ '',   'B',  '',   'EB', '',   'FH', '',   'S',  'GD', 'S',  '',   'WB', '',   'EF', '',   'VM', ''   ], # c
		[ 'WT', 'WE', 'So', 'Ea', 'W',  'Wt', 'I',  'C',  'GB', 'C',  'I',  'St', 'W',  'We', 'No', 'FE', 'BD' ], # d
		[ 'RC', 'SM', 'VO', 'AB', 'EW', 'VB', 'FL', 'ST', 'SB', 'ST', 'FL', 'VB', 'EW', 'AB', 'VO', 'SM', 'LC' ], # e
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # f
		[ '',   '',   '',   '',   '',   'HD', '',   '',   '',   '',   '',   'HD', '',   '',   '',   '',   ''   ], # g
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # h
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # i
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # j
		[ '',   '',   '',   '',   '',   'HD', '',   '',   '',   '',   '',   'HD', '',   '',   '',   '',   ''   ], # k
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # l
		[ 'LC', 'SM', 'VO', 'AB', 'EW', 'VB', 'FL', 'ST', 'SB', 'ST', 'FL', 'VB', 'EW', 'AB', 'VO', 'SM', 'RC' ], # m
		[ 'BD', 'FE', 'No', 'We', 'W',  'St', 'I',  'C',  'GB', 'C',  'I',  'St', 'W',  'Ea', 'So', 'WE', 'WT' ], # n
		[ '',   'VM', '',   'EF', '',   'WB', '',   'S',  'GD', 'S',  '',   'FH', '',   'EB', '',   'B',  ''   ], # o
		[ 'Rv', 'OK', 'Ln', 'OR', 'PS', 'CS', 'Ph', 'G',  'NK', 'G',  'Kr', 'RB', 'FD', 'BM', 'LD', 'PO', 'Rv' ], # p
		[ 'L',  'Lo', 'SD', 'Ra', 'DH', 'Fr', 'Q',  'LG', 'K',  'RG', 'FT', 'DK', 'Sq', 'R',  'Dv', 'HM', 'L'  ], # q
	}
	method piece-abbreviation { die; }
}

# vim: ft=perl6 et sw=4
