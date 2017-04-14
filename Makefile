overlays := $(patsubst %.dts,%.dtbo,$(wildcard *.dts))

all: $(overlays)

%.dtbo: %.dts
	dtc -I dts -@ -O dtb -o $@ $<

clean:
	-rm -rf *.dtbo
