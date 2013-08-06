3D Printable Semi-Auto AK47 Fire Control Group (FCG) Parts
    Yes, these count as 922(r) "Made in USA" compliance parts!
  By Orion's Hammer -- hammer@orions-hammer.com
  Free to use, modify, and distribute for any *legal* purpose


  Print these at 100% infill, with support material.  Units are mm.
  "model_simple" is from FreeCAD, and has straight flat sides.
  "model_complex" is from Autodesk Inventor, and has chamfers and curves.
  Both are complete hammer-trigger-disconnector sets, and they
  print and fire successfully.

CAUTIONS:
	- Plastic is not as strong as any metal, and it can't take much abuse.  In particular, putting the safety on and pulling the trigger really hard *will* bend or break the trigger, possibly firing the gun.

	- Plastic tends to 'creep' under sustained stress, and in particular the trigger hooks are under constant stress anytime the rifle is cocked.  I'd expect the hooks to slowly open up while cocked, possibly enough to let the hammer go and SPONTANEOUSLY FIRE THE GUN even with the safety on.  This isn't a problem if you carry and store the gun with hammer down on an empty chamber, and doesn't seem to be a problem after a few months in cold storage, but a chambered and cocked gun could be deadly, especially in a hot environment like a car in the sun (creep is temperature dependent, and ABS softens noticably at about 200 deg F).

	- The interior holes seem to print smaller than shown in CAD, so I need to drill each parts' axis pin hole out with a #7 drill bit (5.1mm), and the disconnector with a #20 drill bit (4.1mm).  This leaves a cleaner hole than anything I can print, and I don't even have to measure the hole location, I just let the drill bit follow the existing undersized hole, so it only takes five minutes.  This would certainly be more repeatable with a drill jig, but print-and-drill works fine.


--------------------------
Uploaded slowmo video 2012-10-07 to:
http://youtu.be/aWrp-afq4hw 

Forum discussion:
http://www.weaponeer.net/forum/forum_posts.asp?TID=19584&PN=1&TPN=1


-------------------------------
2012-09:
3D printing is taking off, but there aren't any .STL models for the AK FCG.  I want to change that.

Sources: photometry and caliper measurements on:
  Romanian(?) offset single hook  [TAPCO G2 SINGLE HOOK]

PINS -------
Width: 35.54mm
Dia: 4.95mm, taper to 6.95mm (0.7mm), 4.6mm (1.4mm), 6.95mm (1.5mm),7.95mm (1mm)


The trigger and hammer pins are 40mm apart on my flats.


TRIGGER ------------
Axis: 5.1mm [6mm with sleeve]
	Spring divot: 4.1mm [4.35mm dia], 8.4mm back from axis, 2.5mm deep

Width:
	Trigger: 7.9mm [8mm]
	Trough: 9.35mm [9.1mm]
	Body: 14.9mm [15mm]
	Hooks: 3.1mm [2.9mm]
	Offset is 2mm.

With 3.1mm thick hooks, 9.1mm trough (4.55 halfwidth), 9.4mm trigger (to overlap sides)
-7.65, -4.7, +4.55

For v2: this prints way too narrow to fit the disconnector inside (fix by thinning the disconnector), and too wide outside.  Thinned the disconnector to 7.5mm (thinner by 1.4mm, and nearing the same width as the hammer, which is right). Thinned the hooks by 0.2mm to the G2 2.9mm.


HAMMER ----------
Axis: 5.1mm [5.15mm]

Width (Z): 
	Axis: 27mm [27.3mm]
	Body: 7mm [6.9mm]
	Hooks: 17-18.3mm [17]

Height (Y):
	Axis diameter: 9.7mm [9.9]
	Hooks: 4.2mm [4.4]
	Strike: 15mm [15]

Chamfer the little spring hold area at 3mm
Chamfer the axis pin entrances by 1.5mm

DISCONNECTOR ----------
Axis: 5.1mm [6.07 with sleeve]

Width: 6.4mm [6.9 to 8.9 at axis]

Hole: 4.1mm 
Hole deep: 10.7mm (nearly to hook) [10.0]

For v2: Changed body from 8.9mm wide to 7.5mm wide.



-------------  Build Log -------------
Modeling in FreeCAD worked fine, although I can't seem to fillet very much of anything.




To convert a surface to a sold in Inventor:
        right click on surface body, repair, stitch, body, heal.

To make fillets work:
        - Try variable radius (deselect all, hit fillet, variable, add points of zero radius at ends)
        - Chop out (delete face), built new (patch), and stitch up bad geometry.  (Results in non-solid. Fail!)
        - Open in Inventor Fusion, simplify mesh by deleting faces, and rebuild features.





First build parameters: ivory ABS, 0.2mm slice height, only 20% infill, 230C extrusion temp, 110C bed temp, acrylic bed.  Only comes out at 76 layers for all three parts, although they're big layers.

Started build 10:40.  Done by 11:45.

All the holes are still undersized, but they cleaned out nicely with a #7 (5.1mm) for the axis pins, and for the disconnector spring a #20 (4.1mm) drill bit.

I also need to make the disconnector narrower, or the channel wider.  At least as fabricated, the disconnector channel is about 1mm too narrow. 

The overall FCG hole is also only 15mm wide, so I need to trim the thing overall.  On the plus side, I do like the feeling of the wide curved hammer, although for safety's sake, I should curl the tip inward to keep it from getting accidentally brushed.



rev1 LIVE FIRE test.  Failure.

The central problem: the hammer doesn't have enough mass in the tip at 20% infill.  The round's primer is dimpled, but it doesn't actually fire, even with multiple strikes (about 4).

TAPCO G2 hammer: 41g
Cast urethane hammer: 6.6g
20% infill ABS hammer: 3.3g

The trigger and disconnector seem absolutely reliable.  The hammer, in addition to not managing to fire the round, had its ears break off after about ten dry fires (first the *bottom* of the ears, where they're in tension).

Possible solutions:
	1.) Higher infill, for more mass and more strength.  This leads to longer printing time, which at an hour is already pretty long.  On the plus side, the entire FCG only weighs 8g right now (vs 82g for the original), so I can afford to add a little mass.
	2.) Embed a steel bolt, both to provide a strike face (the ABS is already a little mooshed at the highest point), and to provide more mass at the tip. Something with a rounded tip like a Phillips' head #10-24?  Hex head?  Or maybe a socket button head?  Stainless steel would prevent rust, and be tougher than mild steel.  A square pan head sheet metal screw might provide more bite, but they're too long--shortest is 3/8".
	http://www.boltdepot.com/Socket_button_head_Stainless_steel_18-8_10-24.aspx
	

I should probably do a post-extrusion slow heating step, or even insulate and heat the entire chamber to 80C during extrusion.


Boy, Inventor has some cool features, like Emboss (a sketch onto a solid), but it still can't fillet half the edges for some reason.  And it refused to export the trigger (not a solid?).

So I went back to Freecad and manually added a wedge to entrance the trigger hooks.  I then imported to Blender, remeshed to level 8 (9 is flawless, but slow), and smoothed out the sharp inside edges for strength.  Blender filleting!  I then graffiti'd on "AK^2" (Alaska AK) with sculpt mode.


Building Rev 2 (v9_smoothed):
	0.2mm layer spacing (still 76 layers)
	230C ABS plastic
	75% infill
	1 shell
	Exterior support (mostly for second hook, which came out much better)
	Printing to post-it--some peeling on hammer (acrylic came out much flatter).

Takes about 2 hours, resulting FCG weighs about 11.5g finished (maybe $0.50 in plastic).  The hammer is still only 4.5g, which still feels pretty light.  

Boy, 40mm/sec might be too fast for 75% infill, which makes a very tight crosshatch pattern.  The machine sounds like it wants to shake itself apart!  It loosened its little extruder screw at least once.

Result is *pretty*!  The only lettering that didn't come out was the top layer on the disconnector.

rev2 TEST FIRE: SUCCESS!

This version fired at least one round successfully, even though the hammer is only a little heavier (4.5g instead of 3.3g).  I think the more solid infill results in a harder smack, instead of absorbing energy deforming the hammer.

There was a brief hiccup in the extruder, which stopped extruding for a few layers.  This looked fine, but both the trigger and hammer rapidly broke along that plane under stress.

The hammer is still a little long--even filing the back of the trigger so it can tilt back farther, the disconnector still engages a little too much to let go reliably.  So I'm shrinking the hammer tip horizontally by about 2.5% for rev3/v10.  This is only in Blender, since starting from CAD would be too long a path.

The disconnector was also a little bit too square in the back, so I rounded that back edge in Blender.  Again, CAD would be better.

Building rev3 (v10_hammershrink):
	0.2mm layer spacing
	100% infill
	2 extra shells
	Back on acrylic--flat again.
	Total fabricated weight: 12.5g

I'm hoping to get less vibration (noise, stress on moving parts) with the 100% infill than with the 75%, which looked good and worked, but vibrated like crazy at 40mm/sec.  Even if they weigh 13g I should still be able to make like 75+ FCGs per kilogram of ABS, so it's not like material consumption is a big issue.

I'm happy I was able to just hit "print", go to sleep, and wake up with parts.




Lock time analysis:
  1000fps video cimg7795, rev3 FCG, first shot:
  	57ms: hammer first starts moving
	60ms: hammer stopped [3ms lock time?]
	61ms: ignition?
    62ms: bolt carrier clearly moving backwards
	70ms: hammer pushed back into disconnector by carrier
	73ms: ejection
	87ms: carrier at maximum rearward extent
	122ms: next round stripped from magazine
	159ms: back in battery
	
  Compare with metal hammer, cimg7799:
    75ms: trigger finger starts moving
	80ms: trigger trips?
	83ms: hammer first visible
	86ms: hammer stops
	89ms: hammer at peak of first bounce
	
	
http://www.pagunblog.com/2009/05/28/an-interview-with-matt-at-kel-tec-on-the-rfb/
Quotes 3ms lock time as typical of bolt actions, making them more accurate.


-----------


So I wanted to try 3D printing AK fire control parts.  The process starts in CAD.  I've currently tried FreeCAD (good from my Inkscape .svg outlines, nice CSG, but you need to be very careful to keep track of the XYZ coordinates + origin in your head), Blender (awesome for freeform triangle manipulation via "sculpt" tool, but not precise), and Autodesk Inventor Pro (decent for embossing and part cleanup).  Frankly, I hate them all--it'd literally be faster for me to machine a part from steel than built it the first time in CAD.  But I'm learning!

Here's a screenshot of some 3D FreeCAD AK parts, which started as 2D photos, traced in Inkscape, and extruded in FreeCAD.  I need to use Salome or Inventor as an intermediate export to get to a printable STL file, but I can get it printing!


Luckily my buddy had a 3D printer, a compact rickety build-it-yourself contraption made with laser cut wooden sides.  Finally, a 3D fabricator that makes my tiny Grizzly mini-mill look big and solid by comparison.  But after 'borrowing' it for a week, I bought it from him!

Above is about halfway through the printing process.  The extrusion head (buried in a ball of Kapton tape) is over the disconnector, making the spring hole.  The hammer axis hole is in the foreground.  It's very interesting to watch your parts grow up layer by layer!

Here's how the finished parts look directly from the 3d printer.  This version is printed onto a sheet of acrylic, which sticks better than the pink platform above.  The hairy stuff is where the extruder didn't quite shut off ("ooze") while moving between parts.


Here are some finished, cleaned up parts--about five minutes with a Nooga deburring tool takes care of the hair.  The shape looks like AK parts (except where I beefed it up), but the white color looks really odd!  I've got some black plastic filament on order, so I can make them in black.


They feel pretty weak and springy in the hand, but ABS plastic springs back into shape rather than breaking.

It actually took a roundtrip back to CAD to tweak the sizes a little so the finished parts fit each other and the AK receiver without a lot of filing, but as of rev 2 they fit!


With some trepidation, I armored up, and went out to my test area.  But when I pulled the trigger, the hammer dropped, but the round did not fire.  The primer was lightly dimpled, but clearly not struck hard enough.

The problem: this version was printed at 25% "infill", meaning the inside of the hammer is 75% air.  I don't know if the problem is mostly the light weight (this hammer only weighs 3.5 *grams*) or the fact that the face of the hammer is only 50mils of plastic followed by air, so it deforms instead of smacking the firing pin.

So I reprinted at 75% "infill" (only 25% air), and the thing fires!  The only problem is 75% infill makes a very tight little crosshatch pattern that shakes the machine badly.  This caused the extruder to shake a screw loose and stop extruding for a few layers until I noticed it, so both trigger and hammer quickly separated at the resulting weak spot.  3D printed parts seem to be weakest between the layers.

This trigger and corresponding hammer were repaired with goopy black ABS plastic cement (in the plumbing aisle), and seem to work reliably, but they're ugly.

Printing at 100% infill avoids the crosshatch shaking, prints reliably, and seems to produce a clean and reliable part.  Here's some slowmo semiauto video:

    http://youtu.be/aWrp-afq

Advantages of a 3D printed FCG:
    - 5x LIGHTER: The plastic FCG weighs under 15 grams, versus the normal metal version's 80 grams.
    - 2x FASTER: The plastic hammer should have about 1/5th the rotational inertia of the metal hammer, which makes for faster 'lock time' between pulling the trigger and firing the round.  I'm having a hard time seeing the black metal hammer at 1000fps slowmo to compare, but in the video I've got, a metal hammer moves at least half as fast as the plastic hammer.  Faster lock time is one reason bolt actions are famously more accurate than semi-autos.
    - 10x CHEAPER: It only costs about $0.60 in plastic filament per FCG, which makes them cheap enough to experiment with, versus $5 for an imported set or about $30 for a US version.
    - The parts are not only made in the USA for 922(r), they're made on your own printer!
    - It takes the machine about 2 hours to print a complete FCG set.  I can go to sleep, and wake up with new parts!
    - Plastic parts won't ever rust.
    - Each swipe of a file takes off a lot of material, which lets you fit the trigger group to the rifle quickly.  I've learned more about fitting AK trigger groups in the last week than I have in the last decade!
    - You can customize/redesign the trigger group directly in CAD, to make a bullpup, fit existing parts, or a higher or shorter hammer reach, etc.  I'm planning on making a version with tiny adjuster screws to let you adjust the trigger pull.

Cautions:
    - CAD is an annoying timesink.  I thought it was just the open source stuff, but the commercial programs I've tried are also really finnicky.  It's way faster to use a file to round off a corner than to get the dang thing to actually fillet correctly onscreen, and programs will weirdly refuse to do simple stuff, like export an STL file.
    - The interior holes seem to print smaller than shown in CAD, so I need to drill each parts' axis pin hole out with a #7 drill bit (5.1mm), and the disconnector with a #20 drill bit (4.1mm).  This leaves a cleaner hole than anything I can print, and I don't even have to measure the hole location, I just let the drill bit follow the existing undersized hole, so it only takes five minutes.  This would certainly be more repeatable with a drill jig, but print-and-drill works fine.
    - Plastic is not as strong as any metal, and it can't take much abuse.  In particular, I'd expect putting the safety on and pulling the trigger really hard would bend or break the trigger, possibly firing the gun.  Wear is also probably an issue, but at $0.60 each, who cares?
    - Plastic tends to 'creep' under sustained stress, and in particular the trigger hooks are under constant stress anytime the rifle is cocked.  I'm worried the hooks will slowly open up while cocked, possibly enough to let the hammer go and SPONTANEOUSLY FIRE THE GUN even with the safety on and nobody touching the trigger.  This isn't a problem if you carry and store the gun with hammer down on an empty chamber, but a chambered and cocked gun could be deadly, especially in a hot environment like a car in the sun (creep is temperature dependent, and ABS softens noticably at about 200 deg F).

Overall, an interesting technology, and a fast way to get functional prototype parts!  I've got a "creep test" running right now, and if the trigger hooks survive another few days under stress, I'll post the STL files for ya! 



