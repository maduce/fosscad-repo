#﻿ DEFCAD AR15 Lower Receiver v5.1 GS

### Change log

#### V5.1 gs (glued/screwed)

* Model was split to permit printing of the lower receiver "deck” down on the bed, resulting in better use of the most accurate printer axis (Z-axis) and a very flat deck. 
* Buffer tube "tower" is oriented on the printer bed for maximum strength (FFF print layers are perpendicular to the buffer tube). 
* 10-24 caps screws and 3mm ABS filament "pins" added to connect and bond the two lower receiver sections together. 1/8” to 1/4” rear takedown pin spacer adapter included. 
* Brims attached to models to facilitate printing and reduce the likelihood of the part lifting at corners.

#### V5.1

* Model was corrected to match the AR15 blueprint and permit the use of A1 and A2 butt stocks. This change is required to accommodate the correct capture of the buffer retention detent and spring when assembled with an A1 or A2 style butt stock.
* Rear takedown pin detent/spring hole was added for completeness. The hole is located in the correct location to optionally support the retention of custom slotted takedown pins (non-standard 1/8" pin required).


### Additional V5.1gs details

 For maximum strength, ABS must be printed as hot as possible without causing dimensional or surface distortions. The following process has worked well with a slightly modified Ultimaker (hot end modified to permit higher maximum nozzle temperature) and Ultimachine black ABS filament printed at 275C nozzle temperature.  Two Kisslicer profiles are included, "Pro" and "non-Pro."  Using a “trick” setting, The Kisslicer layer stacking feature reduces solid infill print time by printing only every other layer.  However, if a 275C nozzle temperature is not possible, a different ABS brand and the slower "non-pro" Kisslicer settings are recommended in order to maximize layer bond strength at lower temperature. If the “Pro” version of Kisslicer is not available or layer stacking not enabled, print times will increase by approximately 33%.

 Testing was completed using 0.060mm layers and a 0.5mm nozzle. Thin layers reduce stress and warping, but layer bonding is also reduced--hence the need for a high nozzle temperature.  Partial delamination is easily identified in dark ABS colors by the presence of lighter color layer lines, or even short lighter striations, and is a symptom of a structurally weak part. 

 Just because a printed part does not curl from the bed as it cools does not mean the part is necessarily dimensionally accurate and strong. In general, low nozzle temperatures and/or low build chamber temperatures result in poor layer bonding or partial layer delamination during cooling soon after layer deposition (as is often evidenced by light colored striations) but a part can also lift from the bed as a result of cooling stresses and preclude delaminations. 

 Dimensional distortions, “waisting,” or sagging are often the result of excessive build chamber temperatures. Some printer hot ends become prone to jams at high nozzle temperatures. Usually, the strongest possible printed ABS part can be produced using the highest temperatures consistent with the printer design while also minimizing the over-temp defects mentioned here.

The following process was used.  Adjust Kisslicer profiles as appropriate for the printer and materials used.

1. ABS-juiced Kapton tape is applied to the build surface (virtually no lifting of the tape or part should be tolerated).

2. The fan remains off for nearly the entire print, except as noted.

3. Once the first layer height, level, and integrity is assured, a bubble wrap "tent" is wrapped around the printer and closed at the top, except for a slot for the Bowden tube/filament feed.

4. Bed temperature ~120C for the first four layers but reduced to ~90C after the fourth layer.

5. Low speed fan used from 0.30mm to 4.5mm (fan must be controlled manually or gcode patched).

6. Low speed fan setting used for last few layers of trigger guard underside (handled by Kisslicer minimum layer time feature).

The first printed layer bonds best to the Kapton tape at a high bed temperature and does not lift at the corners as the part cools. However, the bed temperature must be reduced after approximately the fourth layer, otherwise the build chamber temperature can rise too high and unacceptable distortions will occur within the part. "Waisting" is a common shrinkage-caused failure where the walls of the print shrink inward over a number of layers.  A low speed fan is used from Z=0.30mm to Z=4.50mm to preclude shrinkage in this warmer region early in the print build (it is close to the heated bed where the air temperature is elevated).

Kisslicer generates excessively thick support structures.  A Dremel style rotary tool and a variety of both metal and sanding bits are helpful for destroying and removing the support, along with a variety of punch pin sizes, razor blades (scrape the surface as when shaving) and sandpaper.

All parts and joining surfaces are bonded with ABS cement. Two 10-24 x 2” socket head caps screws are installed in the upper holes and a third 10-24 x 5/8” screw is installed in the lower hole. The clearance between the 1/8” rear takedown pin and 10-24 x 2” screws is very tight. Four lengths of 3mm ABS plastic are bonded into the buffer tower before assembly and trimmed. Do not use an excessive quantity of cement in the threaded 10-24 screw holes, else the threads will be completely destroyed and will not pull the parts together at all.  An external clamp is advised for pressure, regardless of the condition of the threads.  Trial fitting of the screws and hand adjustment of the parts is also advised.  Chase all holes with a drill and/or reamer and chase all threads with a tap after printing and solvent treatment. Don't forget to tap the grip hole too.  The model does not contain threads in this hole.

The entire receiver should be dipped in solvent (acetone or MEK) briefly to improve strength (solvent bonds layer imperfections near wall external surfaces).  MEK works faster than acetone. Allow the part to harden for may days or a week or more before use.

The lower can be best fitted to the upper in assembly with the upper.  Print the upper rear takedown hole adapter spacer and drive it into the upper rear takedown pin hole.  It should be a tight fit in the hole.  Scale and reprint the spacer to obtain a tight fit, if necessary.  Assemble and tightly clamp the upper to the lower in the correct position. Ideally, the lower reveiver's “buffer tower” should have no gap with the aft curved surface of the upper receiver.  Make adjustments to the plastic, if warranted. Drill though the lower 1/8” rear takedown hole and halfway into the spacer.  Drill similarly from the other side of the lower receiver, If possible, first drill with a #31 drill bit and final drill with a 1/8” drill bit. Insert a pin (a 12D nail can be cut and polished) and check for fit.  Remove the pin and detach the upper from the lower without disturbing the spacer adapter (it should be a tight press fit). Next position the upper in position with the lower, but offset from the lower with the mating surface of the upper resting flat on the edge of the lower receiver's “deck.”  Insert a pin through the upper spacer adapter and into the lower. Clamp or stabilize the upper and lower receivers in this offset relationship. An accurate lower receiver drill jig can also be used in place of the upper receiver. Now the front pivot pin hole can be drilled to 1/4” using the upper or the drill jig as a template.  A transfer punch is useful here to mark the lower.  By using a transfer punch, a drill bit need not be run through the upper pivot hole. For best accuracy, an undersized hole can also be drilled in the lower by using a brass sleeve in the upper pivot hole as a jig. It is advisable to trial drill the lower pivot pin hole under-size and check for concentric alignment with the upper pivot hole before drilling or reaming the lower pivot pin hole to final size.

