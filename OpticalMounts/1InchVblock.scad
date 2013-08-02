$fn=100;

in=25.4;

l=1*in;
w=l;
h=l;

d8=0.136*in;

difference()
{
cube([l,w,h], center=true);

translate([0,0,15]) rotate([0,45,0]) cube([l,w,h], center=true);
cylinder(h=1*in, r=d8/2, center=true);
}