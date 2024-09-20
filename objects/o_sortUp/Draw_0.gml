/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1C2E96A9
/// @DnDArgument : "colour" "renderColour"
image_blend = renderColour & $ffffff;
image_alpha = (renderColour >> 24) / $ff;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3AAD3101
draw_self();