module small_stick()
{
    union(){
        // Main body of the part
        length = 50;
        width = 2;
        height = 5;
        base_height = 2;
        void_length = 6;
        difference() {
            cube(size=[length,width,height]);
            void_x = (length - void_length)/2;
            translate([void_x,-1,base_height]) cube(size=[void_length,5,10]);
        }
        
        // Base
        translate([0,-2.25,0]) cube(size=[50,6.5,2]);
    }
    
}



