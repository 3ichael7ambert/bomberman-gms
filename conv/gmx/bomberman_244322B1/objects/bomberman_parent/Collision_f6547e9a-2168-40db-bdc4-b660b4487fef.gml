// if the powerup is under brick, stop
if other.visible=0 exit;
sum=0;
// depending on the powerup type, do the action
if other.item=0
  bmbbombs+=1;
if other.item=1
  bmbfire+=1;
if other.item=2
  if bmbspeed<14 bmbspeed+=1;
if other.item=4
  bmbbombthru=-1;
if other.item=5
  bmbtoss=1;
if other.item=6
  bmbpunch=1;
if other.item=7
  {
  if bmbbombtype=0
    bmbbombtype=1;
  if bmbbombtype=2
    bmbbombtype=3;
  }
if other.item=8
  bmbbombthru=1;
if other.item=9
  bmbsoftthru=1;
if other.item=10
  {
  if bmbbombtype=0
    bmbbombtype=2;
  if bmbbombtype=1
    bmbbombtype=3;
  }
if other.item=11
  bmbfire=20;
// rui here! you can add new kinds to randomize
if other.item=12
  {
  // if not carrying anything, sit on rui
  if carry=0 and rui=0
    {
    x=other.x;
    y=other.y;
    rui=choose(1,2,3);
    spr=3;
    img=0;
    invincible=60;
    }
    else
    sum=1;
  }
  else
  {
  sound_play(itempick_snd);
  }

// destroy the powerup object if it has to be destroyed
if sum=0 with(other) instance_destroy();
