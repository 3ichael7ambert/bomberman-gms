// set the correct depth
depth=-(y+16);
// make player flash if he's invincible
if invincible>0
  {
  visible=invincible mod 2;
  invincible-=1;
  }
// antibug
if x<round(x/16)*16+get_speed(bmbspeed) and x>round(x/16)*16-get_speed(bmbspeed) x=round(x/16)*16;
if y<round(y/16)*16+get_speed(bmbspeed) and y>round(y/16)*16-get_speed(bmbspeed) y=round(y/16)*16;
// fill the bomb limit
if global.mybombstoget[pid]>0
{
bmbbombs+=1;
global.mybombstoget[pid]-=1;
}
// if bomberman is stunned, animation progress
if spr=1
  {
  img+=1;
  if img=23 spr=0;
  }
// if bomberman is punching, animation progress
if spr=2
  {
  img+=1;
  if img=14 spr=0;
  }
// if bomberman is jumping on/off rui, animation progress
if spr=3
  {
  if rui=0
    {
    img-=1;
    if img=0 spr=0;
    }
    else
    {
    img+=1;
    if img=24 spr=0;
    }
  }
// if bomberman's green rui is running, animation progress
if spr=4
  {
  bomber_move3(damn);
  if x=xprevious and y=yprevious spr=0;
  }
// if bomberman has any other sprite than walking, stop the script
if spr!=0 exit;
// actions done with bomb setting button
// if it's pressed, bomb taking attempt
if global.bmb_hold[pid,4]=1 bomber_take();
// if it's held, bomb placing attempt
if global.bmb_hold[pid,4]=2 bomber_bomb(round(x/16)*16,round(y/16)*16);
// if it's released, bomb throwing attempt
if global.bmb_hold[pid,4]=3 bomber_throw();
// if a special button is pressed, try to do a special
if global.bmb_hold[pid,6]=1 bomber_special();
// let bomberman walk
canwalk=1;
// walking is done in the worst working way possible, so no comments here.
dor=dir;
as=0;
as+=ceil(global.bmb_hold[pid,0]/10);
as+=ceil(global.bmb_hold[pid,1]/10);
as+=ceil(global.bmb_hold[pid,2]/10);
as+=ceil(global.bmb_hold[pid,3]/10);

damn=dor-2;
if damn<0 damn+=4;
if damn>3 damn-=4;
if global.bmb_hold[pid,damn]=2 bomber_move2(damn);

damn=dor-1;
if damn<0 damn+=4;
if damn>3 damn-=4;
if global.bmb_hold[pid,damn]=2 bomber_move2(damn);

damn=dor+1;
if damn<0 damn+=4;
if damn>3 damn-=4;
if global.bmb_hold[pid,damn]=2 bomber_move2(damn);

damn=dor;
if damn<0 damn+=4;
if damn>3 damn-=4;
if global.bmb_hold[pid,damn]=2 bomber_move2(damn);
// if bomberman is not walking, set the animation frame to standing
if canwalk=1 wks=0.9;

