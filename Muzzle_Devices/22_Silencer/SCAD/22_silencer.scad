// Silencer for airguns Mk2. (C)2012 Vik Olliver, GPLv3 applies.
// Designed to be held onto the barrel with a hose clamp.

segment_height=17;
silencer_rad=17;
wallthickness=3.8;
calibre=4.6;
chamfer=1.2;
segments=5;

module silencer_segment() {
	difference () {
		union () {
			// Chamfered edge to make it look the part :)
			cylinder(h=chamfer, r2=silencer_rad, r1=silencer_rad-chamfer);
			translate ([0,0,chamfer]) cylinder(h=segment_height-2*chamfer, r=silencer_rad);
			// Chamfered edge to make it look the part :)
			translate ([0,0,segment_height-chamfer])
				cylinder(h=2, r1=silencer_rad, r2=silencer_rad-chamfer);
		}
		translate ([0,0,segment_height-(silencer_rad-wallthickness)-0.1])
			cylinder(h=silencer_rad-wallthickness+1,r1=silencer_rad-wallthickness,r2=calibre/2);
		translate ([0,0,-1]) cylinder(h=segment_height-(silencer_rad-wallthickness)+1,r=silencer_rad-wallthickness);
		// Add some more space for gas expansion.
		translate([0,0,segment_height-silencer_rad*0.07])
			difference () {
				cylinder(h=silencer_rad/2,r1=silencer_rad-wallthickness-1,r2=silencer_rad-wallthickness);
				translate ([0,0,-0.1]) cylinder(h=silencer_rad, r1=calibre/2+wallthickness/2+3,r2=calibre/2+wallthickness/2-3);
			}
	}
}

module cell_stack () {
	union () {
		for (i=[0:segments-1])
			translate ([0,0,segment_height*i]) silencer_segment();
	}
}

adaptor_len=31;
clamp_len=14;
barrel_dia=19;

module silencer () {
	translate ([0,0,adaptor_len+(segment_height*segments)]) rotate([180,0,0]) difference () {
		union () {
			translate ([0,0,clamp_len])
				cylinder(h=adaptor_len-clamp_len, r1=barrel_dia/2+wallthickness, r2=silencer_rad);
			cylinder(h=clamp_len,r=barrel_dia/2+wallthickness);
		}
		translate ([0,0,-0.1]) {
			// Hole for barrel
			cylinder(h=adaptor_len+1,r=barrel_dia/2);
			// Taper to first chamber
			translate ([0,0,clamp_len+wallthickness/2])
				cylinder(h=adaptor_len-clamp_len+1,r1=barrel_dia/2,r2=silencer_rad-wallthickness);
			// Chamfer
			cylinder(h=1,r1=barrel_dia/2+1,r=barrel_dia/2);
			// Gaps for clamp compression
			cube([silencer_rad*2,1.5,clamp_len*2-2], center=true);
		}
	}
	cell_stack();
	// The exit hole
	difference () {
		cylinder(h=wallthickness,r=silencer_rad);
		translate ([0,0,-0.01]) cylinder(h=wallthickness+0.1,r1=calibre/2+wallthickness,r2=calibre/2);
	}
}

difference () {
	silencer();
	//cube([50,50,150]);
}
