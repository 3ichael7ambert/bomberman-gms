// bomb will update the markers so bots won't make some stupid mistakes
if pu!=0
  {
  for(i=0; i<pu; i+=1)
  with(chk[i]) instance_destroy();
  }
pp=0;
pu=0;
// left markers place
for(i=1; i<=firepower; i+=1)
  {
  if !create_checker(x-i*16,y/*,4,16*/) break;
  }
// right
for(i=1; i<=firepower; i+=1)
  {
  if !create_checker(x+i*16,y,/*4,12*/) break;
  }
// down
for(i=1; i<=firepower; i+=1)
  {
  if !create_checker(x,y+i*16,/*8,24*/) break;
  }
// up
for(i=1; i<=firepower; i+=1)
  {
  if !create_checker(x,y-i*16,/*8,20*/) break;
  }
alarm[1]=5;

/* */
/*  */
