	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_802F0D4

sub_802F0D4
	adds r1, r0, #0
	movs r0, #0
	push {r4}
	b %75
74
	adds r1, #1
75
	ldrb r2, [r1]
	cmp r2, #0
	beq %76
	movs r3, #0
	ldrsb r2, [r1, r3]
	subs r2, #1
	cmp r2, #9
	bls %74
76
	subs r1, #1
	movs r2, #1
	b %78
77
	muls r3, r2
	adds r0, r3, r0
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	subs r1, #1
78
	ldrb r3, [r1]
	cmp r3, #0
	beq %79
	movs r3, #0
	ldrsb r4, [r1, r3]
	subs r3, r4, #1
	cmp r3, #9
	bls %77
79
	pop {r4}
	bx lr
	ALIGN

	END
