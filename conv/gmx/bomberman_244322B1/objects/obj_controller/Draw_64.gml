{
        if keyboard_check(k_up) draw_sprite(sp_u_button,0,24,160)
        else draw_sprite(sp_u_button,1,24,160)

        if keyboard_check(k_right) draw_sprite(sp_r_button,0,48,184)
        else draw_sprite(sp_r_button,1,48,184)

        if keyboard_check(k_down) draw_sprite(sp_d_button,0,24,208)
        else draw_sprite(sp_d_button,1,24,208)

        if keyboard_check(k_left) draw_sprite(sp_l_button,0,0,184)
        else draw_sprite(sp_l_button,1,0,184)

        if keyboard_check(k_jump)==1 draw_sprite(sp_a_button,0,264,208)
        else draw_sprite(sp_a_button,1,264,208)

        if keyboard_check(k_special)==1 draw_sprite(sp_y_button,0,264,160)
        else draw_sprite(sp_y_button,1,264,160)
        
        if keyboard_check(k_dash)==1 draw_sprite(sp_b_button,0,288,184)
        else draw_sprite(sp_b_button,1,288,184)
        
        if keyboard_check(k_shoot)==1 draw_sprite(sp_x_button,0,240,184)
        else draw_sprite(sp_x_button,1,240,184)
        
        draw_sprite(sp_menu,0,291,3)
        if pauseon==true draw_sprite(sp_exit,0,291,27)
}

