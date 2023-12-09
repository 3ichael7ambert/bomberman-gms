bomb_change_sprite(type);
// if someone kicked the bomb and he pressed the bomb stopping key, stop the bomb
if kickedby!=-1
  {
  if speed!=0
    {
    if global.bmb_hold[kickedby,5]=1
      {
      speed=0;
      move_snap(16,16);
      }
    }
  }
if pu>0
for(i=0; i<pu; i+=1)
{
with(chk[i]) x+=other.hspeed;
with(chk[i]) y+=other.vspeed;
}
if place_meeting(x,y,wall) or place_meeting(x,y,softblock)
  {
  x=xprevious;
  y=yprevious;
  move_snap(16,16);
  speed=0;
  }
