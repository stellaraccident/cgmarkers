POVRAY = povray
CONVERT = convert

BUILT_FILES = bluedot_100x100.png bluedotm_std.png bluedotm_hi.png

all: $(BUILT_FILES)

clean:
	rm -f $(BUILT_FILES)

bluedot_100x100.png: bluedot.pov
	$(POVRAY) +I$< -O$@ +W100 +H100 +A +AM2 +UA
	
bluedotm_std.png: bluedot_100x100.png
	$(CONVERT) $< -scale 15x15 $@
	
bluedotm_hi.png: bluedot_100x100.png
	$(CONVERT) $< -scale 30x30 $@