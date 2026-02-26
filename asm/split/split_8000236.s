	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8000236

sub_8000236
	push {r4, r5}
	b %10
5
	movs r3, #0
	ldrsb r4, [r0, r3]
	adds r3, r4, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi %6
	subs r4, #0x20
6
	lsls r5, r4, #0x18
	movs r3, #0
	ldrsb r4, [r1, r3]
	asrs r5, r5, #0x18
	adds r3, r4, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi %7
	subs r4, #0x20
7
	lsls r3, r4, #0x18
	asrs r3, r3, #0x18
	cmp r5, r3
	beq %9
	subs r0, r3, r5
8
	pop {r4, r5}
	bx lr
9
	adds r0, #1
	adds r1, #1
	subs r2, #1
10
	ldrb r3, [r0]
	cmp r3, #0
	beq %11
	ldrb r3, [r1]
	cmp r3, #0
	beq %11
	cmp r2, #0
	bne %5
	b %12
11
	cmp r2, #0
	bne %13
12
	movs r0, #0
	b %8
13
	movs r3, #0
	ldrsb r1, [r1, r3]
	ldrsb r0, [r0, r3]
	subs r0, r1, r0
	b %8

	END
