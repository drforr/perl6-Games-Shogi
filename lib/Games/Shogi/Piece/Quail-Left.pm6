=begin pod

=begin NAME

Games::Shogi::Piece::Quail-Left - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    |   |   | | |   |   |
    |   |   | s |   |   |
    |   |   | LQ|   |   |
    |   | m |   | s |   |
    |   |   |   |   | \ |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Quail-Left {
	also does Games::Shogi::Piece;

	method name { 'Quail (Left)' }
	method Kanji { '鶉' }
	method abbreviation { 'LQ' }
	method promotes-to { Any }
	method Betza { 'fRbrBblF' }
}

# vim: ft=perl6 et sw=4
