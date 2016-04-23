// PRUSA iteration3
// X ends
// GNU GPL v3
// Josef Průša <josefprusa@me.com>
// Václav 'ax' Hůla <axtheb@gmail.com>
// http://www.reprap.org/wiki/Prusa_Mendel
// http://github.com/josefprusa/Prusa3

// ThingDoc entry
/**
 * @id xMotorEnd
 * @name X Axis Motor End
 * @category Printed
 */
 
/**
 * @id xIdlerEnd
 * @name X Axis Idler End
 * @category Printed
 */
 
include <x-end.scad>

module corner(l_corner, h_corner, lg_corner){
    translate([0, lg_corner, 0]) rotate([90, 0, 0]) linear_extrude(lg_corner) polygon([[0,0], [l_corner, 0], [0, h_corner]]);
}

x = 28;
union(){
    x_end_motor();
    difference(){
        translate([-6 - x, 11, 50]) cube([x,14,10]);
        translate([-3 - x, 11 + 7, 50.3]) cylinder(12, 1.7, 1.7, $fn=20);
        translate([-3- x-3.4, 11 + 7 -3.4, 49 + 4]) cube([6.8, 6.8, 3]);
        
    }
    translate([-6 - x + 12, 11, 50]) mirror([1,0,1])corner(12, 12, 2);
    translate([-6 - x + 14, 24, 50]) mirror([1,0,1])corner(14, 14, 1);
}