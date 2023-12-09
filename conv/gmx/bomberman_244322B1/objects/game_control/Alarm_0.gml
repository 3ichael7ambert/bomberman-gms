// change the amount of items on in the blocks here
items[0]=10; // additional bomb to set
items[1]=10; // additional firepower
items[2]=10; // additional speed
items[3]=0;  // skull (none because they are not completed and won't be in example)
items[4]=3;  // bomb kick
items[5]=3;  // bomb toss
items[6]=3;  // bomb punch
items[7]=2;  // bouncy bomb
items[8]=1;  // walking thru the bombs
items[9]=1;  // walking thru the soft blocks
items[10]=2; // red bomb
items[11]=2; // max firepower
items[12]=3; // ruis

for(i=0; i<=12; i+=1)
  {
  repeat(items[i])
    {
    if instance_number(softblock)>0 and instance_number(item_obj)<instance_number(softblock) {
    do
      {
      x=round(random(room_width)/16)*16;
      y=round(random(room_height)/16)*16;
      }
    until(place_meeting(x,y,softblock) and !place_meeting(x,y,item_obj));
    th=instance_create(x,y,item_obj);
    th.item=i;
    }
    }
  }
