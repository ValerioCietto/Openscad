module cubeTexture(size, distance, tx){
    difference(){
        cube(size, center=true);
        
        for(y = [-size[1]/2:distance:size[1]/2]){
        for(x = [-size[0]/2:distance:size[0]/2]){
            translate([x,y,size[2]/2])
            sphere(tx);
            translate([x,y,-size[2]/2])
            sphere(tx);
        } 
        }   
        for(z = [-size[2]/2:distance:size[2]/2]){
        for(x = [-size[0]/2:distance:size[0]/2]){
            translate([x,size[1]/2,z])
            sphere(tx);
            translate([x,-size[1]/2,z])
            sphere(tx);
        } 
        }
        for(z = [-size[2]/2:distance:size[2]/2]){
        for(y = [-size[1]/2:distance:size[1]/2]){
            translate([size[0]/2,y,z])
            sphere(tx);
            translate([-size[0]/2,y,z])
            sphere(tx);
        } 
        }
    }
    
}
cubeTexture([20,30,40], 6, 1);
