=begin pod

=begin NAME

Games::Shogi::Piece::Falcon - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | m | m | m |
    | m | Fa| m |
    | m |   | m |

The Phoenix is the equivalent of the King in Tori shogi - Capture your opponent's Phoenix and you win.

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Falcon {
	also does Games::Shogi::Piece;

	method name { 'Falcon' }
	method Kanji { '鷹' }
	method abbreviation { 'Fa' }
	method promotes-to { 'Ea' }
	method Betza { 'FfrlW' }
}

# vim: ft=perl6 et sw=4
