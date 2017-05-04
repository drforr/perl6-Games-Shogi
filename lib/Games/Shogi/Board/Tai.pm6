=begin pod

=begin NAME

Games::Shogi::Board::Tai - Tai Shogi board and initial piece layout

=end NAME

=begin DESCRIPTION

A sample board role that you can use to create a Tai Shogi game board. You can use the provided C<Rank> and C<File> subsets to constrain pieces to remain within the 25x25 board, or you can use the C<side> method to check whether a piece is within bounds.

It also has an initial board setup in the C<setup> method. It's worth noting immediately that Tai is unique among Shogi variants in that when a piece captures, it promotes.

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 25;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Tai {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
		# 25    24    23    22    21    20    19    18     17   16    15    14    13    12    11    10    9     8     7     6      5     4    3     2     1
		[ 'L',  'WT', 'W',  'FD', 'LO', 'D',  'R',  'DH', 'DK', 'Q',  'G',  'DS', 'E',  'DV', 'G',  'Q',  'DK', 'DH', 'R',  'D',  'LO', 'FD', 'W',  'TS', 'L'  ], # a
		[ 'RV', 'SI', 'SE', 'N',  'PS', 'FT', 'B',  'FE', 'WE', 'FR', 'S',  'RG', 'CP', 'LG', 'S',  'FR', 'WE', 'FE', 'B',  'FT', 'PS', 'N',  'SE', 'SI', 'RV' ], # b
		[ 'SC', 'WH', 'RS', 'VO', 'CS', 'BB', 'SV', 'GL', 'BM', 'BT', 'SD', 'GG', 'NK', 'WR', 'BU', 'BT', 'BM', 'GL', 'SV', 'BB', 'CS', 'VO', 'RS', 'WH', 'SC' ], # c
		[ 'SO', 'WB', 'FL', 'NB', 'SU', 'CC', 'HF', 'OM', 'RB', 'PC', 'GO', 'PH', 'LN', 'KR', 'GD', 'PC', 'OK', 'OM', 'HF', 'CC', 'EB', 'WS', 'FL', 'WB', 'SO' ], # d
		[ 'RC', 'VS', 'WO', 'EA', 'SG', 'T',  'I',  'C',  'OR', 'CO', 'RD', 'HM', 'DE', 'CA', 'RD', 'CO', 'OR', 'C',  'I',  'T',  'SG', 'EA', 'WO', 'BD', 'LC' ], # e
		[ 'HD', 'FH', 'EN', 'DO', 'FO', 'SM', 'VM', 'VB', 'SB', 'PR', 'AB', 'EW', 'LD', 'EW', 'AB', 'PR', 'SB', 'VB', 'VM', 'SM', 'FO', 'DO', 'EN', 'FH', 'HD' ], # f
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # g
		[ '',   '',   '',   '',   '',   '',   '',   'GB', '',   '',   '',   '',   '',   '',   '',   '',   '',   'GB', '',   '',   '',   '',   '',   '',   'p'  ], # h
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # i
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # j
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # k
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # l
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # m
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # n
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # o
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # p
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   'p'  ], # q
		[ '',   '',   '',   '',   '',   '',   '',   'GB', '',   '',   '',   '',   '',   '',   '',   '',   '',   'GB', '',   '',   '',   '',   '',   '',   'p'  ], # r
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # s
		[ 'HD', 'FH', 'EN', 'DO', 'FO', 'SM', 'VM', 'VB', 'SB', 'PR', 'AB', 'EW', 'LD', 'EW', 'AB', 'PR', 'SB', 'VB', 'VM', 'SM', 'FO', 'DO', 'EN', 'FH', 'HD' ], # t
		[ 'LC', 'BD', 'WO', 'EA', 'SG', 'T',  'I',  'C',  'OR', 'CO', 'RD', 'CA', 'DE', 'HM', 'RD', 'CO', 'OR', 'C',  'I',  'T',  'SG', 'EA', 'WO', 'VS', 'RC' ], # u
		[ 'SO', 'WB', 'FL', 'WS', 'EB', 'CC', 'HF', 'OM', 'OK', 'PC', 'GD', 'KR', 'LN', 'PH', 'GO', 'PC', 'RB', 'OM', 'HF', 'CC', 'SU', 'NB', 'FL', 'WB', 'SO' ], # v
		[ 'SC', 'WH', 'RS', 'VO', 'CS', 'BB', 'SV', 'GL', 'BM', 'BT', 'BU', 'WR', 'NK', 'GG', 'SD', 'BT', 'BM', 'GL', 'SV', 'BB', 'CS', 'VO', 'RS', 'WH', 'SC' ], # w
		[ 'RV', 'SI', 'SE', 'N',  'PS', 'FT', 'B',  'FE', 'WE', 'FR', 'S',  'LG', 'CP', 'RG', 'S',  'FR', 'WE', 'FE', 'B',  'FT', 'PS', 'N',  'SE', 'SI', 'RV' ], # x
		[ 'L',  'TS', 'W',  'FD', 'LO', 'D',  'R',  'DH', 'DK', 'Q',  'G',  'DV', 'E',  'DS', 'G',  'Q',  'DK', 'DH', 'R',  'D',  'LO', 'FD', 'W',  'WT', 'L'  ], # y
	}
	method piece-abbreviation { die; }
}

# vim: ft=perl6 et sw=4
