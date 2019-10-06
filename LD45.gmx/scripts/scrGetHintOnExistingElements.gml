for(var i = 0; i < ds_list_size(data.unlocked_recipes); i++)
{
    if !data.unlocked_recipes[| i]
    {
        inputs =ds_list_create()
 show_debug_message("found locked: " + scrGetElementTypeStr(i + 1))
       
        // get ingridients for the locked recipe
        for(var j = 2, it =0; j < ds_grid_width(data.recipes); j++)
        {
                elem = ds_grid_get(data.recipes, j, i - data.starting_elements)
                if elem == 0 break
                 show_debug_message("--ingridient: " + scrGetElementTypeStr(elem))
       
                
                inputs[| (it++)] = elem // at this point this is enum element_type
          }
        
        
        // got through recipes and see if the ingridients are available
        var allAvailable = true;
        for(var j = 0; j < ds_list_size(inputs); j++)
        {
            if !data.unlocked_recipes[| (inputs[| j] - 1)]
               {
                allAvailable = false;
                break
               }
        }
        
        if allAvailable
        {
            for(var j = 0; j < ds_list_size(inputs); j++)
            {
             var checkType = inputs[| j]
                with objElement
                {
                    if type == checkType
                    {
                        //ping this object
                        event_user(4)
                    }
                }
            }

         exit
        }

        
        ds_list_destroy(inputs)
    }
}
