// if ai is off, stop
if aimode=ai_off exit;
if !instance_exists(obj) exit;

if round(prevx/16)=round(obj.x/16) and round(prevy/16)=round(obj.y/16)
  {
  stayed+=1;
  }
  else
  {
  stayed=0;
  }
if stayed>30
  {
  x=obj.x+8;
  y=obj.y+8;
  stayed=0;
  }
