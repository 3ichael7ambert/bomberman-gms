if aimode=ai_off exit;
if !instance_exists(obj) exit;
if obj.rui!=0 exit;

// try to attack the enemy in other ways
if aimode=ai_playerfollow
  {
  // if has a throw powerup
  if obj.bmbtoss=1
    {
    // if in same row with enemy
    if round(obj.x/16)*16=round(aitarget.x/16)*16
    or round(obj.y/16)*16=round(aitarget.y/16)*16
      {
      // if there is a way to escape and is close enough
      if ai_anyescapeaway(round(obj.x/16),round(obj.y/16),1)
      and point_distance(obj.x,obj.y,aitarget.x,aitarget.y)<60
        {
        // throw a bomb
        aimode=ai_toss;
        aiwait=3;
        global.bmb_hold[player,4]=2;
        }
      }
    }
  }
alarm[2]=5;
