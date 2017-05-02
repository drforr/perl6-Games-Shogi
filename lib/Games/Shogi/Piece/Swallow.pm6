=begin pod

=begin NAME

Games::Shogi::Piece::Swallow - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    |   | m |   |
    |   | Sw|   |
    |   |   |   |

Effectively a Pawn.

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Swallow {
	also does Games::Shogi::Piece;

	method name { 'Swallow' }
	method Kanji { '燕' }
	method abbreviation { 'Sw' }
	method promotes-to { 'G' }
	method Betza { 'fW' }
}

# vim: ft=perl6 et sw=4
