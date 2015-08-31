$fa=0.5;
$fs=0.5;

armheight=3.5;

module arm() {
  union() {
//  difference() {
    union() {
      hull(){
        translate([-9.8, 2.0, 0])
          cylinder(r=3, h=armheight);
        translate([9.8, 2.0, 0])
          cylinder(r=3, h=armheight);
        
        translate([-5, -12.7, 0])      
          cylinder(r=5, h=armheight);
        translate([5, -12.7, 0])      
          cylinder(r=5, h=armheight);
        
        translate([-9.5, 0, 0])
          cube([19, 10, armheight]);
      }
      
      translate([-9.5, 10, 0])
        cube([19, 40, armheight]);
    }
//    union() {
//      translate([0, 0, -0.1])
//        cylinder(r=3, h=armheight + 1);
//      translate([0, -7.7, -0.1])
//        cylinder(r=3.5, h=armheight + 1);
//      translate([4, 4, 0])
//        cylinder(r=1, h=armheight +1);
//      translate([-4, 4, 0])
//        cylinder(r=1, h=armheight +1);
//      translate([4, -4, 0])
//        cylinder(r=1, h=armheight +1);
//      translate([-4, -4, 0])
//        cylinder(r=1, h=armheight +1);
//    }
//  }
  }
}

difference() {
  difference() {
  translate([0, 0, -1])
    difference() {
      cylinder(r=14, h=11);
      union() {
        translate([0, 1, 1])
          cylinder(r=12, h=11);
        translate([-7.5, 8, 1])
          cube([15, 10, 11]);
        translate([-15, 1.5, 1])
          cube([30, 30, armheight]);
      }  
    }
    union() {
      translate([4, 4, -3])
        cylinder(r=1.1, h=armheight +3);
      translate([-4, 4, -3])
        cylinder(r=1.1, h=armheight +3);
      translate([4, -4, -3])
        cylinder(r=1.1, h=armheight +3);
      translate([-4, -4, -3])
        cylinder(r=1.1, h=armheight +3);
    }
  }
  #arm();
}