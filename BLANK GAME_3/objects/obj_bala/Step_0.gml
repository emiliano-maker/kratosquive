/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 202EBFDB
/// @DnDArgument : "dir" "image_angle"
/// @DnDArgument : "speed" "1.0"
motion_add(image_angle, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2396E91D
/// @DnDArgument : "code" "// Obtiene el ángulo entre la posición del objeto y la posición del mouse$(13_10)var angle_to_mouse = point_direction(x, y, mouse_x, mouse_y);$(13_10)$(13_10)// Establece la dirección (image_angle) del objeto a este ángulo$(13_10)image_angle = angle_to_mouse;"
// Obtiene el ángulo entre la posición del objeto y la posición del mouse
var angle_to_mouse = point_direction(x, y, mouse_x, mouse_y);

// Establece la dirección (image_angle) del objeto a este ángulo
image_angle = angle_to_mouse;

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 2ED0370B
move_wrap(1, 1, 0);