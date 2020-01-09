# F17 FFMU
* Fock 17: Free Folk Measure Up
* d33pthought revision of FMDA/Ivan's G17

## overview
This is a writeup for d33pthought's improvements to Free Men Don't Ask & Ivan's G17 model, which is patterned on the Glock G17 gen 3 frame. Included elements of this work:
  * git:
    * this readme:
      * print parameters
      * modifications to FMDA G17
      * verification overview
    * improved model files:
      * [step](models/f17_d33p_ffmu.step) [stl](models/f17_d33p_ffmu.stl)
      * without embellishments: [step](models/f17_d33p_ffmu_no-embellish.step) [stl](models/f17_d33p_ffmu_no-embellish.stl)
    * jig model: [step](models/jig_f17_rails.step) [stl](models/jig_f17_rails.stl)
    * [assembly guide](f17_assembly.md)
    * [public pgp keys](verification/public_keys.pgp):
      * d33pthought:
        * github master key:  `6B2062CCB178107C9FC3CA3209978FA36F146505`
        * github signing key: `10DBC5509AF9E4DE58A7937C21A5E4B5F4209362`
        * keybase:            `85C2CE700955C042689F32CFC8597C06BED287DA`
      * ctrlpew:              `7E661D686F0CDA8B`
        * downloaded via keybase in early Jan 2020 - no additional verification performed
        * (ctrlpew is only det_disp admin with listed public pgp key)
    * [checksums for model files](verification/model_checksums_sha512)
  * video assembly tutorial at gunstreamer:
    * [1: support removal 1](https://gunstreamer.com/v/1G7QBt?b=1)
    * [2: support removal 2](https://gunstreamer.com/v/px4hbc?b=1)
    * [3: drill holes](https://gunstreamer.com/v/TtgeFk?b=1)
    * [4: thread frame](https://gunstreamer.com/v/8u7zSC?b=1)
    * [5: rails](https://gunstreamer.com/v/rY4VNY?b=1)
    * [6: frame parts](https://gunstreamer.com/v/FANFyn?b=1)
    * [7: slide](https://gunstreamer.com/v/ewnXTC?b=1)
    
  * trailer: [gunstreamer](https://gunstreamer.com/v/tWMFlL?b=1)

## acknowledgements
* Freemen Don't Ask & Ivan
* 304machining re contributions to rail design
* [FOSSCAD](https://fosscad.org/fc/) & [Deterrence Dispensed](https://keybase.io/team/det_disp) communities
* [Defense Distributed](https://defdist.org/)
* KS
* increasingly totalitarian countries for incentivizing gun-work, modeling, and printing

## materials
* 3d printer: Prusa MK3S
  * extruder nozzle: Ev3DM Tungsten Nozzle 1.75mm x 0.40mm
* calipers (for slicer filament measurement)
* printer filament: eSun PLA+ (including light blue, yellow, green, red)

## print settings
* slicing:
  * slicer: slic3r Prusa Edition v2.1.0
  * filament thickness as measured by caliper: ~1.70mm to 1.73 (depending on color/roll)
  * temp: 220 (225 & 230 also seem to work well)
  * resolution: 0.15mm (performed some at 0.10mm with some nicer detail but longer print time)
  * orientation: magwell up
    * with magwell down: significantly increases filament usage and print time, as well as surface (rather than interior) support artifacts
  * infill: 100%
  * supports:
    * z-contact: 0.20mm (0.15mm also works but it's more difficult to remove supports)
    * pattern: rectilinear (didn't see a huge difference vs. honeycomb when not using sheaths)
    * sheath: no (tried both ways, didn't seem to get a lot of help from sheath and it makes support removal much more difficult)

## modifications to FMDA/Ivan G17

### orientation terms
* z-axis: superior/inferior, top/bottom (top = where frame meets slide, even though printed magwell up)
* x-axis: anterior/posterior, front (muzzle) / back (tang)
* y-axis: left/right (with muzzle forward), mid/lateral

### magazine positioning & release
* **mag spring pocket & channel**
  * **depth** increased (model issue): model does not leave room for spring. this pocket channel re-created taking into account spring length. note spring bend degree requires greater height
    * mag spring length: 36.5mm
    * spring pocket depth on mag release: 2.35mm
    * pocket bottom to mag release shelf:
      * initial fmda/ivan: 28.5mm (protrusion: 8mm; too much protrusion regardless of bend)
      * changed to: `34.375` mm (protrusion: 2.125, d=+5.875)
  * **window** added to spring pocket to better visualize spring & assist in clearing residual support
  * **narrowed** pocket width to better retain spring
  * **fulcrum** point of channel reconfigured for optimizing tension & mag release travel
* **mag release shelf** (print issue): 3d print overhang artifact introduces significant friction in left/right movement of mag button. giving slightly extra clearance allows smooth movement without requiring filing, and without compromising function
* **mag stop** (model issue): in glocks & p80s there is a protrusion in left inner top magwell that prevents mags from being inserted too far with forceful insertion. this was added

### slide lock spring pocket
* **depth increase** (model issue): pocket in model not deep enough to allow spring (when under tension) to remain under front rail block (an issue given recoil rod going over this)
  * increased to `11` mm
  * related measurements: 14.5mm from pocket end to end of bend, rail mid/lower vertical thickness ~5.2mm, init fmda pocket depth ~6.4mm = protrusion of ~2.9mm, without taking into account pocket angle
* **width narrowed**: to `2.9` mm (from 3.20mm, note spring width ~2.39mm)
* **thickness increased**: to `1` mm in order to compensate for printer variance that may preclude spring insertion (from 0.839mm)
* **anterior/posterior clearance increase**: pocket in model too close to slide lock to allow spring to properly be depressed into recess for articulation with slide lock
  * distance from anterior inferior aspect of anterior slide lock wall to posterior aspect of pocket: 11.70mm (from 10.102mm)
* bevels removed - the only function they might serve is helping slide the spring into the pocket. a flatter surface seems easier to deal with re supports (in addition to design changes)

### slide & rail fitment
* **locking block post trimming** (model issue): in the path of the slide regardless of print settings
* **top frame clearance with slide** (model issue): the frame and slide need clearance. Without enough clearance you will get friction (interference with cycling) and may have difficulty aligning the slide with the rails
* **rear rail shelf clearance** (model issue): no clearance for shelf/rail - this was added (`0.2` mm)
* **rear rails: distance between slightly narrowed** (model issue):
  * changed to match front rail inter-distance
  * rear rails in initial model are slightly wider than front rails
    * front rail outer width: 23 mm
    * rear rail outer width: 23.25 mm
  * measurement check: inner rear frame width of 20.072mm (from 20.322mm)
  * rationale:
    * gives slide/rails slightly more L/R clearance
    * if set too wide will have to compensate by loosening rear rail screws (requires more expertise to fit the slide to rails properly and increases chance of screw walking)
  * downside: despite being closer to spec, reduces clearance between rear rails & trigger-assembly

### trigger housing L/R shift (model issue)
* moved left by `0.3` mm
* rationale:
  * reduce friction between R trigger assembly components, frame, and slide
    * connector/bar/cruciform against R frame & rail
    * top connector with slide
  * prevent/reduce-chance-of ejector slamming into right side of slide plate
* if move ***too far left*** potential issues:
  * top of connector may not have enough contact with slide resulting in a failure of reset and potentially chain fires
  * increased friction of cruciform with left rear slide rail
* crude quick index: insert mag with slide off - where does ejector align with mag vs. standard glock?
* measurement check via measuring inner trigger housing wall to outer/lateral frame (flat main faces):
  * initial: right=8.65 mm, left=7.15 mm
  * modified: right=8.95 mm, left=6.85 mm
    
### trigger & lower trigger guard clearance (3d print issue)
* glock specs leave very little lower trigger clearance
* 3d print overhang/support artifact is enough to contact trigger, with this friction potentially interfering with pull and reset
* cut into lower trigger guard to increase trigger clearance room

### pin hole modifications

#### trigger housing pin
* moved anteriorly to reflect hole placement on housing
  * within trigger housing pocket, center of housing pin `2.797` mm from front wall vs. FDMA 3.559 mm (d=0.762mm)
* while this doesn't seem perfectly aligned, the alignment is improved
* thanks to keybase user frankfarter for help with this dimension

#### trigger pin
* moved up/superiorly: `3.345` mm from locking block bed to pin center vs. 3.195 mm in FMDA (d=0.15mm)
* rationale: address problems getting pins in due to obscuration by locking block (vertical misalignment between locking block & frame)
  * current work around for FMDA model is to remove a small amount of the top part of the locking block hole to allow the pin in (which may be done unknowingly to just "get the pin to fit") - this can be done with a small steel flathead screwdriver with the locking block in the frame
* distance between locking block & trigger pin centers in top/bottom axis kept the same at `7` mm
* ant/post dimensions kept constant (2.4mm from center locking block to trigger pins, 78.291mm from anterior aspect of rear/top frame tab)

#### sizing
 sized the holes to:
  * 4mm (trigger)
  * 3mm (front rail block, locking block, trigger housing)
  * 2.3mm (rear rails)
  
* rationale - based on post processing method:
  * using drill bits (default assumption w sizes above)
    * rationale:
      * these sizes make it relatively easy to use a drill bit to clear out overhang material
      * too large size holes: may increase chance of introducing asymmetry (in addition to obviously increasing risk of loose pins if too far)
      * too small: having to remove too much material may increase chance of introducing angle to cylindrical pin channel. tried using half spheres with center orientation point and it was more difficult vs. just the open 3 & 4mm sizes
      * rear rail size works well with screws acting as tapping tools
  * using screw drivers to clear out overhang material (here only for reference)
    * increased all hole diameters, except rear rails, by 0.2mm
    * the extra diameter accommodates some for the overhang material
    * used this method for first few drafts. not very difficult (just take a small flathead and remove the visually obvious overhang material in the holes)
    * however, involves more troubleshooting re potentially removing more non-overhang material with associated risk of creating asymmetries or overly-large holes
    * incremental removal with pin fit testing required, which seems harder for noobs than just using a drill bit
    * this is obviously also inherently less accurate - if taking extra material into account re diameter then increased risk of misalignment

## testing in 2019

* mag-dump to failure
  * with mag dumping ~80 rounds at a time, failure achieved at ~120 rounds with deformation of the slide lock region
    * anterior slide lock wall with rearward deformation in shape of rear of recoil rod
    * slide lock itself sticking slightly into frame at superior posterior aspect due to milder deformation there
    * functionally resulted in failure to return to battery
    * slide and slide lock were extremely hot to the touch, likely exceeding PLA's transition temperature
* subsequent testing with ~33 round mag dumps without any appreciable problems - though did switch slides after dumps when slide became too hot to touch with bare hands
* would expect that various readily-available nylon-based filaments would not exhibit the failure noted above

## ongoing modifications thoughts
* when issues with fit and function - these might be classified into:
  * model problems (3d printing agnostic): e.g. pocket too large or small in model for known dimensions of part that goes into it
  * print problems: e.g. support interface artifact interfering with trigger reset via increased recoil spring friction
* while ostensibly many of mods in this revision address model issues, some modifications may be overly optimized for specific print setup/settings
* identifying such setup-specific optimizations will help make this model more generalizable for printing well in different print environments
* much of the power and appeal of 3d gun printing is in lowering of the skill/tools threshold for manufacturing compared to machining
* thus making it easier to take the model to a functional firearm can amplify this power and appeal
* unresolved issues:
  * friction between rear trigger housing assembly & rear rails, resulting in a functional but often gritty trigger
    * with straight trigger pull gun seems to "jump" slightly to right
    * rails that have a shorter outward extension from midline might resolve this by allowing rails to be moved slightly from midline without increasing slide friction too much. without shortening this dimension of the rails though, increased slide/rear-rail friction will likely result in malfunctions. for now the gritty trigger seems preferable to malfunctions.
  * fitment into holsters
    * holsters like bladetech use the shape of the trigger guard to yield a tactile "click"
    * no significant click with this version - either due to modifications to have trigger clear guard, or due to initial FMDA differences from stock g17

## verifying files

### pgp
PGP can be used to increase confidence you are working with valid model files that haven't been tampered with. The details of verification will vary depending on computer platform (duckduckgo is your friend). For reference the details that follow are for my linux distribution.

Overview:
  * start with file to verify, a signature that corresponds that file, and the public key used to create the signature
  * verify the signature actually came from the public key and is valid
  * use the verified signature to check if the file is valid
  
Steps:
  * obtain public key of signer
    * e.g. obtain d33pthought's public key from github repo, keybase, and another trusted individual and notice that it's the same from all sources. in this repo it is contained within the [public_keys.pgp](verification/public_keys.pgp) file
  * import the public key:
    * `gpg --import PUBLIC_KEY`
    * e.g. from root of f17 ffmu dir: `gpg --import verification/public_keys.pgp` (but *should* get pgp file from trusted other source)
    * this adds the public key to your local public key ring (a collection of public keys)
  * check that it's imported and note the key's keyid:
    * `gpg --list-keys --with-subkey-fingerprint`
  * check the signature file against the signing key
    * `gpg --verify SIGNATURE_FILE`
    * e.g. from f17 ffmu root dir: `gpg --verify verification/f17_d33p_ffmu.stl.asc`
    * in the output should be:
      * using key and then the keyid matching that of the one you obtained above (i.e. using the right key!)
      * "Good signature" (the signature is indeed that from the right key)
  * check the file against the signature
    * `gpg --verify SIGNATURE_FILE FILE_TO_VERIFY`
    * e.g. for f17 stl from f17 ffmu root dir: `gpg --verify verification/f17_d33p_ffmu.stl.asc models/f17_d33p_ffmu.stl`
    * similar to verifying the signature, in the output should be:
      * using key - with the appropriate keyid
      * "Good signature"

When is this useful? If you obtain the file, signature, and key from the same source then this is pointless because all three could have been tampered with. If you obtain the public key from a trusted source then this procedure provides a degree of confidence that the file has not been tampered with.

### checksums
Specifics may differ on different platforms. On my linux distribution check via `sha512sum FILENAME` then comparing the result to that listed in the checksum file. I you get the checksums and files from the same place, then a malicious actor could just change both. So try and correlate checksums with a trusted source. To get all checksums at once, enter the directory with model files and run `sha512sum *`

## feedback
* please report if you have problems, particularly if you have taken associated measurements of problem regions of your print re above modification goals
* details and clarity are appreciated in feedback - e.g. reporting "0% modifications necessary" when you had to spend an hour filing and dremeling hurts the cause
* feedback venues include:
  * keybase: [det_disp](https://keybase.io/team/det_disp) & [fosscad](https://keybase.io/team/fosscad_org) groups
  * [fosscad git](https://github.com/maduce/fosscad-repo) run by maduce