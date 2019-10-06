

colliding_num = ds_list_size(argument0)

for (var i = 0; i < ds_grid_height(data.recipes); i++)
{
    var recipe_inputs = 0;

    for (var j = 2; j < ds_grid_width(data.recipes); j++)
    {
        if ds_grid_get(data.recipes, j, i) == 0
           break
        
         recipe_inputs++   
    }

    if recipe_inputs != colliding_num 
       continue
        
    var recipeMatch = true
    temp = ds_grid_create(ds_grid_width(data.recipes), 1)
    
    for (var gek = 0; gek < ds_grid_width(temp); gek++)
    {
        ds_grid_set(temp, gek, 0, false)
    }
    
    for (var j = 0; j < ds_list_size(argument0); j++)
    {
        var inRecipe = false
        for (var k = 2; k  < recipe_inputs + 2; k++)
        {
            if (!ds_grid_get(temp, k - 2, 0) && ds_grid_get(data.recipes, k, i) == argument0[| j].type)
            {
              ds_grid_set(temp, k - 2, 0, true)
                inRecipe = true 
                break
            } 
        }
        
        if !inRecipe
        {
            recipeMatch = false;
            break
        }
    } 
    ds_grid_destroy(temp)
    if recipeMatch
    {
        return i
    }
}

return -1

