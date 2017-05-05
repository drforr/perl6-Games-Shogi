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
		[ 'L',  'WT', 'W',  'FD', 'Lo', 'D',  'R',  'DH', 'DK', 'Q',  'G',  'DS', 'E',  'DV', 'G',  'Q',  'DK', 'DH', 'R',  'D',  'Lo', 'FD', 'W',  'TS', 'L'  ], # a
		[ 'Rv', 'SI', 'SE', 'N',  'PS', 'FT', 'B',  'FE', 'WE', 'FR', 'S',  'RG', 'CP', 'LG', 'S',  'FR', 'WE', 'FE', 'B',  'FT', 'PS', 'N',  'SE', 'SI', 'Rv' ], # b
		[ 'SC', 'WH', 'RS', 'VO', 'CS', 'BB', 'SV', 'GL', 'BM', 'BT', 'SD', 'GG', 'NK', 'Wr', 'Bu', 'BT', 'BM', 'GL', 'SV', 'BB', 'CS', 'VO', 'RS', 'WH', 'SC' ], # c
		[ 'So', 'WB', 'FL', 'NB', 'SU', 'CC', 'HF', 'OM', 'RB', 'Pc', 'GO', 'Ph', 'LN', 'KR', 'GD', 'Pc', 'OK', 'OM', 'HF', 'CC', 'EB', 'WS', 'FL', 'WB', 'So' ], # d
		[ 'RC', 'VS', 'WO', 'EA', 'SG', 'T',  'I',  'C',  'OR', 'Co', 'RD', 'HM', 'DE', 'Ca', 'RD', 'Co', 'OR', 'C',  'I',  'T',  'SG', 'EA', 'WO', 'BD', 'LC' ], # e
		[ 'HD', 'FH', 'EN', 'Do', 'FO', 'SM', 'VM', 'VB', 'SB', 'PR', 'AB', 'EW', 'LD', 'EW', 'AB', 'PR', 'SB', 'VB', 'VM', 'SM', 'FO', 'Do', 'EN', 'FH', 'HD' ], # f
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
		[ 'HD', 'FH', 'EN', 'Do', 'FO', 'SM', 'VM', 'VB', 'SB', 'PR', 'AB', 'EW', 'LD', 'EW', 'AB', 'PR', 'SB', 'VB', 'VM', 'SM', 'FO', 'Do', 'EN', 'FH', 'HD' ], # t
		[ 'LC', 'BD', 'WO', 'EA', 'SG', 'T',  'I',  'C',  'OR', 'Co', 'RD', 'Ca', 'DE', 'HM', 'RD', 'Co', 'OR', 'C',  'I',  'T',  'SG', 'EA', 'WO', 'VS', 'RC' ], # u
		[ 'So', 'WB', 'FL', 'WS', 'EB', 'CC', 'HF', 'OM', 'OK', 'Pc', 'GD', 'KR', 'LN', 'Ph', 'GO', 'Pc', 'RB', 'OM', 'HF', 'CC', 'SU', 'NB', 'FL', 'WB', 'So' ], # v
		[ 'SC', 'WH', 'RS', 'VO', 'CS', 'BB', 'SV', 'GL', 'BM', 'BT', 'Bu', 'Wr', 'NK', 'GG', 'SD', 'BT', 'BM', 'GL', 'SV', 'BB', 'CS', 'VO', 'RS', 'WH', 'SC' ], # w
		[ 'Rv', 'SI', 'SE', 'N',  'PS', 'FT', 'B',  'FE', 'WE', 'FR', 'S',  'LG', 'CP', 'RG', 'S',  'FR', 'WE', 'FE', 'B',  'FT', 'PS', 'N',  'SE', 'SI', 'Rv' ], # x
		[ 'L',  'TS', 'W',  'FD', 'Lo', 'D',  'R',  'DH', 'DK', 'Q',  'G',  'DV', 'E',  'DS', 'G',  'Q',  'DK', 'DH', 'R',  'D',  'Lo', 'FD', 'W',  'WT', 'L'  ], # y
	}
	method piece-abbreviation {
		AB => Games::Shogi::Piece::Angry-Boar,
		B  => Games::Shogi::Piece::Bishop,
		BB => Games::Shogi::Piece::Blind-Bear,
		BD => Games::Shogi::Piece::Blue-Dragon,
		BM => Games::Shogi::Piece::Blind-Monkey,
		BT => Games::Shogi::Piece::Blind-Tiger,
		Bu => Games::Shogi::Piece::Buddhist-Devil,
		C  => Games::Shogi::Piece::Copper-General,
		CC => Games::Shogi::Piece::Chinese-Cock,
		CP => Games::Shogi::Piece::Prince,
		CS => Games::Shogi::Piece::Cat-Sword,
		Ca => Games::Shogi::Piece::Capricorn,
		Co => Games::Shogi::Piece::Coiled-serpent,
		D  => Games::Shogi::Piece::Dove,
		DE => Games::Shogi::Piece::Drunk-Elephant,
		DH => Games::Shogi::Piece::Dragon-Horse,
		DK => Games::Shogi::Piece::Dragon-King,
		DS => Games::Shogi::Piece::Dark-Spirit,
		Do => Games::Shogi::Piece::Donkey,
		Dv => Games::Shogi::Piece::Deva,
		E  => Games::Shogi::Piece::Emperor,
		EA => Games::Shogi::Piece::Earth-General,
		EB => Games::Shogi::Piece::Enchannted-Badger,
		EW => Games::Shogi::Piece::Evil-Wolf,
		Ea => Games::Shogi::Piece::Eastern-Barbarian,
		FD => Games::Shogi::Piece::Flying-Dragon,
		FE => Games::Shogi::Piece::Fierce-Eagle,
		FH => Games::Shogi::Piece::Flying-Horse,
		FL => Games::Shogi::Piece::Ferocious-Leopard,
		FO => Games::Shogi::Piece::Flying-Ox,
		FR => Games::Shogi::Piece::Free-Demon,
		FT => Games::Shogi::Piece::Free-Dream-Eater,
		G  => Games::Shogi::Piece::Gold-General,
		GB => Games::Shogi::Piece::Go-Between,
		GD => Games::Shogi::Piece::Great-Dragon,
		GG => Games::Shogi::Piece::Guardian-of-the-Gods,
		GL => Games::Shogi::Piece::Golden-Deer,
		GO => Games::Shogi::Piece::Golden-Bird, # XXX Go-Between in other games
		HD => Games::Shogi::Piece::Howling-Dog,
		HF => Games::Shogi::Piece::Horned-Falcon,
		HM => Games::Shogi::Piece::Hook-Mover,
		I  => Games::Shogi::Piece::Iron-General,
		Kr => Games::Shogi::Piece::Kirin,
		L  => Games::Shogi::Piece::Lance,
		LC => Games::Shogi::Piece::Left-Chariot
		LD => Games::Shogi::Piece::Lion-Dog,
		LG => Games::Shogi::Piece::Left-General
		Ln => Games::Shogi::Piece::Lion,
		Lo => Games::Shogi::Piece::Long-Nosed-Goblin,
		N  => Games::Shogi::Piece::Knight,
		NB => Games::Shogi::Piece::Northern-Barbarian,
		NK => Games::Shogi::Piece::Neighboring-King,
		OK => Games::Shogi::Piece::Old-Kite,
		OM => Games::Shogi::Piece::Old-Monkey
		OR => Games::Shogi::Piece::Old-Rat
		PR => Games::Shogi::Piece::Prancing-Stag,
		PS => Games::Shogi::Piece::Poisonous-Snake,
		Pc => Games::Shogi::Piece::Peacock,
		Ph => Games::Shogi::Piece::Phoenix,
		Q  => Games::Shogi::Piece::Queen,
		R  => Games::Shogi::Piece::Rook,
		RB => Games::Shogi::Piece::Rushing-Bird,
		RC => Games::Shogi::Piece::Right-Chariot, # XXX named Reverse Chariot elsewhere
		RD => Games::Shogi::Piece::Reclining-Dragon,
		RG => Games::Shogi::Piece::Right-General,
		RS => Games::Shogi::Piece::Rams-Head-Soldier,
		Rv => Games::Shogi::Piece::Reverse-Chariot, # XXX abbreviated to RC elsewhere
		S  => Games::Shogi::Piece::Silver-General,
		SB => Games::Shogi::Piece::Standard-Bearer,
		SC => Games::Shogi::Piece::Side-Chariot,
		SD => Games::Shogi::Piece::She-Devil,
		SE => Games::Shogi::Piece::Soaring-Eagle,
		SG => Games::Shogi::Piece::Stone-General, # XXX St elsewhere
		SI => Games::Shogi::Piece::Side-Dragon,
		SM => Games::Shogi::Piece::Side-Mover,
		SU => Games::Shogi::Piece::Southern-Barbarian,
		SV => Games::Shogi::Piece::Silver-Hare,
		So => Games::Shogi::Piece::Soldier,
		T  => Games::Shogi::Piece::Tile-General,
		TS => Games::Shogi::Piece::Turtle-Snake,
		VB => Games::Shogi::Piece::Violent-Bear,
		VM => Games::Shogi::Piece::Vertical-Mover,
		VO => Games::Shogi::Piece::Violent-Ox,
		VS => Games::Shogi::Piece::Vermillion-Sparrow,
		W  => Games::Shogi::Piece::Whale,
		WB => Games::Shogi::Piece::Water-Buffalo,
		WE => Games::Shogi::Piece::White-Elephant,
		WH => Games::Shogi::Piece::White-Horse,
		WO => Games::Shogi::Piece::Wood-General,
		WS => Games::Shogi::Piece::Western-Barbarian,
		WT => Games::Shogi::Piece::White-Tiger,
		Wr => Games::Shogi::Piece::Wrestler
	}
}

# vim: ft=perl6 et sw=4
