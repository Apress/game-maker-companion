#define move_to_contact_with
// An alternative to the "Move To Contact" action that allows for contact with a specified object / instance
{
    var dirn, max_dist, contact_obj, dx, dy;

    dirn        = argument0;
    max_dist    = argument1;
    contact_obj = argument2;
    
    if( max_dist == -1 ) then max_dist = 1000;

    dx = lengthdir_x( 1, dirn );
    dy = lengthdir_y( 1, dirn );
    
    dist = 1;
      
    while( dist <= max_dist )
    { 
        if( place_meeting( x+dx, y+dy, contact_obj ) == true ) then return true;
        x = x + dx;
        y = y + dy;
        dist = dist + 1;
    }   
   
    return false;
}

