if (argument0 < 0 || argument0 >= ds_grid_height(data.recipes))
   return noone
show_debug_message("creating: " + scrGetElementTypeStr(ds_grid_get(data.recipes, 0, argument0)))
obj = instance_create(objCrucible.x, objCrucible.y, objElement)
obj.type = ds_grid_get(data.recipes, 0, argument0)
obj.color = ds_grid_get(data.recipes, 1, argument0)

return obj.id
