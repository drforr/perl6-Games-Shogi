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
		# 36    35    34    33    32    31    30    29    28    27    26    25    24    23    22    21    20    19     18   17    16    15    14    13    12    11    10     9    8      7     6    5     4     3     2     1
		[ 'L',  'WT', 'RR', 'W',  'DM', 'ME', 'LO', 'BC', 'HR', 'FR', 'ED', 'WO', 'FT', 'FK', 'RS', 'RG', 'G',  'CP',  'K', 'G',  'LG', 'RS', 'FK', 'FT', 'CD', 'ED', 'FR', 'HR', 'BC', 'LO', 'ME', 'DM', 'W',  'RR', 'TS', 'L'  ], # a
		[ 'Rv', 'FG', 'TD', 'FS', 'CO', 'RA', 'FO', 'MS', 'RP', 'RU', 'SS', 'GR', 'RT', 'BA', 'Ya', 'GU', 'S',  'DE', 'NK', 'S',  'Wr', 'BD', 'BA', 'RT', 'GR', 'SS', 'RU', 'RP', 'MS', 'FO', 'RA', 'CO', 'FS', 'TD', 'WE', 'Rv' ], # b
		[ 'GC', 'SI', 'RN', 'RW', 'BG', 'RO', 'TT', 'RI', 'BO', 'WD', 'FP', 'RB', 'OK', 'Pc', 'WA', 'FI', 'C',  'PM', 'KM', 'C',  'FI', 'WA', 'Pc', 'OK', 'RB', 'FP', 'WD', 'BO', 'LE', 'LT', 'RO', 'BG', 'RW', 'RN', 'SI', 'GC' ], # c
		[ 'SV', 'VE', 'N',  'PI', 'CG', 'PG', 'H',  'O',  'CN', 'SA', 'SR', 'GL', 'Ln', 'CT', 'GS', 'VD', 'WL', 'VG', 'GG', 'WL', 'VD', 'GS', 'CT', 'Ln', 'GL', 'SR', 'SA', 'CN', 'O',  'H',  'PG', 'CG', 'PI', 'N',  'VE', 'SV' ], # d
		[ 'CI', 'CE', 'B',  'R',  'WF', 'FC', 'MF', 'VT', 'So', 'LS', 'CL', 'CR', 'RH', 'HE', 'VO', 'GD', 'GO', 'DS', 'Dv', 'GO', 'GD', 'VO', 'HE', 'RH', 'CR', 'CL', 'LS', 'So', 'VT', 'MF', 'FC', 'WF', 'R',  'B',  'CE', 'CI' ], # e
		[ 'WC', 'WH', 'HD', 'SM', 'PR', 'WB', 'FL', 'EG', 'FD', 'PS', 'FY', 'ST', 'BI', 'WG', 'F',  'Ph', 'HM', 'LL', 'GT', 'Ca', 'Kr', 'F',  'WG', 'BI', 'ST', 'FY', 'PS', 'FD', 'EG', 'FL', 'WB', 'PR', 'SM', 'HD', 'WH', 'WC' ], # f
		[ 'TC', 'VW', 'SX', 'Do', 'FH', 'VB', 'AB', 'EW', 'LH', 'CK', 'OM', 'CC', 'NB', 'SU', 'VS', 'NT', 'TF', 'MT', 'RM', 'TF', 'NT', 'VS', 'ES', 'WS', 'CC', 'OM', 'CK', 'LH', 'EW', 'AB', 'VB', 'FH', 'Do', 'SX', 'VW', 'TC' ], # g
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
		[ 'TC', 'VW', 'SX', 'Do', 'FH', 'VB', 'AB', 'EW', 'LH', 'CK', 'OM', 'CC', 'WS', 'ES', 'VS', 'NT', 'TF', 'RM', 'MT', 'TF', 'NT', 'VS', 'SU', 'NB', 'CC', 'OM', 'CK', 'LH', 'EW', 'AB', 'VB', 'FH', 'Do', 'SX', 'VW', 'TC' ], # dd
		[ 'WC', 'WH', 'HD', 'SM', 'PR', 'WB', 'FL', 'EG', 'FD', 'PS', 'FY', 'ST', 'BI', 'WG', 'F',  'Kr', 'Ca', 'GT', 'LL', 'HM', 'Ph', 'F',  'WG', 'BI', 'ST', 'FY', 'PS', 'FD', 'EG', 'FL', 'WB', 'PR', 'SM', 'HD', 'WH', 'WC' ], # ee
		[ 'CI', 'CE', 'B',  'R',  'WF', 'FC', 'MF', 'VT', 'So', 'LS', 'CL', 'CR', 'RH', 'HE', 'VO', 'GD', 'GO', 'Dv', 'DS', 'GO', 'GD', 'VO', 'HE', 'RH', 'CR', 'CL', 'LS', 'So', 'VT', 'MF', 'FC', 'WF', 'R',  'B',  'CE', 'CI' ], # ff
		[ 'SV', 'VE', 'N',  'PI', 'CG', 'PG', 'H',  'O',  'CN', 'SA', 'SR', 'GL', 'Ln', 'CT', 'GS', 'VD', 'WL', 'GG', 'VG', 'WL', 'VD', 'GS', 'CT', 'Ln', 'GL', 'SR', 'SA', 'CN', 'O',  'H',  'PG', 'CG', 'PI', 'N',  'VE', 'SV' ], # gg
		[ 'GC', 'SI', 'RN', 'RW', 'BG', 'RO', 'LT', 'LE', 'BO', 'WD', 'FP', 'RB', 'OK', 'Pc', 'WA', 'FI', 'C',  'KM', 'PM', 'C',  'FI', 'WA', 'Pc', 'OK', 'RB', 'FP', 'WD', 'BO', 'RI', 'TT', 'RO', 'BG', 'RW', 'RN', 'SI', 'GC' ], # hh
		[ 'Rv', 'WE', 'TD', 'FS', 'CO', 'RA', 'FO', 'MS', 'RP', 'RU', 'SS', 'GR', 'RT', 'BA', 'BD', 'Wr', 'S',  'NK', 'DE', 'S',  'GU', 'Ya', 'BA', 'RT', 'GR', 'SS', 'RU', 'RP', 'MS', 'FO', 'RA', 'CO', 'FS', 'TD', 'FG', 'Rv' ], # ii
		[ 'L',  'TS', 'RR', 'W',  'DM', 'ME', 'LO', 'BC', 'HR', 'FR', 'ED', 'CD', 'FT', 'FK', 'RS', 'LG', 'G',  'K',  'CP', 'G',  'RG', 'RS', 'FK', 'FT', 'WO', 'ED', 'FR', 'HR', 'BC', 'LO', 'ME', 'DM', 'W',  'RR', 'WT', 'L'  ], # jj
	}
	method piece-abbreviation {
		AB => Games::Shogi::Piece::Angry-Boar,
		B  => Games::Shogi::Piece::Bishop,
		BA => Games::Shogi::Piece::Running-Bear,
		BB => Games::Shogi::Piece::Blind-Bear,
		BC => Games::Shogi::Piece::Beast-Cadet
		BD => Games::Shogi::Piece::Buddhist-Devil,
		BE => Games::Shogi::Piece::Bear-Soldier,
		BG => Games::Shogi::Piece::Bishop-General,
		BI => Games::Shogi::Piece::Blind-Dog,
		BL => Games::Shogi::Piece::Blue-Dragon,
		BM => Games::Shogi::Piece::Blind-Monkey,
		BN => Games::Shogi::Piece::Burning-Soldier,
		BO => Games::Shogi::Piece::Beast-Officer,
		BS => Games::Shogi::Piece::Boar-Soldier,
		BT => Games::Shogi::Piece::Blind-Tiger,
		C  => Games::Shogi::Piece::Copper-General,
		CC => Games::Shogi::Piece::Chinese-Cock,
		CD => Games::Shogi::Piece::Ceramic-Dove,
		CE => Games::Shogi::Piece::Cloud-Eagle,
		CG => Games::Shogi::Piece::Chicken-General,
		CH => Games::Shogi::Piece::Chariot-Soldier,
		CI => Games::Shogi::Piece::Stone-Chariot,
		CK => Games::Shogi::Piece::Flying-Cock,
		CL => Games::Shogi::Piece::Cloud-Dragon,
		CM => Games::Shogi::Piece::Climbing-Monkey,
		CN => Games::Shogi::Piece::Center-Standard,
		CO => Games::Shogi::Piece::Captive-Officer,
		CP => Games::Shogi::Piece::Prince,
		CR => Games::Shogi::Piece::Copper-Chariot,
		CS => Games::Shogi::Piece::Cat-Sword,
		CT => Games::Shogi::Piece::Captive-Cadet,
		Ca => Games::Shogi::Piece::Capricorn,
		D  => Games::Shogi::Piece::Dog, # XXX Dove elsewhere
		DE => Games::Shogi::Piece::Drunk-Elephant,
		DG => Games::Shogi::Piece::Rearing-Dog,
		DH => Games::Shogi::Piece::Dragon-Horse,
		DK => Games::Shogi::Piece::Dragon-King,
		DM => Games::Shogi::Piece::Fire-Demon,
		DS => Games::Shogi::Piece::Dark-Spirit,
		Do => Games::Shogi::Piece::Donkey,
		Dv => Games::Shogi::Piece::Deva,
		EA => Games::Shogi::Piece::Earth-General,
		EB => Games::Shogi::Piece::Enchannted-Badger,
		EC => Games::Shogi::Piece::Earth-Chariot,
		ED => Games::Shogi::Piece::Earth-Dragon,
		EG => Games::Shogi::Piece::Fierce-Eagle,
		EL => Games::Shogi::Piece::Soaring-Eagle,
		ES => Games::Shogi::Piece::Eastern-Barbarian,
		EW => Games::Shogi::Piece::Evil-Wolf,
		F  => Games::Shogi::Piece::Fire-General,
		FC => Games::Shogi::Piece::Flying-Cat,
		FD => Games::Shogi::Piece::Flying-Dragon,
		FE => Games::Shogi::Piece::Free-Eagle,
		FG => Games::Shogi::Piece:: Fragrant-Elephant,
		FH => Games::Shogi::Piece::Flying-Horse,
		FI => Games::Shogi::Piece::Fire-Dragon,
		FL => Games::Shogi::Piece::Ferocious-Leopard,
		FO => Games::Shogi::Piece::Forest-Demon,
		FP => Games::Shogi::Piece::Free-Pup,
		FR => Games::Shogi::Piece::Free-Demon,
		FS => Games::Shogi::Piece::Flying-Swallow,
		FT => Games::Shogi::Piece::Free-Dream-Eater,
		FY => Games::Shogi::Piece::Flying-Goose,
		G  => Games::Shogi::Piece::Gold-General,
		G% => Games::Shogi::Piece::Great-Turtle,
		GB => Games::Shogi::Piece::Go-Between,
		GC => Games::Shogi::Piece::Gold-Chariot,
		GD => Games::Shogi::Piece::Great-Dragon,
		GE => Games::Shogi::Piece::Great-Standard,
		GG => Games::Shogi::Piece::Great-General,
		GL => Games::Shogi::Piece::Golden-Deer,
		GM => Games::Shogi::Piece::Great-Master,
		GN => Games::Shogi::Piece::Wood-General,
		GO => Games::Shogi::Piece::Golden-Bird, # XXX Go-Between in other games
		GR => Games::Shogi::Piece::Great-Dove,
		GS => Games::Shogi::Piece::Great-Stag,
		GU => Games::Shogi::Piece::Guardian-of-the-Gods,
		H  => Games::Shogi::Piece::Horse-General,
		HD => Games::Shogi::Piece::Horseman,
		HD => Games::Shogi::Piece::Howling-Dog,
		HE => Games::Shogi::Piece::Rams-Head-Soldier, # XXX RS elsewhere
		HF => Games::Shogi::Piece::Horned-Falcon,
		HM => Games::Shogi::Piece::Hook-Mover,
		HR => Games::Shogi::Piece::Running-Horse,
		HS => Games::Shogi::Piece::Horse-Soldier,
		I  => Games::Shogi::Piece::Iron-General,
		K  => Games::Shogi::Piece::King,
		KM => Games::Shogi::Piece::Kirin-Master,
		Kr => Games::Shogi::Piece::Kirin,
		L  => Games::Shogi::Piece::Lance,
		LB => Games::Shogi::Piece::Longbow-Soldier,
		LC => Games::Shogi::Piece::Left-Chariot
		LD => Games::Shogi::Piece::Lion-Dog,
		LE => Games::Shogi::Piece::Left-Dragon
		LG => Games::Shogi::Piece::Left-General
		LH => Games::Shogi::Piece::Liberated-Horse,
		LI => Games::Shogi::Piece::Lion-Hawk,
		LL => Games::Shogi::Piece::Little-Turtle,
		LO => Games::Shogi::Piece::Long-Nosed-Goblin,
		LP => Games::Shogi::Piece::Leopard-Soldier,
		LS => Games::Shogi::Piece::Little-Standard,
		LT => Games::Shogi::Piece::Left-Tiger
		Ln => Games::Shogi::Piece::Lion,
		M  => Games::Shogi::Piece::Mountain-General,
		ME => Games::Shogi::Piece::Mountain-Eagle,
		MF => Games::Shogi::Piece::Mountain-Falcon,
		MK => Games::Shogi::Piece::Side-Monkey,
		MS => Games::Shogi::Piece::Mountain-Stag,
		MT => Games::Shogi::Piece::Center-Master,
		N  => Games::Shogi::Piece::Knight,
		NB => Games::Shogi::Piece::Northern-Barbarian,
		NK => Games::Shogi::Piece::Neighboring-King,
		NT => Games::Shogi::Piece::Violent-Wolf,
		O  => Games::Shogi::Piece::Ox-General,
		OC => Games::Shogi::Piece::Oxcart,
		OK => Games::Shogi::Piece::Old-Kite,
		OM => Games::Shogi::Piece::Old-Monkey
		OR => Games::Shogi::Piece::Old-Rat
		OS => Games::Shogi::Piece::Ox-Soldier,
		OW => Games::Shogi::Piece::Swooping-Owl,
		OX => Games::Shogi::Piece::Flying-Ox,
		PG => Games::Shogi::Piece::Pup-General,
		PI => Games::Shogi::Piece::Pig-General,
		PM => Games::Shogi::Piece::Phoenix-Master,
		PR => Games::Shogi::Piece::Prancing-Stag,
		PS => Games::Shogi::Piece::Poisonous-Snake,
		Pc => Games::Shogi::Piece::Peacock,
		Ph => Games::Shogi::Piece::Phoenix,
		Q  => Games::Shogi::Piece::Queen,
		R  => Games::Shogi::Piece::Rook,
		RA => Games::Shogi::Piece::Rain-Dragon,
		RB => Games::Shogi::Piece::Rushing-Bird,
		RC => Games::Shogi::Piece::Right-Chariot, # XXX named Reverse Chariot elsewhere
		RD => Games::Shogi::Piece::Reclining-Dragon,
		RE => Games::Shogi::Piece::River-General,
		RG => Games::Shogi::Piece::Right-General,
		RH => Games::Shogi::Piece::Running-Chariot,
		RI => Games::Shogi::Piece::Right-Dragon,
		RM => Games::Shogi::Piece::Roc Master,
		RN => Games::Shogi::Piece::Running-Stag,
		RO => Games::Shogi::Piece::Rook-General,
		RP => Games::Shogi::Piece::Running-Pup,
		RR => Games::Shogi::Piece::Running-Rabbit,
		RS => Games::Shogi::Piece::Rear-Standard,
		RT => Games::Shogi::Piece::Running-Tiger,
		RU => Games::Shogi::Piece::Running-Serpent,
		RW => Games::Shogi::Piece::Running-Wolf,
		Rv => Games::Shogi::Piece::Reverse-Chariot, # XXX abbreviated to RC elsewhere
		S  => Games::Shogi::Piece::Silver-General,
		SA => Games::Shogi::Piece::Side-Boar,
		SB => Games::Shogi::Piece::Crossbow-Soldier,
		SD => Games::Shogi::Piece::Front-Standard,
		SE => Games::Shogi::Piece::Sword-Soldier,
		SF => Games::Shogi::Piece::Side-Flier,
		SG => Games::Shogi::Piece::Stone-General, # XXX St elsewhere
		SI => Games::Shogi::Piece::Side-Dragon,
		SL => Games::Shogi::Piece::Side-Soldier,
		SM => Games::Shogi::Piece::Side-Mover,
		SN => Games::Shogi::Piece::Coiled-Serpent,
		SP => Games::Shogi::Piece::Spear-Soldier.
		SQ => Games::Shogi::Piece::Square-Mover,
		SR => Games::Shogi::Piece::Silver-Rabbit,
		SS => Games::Shogi::Piece::Side-Serpent,
		ST => Games::Shogi::Piece::Strutting-Crow,
		SU => Games::Shogi::Piece::Southern-Barbarian,
		SV => Games::Shogi::Piece::Silver-Chariot,
		SW => Games::Shogi::Piece::Swallows-Wings,
		SX => Games::Shogi::Piece::Side-Ox,
		So => Games::Shogi::Piece::Soldier,
		T  => Games::Shogi::Piece::Tile-General,
		TC => Games::Shogi::Piece::Tile-Chariot,
		TD => Games::Shogi::Piece::Turtle-Dove,
		TF => Games::Shogi::Piece::Treacherous-Fox,
		TG => Games::Shogi::Piece::Savage-Tiger,
		TS => Games::Shogi::Piece::Turtle-Snake,
		TT => Games::Shogi::Piece::Right-Tiger,
		VB => Games::Shogi::Piece::Violent-Bear,
		VD => Games::Shogi::Piece::Violent-Dragon,
		VE => Games::Shogi::Piece::Vertical-Bear,
		VG => Games::Shogi::Piece::Vice-General,
		VH => Games::Shogi::Piece::Vertical-Horse,
		VL => Games::Shogi::Piece::Vertical-Leopard,
		VM => Games::Shogi::Piece::Vertical-Mover,
		VO => Games::Shogi::Piece::Violent-Ox,
		VP => Games::Shogi::Piece::Vertical-Pup,
		VR => Games::Shogi::Piece::Vertical-Soldier,
		VS => Games::Shogi::Piece::Violent-Stag,
		VT => Games::Shogi::Piece::Vermillion-Sparrow,
		VT => Games::Shogi::Piece::Vertical-Tiger,
		VW => Games::Shogi::Piece::Vertical-Wolf,
		W  => Games::Shogi::Piece::Whale,
		WA => Games::Shogi::Piece::Water-Dragon,
		WB => Games::Shogi::Piece::Water-Buffalo,
		WC => Games::Shogi::Piece::Wood-Chariot,
		WD => Games::Shogi::Piece::Wind-Dragon,
		WE => Games::Shogi::Piece::White-Elephant,
		WF => Games::Shogi::Piece::Side-Wolf,
		WG => Games::Shogi::Piece::Water-General,
		WH => Games::Shogi::Piece::White-Horse,
		WL => Games::Shogi::Piece::Woodland-Demon,
		WN => Games::Shogi::Piece::Wind-General,
		WO => Games::Shogi::Piece::Wooden-Dove,
		WS => Games::Shogi::Piece::Western-Barbarian,
		WT => Games::Shogi::Piece::White-Tiger,
		Wr => Games::Shogi::Piece::Wrestler,
		Ya => Games::Shogi::Piece::Yaksha,
		p  => Games::Shogi::Piece::Pawn,
	}
}

# vim: ft=perl6 et sw=4
