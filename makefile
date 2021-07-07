fc.so: fc.c fc.h
	gcc -shared -fPIC -o $@ $<

tex: tex.c fc.h
	gcc -L.  -o $@ $< -l:fc.so

xsInit:
	h2xs -A -n xsModule
	cp xsModule.xs xsModule/xsModule.xs
	cp Makefile.PM xsModule/Makefile.PM
.PHONY: xsInit

