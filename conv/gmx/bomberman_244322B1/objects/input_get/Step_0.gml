for(p=0; p<=3; p+=1)
{
if ai[p]=0
  {
  if global.bmb_input[p]=input_keyboard
    {
    for(i=0; i<=6; i+=1)
      {
      if keyboard_check(global.bmb_key[p,i])
        {
        if global.bmb_hold[p,i]<2 global.bmb_hold[p,i]+=1;
        }
        else
        {
        if global.bmb_hold[p,i]=4 global.bmb_hold[p,i]=0;
        if global.bmb_hold[p,i]>0 global.bmb_hold[p,i]+=1;
        }
      }
    }
  if global.bmb_input[p]=input_pad1
    {
    for(i=0; i<=4; i+=1)
      {
      if gamepad_check(1,global.bmb_key[p,i])
        {
        if global.bmb_hold[p,i]<2 global.bmb_hold[p,i]+=1;
        }
        else
        {
        if global.bmb_hold[p,i]=4 global.bmb_hold[p,i]=0;
        if global.bmb_hold[p,i]>0 global.bmb_hold[p,i]+=1;
        }
      }
    }
  if global.bmb_input[p]=input_pad2
    {
    for(i=0; i<=4; i+=1)
      {
      if gamepad_check(2,global.bmb_key[p,i])
        {
        if global.bmb_hold[p,i]<2 global.bmb_hold[p,i]+=1;
        }
        else
        {
        if global.bmb_hold[p,i]=4 global.bmb_hold[p,i]=0;
        if global.bmb_hold[p,i]>0 global.bmb_hold[p,i]+=1;
        }
      }
    }
  }
}
