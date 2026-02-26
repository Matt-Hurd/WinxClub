	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8004F42

	thumb_func_start sub_800501C

sub_800501C
	push {r3, lr}
	movs r2, #0
	bl sub_8004F42
	movs r1, #0
	cmp r0, #0
	beq %23
	ldr r1, [r0]
23
	add sp, #4
	pop {r3}
	adds r0, r1, #0
	bx r3
	ALIGN

	END
