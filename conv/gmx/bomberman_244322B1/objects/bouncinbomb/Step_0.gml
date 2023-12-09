bomb_change_sprite(type);
depth=-(y+16);
frame+=1;
if frame=8 or frame=34 or frame=59
  {
  sound_play(bomb_bounce_snd);
  if type=1 or type=3
    {
    hspeed=0;
    vspeed=0;
    d=choose(0,1,2,3);
    if d=0 vspeed=2;
    if d=1 hspeed=2;
    if d=2 vspeed=-2;
    if d=3 hspeed=-2;
    }
  if x<0 x+=room_width;
  if x>room_width-16 x-=room_width;
  if y<0 y+=room_height;
  if y>room_height-16 y-=room_height;
  move_snap(16,16);
  frame=0;
  got=0;
  if place_meeting(x,y,bomberman_parent)
    {
    th=instance_place(x,y,bomberman_parent);
    if th.carry=0 and round(th.x/16)*16=x and round(th.y/16)*16=y
      {
      with(th) move_snap(16,16);
      th.spr=1;
      th.img=0;
      got=1;
      }
      else
      got=0;
    }
  if !place_meeting(x,y,softblock) and !place_meeting(x,y,bomb)
  and !place_meeting(x,y,wall) and got=0
    {
    th=instance_create(x,y,bomb);
    th.sprite_index=sprite_index;
    th.type=type;
    th.firepower=firepower;
    th.owner=owner;
    th.alarm[0]=toalarm;
    instance_destroy();
    }
  }
