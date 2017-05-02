=begin pod

=begin NAME

Games::Shogi::Piece::Pheasant - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    |   |   | j |   |   |
    |   |   |   |   |   |
    |   |   | Pt|   |   |
    |   | m |   | m |   |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Pheasant {
	also does Games::Shogi::Piece;

	method name { 'Pheasant' }
	method Kanji { '鶴' }
	method abbreviation { 'Pt' }
	method promotes-to { Any }
	method Betza { 'fDbF' }
}

# vim: ft=perl6 et sw=4
