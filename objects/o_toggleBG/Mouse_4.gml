show_debug_message("toggle BG code");
global.enableAnimatedBGs = !global.enableAnimatedBGs;
layer_set_visible("Backgrounds_1",global.enableAnimatedBGs);
layer_set_visible("Background",global.enableAnimatedBGs);