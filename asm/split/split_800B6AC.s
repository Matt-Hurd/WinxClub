	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80116D4

	thumb_func_start sub_800B6AC

sub_800B6AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80116D4
	movs r0, #0
	str r0, [r4, #0xc]
	pop {r4}
	pop {r3}
	bx r3

	END
