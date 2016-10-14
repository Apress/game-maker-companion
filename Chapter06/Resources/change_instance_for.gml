#define change_instance_for
{
    var with_obj, change_obj, perf_events;
    
    with_obj    = argument0;
    change_obj  = argument1;
    perf_events = argument2; 

    with( with_obj )
    {
        instance_change( change_obj, perf_events );
    }
}

