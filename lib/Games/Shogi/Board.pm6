=begin pod

=begin NAME

Games::Shogi::Board - Virtual role for {Tai,Standard,MakaDaiDai etc.) games

=end NAME

=begin SYNOPSIS

    class Main does Games::Shogi::Board::Tai {
        method move( Int $end-rank ) {
            die if $end-rank > self.side;
        }

        method can-promote( Int $end-rank ) returns Bool {
            return $end-rank >= self.promotion-zone;
        }
    }

=end SYNOPSIS

=begin DESCRIPTION

"Virtual" role for game boards. It's basically there to keep the child game roles "honest" by forcing children to implement the basic facts that Shogi games will need in order to play.

Please note that the whole board configuration is returned, because the boards may not necessarily be mirror-symmetric or even rotationally symmetric. Also, instead of a generic 'side' there's a C<height> and C<width> accessor because some of the more esoteric Shogi versions aren't square.

=begin SUBSETS

You can use the Rank and File subsets of Int in order to constrain pieces to fit within the grid. These conflict between different boards, so they're the main reason you can't load two board classes simultaneously.

I may rework this before release.

=end SUBSETS

=begin METHODS

=item height()

Returns the number of cells in a given file of the Shogi board in question.

=item width()

Determines the number of files on the Shogi board in question.

=item promotion-rank()

Return the rank of the board a piece needs to pass in order to be promoted.

=item allow-drops()

Return whether drops (the ability to put captured pieces back into play) are allowed in this game.

=item starting-configuration()

Returns a C<height()> x C<width()> array of piece abbreviations. You can use the next method to get the actual class names. I'm using this ndirect lookup just in (the likely) case the same abbreviation is used for two different pieces, or two pieces that have the same name in different games move differently.

=item piece-abbreviation()

Returns a lookup of abbreviation => class name for pieces.

=end METHODS

=end DESCRIPTION

=end pod

role Games::Shogi::Board {
	method height {!!!}
	method width {!!!}
	method allow-drops returns Bool {!!!}
	method promotion-rank {!!!}
	method starting-configuration {!!!}
	method piece-abbreviation {!!!}
}
