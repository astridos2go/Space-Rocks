// Destroy the bullet
instance_destroy(other);
// Show the explosion
effect_create_above(ef_explosion, x, y, 1, c_white);

// Switch the direction
direction = random(360);

if sprite_index == spr_rock_big {
	obj_game.points += 25;
	sprite_index = spr_rock_small;
	var _copy = instance_copy(true);
	_copy.x += 25
} else if instance_number(obj_rock) < 12 {
	obj_game.points += 50;
	sprite_index = spr_rock_big;
	x = -100;
} else {
	obj_game.points += 50;
	instance_destroy();
}

