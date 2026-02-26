	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80296E0

sub_80296E0
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne %4
	adds r1, #1
	cmp r1, #5
	bne %1
	movs r1, #0
1
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne %4
	adds r1, #1
	cmp r1, #5
	bne %2
	movs r1, #0
2
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne %4
	adds r1, #1
	cmp r1, #5
	bne %3
	movs r1, #0
3
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne %4
	movs r0, #1
	bx lr
4
	movs r0, #0
	bx lr

	END
