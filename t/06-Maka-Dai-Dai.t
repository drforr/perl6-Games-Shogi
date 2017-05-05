use v6;

use Test;
use Games::Shogi::Board::Maka-Dai-Dai;

my class Maka-Dai-Dai-Game {
	also does Games::Shogi::Board::Maka-Dai-Dai;

	method move(	Rank $start-rank, File $start-file,
			Rank $end-rank, File $end-file ) {
		return True;
	}
}

my $t = Maka-Dai-Dai-Game.new;
ok $t.move( 0, 0, 6, 6 );
#dies-ok $t.move( 0, 0, 24,26 );

done-testing;

# vim: ft=perl6
