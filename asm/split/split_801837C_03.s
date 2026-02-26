	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gGlobalFunctionTable

	thumb_func_start GetNextGlobalFunction

GetNextGlobalFunction
	ldr r0, _080183B8
	subs r0, #4
	ldrb r0, [r0]
	bx lr

	ALIGN
_080183B8 DCDU gGlobalFunctionTable

	END
