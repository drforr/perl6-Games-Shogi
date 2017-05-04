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
		[ 'RV', '',   'CS', '',	  'OM', '',   'RD', 'FL', 'BT',	'DE', 'BT', 'FL', 'Co',	'',   'CC', '',	  'CS', '',   'RV' ], # b
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
		[ 'RV', '',   'CS', '',	  'CC', '',   'Co', 'FL', 'BT',	'DE', 'BT', 'FL', 'RD',	'',   'OM', '',	  'CS', '',   'RV' ], # r
		[ 'L',  'E',  'St', 'T',  'I', 	'C',  'S',  'G',  'Dv',	'K',  'DS', 'G',  'S',  'C',  'I',  'T',  'St', 'E',  'L'  ], # s
	}
	method piece-abbreviation { die; }
}

# vim: ft=perl6 et sw=4
