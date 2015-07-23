module Meccano(size,hole){
    difference(){
        cube(size, center=true);
        cylinder(h=10,r=hole/2, center=true, $fn=50);
        for(j= [-size[0]:10:size[0]])
        for(i= [-size[1]:10:size[1]]){
        translate([j,i,0])
        cylinder(h=size[2]+1,r=hole/2, center=true, $fn=50);
        }    
        
    }    
}

module MeccanoL(size,hole){
   Meccano(size, hole);
   translate([size[0]/2,0,size[0]/2])
   rotate([0,90,0])
   Meccano(size, hole); 
}
module MeccanoY(size,hole){
   Meccano(size, hole);
   translate([(size[0]/2)*sin(45)+size[0]/2,0,size[0]/2*cos(45)])
   rotate([0,135,0])
   Meccano(size, hole); 
}

module Meccano30(size,hole){
   Meccano(size, hole);
   translate([(size[0]/2)*sin(30)+size[0]/2,0,size[0]/2*cos(30)])
   rotate([0,120,0])
   Meccano(size, hole); 
}

module MeccanoAngle(size,hole,angle){
   Meccano(size, hole);
   translate([(size[0]/2)*sin(angle)+size[0]/2,0,size[0]/2*cos(angle)])
   rotate([0,90+angle,0])
   Meccano(size, hole); 
}
module MeccanoC(size,hole){
   Meccano(size, hole);
   translate([(size[0]/2)*sin(45)+size[0]/2,0,size[0]/2*cos(45)])
   rotate([0,135,0])
   Meccano(size, hole); 
   translate([(size[0]/2)*-sin(45)-size[0]/2,0,size[0]/2*cos(45)])
   rotate([0,45,0])
   Meccano(size, hole); 
}
MeccanoAngle([30,10,5], 4.5, 40);
