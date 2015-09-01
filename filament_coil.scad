$fa=0.5;
$fs=0.5;

module plate(){
  // Coil plate
  difference(){
    union(){
      difference(){
        cylinder(r=100, h=5);
        translate([0, 0, -1])
          cylinder(r=94, h=7);
      }
      cylinder(r=100, h=3);
      translate([0, 0, -28])
      cylinder(r=44, h=33);
    }
    translate([0, 0, -34])
      cylinder(r=27, h=40);
    }
  }

module coil() {
translate([0, 0, 28])
  union() {
    plate();
    translate([0, 0, -56])
    mirror([0, 0, 1])
      plate();
  }
}

coil();
