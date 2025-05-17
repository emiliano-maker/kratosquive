/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 726AC456
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 1F605110
/// @DnDApplyTo : {obj_personaje}
/// @DnDArgument : "objind" "obj_personaje_hacha"
/// @DnDSaveInfo : "objind" "obj_personaje_hacha"
with(obj_personaje) instance_change(obj_personaje_hacha, true);