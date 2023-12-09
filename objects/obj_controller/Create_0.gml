pauseon=false
// pause screen variable

menu        =   virtual_key_add(291, 3,25,17, k_menu);
escape      =   virtual_key_add(291,27,25,17, k_quit);
vkup        =   virtual_key_add(24,160,32,32, k_up );
vkright     =   virtual_key_add(48,184,32,32, k_right );
vkdown      =   virtual_key_add(24,208,32,32, k_down );
vkleft      =   virtual_key_add(0,184, 32,32, k_left );
//Simple Cardinal direction D-Pad, to add 8 dorections, duplicate the style bellow this.

bbutton3    =   virtual_key_add(292,160,28,28,k_dash);
bbutton6    =   virtual_key_add(288,182,32,36,k_dash);
bbutton9    =   virtual_key_add(292,212,28,28,k_dash);

xbutton1    =   virtual_key_add(242,160,28,28,k_shoot);
xbutton4    =   virtual_key_add(240,182,32,36,k_shoot);
xbutton7    =   virtual_key_add(240,212,28,28,k_shoot);

abutton7    =   virtual_key_add(242,212,28,28,k_jump);
abutton8    =   virtual_key_add(262,208,36,32,k_jump);
abutton9    =   virtual_key_add(292,212,28,28,k_jump);

ybutton1    =   virtual_key_add(242,160,28,28,k_special);
ybutton2    =   virtual_key_add(262,160,36,32,k_special);
ybutton3    =   virtual_key_add(292,160,28,28,k_special);


// 8 touch points, with each corner having overlapping copies so that pressing in a diagonal to hit two buttons activates them both, allowing the closest feasable digital controls.
// Layout follows           1   2   3
//                          4       6
//                          7   8   9

