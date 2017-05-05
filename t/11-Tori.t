use v6;

use Test;
use Games::Shogi::Board::Tori;

my class Tori-Game {
	also does Games::Shogi::Board::Tori;

	method move(	Rank $start-rank, File $start-file,
			Rank $end-rank, File $end-file ) {
		return True;
	}
}

my $t = Tori-Game.new;
ok $t.move( 0, 0, 6, 6 );
#dies-ok $t.move( 0, 0, 24,26 );

done-testing;

# vim: ft=perl6
