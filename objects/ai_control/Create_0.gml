// -- AI CONTROLLER --
// automaticly sets controlling values for the input variables from input_get object
alarm[0]=2;
// set the timers
alarm[1]=15;
alarm[2]=random(10);
// set the ai off for a while
aimode=ai_off;
aiwait=0;
// create a path for pathfinding
my_path=path_add();
// other
escapex=-1;
escapey=-1;
// antibugs
prevx=-1;
prevy=-1;
stayed=0;
