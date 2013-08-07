$fn = 50;
//$fa = 0.01;
//$fs = 0.5;


in=25.4;
l=1.9*in;

w=1.2*in;
h=0.35*in;
d=1*in;

dHole=0.10*in;
dLip=0.935*in;

d8=0.136*in;
d4=0.201*in;
d40=0.0785*in;
dStand=0.2*in;
hStand=h+0.1*in;

render(convexity=3)
{


		difference()
		{
		union()
		{
		translate([.15*in,.15*in,0*in]) cylinder(h=hStand, r=dStand/2, center=false); //Hole
		translate([.15*in,1.05*in,0*in]) cylinder(h=hStand, r=dStand/2,center=false); //Hole
		translate([1.75*in,.15*in,0*in]) cylinder(h=hStand, r=dStand/2, center=false); //Hole
		translate([1.75*in,1.05*in,0*in]) cylinder(h=hStand, r=dStand/2,center=false); //Hole

		translate([1.75*in,.15*in,-1*in]) cylinder(h=2*in, r=d40/2); //Hole
		translate([1.75*in,1.05*in,-1*in]) cylinder(h=2*in, r=d40/2); //Hole
		cube([l,w,h], center=false); //Body 

		}
		translate([.15*in,.15*in,-1*in]) cylinder(h=2*in, r=d40/2); //Hole
		translate([.15*in,1.05*in,-1*in]) cylinder(h=2*in, r=d40/2); //Hole

		translate([1.75*in,.15*in,-1*in]) cylinder(h=2*in, r=d40/2); //Hole
		translate([1.75*in,1.05*in,-1*in]) cylinder(h=2*in, r=d40/2); //Hole

		//translate([0,0,-10]) cylinder(h=100, r=dLip/2); //Lip diameter

		translate([0,w/2,h/2]) rotate([0,90,0])  cylinder(h=300, r=d8/2, center=true); //
		translate([l/2,0,h/2]) rotate([90,90,0])  cylinder(h=300, r=d8/2, center=true); //
	translate([l/2,w/2,h/2])  cylinder(h=300, r=d8/2, center=true);
		//cylinder(h=1000, r=d4/2, center=true);

		


		}


}