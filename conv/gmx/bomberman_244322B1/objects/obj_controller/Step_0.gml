if keyboard_check_pressed(k_menu)==true 
{
    if (pauseon=false)
    {
        pauseon=true;
        instance_deactivate_all(1); //disables all but the control object
    } 
    else
    {  
        instance_activate_all(); //reactivates all objects
        pauseon=false;
    }
}

if keyboard_check(vk_delete) then keyboard_key_press(vk_enter);

if keyboard_check_pressed(k_quit)==true and pauseon==true room_goto(menu_room) //exits the program

