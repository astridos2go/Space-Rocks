// Explode the player
effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();

// Set alarm countdown
obj_game.alarm[0] = 120;
