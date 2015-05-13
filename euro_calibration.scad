/*
This is a pretty basic calibration piece, howsoever it is more powerfull then it seems. 
By uncommenting _one_ of the avaliable coins on the bottom of this code you can generate a calibration piece which should have the exact measures (height and diameter) for the Euro piece you have avaliable. There's not much to do, simply uncomment your favorite calibration coin, export the stl (Design -> export STL), slice it, print it, put your coin in the center and calibrate.
For reference: the measures were taken from this [0] German Wikipedia article

[0]https://de.wikipedia.org/wiki/Eurom%FCnzen#Beschreibung
*/


module one_cent(){
	diameter = 16.25;
	height = 1.67;
	square(diameter, height);
}

module two_cent(){
	diameter = 18.75;
	height = 1.67;
	square(diameter, height);
}	

module five_cent(){
	diameter = 21.25;
	height = 1.67;
	square(diameter, height);
}

module ten_cent(){
	diameter = 19.75;
	height = 1.93;
	square(diameter, height);
}

module twenty_cent(){
	diameter = 22.25;
	height= 2.14;
	square(diameter, height);
}

module fifty_cent(){
	diameter = 24.25;
	height = 2.38;
	square(diameter, height);
}

module one_euro(){
	diameter = 23.25;
	height = 2.33;
	square(diameter, height);
}

module two_euro(){
	diameter = 25.75;
	height = 2.2;
	square(diameter, height);
}

module square(diameter, height){
	radius = diameter/2;	
	difference(){
		cube([diameter+5,diameter+5,height]);
		translate([radius+2.5,radius+2.5,-1])
		!cylinder(r = radius, h = height, $fn=100);
	}
}

// ====== Uncomment only one of the below coins =======

//one_cent();
//two_cent();
//five_cent();
//ten_cent();
//twenty_cent();
//fifty_cent();
one_euro();
//two_euro();
