=begin pod

=begin NAME

Games::Shogi::Piece::Phoenix - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | m | m | m |
    | m | Ph| m |
    | m | m | m |

The Phoenix is the equivalent of the King in Tori shogi - Capture your opponent's Phoenix and you win.

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Phoenix {
	also does Games::Shogi::Piece;

	method name { 'Phoenix' }
	method Kanji { '鵬' }
	method abbreviation { 'Ph' }
	method Betza { 'K' }
}

# vim: ft=perl6 et sw=4
