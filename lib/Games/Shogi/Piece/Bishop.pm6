=begin pod

=begin NAME

Games::Shogi::Piece::Bishop - Standard Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | \ |   |   |   | / |
    |   | s |   | s |   |
    |   |   | B |   |   |
    |   | s |   | s |   |
    | / |   |   |   | \ |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Bishop {
	also does Games::Shogi::Piece;

	method name { 'Bishop' }
	method Kanji { '角' }
	method abbreviation { 'B' }
#	method promotes-to { 'Pt' }
#	method Betza { 'FfbW' }
}

# vim: ft=perl6 et sw=4
