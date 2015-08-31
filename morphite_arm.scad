$fa=0.5;
$fs=0.5;

armheight=3.0;

module arm() {
  union() {
  difference() {
    union() {
      hull(){
        translate([-9.5, 1.9, 0])
          cylinder(r=3, h=armheight);
        translate([9.5, 1.9, 0])
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
    union() {
      translate([0, 0, -0.1])
        cylinder(r=3, h=armheight + 1);
      translate([0, -7.7, -0.1])
        cylinder(r=3.5, h=armheight + 1);
      translate([4, 4, 0])
        cylinder(r=1, h=armheight +1);
      translate([-4, 4, 0])
        cylinder(r=1, h=armheight +1);
      translate([4, -4, 0])
        cylinder(r=1, h=armheight +1);
      translate([-4, -4, 0])
        cylinder(r=1, h=armheight +1);
    }
  }
  }
}

arm();