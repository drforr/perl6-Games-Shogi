=begin pod

=begin NAME

Games::Shogi::Piece::Knight - Standard Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    |   | j |   | j |   |
    |   |   |   |   |   |
    |   |   | N |   |   |
    |   |   |   |   |   |
    |   |   |   |   |   |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Knight {
	also does Games::Shogi::Piece;

	method name { 'Knight' }
	method Kanji { '桂' }
	method abbreviation { 'N' }
#	method promotes-to { 'Pt' }
#	method Betza { 'FfbW' }
}

# vim: ft=perl6 et sw=4
