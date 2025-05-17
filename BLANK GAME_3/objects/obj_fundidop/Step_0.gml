switch (fade_step)
{
    case 1: // Fundido de entrada (desde transparente a rojo)
        fade_counter++;
        fade_alpha = min(1, real(fade_counter) / fade_duration);
        if (fade_alpha == 1)
        {
            fade_step = 2;
            fade_counter = 0;
        }
        break;

    case 2: // Ir a la siguiente room
        room_goto(target_room);
        fade_step = 3;
        fade_counter = 0;
        break;

    case 3: // Fundido de salida (desde rojo a transparente)
        fade_counter++;
        fade_alpha = max(0, 1 - real(fade_counter) / fade_duration);
        if (fade_alpha == 0)
        {
            instance_destroy();
        }
        break;
}