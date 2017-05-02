use v6;

use Test;
#use Games::Shogi::Board::MakaDaiDai;
use Games::Shogi::Board::Tai;

my class Tai {
	also does Games::Shogi::Board::Tai;

	method move(	Rank $start-rank, File $start-file,
			Rank $end-rank, File $end-file ) {
		return True;
	}
}

my $t = Tai.new;
ok $t.move( 0, 0, 24,24 );
#dies-ok $t.move( 0, 0, 24,26 );

done-testing;

# vim: ft=perl6
