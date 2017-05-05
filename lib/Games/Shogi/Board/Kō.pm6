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
		[ 'FD', 'TB', 'En', 'CS', 'GH', 'SR', 'Wr', 'A',  'PL', 'G',  'SC', 'A',  'Wr', 'SR', 'GH', 'CS', 'En', 'SM', 'FD' ], # a
		[ 'R',  'FH', '',   'Q',  '',   'DU', '',   'Sn', 'B',  'MA', 'D',  'Sn', '',   'DU', '',   'Q',  '',   'FH', 'R'  ], # b
		[ 'E',  'C',  'SB', 'LB', 'E',  'C',  'SB', 'LB', 'E',  'FW', 'E',  'LB', 'SB', 'C',  'E',  'LB', 'SB', 'C',  'E'  ], # c
		[ 'Ca', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'Ca' ], # d
		[ '',   'PU', '',   'p',  '',   'p',  '',   'p',  '',   'PU', '',   'p',  '',   'p',  '',   'p',  '',   'p',  ''   ], # e
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   'Va', '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # f
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # g
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # h
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # i
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # j
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # k
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # l
		[ '',   '',   '',    '',  '',   '',   '',   '',   '',   'Va', '',   '',   '',   '',   '',    '',  '',   '',   ''   ], # m
		[ 'CU', 'SU', 'Ch', 'SP', 'Ch', 'SP', 'Ch', 'SP', 'Ch', 'SU', 'Ch', 'SP', 'Ch', 'SP', 'Ch', 'SP', 'Ch', 'SU', 'CU' ], # n
		[ '',   'p',  '',   'p',  '',   'p',  '',   'p',  '',   'PU', '',   'p',  '',   'p',  '',   'p',  '',   'PU', ''   ], # o
		[ 'Ca', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'HS', '',   'Ca' ], # p
		[ 'E',  'C',  'SB', 'LB', 'E',  'C',  'SB', 'LB', 'E',  'FW', 'E',  'LB', 'SB', 'C',  'E',  'LB', 'SB', 'C',  'E'  ], # q
		[ 'R',  'FH', '',   'Q',  '',   'DU', '',   'Sn', 'D',  'MA', 'B',  'Sn', '',   'DU', '',   'Q',  '',   'FH', 'R'  ], # r
		[ 'FD', 'SM', 'En', 'CS', 'GH', 'SR', 'Wr', 'A',  'SC', 'G',  'PL', 'A',  'Wr', 'SR', 'GH', 'CS', 'En', 'TB', 'FD' ] # s
	}
	method piece-abbreviation {
		A  => Games::Shogi::Piece::Aide-de-Camp,
		B  => Games::Shogi::Piece::Banner, # XXX the Bishop in other games
		C  => Games::Shogi::Piece::Cannon, # XXX the Copper General in other game
		CS => Games::Shogi::Piece::Chief-of-Staff,
		CU => Games::Shogi::Piece::Chariot-Unit,
		Ca => Games::Shogi::Piece::Cavalry,
		Ch => Games::Shogi::Piece::Chariot,
		D  => Games::Shogi::Piece::Drum,
		DU => Games::Shogi::Piece::Millenary,
		E  => Games::Shogi::Piece::Elephant,
		En => Games::Shogi::Piece::Engineer,
		FH => Games::Shogi::Piece::Centuria,
		FO => Games::Shogi::Piece::Advance-Guard,
		FW => Games::Shogi::Piece::European-Cannon,
		G  => Games::Shogi::Piece::General,
		GH => Games::Shogi::Piece::Staff,
		HS => Games::Shogi::Piece::Cavalryman,
		LB => Games::Shogi::Piece::Long-Bow,
		MA => Games::Shogi::Piece::Middle-Troop,
		PL => Games::Shogi::Piece::Staff-Officer,
		PU => Games::Shogi::Piece::Patrol-Unit,
		Q  => Games::Shogi::Piece::Quartermaster,
		R  => Games::Shogi::Piece::Rear-Guard,
		SB => Games::Shogi::Piece::Crossbow,
		SC => Games::Shogi::Piece::Clerk
		SM => Games::Shogi::Piece::Spiritual-Monk
		SP => Games::Shogi::Piece::Shield,
		SR => Games::Shogi::Piece::Aide,
		SU => Games::Shogi::Piece::Shield-Unit,
		Sn => Games::Shogi::Piece::Sentry,
		TB => Games::Shogi::Piece::Taoist-Priest,
		Va => Games::Shogi::Piece::Vanguard,
		Wr => Games::Shogi::Piece::Sumo-Wrestler
		p  => Games::Shogi::Piece::Pawn,
	}
}

# vim: ft=perl6 et sw=4
