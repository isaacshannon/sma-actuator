module small_stick_mate()
{
    full_length = 54;
    full_width = 6.5;
    void_length = full_length-3;
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
      
       // Central connection
       connection_length = 4;
       connection_x = (full_length/2 - connection_length/2);
       translate([connection_x,0,0]) cube(size=[connection_length,full_width,1]); 
       
       // Spacers
       spacer_height = 0.5;
       spacer_length = 5;
       spacer_width = (full_width-void_width)/2;
       spacer_x = full_length-spacer_length;
       spacer_y = (full_width-void_width)/2 + void_width;
       translate([0,0,1]) cube(size=[spacer_length,spacer_width,spacer_height]);
       translate([spacer_x,0,1]) cube(size=[spacer_length,spacer_width,spacer_height]);  
       translate([0,spacer_y,1]) cube(size=[spacer_length,spacer_width,spacer_height]); 
       translate([spacer_x,spacer_y,1]) cube(size=[spacer_length,spacer_width,spacer_height]); 
        
       translate([26,0,1]) cube(size=[2,6.5,spacer_height]); 
    }
}

small_stick_mate();