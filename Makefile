overlays := $(patsubst %.dts,%.dtbo,$(wildcard *.dts))

all: $(overlays)

Q=@

%.dtbo: %.dts
	@echo "DTC $@"
	$(Q)dtc -I dts -@ -O dtb -o $@ $<

clean:
	-rm -rf *.dtbo
