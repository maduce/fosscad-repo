// Decapping tray for hose collection V4  3.28.2013
// fits RCBS Rock Chucker Supreme and replaces the 
// factory piece, an inverted Y with 2 big feet.
// Spent primer falls in 0.5" ID clear plastic tubing
// for collection in bottle on floor or below shelf.
// Left hand version to give minimum
// interference with handling large cases.

// Held in place by ring that goes around the ram.
// Remove shellholder before installing or removal
// Shorten travel of arm so case is loaded a little 
// above the plastic ring.   The lip on left edge 
// holds the adapter to the groove in cast frame.
// Back centers the device close to ram
// Configuration for lefthand hose

// prints on back with support.  
// Clear ramp to hose after printing.

// heat_shield_end(x,y,z,skirt,thickness,bridge)

{
// draw LHnozzle
rotate([0,-90,0])

difference() {	
	union() {
		translate([34.5,-32,-10.5])
		rotate([90,50,-23])
		cylinder(r1=8.8, r2=6.5, h=25,$fn=40);
	
			}
	translate([37.5,-25,-10.4])
	rotate([90,50,-23])
	cylinder(r1=5.5, r2=5, h=45,$fn=40);
		}
// draw basebar
	difference() {	
		union() {
			translate([-5,-36,19])
			cube([26.5,71,8]);
			// hook on left side
			translate([-5,-36,0])
			cube([26.5,10.8,19]);
			translate([-5,-30,0])
			cube([19,7.5,7.5]);
			translate([14,-35,3.8])
			rotate([-90,0,0])
			cylinder(r=3.8,h=12.5, $fn=20);
			translate([-6,-23.7,3.8])
			rotate([0,90,0])
			cylinder(r=3.8,h=20, $fn=20);
			// straight piece on right side
			translate([-5,25,0])
			cube([26.5,10,19]);
			translate([-5,-5,25])
			cube([5,10,40]);
		translate([-5,9,21.5])
		rotate(a=45, v=[90,0,0])
		cube([26.5,8,8]);
				}
		translate([-6,-36.5,-7])
		rotate(a=45, v=[90,0,0])
		cube([30,8,8]);
		translate([14,20, 4])
		rotate([-90,0,0])
		cylinder(r=3,h=24, $fn=20);
		translate([-6,35.5,22])
		rotate(a=45, v=[90,0,0])
		cube([30,8,8]);
		translate([-6,-19,11.2])
		rotate([5,0,0])
		cube([65,20,8]);
		translate([-6,-1,13])
		rotate([-5,0,0])
		cube([65,20,8]);
		
// SCAD feature!  have to duplicate the cut
// drill cylinder to hose fitting
		translate([10.5,0,45.5])
		rotate([110,0,0])
		cylinder(r1=6, r2=5,h=55, $fn=40);
			}		

// draw ramring
	difference() {
		union() {
			translate([20,-22,19])
			cube([18,44,8]);
			translate([35,0,19])
			rotate([0,0,0])
			cylinder(r=22,h=8, $fn=40);
		translate([16,23,19])
		rotate(a=45, v=[0,0,-45])
		cube([10,8,8]);
		translate([21.52,-28, 19])
		rotate(a=45, v=[0,0,45])
		cube([10,8,8]);
				}
		translate([35,0,18])
		rotate([0,0,0])
		cylinder(r1=14.2, r2=14.5,h=80, $fn=40);
		translate([57,-20,13])
		rotate([45,0,90])
		cube([44,8,8]);
		translate([-6,-19,11.2])
		rotate([5,0,0])
		cube([65,20,8]);
		translate([-6,-1,13])
		rotate([-5,0,0])
		cube([65,20,8]);
			} 

// draw lefthand ramp
	difference() 
		{
		translate([-5,-36,26])
		cube([26.5,46,62]);
	// subtract primer catch zone
		translate([2,-4.5,46])
		cube([21.5,10,38]);
		translate([2,-12.9,44])
		rotate([-53,0,0])
		cube([16,9.4,16]);
	// cut away excess corner
		union() {
			translate([-6,-38.9,55.5])
			cube([34,30,40]);
			translate([-6,-80.2,66.3])
			rotate([-65,0,0])
			cube([34,40,60]);
				}
	// drill cylinder to hose fitting
		translate([10.5,0,46])
		rotate([110,0,0])
		cylinder(r1=6, r2=5,h=55, $fn=16);
	// relief for ram cylinder at top stroke
		translate([35,0,83.5])
		rotate([0,0,0])
		cylinder(r1=15, r2=15,h=5, $fn=40);
			}
// add on Heat Shields to reduce warping
// comment out next 7 lines to omit shields
	rotate([0,90,0])
	translate([-77,0.5,-5])
	heat_shield_end(26,22,26,10,2,1);
	rotate([90,-90,90])	translate([-3,-37.5,-5])
	heat_shield_corner(20,20,26,10,2,1,90);
	rotate([90,0,90])  translate([-38,-1.5,-5])
	heat_shield_corner(20,20,26,10,2,1,90);	
}

//  Heat_Shield.scad
// available module calls:
// heat_shield_end(x,y,z,skirt,thickness,bridge)
// heat_shield_corner(x,y,z,skirt,thickness,bridge,angle)
//
// No intrinsic rotation.  Long side +x direction
//
//  Check lifting with ABS
//  disposable heat shield for the end of a long bar....
//
//   goes around long ends
//   to prevent lifting while printing
//   x, y, z are the inside dimensions
//   skirt is the adhesion pad width
//   thickness is the skirt thickness (nominal=1)
//   bridge is the contact thickness connecting the long end
//   Note: if no bridge is desired use bridge=-1
//
module heat_shield_end(x,y,z,skirt,thickness,bridge) {
      translate ([0, 0, z/2]) {
           // corner adhesion pads
            color([ 1.0, 0, 0,])  {
                translate ([x/2, y/2+skirt/2, -(z-thickness)/2]) {
                   cylinder (h=thickness, r=skirt/2, $fa=2, center = true);}
                translate ([-x/2-skirt/2, y/2+skirt/2, -(z-thickness)/2]) {
                   cylinder (h=thickness, r=skirt/2, $fa=2, center = true);}
                translate ([x/2, -y/2-skirt/2, -(z-thickness)/2]) {
                   cylinder (h=thickness, r=skirt/2, $fa=2, center = true);}
                translate ([-x/2-skirt/2, -y/2-skirt/2, -(z-thickness)/2]) {
                   cylinder (h=thickness, r=skirt/2, $fa=2, center = true);}
           // corner adhesion bars
                translate ([-skirt/4, -y/2-skirt/2, -(z-thickness)/2]) {
                   cube(size=[x+skirt/2, skirt, thickness], center=true); }
                translate ([-skirt/4, y/2+skirt/2, -(z-thickness)/2]) {
                   cube(size=[x+skirt/2, skirt, thickness], center=true); }
                translate ([-x/2-skirt/2, 0, -(z-thickness)/2]) {
                   cube(size=[skirt, y+skirt, thickness], center=true); }
             }
         difference()
         {
            color([ 1, 0, 0,])  { cube(size=[x+1, y+2, z], center=true); }
            translate ([1, 0, bridge+1]) {
               cube(size=[x+1, y, z+2], center=true); }
         }
      }
}


//   disposable heat shield for a corner or side angle ....
//
//   goes around long ends
//   to prevent lifting while printing
//   x, y, z are the lenghts of the x, y sections and z height
//   skirt is the adhesion pad width
//   thickness is the skirt thickness (nominal=1)
//   bridge is the contact thickness connecting to the piece
//   angle is the corner angle in degrees
//
module heat_shield_corner(x,y,z,skirt,thickness,bridge,angle) {
    //
            color([ 1.0, 0, 0,])  {
           // x bar and pads
                translate ([x/2, -0.5, z/2]) {
                   cube(size=[x+2, 1, z], center=true); }
                translate ([x, -skirt/2, thickness/2]) {
                   cylinder (h=thickness, r=skirt/2, $fa=2, center = true);}
                translate ([0, -skirt/2,  thickness/2]) {
                   cylinder (h=thickness, r=skirt/2, $fa=2, center = true);}
           // x skirt
                translate ([x/2, -skirt/2, thickness/2]) {
                   cube(size=[x, skirt, thickness], center=true); }
           // x bridge
                translate ([x/2, 3*bridge-1, bridge/2]) {
                   cube(size=[x, 6*bridge, bridge], center=true); }
          //
          //
               rotate ([0,0,angle]) {
           // y bar and pads
                translate ([y/2, 0.5, z/2]) {
                   cube(size=[y+2, 1, z], center=true); }
                translate ([y, skirt/2, thickness/2]) {
                   cylinder (h=thickness, r=skirt/2, $fa=2, center = true);}
                translate ([0, skirt/2, thickness/2]) {
                   cylinder (h=thickness, r=skirt/2, $fa=2, center = true);}
           // y skirt
                translate ([y/2, skirt/2, thickness/2]) {
                   cube(size=[y, skirt, thickness], center=true); }
           // y bridge
                translate ([y/2, -3*bridge+1, bridge/2]) {
                   cube(size=[y, 6*bridge, bridge], center=true); }
             }
      }
}

