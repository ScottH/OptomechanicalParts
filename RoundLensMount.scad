$fn = 50;
//$fa = 0.01;
//$fs = 0.5;


in=25.4;
l=1.5*in;
lSide=1.75*in;
w=l;
h=0.3*in;
d=1*in;

dHole=2.875*in;
dLip=dHole-0.2*in;
dOuter=dHole+0.5*in;

d8=0.136*in;
p=0.125*in;

render(convexity=3)
{

	union()
	{
			

		difference()
		{
		cylinder(h=h, r1=dOuter/2, r2=dOuter/2,center=true); //Body 
		cylinder(h=10*in, r1=dLip/2, r2=dLip/2,center=true); //Body
		translate([0,0,0.1*in]) cylinder(h=h, r1=dHole/2, r2=dHole/2,center=true); //Body
		//translate([0,0,-h*0.275]) cylinder(h=100, r=dHole/2); //Hole
//		translate([0,0,-10]) cylinder(h=100, r=dLip/2); //Lip diameter
//
		rotate([0,90,90]) translate([0,0,1.0*d/2]) cylinder(h=10*d, r=d8/2, center=true); //Edge screw hole

		rotate([0,-90,0]) translate([0,0,1.0*d/2]) cylinder(h=1000*d, r=d8/2, center=true); //Edge screw hole
//		rotate([90,0,0]) translate([0,0,1.0*d/2]) cylinder(h=d, r=d8/2, center=false); //Edge screw hole
//		rotate([-90,0,0]) translate([0,0,1.0*d/2]) cylinder(h=d, r=d8/2, center=false); //Edge screw hole
//
//
//		//rotate([90,0,0]) cylinder(h=2*d, r=d8/2, center=true);
//		
//		translate([15,15,0]) cylinder(h=100, r=3, center=true);
//		translate([15,-15,0]) cylinder(h=100, r=3, center=true);
//		translate([-15,15,0]) cylinder(h=100, r=3, center=true);
//		translate([-15,-15,0]) cylinder(h=100, r=3, center=true);


		}
	

	}

}