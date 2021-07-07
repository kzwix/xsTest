#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "../fc.h"

MODULE = xsModule		PACKAGE = xsModule

void
ka()
	CODE:
		printf("Fonction ka(): Avant appel kzA()\n");
		kzA();
		printf("Fonction ka(): Après appel kzA()\n");

