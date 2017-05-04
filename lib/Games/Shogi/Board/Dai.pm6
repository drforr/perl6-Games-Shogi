=begin pod

=begin NAME

Games::Shogi::Board::Dai - Roles for Dai Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 15;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Dai {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		# 15    14    13    12    11    10    9     8     7     6     5     4     3     2     1
		[ 'L',  'N',  'St', 'I',  'C',  'S',  'G',  'K',  'G',  'S',  'C',  'I',  'St', 'N',  'L'  ], # a
		[ 'RC', '',   'CS', '',   'FL', '',   'BT', 'DE', 'BT', '',   'FL', '',   'CS', '',   'RC' ], # b
		[ '',   'VO', '',   'AB', '',   'EW', 'Ph', 'Ln', 'Kr', 'EW', '',   'AB', '',   'VO', ''   ], # c
		[ 'R',  'FD', 'SM', 'VM', 'B',  'DH', 'DK', 'Q',  'DK', 'DH', 'B',  'VM', 'SM', 'FD', 'R'  ], # d
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # e
		[ '',   '',   '',   '',   'GB', '',   '',   '',   '',   '',   'GB', '',   '',   '',   ''   ], # f
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # g
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # h
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # i
		[ '',   '',   '',   '',   'GB', '',   '',   '',   '',   '',   'GB', '',   '',   '',   ''   ], # j
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # k
		[ 'R',  'FD', 'SM', 'VM', 'B',  'DH', 'DK', 'Q',  'DK', 'DH', 'B',  'VM', 'SM', 'FD', 'R'  ], # l
		[ '',   'VO', '',   'AB', '',   'EW', 'Kr', 'Ln', 'Ph', 'EW', '',   'AB', '',   'VO', ''   ], # m
		[ 'RC', '',   'CS', '',   'FL', '',   'BT', 'DE', 'BT', '',   'FL', '',   'CS', '',   'RC' ], # n
		[ 'L',  'N',  'St', 'I',  'C',  'S',  'G',  'K',  'G',  'S',  'C',  'I',  'St', 'N',  'L'  ], # o
	}
	method piece-abbreviation { die; }
}

# vim: ft=perl6 et sw=4
