ai[0]=0;
ai[1]=0;
ai[2]=0;
ai[3]=0;
ai[4]=0;
ai[5]=0;
ai[6]=0;
ai[7]=0;
global.bmb_input[0]=input_keyboard;
global.bmb_input[1]=input_keyboard;
global.bmb_input[2]=input_pad1;
global.bmb_input[3]=input_pad2;
global.bmb_input[4]=input_none;
global.bmb_input[5]=input_none;
global.bmb_input[6]=input_none;
global.bmb_input[7]=input_none;
for(i=0; i<8; i+=1) {
control_reset(i);
}
global.bmb_key[0,0]=vk_down;
global.bmb_key[0,1]=vk_right;
global.bmb_key[0,2]=vk_up;
global.bmb_key[0,3]=vk_left;
global.bmb_key[0,4]=vk_delete;
global.bmb_key[0,5]=vk_pagedown;
global.bmb_key[0,6]=vk_end;
global.bmb_key[1,0]=ord("S");
global.bmb_key[1,1]=ord("D");
global.bmb_key[1,2]=ord("W");
global.bmb_key[1,3]=ord("A");
global.bmb_key[1,4]=ord("G");
global.bmb_key[1,5]=ord("J");
global.bmb_key[1,6]=ord("H");
// to connect the action to the d-pad, enter these numbers:
// -1 - down
// -2 - right
// -3 - up
// -4 - left
global.bmb_key[2,0]=-1;
global.bmb_key[2,1]=-2;
global.bmb_key[2,2]=-3;
global.bmb_key[2,3]=-4;
global.bmb_key[2,4]=1;
global.bmb_key[2,5]=3;
global.bmb_key[2,6]=2;
global.bmb_key[3,0]=-1;
global.bmb_key[3,1]=-2;
global.bmb_key[3,2]=-3;
global.bmb_key[3,3]=-4;
global.bmb_key[3,4]=1;
global.bmb_key[3,5]=3;
global.bmb_key[3,6]=2;
//if !joystick_exists(1) show_message("No joypad! Only 2 players will be playable"); else
//if !joystick_exists(2) show_message("No second joypad! 3 players will be playable");
