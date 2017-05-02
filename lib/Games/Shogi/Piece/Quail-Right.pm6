=begin pod

=begin NAME

Games::Shogi::Piece::Quail-Right - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    |   |   | | |   |   |
    |   |   | s |   |   |
    |   |   | LQ|   |   |
    |   | / |   | m |   |
    | s |   |   |   |   |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Quail-Right {
	also does Games::Shogi::Piece;

	method name { 'Quail (Right)' }
	method Kanji { '鶉' }
	method abbreviation { 'RQ' }
	method promotes-to { Any }
	method Betza { 'fRblBbrF' }
}

# vim: ft=perl6 et sw=4
