=begin pod

=begin NAME

Games::Shogi::Piece::Eagle - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | \ |   |   |   | / |
    |   | s | m | s |   |
    |   | m | Fa| m |   |
    |   | m | s | m |   |
    | m |   | | |   | m |

This is a promoted Falcon

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Eagle {
	also does Games::Shogi::Piece;

	method name { 'Eagle' }
	method Kanji { '鵰' }
	method abbreviation { 'Ea' }
	method promotes-to { Any } # Heh, 'Any' is awkward here :)
	method Betza { 'fBbRWbB2' }
}

# vim: ft=perl6 et sw=4
