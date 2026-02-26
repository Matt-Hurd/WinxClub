	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8001818

sub_8001818
	ldr r1, [r1]
	lsls r3, r1, #0x1c
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x15
	lsrs r3, r3, #0x1c
	cmp r2, #0
	bne %7
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x1c
7
	movs r1, #0
	cmp r3, #1
	beq %9
	cmp r3, #3
	beq %10
	cmp r3, #5
	beq %11
	cmp r3, #7
	bne %8
	movs r1, #8
8
	cmp r2, #2
	beq %12
	cmp r2, #0xa
	bne %13
	lsls r1, r1, #1
	b %13
9
	movs r1, #0x10
	b %8
10
	movs r1, #0xc
	b %8
11
	movs r1, #9
	b %8
12
	lsls r3, r1, #1
	adds r1, r3, r1
13
	muls r0, r1
	bx lr

	END
