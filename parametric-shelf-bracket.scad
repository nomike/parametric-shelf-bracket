include <screw_holes.scad>;

width = 10;
height = 10;
length = 25;
hole_count = 2;
screw_m = M3;


hole_distance = length / hole_count;
end_hole_distance = hole_distance / 2;
module holes() {
      for(i=[0:hole_count - 1]) {
          color("blue") translate([0, end_hole_distance + (i * hole_distance), height / 2]) rotate([0, 90, 0]) screw_hole(iso=ISO14581, m=screw_m, L=width, b=0);
      }
}

difference() {
    color("red") cube([width, length, height]);
    holes();
}

