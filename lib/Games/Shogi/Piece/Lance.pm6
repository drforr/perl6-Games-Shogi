=begin pod

=begin NAME

Games::Shogi::Piece::Lance - Standard Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    |   |   | | |   |   |
    |   |   | s |   |   |
    |   |   | L |   |   |
    |   |   |   |   |   |
    |   |   |   |   |   |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Lance {
	also does Games::Shogi::Piece;

	method name { 'Lance' }
	method Kanji { '香' }
	method abbreviation { 'L' }
#	method promotes-to { 'Pt' }
#	method Betza { 'FfbW' }
}

# vim: ft=perl6 et sw=4
