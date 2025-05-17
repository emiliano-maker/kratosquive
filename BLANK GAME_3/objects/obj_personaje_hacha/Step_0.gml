/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 46D57D8E
var l46D57D8E_0;l46D57D8E_0 = keyboard_check_pressed(vk_space);if (l46D57D8E_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5C539E65
	/// @DnDParent : 46D57D8E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bala"
	/// @DnDSaveInfo : "objectid" "obj_bala"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bala);

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5DEC6050
	/// @DnDParent : 46D57D8E
	/// @DnDArgument : "objind" "obj_personaje"
	/// @DnDSaveInfo : "objind" "obj_personaje"
	instance_change(obj_personaje, true);}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A0700CD
/// @DnDArgument : "code" "// Inicializa las variables de velocidad$(13_10)var move_speed = 5; // Ajusta este valor para cambiar la velocidad de movimiento$(13_10)var vx = 0;         // Velocidad horizontal$(13_10)var vy = 0;         // Velocidad vertical$(13_10)$(13_10)// Detecta las teclas de movimiento horizontal$(13_10)if (keyboard_check(vk_left))$(13_10){$(13_10)    vx = -move_speed;$(13_10)}$(13_10)if (keyboard_check(vk_right))$(13_10){$(13_10)    vx = move_speed;$(13_10)}$(13_10)$(13_10)// Detecta las teclas de movimiento vertical$(13_10)if (keyboard_check(vk_up))$(13_10){$(13_10)    vy = -move_speed;$(13_10)}$(13_10)if (keyboard_check(vk_down))$(13_10){$(13_10)    vy = move_speed;$(13_10)}$(13_10)$(13_10)// Aplica la velocidad al objeto$(13_10)x += vx;$(13_10)y += vy;"
// Inicializa las variables de velocidad
var move_speed = 5; // Ajusta este valor para cambiar la velocidad de movimiento
var vx = 0;         // Velocidad horizontal
var vy = 0;         // Velocidad vertical

// Detecta las teclas de movimiento horizontal
if (keyboard_check(vk_left))
{
    vx = -move_speed;
}
if (keyboard_check(vk_right))
{
    vx = move_speed;
}

// Detecta las teclas de movimiento vertical
if (keyboard_check(vk_up))
{
    vy = -move_speed;
}
if (keyboard_check(vk_down))
{
    vy = move_speed;
}

// Aplica la velocidad al objeto
x += vx;
y += vy;

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 50E3521B
move_wrap(1, 1, 0);