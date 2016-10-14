#define check_object_returned
// Function provides an alternative to "Check Object" which checks for objects AND records the collided object
{
    var check_obj, xcheck, ycheck, rel_flag, result;

    check_obj   = argument0;
    xcheck      = argument1;
    ycheck      = argument2;
    rel_flag    = argument3;
      
    if( rel_flag == true )
    {
        xcheck += x;
        ycheck += y;
    }
      
    returned = instance_place( xcheck, ycheck, check_obj ); 
     
    if( returned > 0 )
        return true;
    else
        return false;
}

