// needed to attach a stepper motor to the base
module baseMearm(){
	difference(){

		cube([45,43.7,4],center=true);
		translate([0,0,0]){
			cube([3,5,10],center=true);
		}
		translate([20,-5,0]){
			cube([10,20,10],center=true);
		}
		translate([-20,5,0]){
			cube([10,20,10],center=true);
		}
		translate([0,20,0]){
			cube([5,20,10],center=true);
		}
		translate([0,-20,0]){
			cube([5,20,10],center=true);
		}
	}
}
baseMearm();
