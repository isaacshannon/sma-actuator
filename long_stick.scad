module long_stick()
{
    union(){
        // Main body of the part
        length = 50;
        width = 2;
        height = 5;
        base_height = 2;
        void_length = 1;
        difference() {
            cube(size=[length,width,height]);
        }
        
        // Base
        translate([0,-2.25,0]) cube(size=[50,6.5,2]);
    }
    
}

