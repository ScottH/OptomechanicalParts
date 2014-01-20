
in=25.4;

w=1*in;
l=3*in;
h=0.2*in;

n=3;

gw=4;
sp=10;

difference()
{
cube([w,l,h], center=true);
for(i=[-n:1:n])
	{
	echo(i);
	translate([0,i*sp,h/2]) rotate([45,0,0]) cube([w, gw,gw], center=true);
	}

cylinder(100,0.28*in/2 ,0.28*in/2,center=true);
translate([0,0,0.1*in])cylinder(h,0.4*in/2,0.4*in/2,center=true);

}