// direction
dir=0;
// player is invincible for 5 seconds
invincible=300;
// direction to display
sdir=0;
// bomberman changable parameters
if room=openarena
{
rui=choose(1,2,3);
bmbbombs=9;
bmbbombtype=0;
bmbfire=9;
bmbspeed=9;
bmbbombthru=-1;
bmbsoftthru=0;
bmbtoss=1;
bmbpunch=1;
}
else
{
rui=0;
bmbbombs=1;
bmbbombtype=0;
bmbfire=2;
bmbspeed=5;
bmbbombthru=0;
bmbsoftthru=0;
bmbtoss=0;
bmbpunch=0;
}
// is not carrying a bomb
carry=0;
carrytype=0;
carrytoalarm=0;
carryfirepower=0;
carryowner=0;
// temporary sum
sum=0;
// sprite
spr=0;
img=0;
wks=0.9;
// direction sprite row
drsy[0]=0;
drsy[1]=2;
drsy[2]=1;
drsy[3]=3;
// other things
global.mybombstoget[pid]=0;
