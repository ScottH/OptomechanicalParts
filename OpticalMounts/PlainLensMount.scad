$fn = 50;
//$fa = 0.01;
//$fs = 0.5;


in=25.4;
l=1.5*in;
w=l;
h=0.25*in;
d=1*in;
d8=0.136*in;
p=3;

render(convexity=3)
{

	union()
	{
	//rotate([0,90,0]) translate([0,0,0.9*d/2]) cylinder(h=2*d, r=d8/2, center=false)
		difference()
		{
		cube([l,w,h], center=true);
		translate([0,0,-h*0.275]) cylinder(h=100, r=1.1*d/2);
		translate([0,0,-10]) cylinder(h=100, r=0.95*d/2);
		rotate([0,90,0]) translate([0,0,1.0*d/2]) cylinder(h=1*d, r=d8/2, center=false);
		rotate([0,-90,0]) translate([0,0,1.0*d/2]) cylinder(h=1*d, r=d8/2, center=false);
		rotate([90,0,0]) translate([0,0,1.0*d/2]) cylinder(h=d, r=d8/2, center=false);
		rotate([-90,0,0]) translate([0,0,1.0*d/2]) cylinder(h=d, r=d8/2, center=false);


		//rotate([90,0,0]) cylinder(h=2*d, r=d8/2, center=true);
		
		translate([15,15,0]) cylinder(h=100, r=3, center=true);
		translate([15,-15,0]) cylinder(h=100, r=3, center=true);
		translate([-15,15,0]) cylinder(h=100, r=3, center=true);
		translate([-15,-15,0]) cylinder(h=100, r=3, center=true);


		}
	rotate([0,0,30])translate([d/2+p, 0, 0]) cylinder(h=h, r=p, center=true);
	rotate([0,0,-30])translate([d/2+p, 0, 0]) cylinder(h=h, r=p, center=true);

	}

}