
module example002()
{
	difference(){
	difference(){
		cylinder(h = 12, r1 = 19.5, r2 = 19.5, center = true);
		translate([0,0,-6]){
		cube([5,3,15], center = true);
		}
	}
	translate([0,0,4]){
		//cylinder(h = 6, r1=7, r2=7, center = true);
		hexagon(10, 6);
	}
	}
	
}

module hexagon(size, height) {
  boxWidth = size/1.75;
  for (r = [-60, 0, 60]) rotate([0,0,r]) cube([boxWidth, size, height], true);
}

example002();

