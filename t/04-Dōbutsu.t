use v6;

use Test;
use Games::Shogi::Board::Dōbutsu;

my class Dōbutsu-Game {
	also does Games::Shogi::Board::Dōbutsu;

	method move(	Rank $start-rank, File $start-file,
			Rank $end-rank, File $end-file ) {
		return True;
	}
}

my $t = Dōbutsu-Game.new;
ok $t.move( 0, 0, 3, 3 );
#dies-ok $t.move( 0, 0, 24, 26 );

done-testing;

# vim: ft=perl6
