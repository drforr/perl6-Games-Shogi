=begin pod

=begin NAME

Games::Shogi::Piece::Silver-General - Standard Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | m | m | m |
    |   | S |   |
    | m |   | m |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Silver-General {
	also does Games::Shogi::Piece;

	method name { 'Silver General' }
	method Kanji { '銀' }
	method abbreviation { 'S' }
#	method promotes-to { 'Pt' }
#	method Betza { 'FfbW' }
}

# vim: ft=perl6 et sw=4
