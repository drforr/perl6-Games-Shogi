# Games::Shogi [![Build Status](https://secure.travis-ci.org/drforr/perl6-Games-Shogi.svg?branch=master)](http://travis-ci.org/drforr/perl6-Games-Shogi)
Games::Shogi
=======

Use these roles to help create applications that play or render Shogi games. In something of a departure from regular designs there aren't any classes here, just roles that contain some of the essentials of how the traditional and not-so-traditional Shogi variants play.

If you haven't played Shogi before, it may surprise you to see that there aren't any "white" or "black" pieces. Unlike Western chess, once you capture a piece it is yours to return to play when you choose and where you choose, as long as it doesn't lead to an instant mate.

Pieces can promote once they pass a certain row on the board, just as in Western chess. You can use the 'promotion-row' method to see where that is for each size of Shogi board.

There's also a method to return the starting board configuration along with objects for each piece. The piece's side is indicated, but mutable because as mentioned above, pieces in Shogi can switch sides.

In 9x9 and smaller Shogi games, pieces can only promote once. In some of the larger Shogi variants, pieces can promote more than once, so there's a separate attribute for the current status, rather than a simple "promoted" flag.

Installation
============

* Using zef (a module management tool bundled with Rakudo Star):

```
    zef update && zef install Games::Shogi
```

Testing
=======

To run tests:

```
    prove -e perl6
```

Author
======

Jeffrey Goff, DrForr on #perl6, https://github.com/drforr/

License
=======

Artistic License 2.0
