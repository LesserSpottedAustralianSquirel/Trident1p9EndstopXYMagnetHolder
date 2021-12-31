
// set resolution
$fn=50;


difference()
{

// get the stl into the centre    
translate([-150,-150,0])
// get the cut out in the centre
translate([-4.45,-7.9,0])
// load the stl at this point  
// if this does not work put the entire path in instead of ./
import("./[a]_y_endstop_bumper.stl");

// remove the magent hole
// my magnet is 3.5mm deep and 6mm diameter
cylinder(d=6,h=3.5)    ;
    
}