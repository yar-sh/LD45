///draw_rectangle_width(x1, y1, x2, y2, w)
var x1, x2, y1, y2, w;
x1 = argument0;
x2 = argument2;
y1 = argument1;
y2 = argument3;
w = argument4;
draw_line_width(x1 - w/2, y1, x2 + w/2, y1, w);
draw_line_width(x2, y1 + w/2, x2, y2 - w/2, w);
draw_line_width(x1 - w/2, y2, x2 + w/2, y2, w);
draw_line_width(x1, y1 + w/2, x1, y2 - w/2, w);
