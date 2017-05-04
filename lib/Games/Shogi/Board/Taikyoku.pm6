=begin pod

=begin NAME

Games::Shogi::Board::Taikyoku - Taikyoku Shogi board and initial piece layout

=end NAME

=begin DESCRIPTION

Taikyoku Shogi was only recently rediscovered, and as such is still debated. I'll go with the basic description found on Wikipedia for this.

A sample board role that you can use to create a Taikyoku Shogi game board. You can use the provided C<Rank> and C<File> subsets to constrain pieces to remain within the 36x36 board, or you can use the C<side> method to check whether a piece is within bounds.

It also has an initial board setup in the C<starting-configuration> method.

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 36;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Taikyoku {
	also does Games::Shogi::Board;

	method height returns Int { SIDE }
	method width returns Int { SIDE }
	method allow-drops returns Bool { False }
	method promotion-rank { die; }
	method starting-configuration {
# a b c d e f g h i j k l m n o p q r s t u v w x y z aa bb cc dd ee ff gg hh ii jj
		# 36    35    34    33    32    31    30    29    28    27    26    25    24    23    22    21    20    19     18   17    16    15    14    13    12    11    10     9    8      7     6    5     4     3     2     1
		[ 'L',  'WT', 'RR', 'W',  'DM', 'ME', 'LO', 'BC', 'HR', 'FR', 'ED', 'WO', 'FT', 'FK', 'RS', 'RG', 'G',  'CP',  'K', 'G',  'LG', 'RS', 'FK', 'FT', 'CD', 'ED', 'FR', 'HR', 'BC', 'LO', 'ME', 'DM', 'W',  'RR', 'TS', 'L'  ], # a
		[ 'RV', 'FG', 'TD', 'FS', 'CO', 'RA', 'FO', 'MS', 'RP', 'RU', 'SS', 'GR', 'RT', 'BA', 'YA', 'GU', 'S',  'DE', 'NK', 'S',  'WR', 'BD', 'BA', 'RT', 'GR', 'SS', 'RU', 'RP', 'MS', 'FO', 'RA', 'CO', 'FS', 'TD', 'WE', 'RV' ], # b
		[ 'GC', 'SI', 'RN', 'RW', 'BG', 'RO', 'TT', 'RI', 'BO', 'WD', 'FP', 'RB', 'OK', 'PC', 'WA', 'FI', 'C',  'PM', 'KM', 'C',  'FI', 'WA', 'PC', 'OK', 'RB', 'FP', 'WD', 'BO', 'LE', 'LT', 'RO', 'BG', 'RW', 'RN', 'SI', 'GC' ], # c
		[ 'SV', 'VE', 'N',  'PI', 'CG', 'PG', 'H',  'O',  'CN', 'SA', 'SR', 'GL', 'LN', 'CT', 'GS', 'VD', 'WL', 'VG', 'GG', 'WL', 'VD', 'GS', 'CT', 'LN', 'GL', 'SR', 'SA', 'CN', 'O',  'H',  'PG', 'CG', 'PI', 'N',  'VE', 'SV' ], # d
		[ 'CI', 'CE', 'B',  'R',  'WF', 'FC', 'MF', 'VT', 'SO', 'LS', 'CL', 'CR', 'RH', 'HE', 'VO', 'GD', 'GO', 'DS', 'DV', 'GO', 'GD', 'VO', 'HE', 'RH', 'CR', 'CL', 'LS', 'SO', 'VT', 'MF', 'FC', 'WF', 'R',  'B',  'CE', 'CI' ], # e
		[ 'WC', 'WH', 'HD', 'SM', 'PR', 'WB', 'FL', 'EG', 'FD', 'PS', 'FY', 'ST', 'BI', 'WG', 'F',  'PH', 'HM', 'LL', 'GT', 'CA', 'KR', 'F',  'WG', 'BI', 'ST', 'FY', 'PS', 'FD', 'EG', 'FL', 'WB', 'PR', 'SM', 'HD', 'WH', 'WC' ], # f
		[ 'TC', 'VW', 'SX', 'DO', 'FH', 'VB', 'AB', 'EW', 'LH', 'CK', 'OM', 'CC', 'NB', 'SU', 'VS', 'NT', 'TF', 'MT', 'RM', 'TF', 'NT', 'VS', 'ES', 'WS', 'CC', 'OM', 'CK', 'LH', 'EW', 'AB', 'VB', 'FH', 'DO', 'SX', 'VW', 'TC' ], # g
		[ 'EC', 'VI', 'EB', 'HO', 'OW', 'CM', 'CS', 'SW', 'BM', 'BT', 'OC', 'SF', 'BB', 'OR', 'SQ', 'SN', 'RD', 'FE', 'LI', 'RD', 'SN', 'SQ', 'OR', 'BB', 'SF', 'OC', 'BT', 'BM', 'SW', 'CS', 'CM', 'OW', 'HO', 'EB', 'BL', 'EC' ], # h
		[ 'CH', 'SL', 'VR', 'WN', 'RE', 'M',  'SD', 'HS', 'GN', 'OS', 'EA', 'BS', 'SG', 'LP', 'T',  'BE', 'I',  'GE', 'GM', 'I',  'BE', 'T',  'LP', 'SG', 'BS', 'EA', 'OS', 'GN', 'HS', 'SD', 'M',  'RE', 'WN', 'VR', 'SL', 'CH' ], # i
		[ 'RC', 'MK', 'VM', 'OX', 'LB', 'VP', 'VH', 'BN', 'DH', 'DK', 'SE', 'HF', 'EL', 'SP', 'VL', 'TG', 'SB', 'DG', 'LD', 'SB', 'TG', 'VL', 'SP', 'EL', 'HF', 'SE', 'DK', 'DH', 'BN', 'VH', 'VP', 'LB', 'OX', 'VM', 'MK', 'LC' ], # j
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # k
		[ '',   '',   '',   '',   '',   'D',  '',   '',   '',   '',   'GB', '',   '',   '',   'D',  '',   '',   '',   '',   '',   '',   'D',  '',   '',   '',   'GB', '',   '',   '',   '',   'D',  '',   '',   '',   '',   ''   ], # l
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # m
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # n
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # o
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # p
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # q
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # r
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # s
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # t
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # u
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # v
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # w
		[ '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   '',   ''   ], # x
		[ '',   '',   '',   '',   '',   'D',  '',   '',   '',   '',   'GB', '',   '',   '',   'D',  '',   '',   '',   '',   '',   '',   'D',  '',   '',   '',   'GB', '',   '',   '',   '',   'D',  '',   '',   '',   '',   ''   ], # y
		[ 'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p',  'p'  ], # z
		[ 'LC', 'MK', 'VM', 'OX', 'LB', 'VP', 'VH', 'BN', 'DH', 'DK', 'SE', 'HF', 'EL', 'SP', 'VL', 'TG', 'SB', 'LD', 'DG', 'SB', 'TG', 'VL', 'SP', 'EL', 'HF', 'SE', 'DK', 'DH', 'BN', 'VH', 'VP', 'LB', 'OX', 'VM', 'MK', 'RC' ], # aa
		[ 'CH', 'SL', 'VR', 'WN', 'RE', 'M',  'SD', 'HS', 'GN', 'OS', 'EA', 'BS', 'SG', 'LP', 'T',  'BE', 'I',  'GM', 'GE', 'I',  'BE', 'T',  'LP', 'SG', 'BS', 'EA', 'OS', 'GN', 'HS', 'SD', 'M',  'RE', 'WN', 'VR', 'SL', 'CH' ], # bb
		[ 'EC', 'BL', 'EB', 'HO', 'OW', 'CM', 'CS', 'SW', 'BM', 'BT', 'OC', 'SF', 'BB', 'OR', 'SQ', 'SN', 'RD', 'LI', 'FE', 'RD', 'SN', 'SQ', 'OR', 'BB', 'SF', 'OC', 'BT', 'BM', 'SW', 'CS', 'CM', 'OW', 'HO', 'EB', 'VI', 'EC' ], # cc
		[ 'TC', 'VW', 'SX', 'DO', 'FH', 'VB', 'AB', 'EW', 'LH', 'CK', 'OM', 'CC', 'WS', 'ES', 'VS', 'NT', 'TF', 'RM', 'MT', 'TF', 'NT', 'VS', 'SU', 'NB', 'CC', 'OM', 'CK', 'LH', 'EW', 'AB', 'VB', 'FH', 'DO', 'SX', 'VW', 'TC' ], # dd
		[ 'WC', 'WH', 'HD', 'SM', 'PR', 'WB', 'FL', 'EG', 'FD', 'PS', 'FY', 'ST', 'BI', 'WG', 'F',  'KR', 'CA', 'GT', 'LL', 'HM', 'PH', 'F',  'WG', 'BI', 'ST', 'FY', 'PS', 'FD', 'EG', 'FL', 'WB', 'PR', 'SM', 'HD', 'WH', 'WC' ], # ee
		[ 'CI', 'CE', 'B',  'R',  'WF', 'FC', 'MF', 'VT', 'SO', 'LS', 'CL', 'CR', 'RH', 'HE', 'VO', 'GD', 'GO', 'DV', 'DS', 'GO', 'GD', 'VO', 'HE', 'RH', 'CR', 'CL', 'LS', 'SO', 'VT', 'MF', 'FC', 'WF', 'R',  'B',  'CE', 'CI' ], # ff
		[ 'SV', 'VE', 'N',  'PI', 'CG', 'PG', 'H',  'O',  'CN', 'SA', 'SR', 'GL', 'LN', 'CT', 'GS', 'VD', 'WL', 'GG', 'VG', 'WL', 'VD', 'GS', 'CT', 'LN', 'GL', 'SR', 'SA', 'CN', 'O',  'H',  'PG', 'CG', 'PI', 'N',  'VE', 'SV' ], # gg
		[ 'GC', 'SI', 'RN', 'RW', 'BG', 'RO', 'LT', 'LE', 'BO', 'WD', 'FP', 'RB', 'OK', 'PC', 'WA', 'FI', 'C',  'KM', 'PM', 'C',  'FI', 'WA', 'PC', 'OK', 'RB', 'FP', 'WD', 'BO', 'RI', 'TT', 'RO', 'BG', 'RW', 'RN', 'SI', 'GC' ], # hh
		[ 'RV', 'WE', 'TD', 'FS', 'CO', 'RA', 'FO', 'MS', 'RP', 'RU', 'SS', 'GR', 'RT', 'BA', 'BD', 'WR', 'S',  'NK', 'DE', 'S',  'GU', 'YA', 'BA', 'RT', 'GR', 'SS', 'RU', 'RP', 'MS', 'FO', 'RA', 'CO', 'FS', 'TD', 'FG', 'RV' ], # ii
		[ 'L',  'TS', 'RR', 'W',  'DM', 'ME', 'LO', 'BC', 'HR', 'FR', 'ED', 'CD', 'FT', 'FK', 'RS', 'LG', 'G',  'K',  'CP', 'G',  'RG', 'RS', 'FK', 'FT', 'WO', 'ED', 'FR', 'HR', 'BC', 'LO', 'ME', 'DM', 'W',  'RR', 'WT', 'L'  ], # jj
	}
	method piece-abbreviation { die; }
}

# vim: ft=perl6 et sw=4
