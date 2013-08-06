//All mesurements are in mm
include <polyScrewThread.scad>
PI=3.141592;

$fn=100;
flat_height=5;
flat_width=5.5;
flat_lenght=37-flat_height;
flat_tapper_height=2;
flat_tapper_offset_mag_side=flat_height;
flat_tapper_offset_trigger_side=14;
flat_tapper_offset_trigger_side_lenght=9;
thread_height=10;

bolt_lenght=30;
bolt_diam=5;
bolt_offset=5;
module flat(){
	difference(){
		union(){
			translate([0,flat_width/2,0])cylinder( r=flat_width/2 ,h=flat_height);
			cube([flat_lenght,flat_width,flat_height]);
			translate([flat_lenght,flat_width/2,0])cylinder( r=flat_width/2 ,h=flat_height);
		}
		translate([flat_lenght-flat_tapper_offset_mag_side+(flat_width/2),0,flat_height-flat_tapper_height])cube([flat_tapper_offset_mag_side,flat_width,flat_tapper_height]);
		translate([flat_tapper_offset_trigger_side-(flat_width/2),0,flat_height-flat_tapper_height])cube([flat_tapper_offset_trigger_side_lenght,flat_width,flat_tapper_height]);
		translate([flat_tapper_offset_trigger_side-(flat_width/2)+flat_tapper_offset_trigger_side_lenght,0,flat_height-flat_tapper_height])rotate([45,0,0])cube([ (flat_lenght+(flat_height*2))-flat_tapper_offset_trigger_side-flat_tapper_offset_trigger_side_lenght,flat_width,flat_height]);
		
	}
}


flat();
translate([bolt_offset-(flat_height/2),flat_width/2,bolt_lenght-thread_height])screw_thread(bolt_diam,   1,   45,    thread_height,    PI/2,    0);
translate([bolt_offset-(flat_height/2),flat_width/2,0])cylinder( r=bolt_diam/2 ,h=bolt_lenght-thread_height);