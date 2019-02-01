# Ivan's Printable Standard AR15 Magazine

#### Author 
Ivanthetroll (@IvanTheTroll12)

#### Project Notes

This is the result of several months of trials and experimentation with DIY magazines for the AR-15.  It has yielded three big results:

1.	DIY-able magazine springs.  The files and writeup for that can be found in [AR-15-Magazine_Spring_Bending_Jig-Ivanthetroll](https://github.com/maduce/fosscad-repo/tree/master/Misc/AR-15-Magazine_Spring_Bending_Jig-Ivanthetroll)
2.	CAD files for a more FDM friendly 30 round AR-15 magazine (compared to the Defense Distributed Cuomo mag). 
3.	This document where I share all that I have learned during this project.

It will be worthwhile to read this entire tutorial and look at the renders; I'll make them as informative and brief as possible.  

The magazine body and follower are changed from the DD mag files, the locking plate and base plate are the same as the DD mag files.  Ive included OBJ files of the parts.  The STL files open in a weird scale in my Slicer.  OBJ files have units attached, so the OBJ files should work fine in your slicer.

Now, this writeup will be lengthy, so I am going to try and format it as best I can.  I'll cover my findings in three parts:
1.	Materials/filaments, print settings, and techniques.
2.	Post-processing, fitting the mag.
3.	Troubleshooting.


#### Section 1: Materials, Filaments, Print Settings, and Techniques
I tried lots of different materials for this project during the several months of experimentation.  I found two key issues: the mag body design itself and the weakness of most plastics.  PLA/PETG/ABS will not cut it.  If you want to make a 10 rounder, then those will work.  But to hold down 30 rounds you need some strong stuff.  My first partial success was with Kodak Nylon 6.  It is strong and quite flexible.  It let me get 30 rounds in without issue, but then the magazine feed lips would eventually crack on the back side after 100-ish rounds.  I spent some time researching and decided Id try [Dupont Zytel](https://www.matterhackers.com/store/l/dupont-zytel-3d-filament-3d1000fk-nc010-175mm-1kg/sk/MR0A4G7R?gclid=CjwKCAiAyrXiBRAjEiwATI95me-44wmeXuN_0MO7GVakV0rtkZSWENA0dvpLDIQD_Zp0BoH45ECBSxoCaUsQAvD_BwE).

**Zytel** is the secret to making magazines last long-term.  I know, it is expensive.  But you can get 10 magazines per KG ($9 a mag).

So, as far as recommendations on printing the mag body go:
* Material: Dupont Zytel 1000FL
* Print Temp: 287C
* Bed Temp: 100C
* Bed Prep: Wipe clean, apply a thick layer of Elmers gluestick
* Infill: 100%, Rectilinear Fill
* Enclosure: None
* Orientation: With the mag bottom flat on the print bed.  No supports.  Use the CAD with the 1mm brim attached to the mag.  This will stop any warping issues.  The brim can be removed after the print is done.  Dont throw away scrap Zytel.  See Renders to make sure you have your orientation right.
Advanced (recommended) Settings: Top 80 layers print at 40mm/s, Infill at 55mm/s, .15mm Layers (although .3mm works), **TWO PERIMETERS ON ALL VERTICAL SHELLS**.
* I used 0.9 extrusion multiplier and still had a bit of over-extrusion; increasing retraction some may help as well.

For printing the magazine peripherals (floor plate, locking plate and follower) I used ABS.  Anything you like will work.  These parts dont need to be strong.  The orientation of these parts should be obvious, but Ill include a render anyway.  The follower prints better if you use the one with the 1mm brim that I included.  Make sure to enable supports when printing the peripheral parts.

#### Section 2: Post-Processing, Fitting the Magazine
This section is going to be the most important to getting your magazine to work, so I'll try and make it as clear as I can.  There is a fair bit of post processing that goes into making these mags work.

Firstly, when you take the magazine off the print bed, you'll need to remove the 1mm brim.  Wear safety glasses, as Zytel that thin will shatter as you bend it off.  I used a pair of pliers to snap the brim off, then stabbed the pliers through the bit of the brim that bridges the bottom of the magazine.  I am able to pry off all of the brim with needle-nosed pliers.

Next, you'll want to take a flat file and remove the 1mm of material on the bottom of the magazine.  This isnt super-necessary, but the floorplate won't fit unless you remove the bottom 1mm.

Your magazine will likely have strings and artifacts all throughout its internals.  You will need to remove all of these.  I use a cut up t-shirt and stuff that through the mag several times in order to remove the strings.  Think using a boresnake but with a t-shirt or rag as the snake.  This will leave the artifacts behind.  Using a square file and/or a screwdriver; you will need to remove the artifacts.  Even a small string or artifact will make the mag feed poorly.  Take your time and get the magazine internals as smooth as possible.

Next up, the most important step.  You will need to take a soldering iron and fuse the layers on the back of the mag lips.  I'll include a render showing what this should look like when you are done.  Just light brushes with a soldering iron will make it perfect.  It is worth mentioning Zytel can be soldered.  That's why you should save all your scrap.  I was able to break a magazine feed lip off manually then solder it back on using this method.  If you take some scrap Zytel you can melt it on to the iron and use it like a simple version of a 3d pen for small repairs.

The next step isn't super necessary but it does help some.  Take your magazine and boil it in a pot of water with a lid on for 15 minutes.  This will help smooth the surface finish without melting the part or harming dimensional stability in any way.  If the water in your location is hard (full of minerals) it may boil at higher temps than 212, but I doubt it will be enough difference to hurt the mag.  Be careful not to burn yourself.

#### Section 3: Troubleshooting
I imagine people will run into the same issues that I did.  I will touch on the most common ones I saw over the mags I printed and give my solutions to them.

* **1.** Bad feeding due to rounds nosediving in the mag
    * **a.** Take a screwdriver and push the follower down.  It should feel smooth.  If it isnt, then your mag body internal may be too rough, your follower may have warped when printing, or your spring (if DIYed) may be too wide (wasnt wrapped tight enough when you wound it).
        * **i.**	Troubleshoot by swapping to a PMAG spring if you can.  If that makes it smoother, then your DIY spring is at fault.
		ii.	If it snags at a certain spot in its travel when you push it with a screwdriver, that spot probably has an artifact/burr than needs to be sanded or filed down.
    * **b.** If you are using a DIY spring, your spring pressure may be too low.  Try stretching the spring out a little.
		i.	Swap out with a PMAG spring.  If it doesnt nosedive rounds, then your spring pressure might be too low.
* **2.** Mag lips cracking
    * **a.** 31 rounds were inserted
        * **i.** Dont do that.
    * **b.** Mag lips were not fused with a soldering iron properly
        * **i.** Make sure you solder on all the indicated locations in the image that shows the rear of the mag in the renders folder.
* **3.** Double Feeds/bolt cant grab rounds out of mag
    * **a.** These issues are technically opposites, but the causes are related.  Either an artifact is present on the mag lips, or the mag lips were sanded too far to remove an artifact.
        * **i.** If there is a burr, remove it.  If you sanded on the part of the mag lips that hold down the rounds, your mag body may be junk now.

DM me @Ivanthetroll12 if you have questions or need help.  You can share mags you made with me there as well, as well as any comments you have.
