/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 37AA079C
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
/// @DnDHash : 782C1F6D
move_wrap(1, 1, 0);