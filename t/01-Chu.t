use v6;

use Test;
use Games::Shogi::Board::Chu;

my class Chu-Game {
	also does Games::Shogi::Board::Chu;

	method move(	Rank $start-rank, File $start-file,
			Rank $end-rank, File $end-file ) {
		return True;
	}
}

my $t = Chu-Game.new;
ok $t.move( 0, 0, 6, 6 );
#dies-ok $t.move( 0, 0, 24,26 );

done-testing;

# vim: ft=perl6
