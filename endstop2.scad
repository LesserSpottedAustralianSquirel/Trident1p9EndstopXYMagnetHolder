
// set resolution
//$fn=300;
$fn=300;

difference()
{

 // add a cylinder to the stl
 union()
 {

 // get the stl into the centre    
 translate([-150,-150,0])
 // get the cut out in the centre
 translate([-4.45,-7.9,0])
 // load the stl at this point  
 // if this does not work put the entire path in instead of ./
 import("./[a]_y_endstop_bumper.stl");

 // Add a cylinder for the head
 cylinder(d=10,h=9);    

 }


// remove the magent hole
// my magnet is 3.5mm deep and 6mm diameter
cylinder(d=6,h=3.5)    ;
 
// make the magnet hole an arch
translate([0,0,3.5])
sphere(d=6);


 
// remove a push out hole 
 // also doubles as a M3/5mm screw hole which 
cylinder(d=2.8,h=10);    

    
translate([0,0,8.5])    
// remove a screw head hole
cylinder(d=10,h=10);    
 
 
    
    
    
}