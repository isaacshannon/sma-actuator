module small_stick_mate()
{
    full_length = 56;
    full_width = 6.5;
    void_length = 51;
    void_width = full_width-3;
    thickness = 1;
    union(){
        // Main body of the part
        difference() {
            cube(size=[full_length,full_width,thickness]);
            void_x = (full_length - void_length)/2;
            void_y = (full_width -void_width)/2;
            translate([void_x,void_y,-1]) cube(size=[void_length,void_width,10]);
        }
       
       // Spacers
       spacer_height = 0.5;
       spacer_length = 2;
       spacer_width = 6.5;
       spacer_x = full_length-spacer_length;
       spacer_y = (full_width-void_width)/2 + void_width;
       translate([10,0,1]) cube(size=[36,1.5,spacer_height]);
       translate([10,5,1]) cube(size=[36,1.5,spacer_height]);
       
       translate([0,0,1]) cube(size=[spacer_length,spacer_width,spacer_height]);
       translate([spacer_x,0,1]) cube(size=[spacer_length,spacer_width,spacer_height]); 
    }
}

small_stick_mate();