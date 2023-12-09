get_bomberman_sprite();
// display walking sprite
if spr=0 or spr=4
  {
  if floor(wks)=4 wks-=4;
  img=floor(wks);
  if img=0 sum=0+carry*(sprx*6);
  if img=1 sum=sprx+carry*(sprx*6);
  if img=2 sum=0+carry*(sprx*6);
  if img=3 sum=sprx*2+carry*(sprx*6);
  if rui!=0 and sdir=0 draw_sprite_part(sprd2,0,sprx2*4,drsy[sdir]*sprx2,sprx2-1,sprx2-1,x-((sprx2-1)/2-8),y-((sprx2-1)-16)-14);
  draw_sprite_part(sprd,0,sum,drsy[sdir]*sprx,sprx-1,sprx-1,x-((sprx-1)/2-8),y-((sprx-1)-16));
  if rui!=0 and sdir!=0 draw_sprite_part(sprd2,0,sprx2*4,drsy[sdir]*sprx2,sprx2-1,sprx2-1,x-((sprx2-1)/2-8),y-((sprx2-1)-16)-14);
  if carry=1 and carrytype=0 draw_sprite(bomb_normal,0,x,y-16);
  if carry=1 and carrytype=1 draw_sprite(bomb_bouncy,0,x,y-16);
  if carry=1 and carrytype=2 draw_sprite(bomb_red,0,x,y-16);
  if carry=1 and carrytype=3 draw_sprite(bomb_redbouncy,0,x,y-16);
  }
// display stunned sprite
if spr=1
  {
  if round(img)=0 sum=0;
  if round(img)=1 sum=3;
  if round(img)=2 sum=5;
  if round(img)=3 sum=6;
  if round(img)=4 sum=7;
  if round(img)=5 sum=7;
  if round(img)=6 sum=6;
  if round(img)=7 sum=5;
  if round(img)=8 sum=3;
  if round(img)=9 sum=0;
  if round(img)=10 sum=2;
  if round(img)=11 sum=3;
  if round(img)=12 sum=4;
  if round(img)=13 sum=4;
  if round(img)=14 sum=3;
  if round(img)=15 sum=2;
  if round(img)=16 sum=0;
  if round(img)=17 sum=1;
  if round(img)=18 sum=2;
  if round(img)=19 sum=1;
  if round(img)=20 sum=0;
  if round(img)=21 sum=1;
  if round(img)=22 sum=0;
  if rui!=0 and sdir=0 draw_sprite_part(sprd2,0,0,sprx2*4,sprx2-1,sprx2-1,x-((sprx2-1)/2-8),y-((sprx2-1)-16)-14-sum*2);
  draw_sprite_part(sprd,0,0,sprx*4,sprx-1,sprx-1,x-((sprx-1)/2-8),y-((sprx-1)-16)-sum);
  if rui!=0 and sdir!=0 draw_sprite_part(sprd2,0,0,sprx2*4,sprx2-1,sprx2-1,x-((sprx2-1)/2-8),y-((sprx2-1)-16)-14-sum*2);
  }
// display punching sprite
if spr=2
  {
  if rui!=0 and sdir=0 draw_sprite_part(sprd2,0,sprx2*4,drsy[sdir]*sprx2,sprx2-1,sprx2-1,x-((sprx2-1)/2-8),y-((sprx2-1)-16)-14);
  draw_sprite_part(sprd,0,sprx*5,drsy[sdir]*sprx,sprx-1,sprx-1,x-((sprx-1)/2-8),y-((sprx-1)-16));
  if rui!=0 and sdir!=0 draw_sprite_part(sprd2,0,sprx2*4,drsy[sdir]*sprx2,sprx2-1,sprx2-1,x-((sprx2-1)/2-8),y-((sprx2-1)-16)-14);
  }
// display jumpin on or off rui sprite
if spr=3
  {
  if img=0 sum=0;
  if img=1 sum=9;
  if img=2 sum=17;
  if img=3 sum=23;
  if img=4 sum=28;
  if img=5 sum=32;
  if img=6 sum=35;
  if img=7 sum=37;
  if img=8 sum=38;
  if img=9 sum=39;
  if img=10 sum=39;
  if img=11 sum=40;
  if img=12 sum=40;
  if img=13 sum=40;
  if img=14 sum=39;
  if img=15 sum=39;
  if img=16 sum=38;
  if img=17 sum=37;
  if img=18 sum=35;
  if img=19 sum=32;
  if img=20 sum=28;
  if img=21 sum=23;
  if img=22 sum=17;
  if img=23 sum=14;
  if img=24 sum=14;
  if rui!=0
    {
    if sdir=0 draw_sprite_part(sprd2,0,sprx2*3,drsy[sdir]*sprx2,sprx2-1,sprx2-1,x-((sprx2-1)/2-8),y-((sprx2-1)-16)-sum);
    draw_sprite_part(sprd,0,0,drsy[sdir]*sprx,sprx-1,sprx-1,x-((sprx-1)/2-8),y-((sprx-1)-16));
    if sdir!=0 draw_sprite_part(sprd2,0,sprx2*3,drsy[sdir]*sprx2,sprx2-1,sprx2-1,x-((sprx2-1)/2-8),y-((sprx2-1)-16)-sum);
    }
    else
    {
    draw_sprite_part(sprd,0,sprx*3,drsy[sdir]*sprx,sprx-1,sprx-1,x-((sprx-1)/2-8),y-((sprx-1)-16)-sum);
    }
  }
