/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 740E92A6
/// @DnDArgument : "obj" "obj_enemigo_1"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_enemigo_1"
var l740E92A6_0 = false;l740E92A6_0 = instance_exists(obj_enemigo_1);if(!l740E92A6_0){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 799E4ECF
	/// @DnDParent : 740E92A6
	/// @DnDArgument : "obj" "obj_enemigo_2"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_enemigo_2"
	var l799E4ECF_0 = false;l799E4ECF_0 = instance_exists(obj_enemigo_2);if(!l799E4ECF_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7B811C8F
		/// @DnDParent : 799E4ECF
		instance_destroy();}}