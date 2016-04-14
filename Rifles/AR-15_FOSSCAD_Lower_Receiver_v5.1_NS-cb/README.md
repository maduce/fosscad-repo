#﻿ FOSSCAD AR15 Lower Receiver

#### Version
5.1 NS (nylon screwed)

#### Author
cb


#### Description

This is FOSSCAD AR15 Lower Receiver v5.1 NS by cb.  This lower receiver was original inspired by the DefDist v5.0 lower.  The version 5.1gs was the original version designed for ABS filament. The v5.1 NS was specifically designed to be printed nylon. Like the 5.1gs, the v5.1 NS is designed as two parts to provide the best possible adhesion with no warpage and to minimize support/overhangs when printing with nylon (nylon supports do not need to be as robust). 

#### Change log

##### V5.1 NS (nylon screwed)

* Split model at the "buffer tube tower" to permit printing the lower base receiver "deck” down on the bed. This orientation results in a very flat deck for an excellent fit with an upper receiver and also excellent bed adhesion. Print as oriented in the .stl mesh model file (diagonally for smaller printer beds). Rear takedown pin hole is now enlarged to standard size, because testing revealed that the reduced edge distance and strength is not an issue in a nylon printed lower. Thus, a standard takedown pin may be used.

* Buffer tube "tower" should be oriented on the printer bed as shown in the .stl file. Always print nylon parts slowly (30 mm/sec for all printing moves) and hot (260 C) for the best print quality and interlayer bond strength. Non-printing travel moves (jumps) should be as fast as the printer can reliably support in order to reduce strings and "hairs" in the print. Buffer tower strength when printed in the given orientation is adequate in nylon, unlike the FOSSCAD AR15 Lower Receiver v5.1 GS glued / screwed design, which is superior to the NS version for ABS prints. Use this NS model for nylon (and a stronger lower receiver) and the GS model for ABS. Both designs have successfully used to shoot hundreds of rounds of 50 caliber Beowulf ammo (recoil approximately equal to a 12 ga. shotgun) without issues!

* Two 10-24x1.5" button head screws secure the aft end of the tower to the base receiver and four 10-24x0.5" flathead screws secure the forward tower legs to the base receiver. The use of thread taps will probably be necessary to "chase" and clear the threaded holes after printing.

* Stepped brims (a feature available in KISSlicer) greatly improve part adhesion to the bed and reduce the likelihood of the part warping and lifting at corners. KISSlicer .ini files are included in this archive and KISSlicer is advised. KISSlicer64beta was used in testing. Adjustments to the KISSlicer .ini settings will of course be necessary for each individual 3D printer. It is wise to first print a partial test part to reduced height (but still high enough to be free of heated build surface effects--perhaps ~10 mm minimum height) and measure critical dimensions against a blueprint or factory receiver. A good printer should render a part with virtually zero error in Z but errors in the X/Y plane will always exist. Scale the mesh file or use the steps / mm adjustment in your printer controller to reduce errors over critical dimension. The check box on the KISSlicer "Style" tab can also be unchecked to print outer loops from the perimeter loop to the inside. Also, the "Inset surface" setting can also be used to adjust surfaces over a range less than a nozzle width.

Be sure to backup your original KISSlicer .ini files or cut and paste the contents of the provided .ini files into your standard files and modify the settings from KISSlicer to suit your printer.

#### V5.1

* The original DefDist V5 model was corrected to match the AR15 blueprint and permit the use of A1 and A2 butt stocks. This change was required to accommodate the correct capture of the buffer retention detent and spring when assembled with an A1 or A2 style butt stock.

* Rear takedown pin detent/spring hole was added for completeness. The hole is located in the correct position to optionally support the retention of custom slotted takedown pins (non-standard 1/8" pin required).


### Additional V5.1ns details

For maximum strength, nylon must be printed as hot as possible. Taulman 618 nylon was selected as a formulation that balances strength against excessive elongation, shrinkage, and flexibility. Although more expensive than 618, the new Taulman 910 specs claim greater strength, but also less elongation and printing shrinkage than 618. It looks very good for this application but it has not been tested with this lower design yet.

	The inside dimensions of nylon typically are under spec, due to shrinkage, and the inside dimensions of the magazine well were increased slightly to accommodate a magazine with little or no rework. Nylon is very difficult to file or sand!

The following process has worked well with a slightly modified Ultimaker (0.5 mm nozzle) printing nylon printed at 260C nozzle temperature.  Two Kisslicer profiles are included, "Pro" and "non-Pro."  Using a “trick” setting, The Kisslicer layer stacking feature reduces solid infill print time by printing only every other layer and total print time is reduced by approximately four hours. Please download a free copy of KISSlicer to view the other settings contained in the .ini files and, preferably, generate the gcode for your printer. Kisslicer generates excessively thick support structures that are extremely difficult to remove from nylon parts.  Hence, support is built-into the model. A Dremel style rotary tool and a variety of both metal and sanding bits are helpful for removing the support, along with a variety of punch pin sizes and razor blades (scrape the surface as when shaving). The support on the main receiver part, which lies under the buffer tower, is very strong to provide excellent bed adhesion. Unfortunately, it is also difficult to remove. Cutting the support fins away, one at a time, using a utility knife is a good strategy.


Bed adhesion must be perfect. The best print surface for Taulman 618 found to date is 1/4" thick glass with a very coating of Gorilla glue (GG). Let the GG dry before use. The GG/nylon bond is stronger than the glass and better than Garolite, PVA, canvas, lumber, etc.) Apply the GG to the glass as thinly as possible and smooth it out very evenly with a wide putty knife while removing any excess GG too. The printer bed should be heated to approximately 70C and, ideally, an enclosure or temporary insulating tent (made from bubble wrap or other materials) should be used to elevate the ambient printer build chamber temperature to at least 30C. If setup properly, the Gorilla glue bond will be perfect, but it is also very easy to break glass using this method. Prying the part from the glass at a high angle can result in "craters" being pulled from the build plate glass as the glass "prefers" to remain bonded to the nylon part! Window glass is cheap but, perhaps even worse, broken glass is very difficult to remove from the nylon part. Some of it can be pried from the part or smashed when a hammer and then scraped away, but a belt sander will probably be needed to remove all of it, if glass remains stuck to the nylon part. (Wear a respirator mask!) It is best to try to get the long razor blade tool provided in this set between the GG and the glass as much as possible to preclude glass breakage during part removal from the bed:

http://www.harborfreight.com/four-piece-scraper-set-94036.html

A wide putty knife can usually be successfully employed to finish the job of separating the printed part from the glass once a the razor tool as been used to free the part around the perimeter as much as possible. If heat is removed from the glass before removing the part, the stress imparted on the glass by the part may also cause the glass to fracture. Hot glass is stronger than cold glass! Do not use thin glass. 1/4 inch thick glass has been successfully used.

The long razor blade scraper is invaluable not only for cutting under the Gorilla glue around the part's perimeter but also for scraping old GG from the glass after use. (Use water too, in order to reduce the annoyance of static electricity charge on the GG fragments as they are scraped from the glass.) 

A lower receiver printed in solid infill (recommended) usually requires a fully GG-coated glass surface to achieve perfect part retention to the build surface, but lines or broken lines of GG can also be used when maximum part retention is not needed (your smaller and less dense nylon prints).

Two sets of .stl files are provided--one with holes and one missing the takedown and FCG holes. A more accurate lower receiver can usually be produced using an "85% lower" drill template instead of printing all the holes. A superior fit of takedown pins with the upper is usually achieved by manually drilling the holes too. Ideally a tap is used to "chase the threads out" in the buffer tower. Alternatively, an Xacto knife may be useful for cleaning problem areas in the threads, followed by initial fittings of the buffer tube to the tower after heating the parts.

FreeCAD is also an option for importing and editing the model using the provided .stp files.
