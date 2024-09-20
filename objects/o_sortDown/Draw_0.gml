/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1C2E96A9
/// @DnDArgument : "colour" "renderColour"
image_blend = renderColour & $ffffff;
image_alpha = (renderColour >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 70AB3AA6
/// @DnDArgument : "angle" "180"
image_angle = 180;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3AAD3101
draw_self();