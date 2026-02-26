	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT CallSoftReset
	IMPORT FadeToBlack
	IMPORT SetNextGlobalFunction
	IMPORT __call_via_r1
	IMPORT sub_80050FA

	thumb_func_start sub_803B318

sub_803B318
	push {r4, lr}
	adds r4, r0, #0
	bl FadeToBlack
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r0, #0
	bl sub_80050FA
	movs r0, #2
	bl SetNextGlobalFunction
	bl CallSoftReset
	pop {r4}
	pop {r3}
	bx r3

	END
