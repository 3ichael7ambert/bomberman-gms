// before a move, reset all controls.
control_reset(player);

// if ai is off, stop
if aimode=ai_off exit;

// if bot is dead, stop.
if !instance_exists(obj) exit;
if !instance_exists(aitarget)
  {
  if instance_number(bomberman_parent)=1
    {
    instance_destroy();
    exit;
    }
  do {
    aitarget=choose(bomberman1,bomberman2,bomberman3,bomberman4,
    bomberman5,bomberman6,bomberman7,bomberman8,bomberman9,
    bomberman10,bomberman11,bomberman12,bomberman13,
    bomberman14,bomberman15,bomberman16);
    }until(aitarget!=obj and instance_exists(aitarget))
  }
// if there are more bombermen on battlefield than 1 and the distance to the nearest enemy is smaller
// than 120, then change the target to him.
if instance_number(bomberman_parent)>1
  {
  with(obj)
  if distance_to_object(instance_nearest(x,y,bomberman_parent))<120
    {
    aitarget=instance_nearest(x,y,bomberman_parent);
    }
  }

// if ai is in sleep mode, then quit
if aiwait>0
  {
  aiwait-=1;
  exit;
  }
  
// attack modes are checked before because they shouldn't be stopped by escaping.
if aimode=ai_toss
  {
  global.bmb_hold[player,4]=1;
  aimode=ai_toss2;
  aiwait=2;
  exit;
  }
if aimode=ai_toss2
  {
  global.bmb_hold[player,4]=3;
  aimode=ai_playerfollow;
  aiwait=2;
  exit;
  }
  
// check if the place bomberman is standing on is safe and is not already escaping
if aimode!=ai_bombescape
{
if place_meeting(round(obj.x/16)*16,round(obj.y/16)*16,notsafe_place) or place_meeting(round(obj.x/16)*16,round(obj.y/16)*16,bomb)
  {
  // if it is, look for a way to escape
  ai_anyscapeawayy(round(obj.x/16),round(obj.y/16));
  // and set the proper mode
  aimode=ai_bombescape;
  // reset position
  x=obj.x+8;
  y=obj.y+8;
  }
}

// depending on the mode, set the controls

// if ai has to walk randomly...
if aimode=ai_randomwalk
  {
  // set the path from the marker to the enemy
  mp_grid_path(global.mpgrid,my_path,x,y,aitargetx,aitargety,0);
  path_set_kind(my_path,0);
  path_set_precision(my_path,0);
  // run thru the path
  path_start(my_path,get_speed(obj.bmbspeed),0,0);
  // stop the marker if it's too far away from the bot it's controling
  if distance_to_object(obj)>10
    path_speed=0;
    else
  if distance_to_object(obj)>5
    path_speed=get_speed(obj.bmbspeed)/2;
    else
    path_speed=get_speed(obj.bmbspeed);
  // snap to the grid for more precision
  move_snap(get_speed(obj.bmbspeed),get_speed(obj.bmbspeed));
  // round the target for bot to follow
  aitargetx=round((x-8)/16)*16;
  aitargety=round((y-8)/16)*16;
  // if the bot is near enough to the goal change the ai mode
  if round(obj.x/16)*16=round(aitarget.x/16)*16 or round(obj.y/16)*16=round(aitarget.y/16)*16
    {
    aimode=ai_playerfollow;
    }
  // and make him walk
  ai_follow(1,1);
  }
  else
// if ai has to get a powerup...
if aimode=ai_powerupget
  {
  // set the path from the marker to the powerup
    ass=instance_nearest(obj.x+8,obj.y+8,item_obj);
  if !instance_exists(ass)
    {
    // ...then change the mode
    x=obj.x+8;
    y=obj.y+8;
    aimode=ai_playerfollow;
    }
    else
    {
  if point_distance(obj.x,obj.y,ass.x,ass.y)>90
    aimode=ai_playerfollow;
  mp_grid_path(global.mpgrid,my_path,x,y,ass.x+8,ass.y+8,0);
  path_set_kind(my_path,0);
  path_set_precision(my_path,0);
  // run thru the path
  path_start(my_path,get_speed(obj.bmbspeed),0,0);
  // stop the marker if it's too far away from the bot it's controling
  if distance_to_object(obj)>10
    path_speed=0;
    else
  if distance_to_object(obj)>5
    path_speed=get_speed(obj.bmbspeed)/2;
    else
    path_speed=get_speed(obj.bmbspeed);
  // snap to the grid for more precision
  move_snap(get_speed(obj.bmbspeed),get_speed(obj.bmbspeed));
  // round the target for bot to follow
  aitargetx=round((x-8)/16)*16;
  aitargety=round((y-8)/16)*16;
  // and make him walk
  ai_follow(1,1);
  }
  }
// if ai has to follow a player...
if aimode=ai_playerfollow
  {
  // set the path from the marker to the enemy
  mp_grid_path(global.mpgrid,my_path,x,y,aitarget.x+8,aitarget.y+8,0);
  path_set_kind(my_path,0);
  path_set_precision(my_path,0);
  // if there are powerups on map
  if instance_number(item_obj)>0
    {
    ass=instance_nearest(obj.x+8,obj.y+8,item_obj);
    // and if hero is near powerup, try to get it
    if point_distance(obj.x,obj.y,ass.x,ass.y)<=90
      aimode=ai_powerupget;
    }
  // run thru the path
  path_start(my_path,get_speed(obj.bmbspeed),0,0);
  // stop the marker if it's too far away from the bot it's controling
  if distance_to_object(obj)>10
    path_speed=0;
    else
  if distance_to_object(obj)>5
    path_speed=get_speed(obj.bmbspeed)/2;
    else
    path_speed=get_speed(obj.bmbspeed);
  // snap to the grid for more precision
  move_snap(get_speed(obj.bmbspeed),get_speed(obj.bmbspeed));
  // round the target for bot to follow
  aitargetx=round((x-8)/16)*16;
  aitargety=round((y-8)/16)*16;
  // if the bot is near enough to the enemy and is in the same row, attack
  if round(obj.x/16)*16=round(aitarget.x/16)*16 or round(obj.y/16)*16=round(aitarget.y/16)*16
    {
    with(obj)
      {
      if distance_to_object(other.aitarget)<(bmbfire-1)*16
        {
        global.bmb_hold[other.player,4]=2;
        aiwait=3;
        }
      }
    }
  // and make him walk
  ai_follow(1,1);
  }
  else
// if ai has to escape from the bomb blast...
if aimode=ai_bombescape
  {
  // do the extacly same things but the target is the safe place
  mp_grid_path(global.mpprecisegrid,my_path,x,y,escapex*16+8,escapey*16+8,0);
  path_set_kind(my_path,0);
  path_set_precision(my_path,0);
  // if escape option, change mode
  if escapex=-1 and escapey=-1
    {
    aimode=ai_playerfollow;
    x=obj.x+8;
    y=obj.y+8;
    }
  path_start(my_path,get_speed(obj.bmbspeed),0,0);
  if distance_to_object(obj)>10
    path_speed=0;
    else
  if distance_to_object(obj)>5
    path_speed=get_speed(obj.bmbspeed)/2;
    else
    path_speed=get_speed(obj.bmbspeed);
  move_snap(get_speed(obj.bmbspeed),get_speed(obj.bmbspeed));
  aitargetx=round((x-8)/16)*16;
  aitargety=round((y-8)/16)*16;
  // the second difference is that bomberman shouldn't bomb anything in the way
  // and can step in the bomb blast marker (because he would just stop and wait
  // for the death - the game wouldn't be fun then)
  ai_follow(0,0);
  if round(obj.x/16)=escapex and round(obj.y/16)=escapey
    {
    aimode=ai_playerfollow;
    }
  }
if instance_place(round((x-8)/16)*16,round((y-8)/16)*16,wall)
  {
  x=xprevious;
  y=yprevious;
  }

