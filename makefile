fc.so: fc.c fc.h
	gcc -shared -fPIC -o $@ $<

tex: tex.c fc.h
	gcc -L. -l:fc.so -o $@ $<

xsInit:
	h2xs -A -n xsModule
	cp xsModule.xs xsModule/xsModule.xs
	cp Makefile.PM xsModule/Makefile.PM
.PHONY: xsInit

