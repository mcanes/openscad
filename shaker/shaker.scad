//$fa=0.5;
//$fs=0.5;


module base() {
  union() {
    difference() {
      cube([60, 60, 90]);
      translate([61, 30, 30])
      rotate([0, -90, 0])
        rpivot(5.5, 25.5, 5.5);
    }
  }
}

module pivot(height, br, sr) {
  union() {
    difference() {
      rpivot(height, br, sr);
      cylinder(h=11, r=1);
      translate([0, 0, 7.4])
        rotate([0, 90, 0])
          cylinder(h=sr+1, r=1);
    }
  }
} 

module rpivot(height, br, sr) {    
  union() {
    cylinder(h=height, r=25);
      translate([0, 0, 5])
        cylinder(h=height, r=5);
  }
}

module bar() {
  cube([70, 25, 5]);
  translate([75/2, 0, 5])
    translate()
    rotate([0, -90, 0])
    difference() {
      union() {
        cube([25, 25, 5]);
        translate([12.5, 0, 0])
          difference() {
            cylinder(r=3, h=5);
            cylinder(r=1, h=6);
          }
        translate([12.5, 25, 0])
          difference() {
            cylinder(r=3, h=5);
            cylinder(r=1, h=6);
          }
      }
      translate([12.5, 12.5, -0.5])
        cylinder(r=10, h=6);
    }
}

module holder() {
      union() {
        cube([25, 30, 5]);
        translate([12.5, 0, 0])
          difference() {
            cylinder(r=3, h=5);
            cylinder(r=1, h=6);
          }
        translate([12.5, 30, 0])
          difference() {
            cylinder(r=3, h=5);
            cylinder(r=1, h=6);
          }
      }
      translate([12.5, 15, 0])
        cylinder(r=12, h=5.5);
      translate([12.5, 15, 0])
        cylinder(r=9, h=5.7);
      translate([12.5, 15, 0])
        cylinder(r=6, h=5.9);
    
}

//holder();
//bar();
pivot(5, 25, 5);
