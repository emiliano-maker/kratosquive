if (!instance_exists(obj_fundidop))
{
    // Crea una instancia del objeto de fundido
    var fade_instance = instance_create_layer(x, y, "Instances", obj_fundidop);

    // Inicializa las variables del fundido
    if (instance_exists(fade_instance))
    {
        fade_instance.fade_alpha = 0;
        fade_instance.fade_color = c_red;
        fade_instance.fade_duration = room_speed * 2;
        fade_instance.fade_step = 1;
        fade_instance.fade_counter = 0;
        fade_instance.target_room = Room2;
        fade_instance.persistent = true;
        fade_instance.depth = -9999;
    }

    // Destruye la instancia de obj_perder inmediatamente después de iniciar el fundido
    instance_destroy();
}