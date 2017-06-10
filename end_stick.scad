module end_stick()
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
            term_voids = 4;
            term_void_length = (length-10)/(2*term_voids);
            for(i=[1:term_voids]){
                translate([term_void_length*i-term_void_length/2,-1,base_height]) cube(size=[1,5,10]);
            }
            for(i=[1:term_voids]){
                translate([length-(term_void_length*i-term_void_length/2)-1,-1,base_height]) cube(size=[1,5,10]);
            }
        }
        
        // Base
        translate([0,-2.25,0]) cube(size=[50,6.5,2]);
    }
    
}

end_stick();



