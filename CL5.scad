$fn = 50;
//$fa = 0.01;
//$fs = 0.5;


in=25.4;
l=2.0*in;
w=0.75*in;
h=0.25*in;

l2=0.25*in;
h2=0.68*in;

slotW=0.275*in;
slotL=1.15*in;
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
		cube([l,w,h], center=false); //Body
		cube([l2,w,h2], center=false); //Body 
		}
		translate([slotL/2, w/2-slotW/2, 0]) cube([slotL,slotW,h], center=false); //Slot
		translate([slotL/2, w/2, 0]) cylinder(h=2*in, r=slotW/2); //Hole
		translate([3/2*slotL, w/2, 0]) cylinder(h=2*in, r=slotW/2); //Hole


		}


}