difference() {

 cube([75, 150, 2]);
 
 // Motor shaft   
 translate([75/2, 75/2, -1])
 cylinder(d = 6.1, h = 4);   
    
 // Motor holders   
 translate([75/2 - 7, 75/2, -1])
 cylinder(d = 2, h = 4);
 translate([75/2 + 7, 75/2, -1])
 cylinder(d = 2, h = 4);
   
 // Base holders
 translate([10, 10, -1])
 cylinder(d = 6, h = 4);
 translate([10, 150 - 10, -1])
 cylinder(d = 6, h = 4);
 translate([75 - 10 , 10, -1])
 cylinder(d = 6, h = 4);
 translate([75 - 10, 150 - 10, -1])
 cylinder(d = 6, h = 4);
 
 // hole
 translate([75/2 - 1.5, 50, -1])
 cube([3, 90, 4]);
}