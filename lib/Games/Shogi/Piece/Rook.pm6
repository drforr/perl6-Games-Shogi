=begin pod

=begin NAME

Games::Shogi::Piece::Rook - Standard Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    |   |   | | |   |   |
    |   |   | s |   |   |
    | - | s | R | s | - |
    |   |   | s |   |   |
    |   |   | | |   |   |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Rook {
	also does Games::Shogi::Piece;

	method name { 'Rook' }
	method Kanji { '飛' }
	method abbreviation { 'R' }
#	method promotes-to { 'Pt' }
#	method Betza { 'FfbW' }
}

# vim: ft=perl6 et sw=4
