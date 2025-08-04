	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gGlobalFunctionTable
	IMPORT __call_via_r0

	thumb_func_start SetGlobalFunction
SetGlobalFunction
	ldr r2, _080183B8
	lsls r1, r1, #2
	str r0, [r2, r1]
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start SetNextGlobalFunction
SetNextGlobalFunction
	ldr r1, _080183B8
	subs r1, #4
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start GetNextGlobalFunction
GetNextGlobalFunction
	ldr r0, _080183B8
	subs r0, #4
	ldrb r0, [r0]
	bx lr

	thumb_func_start MainLoop
MainLoop
	push {r3, r4, r5, lr}
	ldr r5, _080183B8
	subs r4, r5, #4
_0801839E
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl __call_via_r0
	ldrb r0, [r4]
	cmp r0, #0x18
	bne _0801839E
	pop {r3, r4, r5}
	pop {r3}
	movs r0, #0
	bx r3
	ALIGN
_080183B8 DCDU gGlobalFunctionTable
	END
