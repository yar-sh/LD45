var i = 0; 
for (;i < ds_list_size(argument0)-1; i++)
{
newX = argument0[|i ]
newY = argument1[| i]
    draw_line_width(argument0[|i ], argument1[| i], argument0[| (i+1)], argument1[| (i+1)], argument2)
}

draw_line_width(argument0[| i], argument1[| i], argument0[| 0], argument1[| 0], argument2)

i = 0
