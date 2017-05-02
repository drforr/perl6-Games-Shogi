=begin pod

=begin NAME

Games::Shogi::Piece::Crane - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | m | m | m |
    |   | Cr|   |
    | m | m | m |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Crane {
	also does Games::Shogi::Piece;

	method name { 'Crane' }
	method Kanji { '鶴' }
	method abbreviation { 'Cr' }
	method promotes-to { 'Pt' }
	method Betza { 'FfbW' }
}

# vim: ft=perl6 et sw=4
