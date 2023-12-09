// if ai is off, stop
if aimode=ai_off exit;
if !instance_exists(obj) exit;

// count the previous position (for debug purposes)
prevx=obj.x;
prevy=obj.y;

// debug things, don't uncomment
/*if keyboard_check(vk_numpad1) and player=0 visible=1;
if keyboard_check(vk_numpad2) and player=1 visible=1;
if keyboard_check(vk_numpad3) and player=2 visible=1;
if keyboard_check(vk_numpad4) and player=3 visible=1;
if keyboard_check(vk_numpad5) and player=4 visible=1;
if keyboard_check(vk_numpad6) and player=5 visible=1;
if keyboard_check(vk_numpad7) and player=6 visible=1;
if keyboard_check(vk_numpad8) and player=7 visible=1;
if keyboard_check(vk_numpad0) visible=0;*/
/* */
/*  */
