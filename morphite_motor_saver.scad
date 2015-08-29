$fa=0.5;
$fs=0.5;

module arm() {
  union() {
  hull(){
    translate([-10, 5, 0])
      cylinder(r=2, h=3);
    translate([-6, -11, 0])      
      cylinder(r=2, h=3);
    translate([10, 5, 0])
      cylinder(r=2, h=3);
    translate([6, -11, 0])      
      cylinder(r=2, h=3);
    translate([-10, 0, 0])
      cube([20, 14, 3]);
  }
  translate([-10, 14, 0])
    cube([20, 40, 3]);
}
}

difference() {
  
  translate([0, 3.5, -0.5])
    difference() {
      cylinder(r=12, h=10);
      union() {
        translate([0, 1, 1])
          cylinder(r=11, h=10);
        translate([-7.5, 8, 1])
          #cube([15, 10, 10]);
      }  
    }
    #arm();
}