	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80017E4

sub_80017E4
	movs r0, #0
	cmp r1, #1
	beq %2
	cmp r1, #3
	beq %3
	cmp r1, #5
	beq %4
	cmp r1, #7
	bne %1
	movs r0, #8
1
	cmp r3, #2
	beq %5
	cmp r3, #0xa
	bne %6
	lsls r0, r0, #1
	b %6
2
	movs r0, #0x10
	b %1
3
	movs r0, #0xc
	b %1
4
	movs r0, #9
	b %1
5
	lsls r3, r0, #1
	adds r0, r3, r0
6
	muls r0, r2
	bx lr

	END
