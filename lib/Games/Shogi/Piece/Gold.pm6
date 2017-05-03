=begin pod

=begin NAME

Games::Shogi::Piece::Gold - Standard Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | m | m | m |
    | m | G | m |
    |   | m |   |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Gold {
	also does Games::Shogi::Piece;

	method name { 'Gold' }
	method Kanji { '金' }
	method abbreviation { 'G' }
#	method promotes-to { 'Pt' }
#	method Betza { 'FfbW' }
}

# vim: ft=perl6 et sw=4
