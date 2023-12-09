globalvar k_menu,k_quit,k_up,k_right,k_down,k_left,k_dash,k_shoot,k_jump,k_special;

k_menu      =0
k_quit      =0
k_up        =0
k_right     =0
k_down      =0
k_left      =0
k_dash      =0
k_shoot     =0
k_jump      =0
k_special   =0

new_player    =0
new_controller=0


alarm[0]=1


globalvar FONT;
FONT = font_add_sprite(spr_font, ord(" "), 0, -1);
draw_set_color(c_white); //We use white as it is the default blending color.
draw_set_font(FONT);

