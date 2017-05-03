=begin pod

=begin NAME

Games::Shogi::Piece::King - Standard Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | m | m | m |
    | m | K | m |
    | m | m | m |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::King {
	also does Games::Shogi::Piece;

	method name { 'King' }
	method Kanji { '玉' }
	method abbreviation { 'K' }
#	method promotes-to { 'Pt' }
#	method Betza { 'FfbW' }
}

# vim: ft=perl6 et sw=4
