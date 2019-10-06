var ret = 0

for(var i = 0; i < ds_list_size(data.existing_elements); i++)
{
    obj = data.existing_elements[| i]
    if obj.type == argument0
{       ret++
}
}

return ret
