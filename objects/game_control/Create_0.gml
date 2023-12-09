// turn on ai mode if not on multiplayer arena
if room!=arena
{
th=instance_create(0,0,ai_control);
th.obj=bomberman2;
th.player=1;
th=instance_create(0,0,ai_control);
th.obj=bomberman3;
th.player=2;
th=instance_create(0,0,ai_control);
th.obj=bomberman4;
th.player=3;
th=instance_create(0,0,ai_control);
th.obj=bomberman5;
th.player=4;
th=instance_create(0,0,ai_control);
th.obj=bomberman6;
th.player=5;
th=instance_create(0,0,ai_control);
th.obj=bomberman7;
th.player=6;
th=instance_create(0,0,ai_control);
th.obj=bomberman8;
th.player=7;
th=instance_create(0,0,ai_control);
th.obj=bomberman9;
th.player=8;
th=instance_create(0,0,ai_control);
th.obj=bomberman10;
th.player=9;
th=instance_create(0,0,ai_control);
th.obj=bomberman11;
th.player=10;
th=instance_create(0,0,ai_control);
th.obj=bomberman12;
th.player=11;
th=instance_create(0,0,ai_control);
th.obj=bomberman13;
th.player=12;
th=instance_create(0,0,ai_control);
th.obj=bomberman14;
th.player=13;
th=instance_create(0,0,ai_control);
th.obj=bomberman15;
th.player=14;
th=instance_create(0,0,ai_control);
th.obj=bomberman16;
th.player=15;
}
// play music
sound_loop(choose(superbomberman3_battle,
                  superbomberman2_battle,
                  superbomberman5_battle2));
// create grid for bots
global.mpgrid=mp_grid_create(0,0,room_width/16,room_height/16,16,16)
mp_grid_add_instances(global.mpgrid,wall,false);
// create precise grid for bots - this one also includes soft blocks
// it's used for escape purposes
// it's actualised every half of second
global.mpprecisegrid=mp_grid_create(0,0,room_width/16,room_height/16,16,16)
mp_grid_add_instances(global.mpprecisegrid,wall,false);
// destroy some blocks so map will be more random
if room=wide_1p or room=widearena
  number_to_destroy=80;
  else
  number_to_destroy=20;
repeat(number_to_destroy) {
if instance_number(softblock)>0
{
do
  {
  x=random(room_width);
  y=random(room_height);
  }
until(place_meeting(x,y,softblock));
th=instance_place(x,y,softblock);
with(th) instance_destroy();
}
}
alarm[0]=2;
alarm[1]=5;
