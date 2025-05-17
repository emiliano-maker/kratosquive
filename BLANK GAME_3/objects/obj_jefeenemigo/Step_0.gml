/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71E1674A
/// @DnDArgument : "code" "// Evento Step del obj_jefeenemigo (idéntico a obj_enemigo pero con objetivos diferentes)$(13_10)$(13_10)// Movimiento básico$(13_10)motion_add(direccion, velocidad);$(13_10)$(13_10)// Disminuir el tiempo hasta el cambio de dirección$(13_10)tiempo_hasta_cambio--;$(13_10)if (tiempo_hasta_cambio <= 0)$(13_10){$(13_10)    // Nueva dirección aleatoria$(13_10)    direccion = irandom(359);$(13_10)    // Reiniciar el contador$(13_10)    tiempo_hasta_cambio = intervalo_cambio_direccion;$(13_10)}$(13_10)$(13_10)// Evitar que el enemigo se salga de la room (opcional)$(13_10)if (x < 0 || x > room_width || y < 0 || y > room_height)$(13_10){$(13_10)    direccion = point_direction(x, y, room_width / 2, room_height / 2) + irandom_range(-45, 45);$(13_10)}$(13_10)$(13_10)// Lógica de disparo$(13_10)tiempo_hasta_disparo--;$(13_10)if (tiempo_hasta_disparo <= 0)$(13_10){$(13_10)    // Intentar disparar al personaje principal$(13_10)    if (instance_exists(obj_personaje))$(13_10)    {$(13_10)        var bala = instance_create_layer(x, y, "Instances", obj_bala_enemiga);$(13_10)        var dir = point_direction(x, y, obj_personaje.x, obj_personaje.y);$(13_10)        bala.direction = dir;$(13_10)        bala.speed = 5;$(13_10)        tiempo_hasta_disparo = intervalo_disparo;$(13_10)        exit; // Si disparamos a este, salimos para no disparar al otro en el mismo paso$(13_10)    }$(13_10)    // Si el personaje principal no existe, intentar disparar al personaje con el hacha$(13_10)    else if (instance_exists(obj_personaje_hacha))$(13_10)    {$(13_10)        var bala_hacha = instance_create_layer(x, y, "Instances", obj_bala_enemiga);$(13_10)        var dir_hacha = point_direction(x, y, obj_personaje_hacha.x, obj_personaje_hacha.y);$(13_10)        bala_hacha.direction = dir_hacha;$(13_10)        bala_hacha.speed = 5;$(13_10)        tiempo_hasta_disparo = intervalo_disparo;$(13_10)    }$(13_10)}"
// Evento Step del obj_jefeenemigo (idéntico a obj_enemigo pero con objetivos diferentes)

// Movimiento básico
motion_add(direccion, velocidad);

// Disminuir el tiempo hasta el cambio de dirección
tiempo_hasta_cambio--;
if (tiempo_hasta_cambio <= 0)
{
    // Nueva dirección aleatoria
    direccion = irandom(359);
    // Reiniciar el contador
    tiempo_hasta_cambio = intervalo_cambio_direccion;
}

// Evitar que el enemigo se salga de la room (opcional)
if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    direccion = point_direction(x, y, room_width / 2, room_height / 2) + irandom_range(-45, 45);
}

// Lógica de disparo
tiempo_hasta_disparo--;
if (tiempo_hasta_disparo <= 0)
{
    // Intentar disparar al personaje principal
    if (instance_exists(obj_personaje))
    {
        var bala = instance_create_layer(x, y, "Instances", obj_bala_enemiga);
        var dir = point_direction(x, y, obj_personaje.x, obj_personaje.y);
        bala.direction = dir;
        bala.speed = 5;
        tiempo_hasta_disparo = intervalo_disparo;
        exit; // Si disparamos a este, salimos para no disparar al otro en el mismo paso
    }
    // Si el personaje principal no existe, intentar disparar al personaje con el hacha
    else if (instance_exists(obj_personaje_hacha))
    {
        var bala_hacha = instance_create_layer(x, y, "Instances", obj_bala_enemiga);
        var dir_hacha = point_direction(x, y, obj_personaje_hacha.x, obj_personaje_hacha.y);
        bala_hacha.direction = dir_hacha;
        bala_hacha.speed = 5;
        tiempo_hasta_disparo = intervalo_disparo;
    }
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 734A2639
move_wrap(1, 1, 0);