# f17 free folk measure up assembly
post-processing & part insertion

## materials
* tools
  * drill with 4mm & 3mm bits
  * large & small flathead screwdrivers (my small set: 1.4-3mm)
  * screw/hex tool depending on rear rail screw head type
  * eye protection (avoid filament in eye)
  * needle-nose pliers
* components
  * slide rails: front rail block, larger left rear rail, smaller right rear rail (spooky rails)
  * screws: 4 x 8mm M2.5 screws (I used hex-head from McMaster-Carr)
    * useful to also have 1 x 10mm screw for threading frame to rails
    * hex-head screws make syncing the rail/frame threads easier (tools are generally smaller)
  * M2.5 spring washers x 4 (amazon)
  * gen-3 glock parts kit

## support removal
* I try to only use a set of pliers gripping only support material for most of print (related video: support removal part 1)
  * this reduces marring the surface of the print
  * fingers/fingernails seem to work well for starting support removal on grip anterior & superficial embellishments
  * trigger guard supports can usually be removed without tools by pushing in on one side with a finger, then the other, to loosen and then push out one side
* then I'll transition to a small flathead screwdrivers for: (related video: support removal part 2)
  * remaining support material in mag release shelf & mag release spring regions (if any)
  * slide lock region
  * bottom of grip tang
  * top/bottom of trigger guard
  * large chunks of support in and on pin holes
    * I try to get them roughly cylindrical without taking chunks out of the hole walls proper
  * thumbrest regions
  * surface embellishments with small region-overhangs
    * caution needed to not mar decorations here - small forceful motions perpendicular to surface seem to work best to pop material up without scratching surface

## drill holes & fit pins
* goal:
  * align with opposite side
  * allow pins to fit snugly
    * avoid thor hammering that can damage/deform plastic
    * pins not so loose they'll walk / fall-out
* drill bit sizes:
  * 4mm: trigger pin (lower middle)
  * 3mm: front rail block (anterior), locking block (upper middle), and trigger housing (rear) pins
  * do not need to drill rear rail holes
* process
  * remove overt overhang artifact material with small flathead screwdriver to make holes as cylindrical as possible prior to drilling
  * drill one side at a time to avoid over-drilling
  * keep drill bits as perpendicular to surface as possible, aligning with opposing side
  * incrementally remove filament
    * initially try to remove as little as possible (forward drill through hole, then reverse drill back out only if need to)
    * try pin fitment
    * if too tight then try removing a little more
  * using technique of moving smaller bit around in a circle will decrease accuracy / alignment of holes - minimize this as much as possible
  * make sure all pins fit ok before adding any other parts to frame
    * if they don't fit without parts, why would they *with* parts?
* fit locking block & trigger pins in locking block before proceeding
  * easier to enlarge hole now rather than later take parts out
* if difficulty fitting locking block and/or trigger pins
  * ensure locking block bed is clear of support/artifact material - consider using a small flathead screwdriver to scrape these away
  * to help alignment when inserting trigger pin, consider using a glock tool from the other side -- to help alignment rotate the glock tool while attempting to push pin further
  * if can get get trigger pin but not locking block pin in, look through the hole with other side illuminated by e.g. white paper with light on it -- if you notice that locking block taking a part of the lower pin-hole, consider attempting to scrape off residual support/artifact from top of pinhole using a small flathead screwdriver

## parts assembly

### rear rail insertion
* ensure there is no more support material left on rail shelves or in trigger housing pocket
* sync ("time") threads between rails/frame:
  * for this part try using screws ~2mm longer than those you'll use in final assembly (e.g. 10mm screws instead of 8mm) - this ensure threads reach outer/lateral frame
  * I use a jig to make this easier (optional; model provided)
  * first insert a rear screw from the inside out (the +2mm screw if you have it)
  * depending on head size put hex wrench through opposite hole or angled from top of frame
  * hold rail tightly to inner side of frame (+/- jig)
  * get screw through to opposite side of frame, but do not strongly tighten
  * repeat for other screw on this rail
  * remove rail for which threads synchronized, and repeat process with other rail
* insert screws and washers w proper orientation - do not over-tighten
  * I use 1 spring washer on each rear rail screw

### front rail block
* drop in & insert associated pin, should be a relatively tight fit
* I've had no issues with this - have not required epoxy like Ivan mentioned in assembly video

### slide & rail alignment pre-check
* attach full slide assembly onto front rails
* before getting anywhere near rear rails check slide movement over frame to ensure the presence of only minimal friction with the front rail block
* cautiously/slowly approach rear rails to check alignment
* if alignment ok, proceed to install other frame components as follows

### mag release
* insert mag spring into channel using needle-nose pliers
  * if there is debris in channels, use a small flathead screwdriver from bottom of magwell to clear this out through the window in bottom of spring channel
* insert mag release
  * should go in smoothly without need to file due to added clearance
  * should be able to move left/right without any significant friction
  * non-button side should NOT be able to protrude all the way into magwell
* use a flathead screwdriver to bend the spring into the mag release

### slide lock assembly
* slide lock spring should easily slide into pocket
* lock should easily slide over depressed spring
* if difficulty due to front rail block, take out front rail block to make first spring-insertion easier
* see slide section re tension exerted on slide assembly
* troubleshooting if slide lock spring won't fit
  * use a very small hand-drill set to widen dimensions until spring fits - should not be necessary with increased clearance in model but different filaments & print settings/calibration may introduce inaccuracies requiring correction
  
### trigger assembly
* trigger assembly with housing into its pocket
  * troubleshooting trigger housing insertion
    * if due to print/printer inaccuracy the pocket is not wide enough, first ensure there is no residual support/artifact material in pocket - if so attempt removing with a small flathead screwdriver. attempt to discern what dimension increased friction is at. sometimes removing the trigger bar/spring from housing makes it easier to fit. worst case scenario may need to use a file to incrementally remove material until fitment achieved (should only be required if serious inaccuracy in print)
* trigger down into guard
* trigger housing pin
  
### locking block
* insert block then locking block pin

### trigger pin & slide stop
* insert slide stop - align in trigger hole
* insert trigger pin
* using a glock tool in the opposite side can sometimes help align components for inserting-pin


### slide & rail fitting / tightening
* once have other frame components installed proceed to try slide fitment again
* points of potential friction / resistance - in order as slide pulled back
  * locking block posts - this should be fixed with changes made in this model
  * rear recoil spring guide rod to front of frame, then to lower horseshoe-shape elevation in front of front rail block
    * as with p80 builds these regions can be a source of friction with the spring
    * if this is causing failure to return to battery, test by removing front rail block and doing vertical/45-degree test - raising slide off front of frame should alleviate any friction with return to battery
  * trigger bar arm that articulates with safety plunger
    * this first touches part of the slide, then later the safety plunger itself
  * ejector front must clear slide plate aperture
    * FMDA version is shifted so ejector will orient to smack the right upper aspect of the slide plate
  * left rail front
  * ejector may hit rear striker assembly if oriented too rightwards
  * right rail front
  * slide lock - I found with some iterations strong resistance initially that abated over a few repeat slide removals/insertions. watch the side of the slide lock to see when it engages with slide insertion. for first few times putting slide on may have to manually depress slide lock
  * top of connector with slide
    * slide pushes this in right/left dimension to reset the trigger
    * obviously important, but shouldn't be too much friction/resistance (try comparing to another stock glock if possible)
    
* once slide over rear rails incrementally increase tightness
  * recommend tightening one screw a little, then going through other screws before coming back to same screw
  * check slide movement over front/rear rails in between tightening
  * final tightness
    * no concrete/objective measure for this yet but consider:
      * with 1 washer on each of screws: no gaps between frame/washers/screw-head
      * rails parallel to frame (no tilting)
    * rail tilting might result from:
      * overtightening with non-straight rail or frame threads
      * over-elevated rail shelf (should not be a problem with these model changes)
      * if experiencing this try loosening/tightening screws with slide on
    * possible evidence of over-tightening:
      * distorting frame geometry (bunching up on top of frame where plastic relatively thin)
      * protrusion of screws interiorly beyond rails
      * stripping of hex screw heads
      * increased friction with slide (since tightening pulls rails outwards, decreasing left/right clearance):
        * difficulty getting slide on ***after*** tightening
        * failed vertical dry fire test (see below)
    * possible evidence of not enough tightening:
      * friction between right rail and trigger housing assembly (e.g. connector grinding against rail with trigger pull and/or reset)
    * possible evidence of left/right misalignment
      * unequal left/right clearance of ejector back with back slide plate
      * top of connector not properly engaging slide to reset trigger
      * slide clearly engaging left or right rear rail more

## function checking

### magazine insertion/removal
* smooth insertion (if friction look for residual support, or inspect for dimensional inaccuracies from printing)
* mag release & spring should catch and retain the mag in position with only minimal movement
* forceful insertion should NOT lead to vertical over-protrusion of magazine
  * there is a small protrusion on the left side of magwell that should prevent this (mag stop)
  * if overprotrudes this could lead to feeding issues
* check tension required to fully engage mag release button
* check that magazine drops free easily with normal-force button push

### slide alignment
* as above re rail tightening/fitment
* ensure fully returns to battery

### trigger pull and reset
* note that trigger pull is still slightly gritty vs. stock glock due to thickness of the rear rails
* test with slide off - push connector bar forward (ready to fire) then pull trigger
  * trigger should NOT contact lower guard (fixed in this version)
  * pushing connector forward should be relatively easy
* then test with slide on
  * each slide rack should result in complete trigger reset
* vertical test
  * dry fire trigger
  * pull slide back with barrel pointing upwards
  * very slowly let slide forward so that it doesn't yet go back into battery
  * slowly tilt front of barrel from up to parallel with floor
  * slide should go back into battery shortly after moving from vertical position (~45 deg per glock armorer manual)
  * note: if not to battery due to rear rail tightness, this can be demonstrated by holding muzzle up are rapid return to battery achieved with screw loosening
* troubleshooting:
  * significantly gritty pull and/or reset
  * no reset
    * if you have unresolved issues with reset during dry firing DO NOT LIVE-FIRE
    * sear not re-engaging rear-striker
      * increased friction of trigger housing components against rails and/or frame
        * on right: connector / trigger bar / cruciform
        * on left: cruciform
      * slide not engaging top of connector to pop sear back up
      
## potential malfunctions
* stovepipes / failure to eject
  * consider loss of slide energy from too much friction between slide & frame/rails
    * evidence by increased friction racking slide
    * find and resolve friction points
  * limp-wristing
  * defective extractor assembly or ejector
  * underpowered ammo
  * non-standard unbalanced spring setups
* chain-fire (never happened to me)
  * one trigger pull -> multiple shots
  * see above re trigger pull/reset
