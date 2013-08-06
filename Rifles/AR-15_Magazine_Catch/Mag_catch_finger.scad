//All mesurements are in mm
include <polyScrewThread.scad>
PI=3.141592;

$fn=100;
flat_height=5;
flat_width=5.5;
flat_lenght=37;
flat_tapper_height=2;
flat_tapper_offset_mag_side=flat_height;
flat_tapper_offset_trigger_side=14;
flat_tapper_offset_trigger_side_lenght=9;
thread_height=10;

bolt_lenght=30;
bolt_diam=5;
bolt_offset=5;

bolt_hole_diam=7;
bolt_hole_height=11;



bh_offset=(bolt_hole_height-bolt_hole_diam)/2; //Dont Set

difference(){
cylinder(r=bolt_hole_diam/2,h=10);
screw_thread(bolt_diam+0.5,   1,   45,    thread_height,    PI/2,    0);
}
translate([0,bh_offset,0])cylinder(r=bolt_hole_diam/2,h=5);
translate([0,-bh_offset,0])cylinder(r=bolt_hole_diam/2,h=5);
translate([-bolt_hole_diam/2,-bh_offset,0])cube([bolt_hole_diam,(bolt_hole_height-bolt_hole_diam),5]);
