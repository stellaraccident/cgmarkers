POVRAY = povray
CONVERT = convert

BUILT_FILES = bluedot_100x100.png bluedotm_std.png bluedotm_hi.png \
	pinkpin_full.png pinkpin_cropped.png pinkpin_hi.png pinkpin_std.png

all: $(BUILT_FILES)

clean:
	rm -f $(BUILT_FILES)

bluedot_100x100.png: bluedot.pov
	$(POVRAY) +I$< -O$@ +W100 +H100 +A +AM2 +UA
	
bluedotm_std.png: bluedot_100x100.png
	$(CONVERT) $< -scale 15x15 $@
	
bluedotm_hi.png: bluedot_100x100.png
	$(CONVERT) $< -scale 30x30 $@
	
pinkpin_full.png: pin.pov
	$(POVRAY) +I$< -O$@ +W400 +H400 +A +AM2 +UA
	
pinkpin_cropped.png: pinkpin_full.png
	$(CONVERT) $< -crop 190x380+105+28 +repage $@
	
pinkpin_hi.png: pinkpin_cropped.png
	$(CONVERT) $< -scale 30x60 $@

pinkpin_std.png: pinkpin_cropped.png
	$(CONVERT) $< -scale 15x30 $@
