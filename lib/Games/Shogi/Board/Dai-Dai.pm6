=begin pod

=begin NAME

Games::Shogi::Board::Dai-Dai - Roles for Dai Dai Shogi, no actual classes.

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=end pod

use Games::Shogi::Board;

my constant SIDE = 17;

subset Rank of Int where 0 <= * <= SIDE;
subset File of Int where 0 <= * <= SIDE;

role Games::Shogi::Board::Dai-Dai {
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
	method piece-abbreviation {
		AB => Games::Shogi::Piece::Angry-Boar,
		B  => Games::Shogi::Piece::Bishop,
		BD => Games::Shogi::Piece::Blue-Dragon,
		BM => Games::Shogi::Piece::Blind-Monkey,
		C  => Games::Shogi::Piece::Copper-General,
		CS => Games::Shogi::Piece::Cat-Sword,
		D  => Games::Shogi::Piece::Dove,
		DH => Games::Shogi::Piece::Dragon-Horse,
		DK => Games::Shogi::Piece::Dragon-King,
		EB => Games::Shogi::Piece::Enchannted-Badger,
		EF => Games::Shogi::Piece::Enchannted-Fox,
		EW => Games::Shogi::Piece::Evil-Wolf,
		Ea => Games::Shogi::Piece::Eastern-Barbarian,
		FD => Games::Shogi::Piece::Flying-Dragon,
		FE => Games::Shogi::Piece::Fragrant-Elephant,
		FF => Games::Shogi::Piece::Furious-Fiend,
		FH => Games::Shogi::Piece::Flying-Horse,
		FL => Games::Shogi::Piece::Ferocious-Leopard,
		FT => Games::Shogi::Piece::Free-Dream-Eater,
		Fr => Games::Shogi::Piece::Free-Demon,
		G  => Games::Shogi::Piece::Gold-General,
		GB => Games::Shogi::Piece::Golden-Bird, # XXX Go-Between in other games
		GD => Games::Shogi::Piece::Great-Dragon,
		GE => Games::Shogi::Piece::Great-Elephant,
		HD => Games::Shogi::Piece::Howling-Dog,
		HM => Games::Shogi::Piece::Hook-Mover,
		I  => Games::Shogi::Piece::Iron-General,
		K  => Games::Shogi::Piece::King,
		Kr => Games::Shogi::Piece::Kirin,
		L  => Games::Shogi::Piece::Lance,
		LC => Games::Shogi::Piece::Left-Chariot
		LD => Games::Shogi::Piece::Lion-Dog,
		LG => Games::Shogi::Piece::Left-General
		Ln => Games::Shogi::Piece::Lion,
		Lo => Games::Shogi::Piece::Long-Nosed-Goblin,
		MW => Games::Shogi::Piece::Mountain-Witch,
		NK => Games::Shogi::Piece::Neighboring-King,
		No => Games::Shogi::Piece::Northern-Barbarian,
		OK => Games::Shogi::Piece::Neighboring-Old-Kite,
		OR => Games::Shogi::Piece::Neighboring-Old-Rat,
		PS => Games::Shogi::Piece::Prancing-Stag,
		Ph => Games::Shogi::Piece::Phoenix,
		Po => Games::Shogi::Piece::Poisonous-Snake,
		Q  => Games::Shogi::Piece::Queen,
		R  => Games::Shogi::Piece::Rook,
		RB => Games::Shogi::Piece::Rushing-Bird,
		RC => Games::Shogi::Piece::Right-Chariot, # XXX named Reverse Chariot elsewhere
		RG => Games::Shogi::Piece::Right-General,
		Ra => Games::Shogi::Piece::Racing-Chariot,
		Rv => Games::Shogi::Piece::Reverse-Chariot, # XXX abbreviated to RC elsewhere
		S  => Games::Shogi::Piece::Silver-General,
		SB => Games::Shogi::Piece::Standard-Bearer,
		SD => Games::Shogi::Piece::She-Devil,
		SM => Games::Shogi::Piece::Side-Mover,
		ST => Games::Shogi::Piece::Savage-Tiger,
		So => Games::Shogi::Piece::Southern-Barbarian,
		Sq => Games::Shogi::Piece::Square-Mover,
		St => Games::Shogi::Piece::Stone-General,
		VB => Games::Shogi::Piece::Violent-Bear,
		VM => Games::Shogi::Piece::Vertical-Mover,
		VO => Games::Shogi::Piece::Violent-Ox,
		W  => Games::Shogi::Piece::Wood-General,
		WB => Games::Shogi::Piece::Water-Buffalo,
		WE => Games::Shogi::Piece::White-Elephant,
		WS => Games::Shogi::Piece::Wizard-Stork,
		WT => Games::Shogi::Piece::White-Tiger,
		We => Games::Shogi::Piece::Western-Barbarian,
		p  => Games::Shogi::Piece::Pawn,
	}
}

# vim: ft=perl6 et sw=4
