// Parametric Shelf Bracket
// 
// Copyright (C) 2024 nomike[AT]nomike[DOT]com
// 
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

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

