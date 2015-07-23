module roundBoxStrong(width, length, height, smooting){
    roundBox(width, length, height, smooting);
    translate([width/2-2,0,height/2])
    cube([1,1,height], center=true);
    translate([-width/2+2,0,height/2])
    cube([1,1,height], center=true);
    
    translate([0,length/2-2,height/2])
    cube([1,1,height], center=true);
    translate([0,-length/2+2,height/2])
    cube([1,1,height], center=true);
}

module roundBox(width, length, height, smooting){
    
    translate([0,0,height/2]){
        difference(){
            roundedBox([width,length,height], smooting, true);
            translate([0,0,2]){
                roundedBox([width-3,length-3,height+2], smooting, true);
            }    
        }    
    }   
}
module cover(width, length, height, smooting){
    difference(){
    union(){
    translate([0,0,height]){
        roundedBox([width-3,length-3,2], smooting, true);
        translate([0,0,2]){
            roundedBox([width,length,2], smooting, true);
        }    
    } 
 }
 translate([0,0,height-0.1])
 cube([width,length/2,2], center=true);   
 
 translate([0,0,height-0.1])
 cube([width/2,length,2], center=true);
 
 translate([0,0,height-0.1])
 cube([width/1.5,length/1.5,2], center=true);
 }
}
module roundedBox(size, radius, sidesonly)
{
	rot = [ [0,0,0], [90,0,90], [90,90,0] ];
	if (sidesonly) {
		cube(size - [2*radius,0,0], true);
		cube(size - [0,2*radius,0], true);
		for (x = [radius-size[0]/2, -radius+size[0]/2],
				 y = [radius-size[1]/2, -radius+size[1]/2]) {
			translate([x,y,0]) cylinder(r=radius, h=size[2], center=true);
		}
	}
	else {
		cube([size[0], size[1]-radius*2, size[2]-radius*2], center=true);
		cube([size[0]-radius*2, size[1], size[2]-radius*2], center=true);
		cube([size[0]-radius*2, size[1]-radius*2, size[2]], center=true);

		for (axis = [0:2]) {
			for (x = [radius-size[axis]/2, -radius+size[axis]/2],
					y = [radius-size[(axis+1)%3]/2, -radius+size[(axis+1)%3]/2]) {
				rotate(rot[axis]) 
					translate([x,y,0]) 
					cylinder(h=size[(axis+2)%3]-2*radius, r=radius, center=true);
			}
		}
		for (x = [radius-size[0]/2, -radius+size[0]/2],
				y = [radius-size[1]/2, -radius+size[1]/2],
				z = [radius-size[2]/2, -radius+size[2]/2]) {
			translate([x,y,z]) sphere(radius);
		}
	}
}



roundBoxStrong(20,40,10,6);
//cover(20,40,10,6);
