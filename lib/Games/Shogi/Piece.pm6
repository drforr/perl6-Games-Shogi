=begin pod

=begin NAME

Games::Shogi::Piece - Virtual role for {Tai,Standard,MakaDaiDai etc.) games

=end NAME

=begin SYNOPSIS

    class Main does Games::Shogi::Piece::Tai {
    }

=end SYNOPSIS

=begin DESCRIPTION

"Virtual" role for game pieces. It's basically there to keep the child game roles "honest" by forcing children to implement the basic facts that Shogi games will need in order to play.

=end DESCRIPTION

=begin MOVES

'm' - Move to any of these squares, unless enemy pieces block.
'j' - Jump to any of these squares, ignoringenemy pieces.
's' - Slide to any square in this direction, unless enemy pieces block.
'r' - Range to any square in this direction, regardless of enemy pieces.

For 'm' and 's' moves, you can capture enemy pieces, but like in Western chess that's the end of your move. For 'j' and 'r' moves you can hop over enemy pieces, but when you capture a piece your move stops on that pice's square.

(for sliding and ranging pieces I'll add some ASCII art to make sure the direction the piece travels is clear.)

=end MOVES

=begin METHODS

=end METHODS

=end pod

role Games::Shogi::Piece {
	method name {!!!}
	method Kanji {!!!}
	method abbreviation {!!!}
	method promotes-to {!!!}
	method Betza {!!!}
}
