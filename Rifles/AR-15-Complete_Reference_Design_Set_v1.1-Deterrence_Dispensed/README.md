# AR-15 Complete Reference Design Set

#### Author
Jacob and Ivanthetroll


#### Version
1.1

#### Description

This is, and has been, a massive project.  Lots had to be done to get this model to spec, but as a result of much labor, many late nights turned early mornings, and plenty of deliberation, we have what we believe to be the most accurate complete 3D AR model in existence.  Manufacturers won't share their models so we've made these for the world; the goal is to spread these as far and wide as possible.  If someone had the means, we believe every part in this assembly could be made and assembled into a working firearm.

This isn't the end of this endeavour. We still need to do rifle-length parts, Pmags, potentially an A1/A2 upper, and a dynamic model (so you could play with springs) which is just nice to have.

We had to create many parts from scratch and also created blue print accurate parts based on the models in the previous DD AR-15. Everything in this assembly is believed to be good by us since most of the parts are dimensioned after original blueprints or were dimensioned after our own physical AR-15 parts.  

Included is the model in different formats as well as the springs, for example the magazine spring in uncompressed form which you could use to wind your own mag spring to the correct dimensions. 

By the way, if anyone has the ability to do a FOIA request for documents from the respective departments of the US government please do so for the Colt M4 and/or M16-A3/A4 Technical Data Packages/Blueprints and contact @IvanTheTroll12 or /u/JStark1809/. Glock 17/Glock 19 Gen3 Technical Data Packages/Blueprints would be welcome as well.

**Disclaimer:** These files are meant to be used for references purposes. Many of these parts will not function properly and may pose a danger if printed in plastic.


#### AR15 Spring Set

All of the springs for the AR-15 have been modeled and put into the AR15 Springs folder by Ivanthetroll. We thought it would be useful to have a collection of all the springs used in an AR.  In the future, the group plans to work on dynamic models/animations demonstrating the springs compression.  We have done our best to include .stp and .x_t files for each spring in both compressed and uncompressed lengths.  This collection is a work in progress, we are working on a git repo to host them one day soon.

Some springs we found were mil-specs, others had to reverse engineered from existing parts.  None of the springs dimensions are guesses, all are based on existing specsheets or on physic measurements.  We did not spend much time making flat-ends on springs that have them, future updates will include that.

DM @IvanTheTroll12 on twitter for questions or to just say hello.  Also, hit us up if you find blatant errors in the springs, We are only human.


#### Changes from what is on the Internet(i.e., Grabcad.com)

* Added newly modeled lower receiver
* Added newly modeled bolt
* Added newly modeled chamber and rifling
* Added newly modeled magazine assembly
* Added newly modeled forward assist assembly
* Added newly modeled dust cover assembly
* Added newly modeled disconnector
* Added newly modeled SAAMI-Spec 5.56x45mm cartridge
* Added newly modeled cam pin
* Added newly modeled handguard front cap
* Added newly modeled barrel extension indexing pin
* Added newly modeled swing swivel rivet
* Added all newly modeled pins,springs,washers,detents and threads
* Corrected upper receiver
* Corrected bolt carrier
* Corrected barrel
* Corrected front sight/gas block
* Corrected pistol grip
* Corrected buffer tube
* Corrected barrel extension
* Corrected charging handle
* Corrected charging handle latch
* Corrected buffer tube weight assembly
* Corrected entire fire control group

**Note:** See Corrected AR15 Model Detailed Change Notes for more information.

#### Change Detail Notes

Many of these parts have been created from scratch because much of AR-15 CAD out there is out of spec and is so incorrectly dimensioned and modeled that it was not possible to just correct existing CAD files.

CAD for many AR-15 parts could not be found online and thus we made them from scratch. The following parts had to be heavily modified to result in blueprint accurate or at least functional parts.

##### Upper Receiver
* Pin hole for forward assist was wrong
* Forward assist hole was wrong
* 'Mag seat' was way off
    * Charging Handle Cutout was wrong
    * Charging handle seat was wrong
    * Pin holes and various other areas not on spec dimensions

##### Bolt Carrier
* Pick for rounds and reliefs for mag lips were done wrong

##### Barrel
* Rifling was completely wrong. Changed to Colt specification
* Chamber was completely wrong. Changed to SAAMI specification
* Barrel needed holes 'drilled' for the gas block to pin on

##### Gas Block/Sight
* Gas block needed holes 'drilled' in the correct spots to line up right with the barrel

##### Pistol Grip
* Missed the cavity for the fire selector detent spring

##### Buffer Tube
* Needed slot cut for castle nut retaining plate

##### Buffer Tube Weight
* Buffer tube bumper, weights and discs modified to be on spec

##### Barrel Extension
* Needed wider indexing pin hole as well as replacement of inappropriate screw to proper indexing pin

##### Charging Handle
* Needed to be narrowed on the T section, and thickened along the body

##### Charging Handle Latch 
* Needed to be thickened to spec

##### Fire Control Group 
* Almost all parts modeled wrong

#### Changelog

##### v1.1
* Removing Kyle from the Authors section. 
* Added "fillet" to the "extractor".

