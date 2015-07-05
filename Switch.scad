module switch(){
   difference(){
    union(){ 
   cube([17,10,5], center = true);
   difference(){ 
   rotate([90,0,0]) 
   cylinder(h = 7.5, r=7.5, center=true, $fn=100); 
    rotate([90,0,0]) 
       translate([0,11,0])
   cylinder(h = 8.5, r=7.5, center=true, $fn=100); 
   }
    }
    translate([0,0,-5])
    cube([40,40,10], center=true);
}
}
switch();
