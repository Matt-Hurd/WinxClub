	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8012126

	thumb_func_start sub_800B790

sub_800B790
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [r4, #8]
	lsls r3, r3, #0x1b
	bmi %7
	bl sub_8012126
7
	pop {r4}
	pop {r3}
	bx r3

	END
