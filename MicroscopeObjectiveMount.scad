$fn = 50;
//$fa = 0.01;
//$fs = 0.5;


in=25.4;
l=1.5*in;
lSide=1.25*in;
w=l;
h=0.25*in;
d=1*in;

dHole=0.796*in;
//dLip=0.935*in;

d8=0.136*in;
//p=0.125*in;

render(convexity=3)
{

	union()
	{
		difference()
		{
		cube([lSide,lSide,h], center=true); //Body 
		translate([0,0,-h*0.5]) cylinder(h=400, r=dHole/2); //Hole
		//translate([0,0,-10]) cylinder(h=100, r=dLip/2); //Lip diameter

		rotate([0,90,0]) translate([0,0,1.0*d/2]) cylinder(h=1*d, r=d8/2, center=false); //Edge screw hole
		rotate([0,-90,0]) translate([0,0,1.0*d/2]) cylinder(h=1*d, r=d8/2, center=false); //Edge screw hole
		rotate([90,0,0]) translate([0,0,1.0*d/2]) cylinder(h=d, r=d8/2, center=false); //Edge screw hole
		rotate([-90,0,0]) translate([0,0,1.0*d/2]) cylinder(h=d, r=d8/2, center=false); //Edge screw hole


		//rotate([90,0,0]) cylinder(h=2*d, r=d8/2, center=true);
		
		//translate([15,15,0]) cylinder(h=100, r=3, center=true);
		//translate([15,-15,0]) cylinder(h=100, r=3, center=true);
		//translate([-15,15,0]) cylinder(h=100, r=3, center=true);
		//translate([-15,-15,0]) cylinder(h=100, r=3, center=true);


		}
	//rotate([0,0,30])translate([dHole/2+p/4, 0, 0]) cylinder(h=h, r=p/2, center=true);
	//rotate([0,0,-30])translate([dHole/2+p/4, 0, 0]) cylinder(h=h, r=p/2, center=true);

	}

}