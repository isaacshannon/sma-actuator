module support(){
    length = 100;
    width = 8;
    height = 14;
    void_width = 4;
    void_length = length+2;
    wheel_void_width = 4;
    wheel_void_length = 18;
    union(){
        difference(){
            cube([width, length, height]);
            
            // Wire void
            translate([(width-void_width)/2, -1 ,-2]) cube([void_width, void_length, 20]);
            
            // Wheel void
            translate([(width-wheel_void_width)/2, -1 ,-2]) cube([wheel_void_width, wheel_void_length, 20]);
            
            axle_r = 0.5;
            // Axle 1
            translate([-1, 4 ,10]) rotate([0, 90, 0]) cylinder(h=60, r1=axle_r, r2=axle_r, center=false, $fn=40);
            
            // Axle 2
            translate([-1, 4 ,4]) rotate([0, 90, 0]) cylinder(h=60, r1=axle_r, r2=axle_r, center=false, $fn=40);
        }
        
        // Rear wire support
        translate([0, length, height/2]) rotate([0, 90, 0]) cylinder(h=width/2, r1=height/2, r2=height/3, center=false, $fn=40);
        translate([width/2, length, height/2]) rotate([0, 90, 0]) cylinder(h=width/2, r1=height/3, r2=height/2, center=false, $fn=40);
    }
}

support();