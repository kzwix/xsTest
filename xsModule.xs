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

void
kb()
	CODE:
		printf("Fonction kb(): Avant appel kzB(i, str)\n");
		kzB(18, "Kikoolol");
		printf("Fonction kb(): Après appel kzB(i, str)\n");

int
kc(i, str)
int i
char * str
	CODE:
		printf("Fonction kc(): Avant appel kzB(i, str)\n");
		kzB(i, str);
		printf("Fonction kc(): Après appel kzB(i, str)\n");
	OUTPUT:
		23


