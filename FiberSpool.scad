//
// Parametric spool for breadboarding fiber optic systems.
// Scott Harris

H=6;
BaseThick=2;
TabWidth=12;
SlotWidth=20;
WallThickness=1;
OD=40;
ID=30;

render()
{
	difference()
	{
		union()
		{
			
			cylinder(r=25.4/2/2, h=H, center=false);
			
			
		
			difference()
			{
				cylinder(r=OD, h=H, center=false);
				cylinder(r=OD-WallThickness, h=H-BaseThick,center=false);
				translate([0,0,0]) cube([80,SlotWidth,80], center=true);
				translate([0,0,0]) cube([SlotWidth,80,80], center=true);

			}
			difference()
			{
				cylinder(r=ID, h=H, center=false);
				cylinder(r=ID-WallThickness, h=H-BaseThick,center=false);	
				
			}
			translate([(ID+OD)/2-WallThickness,0,1]) cube([(OD-ID),TabWidth,2], center=true);
			translate([-(ID+OD)/2+WallThickness,0,1]) cube([(OD-ID),TabWidth,2], center=true);
			translate([0,(ID+OD)/2-WallThickness,1]) cube([TabWidth,(OD-ID),2], center=true);
			translate([0,-(ID+OD)/2+WallThickness,1]) cube([TabWidth,(OD-ID),2], center=true);
			
		}
		cylinder(r=1.05*25.4/2/4, h=2*H, center=false);

	}
}