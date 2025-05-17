// Evento Create del obj_jefeenemigo (idéntico a obj_enemigo)

// Velocidad del enemigo
velocidad = 0.1;
// Intervalo de tiempo para cambiar de dirección (en frames)
intervalo_cambio_direccion = game_get_speed(gamespeed_fps) * 2; // Cambia cada 2 segundos
tiempo_hasta_cambio = irandom_range(1, intervalo_cambio_direccion);
// Dirección inicial aleatoria
direccion = irandom(359);
// Intervalo de tiempo para disparar (en frames)
intervalo_disparo = game_get_speed(gamespeed_fps) * 3; // Dispara cada 3 segundos
tiempo_hasta_disparo = irandom(intervalo_disparo);