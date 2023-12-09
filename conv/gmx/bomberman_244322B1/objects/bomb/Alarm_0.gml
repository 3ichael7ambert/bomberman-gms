// explode
sound_play(explosion_snd);
speed=0;
move_snap(16,16);
th=instance_create(x,y,explosion);
th.typ=0;
// left explosion
for(i=1; i<=firepower; i+=1)
  {
  if !create_explosion(x-i*16,y,4,16) break;
  }
// right
for(i=1; i<=firepower; i+=1)
  {
  if !create_explosion(x+i*16,y,4,12) break;
  }
// down
for(i=1; i<=firepower; i+=1)
  {
  if !create_explosion(x,y+i*16,8,24) break;
  }
// up
for(i=1; i<=firepower; i+=1)
  {
  if !create_explosion(x,y-i*16,8,20) break;
  }
// give owner the bomb to limit
global.mybombstoget[owner]+=1;
instance_destroy();

