module wheel(){
    c1 = 2.5;
    c2 = 2;
    half_height = 4/2;
    difference(){
        union(){
            cylinder(h=half_height, r1=c2, r2=c1, center=false, $fn=40);
            translate([0,0,-half_height]) cylinder(h=half_height, r1=c1, r2=c2, center=false, $fn=40);
        }
        translate([0,0,-4]) cylinder(h=8, r1=1, r2=1, center=false, $fn=40);
    }
}

wheel();