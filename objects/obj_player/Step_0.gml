// Prevent player escape
move_wrap(true, true, 0)

// Forwards movement
if keyboard_check(vk_up) or keyboard_check(ord("W")) {
	motion_add(image_angle, 0.1);
}

// Reverse movement
if keyboard_check(vk_down) or keyboard_check(ord("S")) {
	motion_add(image_angle, -0.1);
}

// Rotation
if keyboard_check(vk_left) or keyboard_check(ord("A")) {
	image_angle += 4;
}

if keyboard_check(vk_right ) or keyboard_check(ord("D")) {
	image_angle -= 4;
}

// Firing projectiles
if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space) {
	instance_create_layer(x, y, "Instances", obj_bullet)
}