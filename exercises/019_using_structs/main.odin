/*
 The `using` keyword embeds one struct's fields into another's namespace, so
 they can be accessed directly on the outer value.

 Relevant syntax:
   Player :: struct {
       name: string,
       using pos: Position,   // embed Position's fields into Player
   }

 `using` must appear BEFORE the field it attaches to. The broken code writes
 `pos: Position, using,` (after the field and a comma), which is invalid.
 With the correct form, `player.x` and `player.y` become reachable.

 Level: Intermediate

 @author fidzr
*/

package main

import "core:fmt"

Position :: struct {
	x, y: f32,
}

Player :: struct {
	name: string,
	// The 'using' keyword brings the fields of an embedded struct into this
	// struct's namespace. But it must be placed *before* the field it embeds.
	pos: Position, using,
}

main :: proc() {
	player := Player{
		name = "Thor",
		pos  = Position{10.0, 20.0},
	}

	// Because 'pos' is embedded with 'using', its fields x and y should be
	// reachable directly on the Player value.
	fmt.println("Player name:", player.name)
	fmt.println("Player coordinates:", player.x, player.y)
}
