//it opens soap and igienic paper dispensers in restrooms made by Borman
module bormanKey(){
    translate([0,0,5]){
    cylinder(h=10,r1=4.7, r2=4.7, center=true);
    translate([0,0,-5]){    
    cube([30,10,5],center=true);
    }    
    }    
    translate([2.6,0,12]){
        cube([2.5,4,4.5],center=true);
    }
    translate([-2.6,0,12]){
        cube([2.5,4,4.5],center=true);
    }
    
}
bormanKey();
