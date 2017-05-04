=begin pod

=begin NAME

Games::Shogi::Board::Kō - Roles for Kō Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 19;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Kō {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		#  19   18    17    16    15    14    13    12    11    10    9     8     7      6    5     4     3     2     1
		[ 'FD', 'TB', 'EN', 'CS', 'GH', 'SR', 'WR', 'A',  'PL', 'G',  'SC', 'A',  'WR', 'SR', 'GH', 'CS', 'EN', 'SM', 'FD' ], # a
		[ 'R',  'FH', '',   'Q',  '',   'DU', '',   'SN', 'B',  'MA', 'D',  'SN', '',   'DU', '',   'Q',  '',   'FH', 'R'  ], # b
		[ 'E',  'C',  'SB', 'LB', 'E',  'C',  'SB', 'LB', 'E',  'FW', 'E',  'LB', 'SB', 'C',  'E',  'LB', 'SB', 'C',  'E'  ], # c
		[ 'CA', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'CA' ], # d
		[ '',   'PU', '',   'p',  '',   'p',  '',   'p',  '',   'PU', '',   'p',  '',   'p',  '',   'p',  '',   'p',  ''   ], # e
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   'VA', '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # f
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # g
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # h
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # i
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # j
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # k
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # l
		[ '',   '',   '',    '',  '',   '',   '',   '',   '',   'VA', '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # m
		[ 'CU', 'SU', 'CH', 'SP', 'CH', 'SP', 'CH', 'SP', 'CH', 'SU', 'CH', 'SP', 'CH', 'SP', 'CH', 'SP', 'CH', 'SU', 'CU' ], # n
		[ '',   'p',  '',   'p',  '',   'p',  '',   'p',  '',   'PU', '',   'p',  '',   'p',  '',   'p',  '',   'PU', ''   ], # o
		[ 'CA', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'CA' ], # p
		[ 'E',  'C',  'SB', 'LB', 'E',  'C',  'SB', 'LB', 'E',  'FW', 'E',  'LB', 'SB', 'C',  'E',  'LB', 'SB', 'C',  'E'  ], # q
		[ 'R',  'FH', '',   'Q',  '',   'DU', '',   'SN', 'D',  'MA', 'B',  'SN', '',   'DU', '',   'Q',  '',   'FH', 'R'  ], # r
		[ 'FD', 'SM', 'EN', 'CS', 'GH', 'SR', 'WR', 'A',  'SC', 'G',  'PL', 'A',  'WR', 'SR', 'GH', 'CS', 'EN', 'TB', 'FD' ] # s
	}
	method piece-abbreviation { die; }
}

# vim: ft=perl6 et sw=4
