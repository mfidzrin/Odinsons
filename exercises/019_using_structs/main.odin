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
