include <long_stick.scad>;
include <small_stick.scad>;
include <end_stick.scad>;

distance = 19;
num = 2;

module holder(){
    // Y holders
    translate([-10,-23,0]) cube(size=[4,152,4]);
    translate([56,-23,0]) cube(size=[4,152,4]);
    
    // X holders
    for (i=[0:num]){
        translate([-10,distance*2*i,0])  cube(size=[70,2,2]);
        translate([-10,distance*(2*i+1),0])  cube(size=[70,2,2]);
    }
    
    // End X holders
    translate([-10,distance*-1,0])  cube(size=[70,2,2]);
    translate([-10,distance*2*(num+1),0])  cube(size=[70,2,2]);
}


translate([0,distance*-1,0]) end_stick();
for (i=[0:num]){
    translate([0,distance*(2*i+1),0]) long_stick();
    translate([0,distance*2*i,0]) small_stick();  
}
translate([0,distance*2*(num+1),0]) end_stick();

holder();