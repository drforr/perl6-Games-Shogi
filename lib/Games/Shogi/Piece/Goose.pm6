=begin pod

=begin NAME

Games::Shogi::Piece::Goose - Tori Shogi game piece

=end NAME

=begin DESCRIPTION

=end DESCRIPTION

=begin MOVES

    | j |   |   |   | j |
    |   |   |   |   |   |
    |   |   | Go|   |   |
    |   |   |   |   |   |
    |   |   | j |   |   |

=end MOVES

=end pod

use Games::Shogi::Piece;

role Games::Shogi::Piece::Goose {
	also does Games::Shogi::Piece;

	method name { 'Goose' }
	method Kanji { '鴈' }
	method abbreviation { 'Go' }
	method promotes-to { Any }
	method Betza { 'fAbD' }
}

# vim: ft=perl6 et sw=4
