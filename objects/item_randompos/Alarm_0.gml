for(i=0; i<80; i+=1)
  {
  x=round(random(room_width)/16)*16;
  y=round(random(room_height)/16)*16;
  if !place_meeting(x,y,wall) and !place_meeting(x,y,softblock) and 
  !place_meeting(x,y,bomberman_parent) and 
  !place_meeting(x,y,bomb) and !place_meeting(x,y,item_obj) and 
  !place_meeting(x,y,explosion)
    {
    th=instance_create(x,y,item_obj);
    th.item=item;
    break;
    }
  }
