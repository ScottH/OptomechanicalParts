$fn = 50;
//$fa = 0.01;
//$fs = 0.5;


in=25.4;
l=0.62*in;
lSide=0.75*in;
w=1.5*in;
h=1.5*in;
d=1*in;

dHole=0.5*in;
dLip=0.935*in;

d8=0.136*in;
d4=0.201*in;

render(convexity=3)
{

rotate([0,90,0])
		difference()
		{
		cube([lSide,lSide,h], center=true); //Body 
		//translate([0,0,-h*0.275]) cylinder(h=100, r=dHole/2); //Hole
		//translate([0,0,-10]) cylinder(h=100, r=dLip/2); //Lip diameter

		translate([0,0,0.4*in]) rotate([0,90,0])  cylinder(h=300, r=dHole/2, center=true); //
		translate([0,0,-0.4*in]) rotate([90,90,0])  cylinder(h=300, r=dHole/2, center=true); //
		cylinder(h=1000, r=d4/2, center=true);

		


		}


}