// remove the controller if there is no proper obj set
if !instance_exists(obj) { instance_destroy(); exit; }
// set position to the bot's real position
x=obj.x+8;
y=obj.y+8;
// set a player as ai
input_get.ai[player]=1;
// set the ai mode
aimode=ai_playerfollow;
// set the object target
do {
    aitarget=choose(bomberman1,bomberman2,bomberman3,bomberman4,
    bomberman5,bomberman6,bomberman7,bomberman8,bomberman9,
    bomberman10,bomberman11,bomberman12,bomberman13,
    bomberman14,bomberman15,bomberman16);
}until(aitarget!=obj and instance_exists(aitarget))
// set the position target
aitargetx=aitarget.x;
aitargety=aitarget.y;
