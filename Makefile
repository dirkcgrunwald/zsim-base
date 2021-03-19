

.phony: zsim clean

zsim: 
	@echo "Detecting whether pin directory exists..."
	@if [ -d "./pin-2.14" ]; then echo "Found pin-2.14"; else echo "You need pin-2.14 directory"; fi
	PINPATH=$(CURDIR)/pin-2.14 scons
	@echo "If compilation fails and says hdf5 cannot be found, run make clean and retry"

release:
	@echo "Detecting whether pin directory exists..."
	@if [ -d "./pin-2.14" ]; then echo "Found pin-2.14"; else echo "You need pin-2.14 directory"; fi
	PINPATH=$(CURDIR)/pin-2.14 scons --r
	@echo "If compilation fails and says hdf5 cannot be found, run make clean and retry"

deepsjeng_r:
	./build/release/zsim ./tests/2DOC/deepsjeng_r/deepsjeng_r.cfg

exchange2_r:
	./build/release/zsim ./tests/2DOC/exchange2_r/exchange2_r.cfg

gcc_r:
	./build/release/zsim ./tests/2DOC/gcc_r/gcc_r.cfg

leela_r:
	./build/release/zsim ./tests/2DOC/leela_r/leela_r.cfg

mcf_r:
	./build/release/zsim ./tests/2DOC/mcf_r/mcf_r.cfg

omnetpp_r:
	./build/release/zsim ./tests/2DOC/omnetpp_r/omnetpp_r.cfg

perlbench_r:
	./build/release/zsim ./tests/2DOC/perlbench_r/perlbench_r.cfg

x264_r:
	./build/release/zsim ./tests/2DOC/x264_r/x264_r.cfg

xalancbmk_r:
	./build/release/zsim ./tests/2DOC/xalancbmk_r/xalancbmk_r.cfg

xz_r:
	./build/release/zsim ./tests/2DOC/xz_r/xz_r.cfg

bwaves_r:
	./tests/2DOC/bwaves_r/run.sh

cactuBSSN_r:
	./build/release/zsim ./tests/2DOC/cactuBSSN_r/cactuBSSN_r.cfg

lbm_r:
	./build/release/zsim ./tests/2DOC/lbm_r/lbm_r.cfg

clean:
	@rm ./.sconsign.dblite
	@rm -rf ./build
