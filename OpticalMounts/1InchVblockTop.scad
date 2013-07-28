$fn=100;

in=25.4;

l=1*in;
w=l;
h=l;

d8=0.136*in;

difference()
{
cube([l,1.5*w,1.5*h], center=true);
translate([0,0,-.25*in]) cube([l,w,1.5*h], center=true);
#translate([0,0,-.25*in])cube([.15*in, 2*in, 1.5*in], center=true);


}