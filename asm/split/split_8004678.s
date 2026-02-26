	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __nw__FUi

	thumb_func_start sub_8004678

sub_8004678
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	bne %1
	movs r0, #0x10
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	ldrh r1, [r0]
	lsls r2, r4, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	lsrs r2, r2, #0x1e
	orrs r2, r1
	movs r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	movs r1, #4
	bics r2, r1
	strh r2, [r0]
2
	pop {r4}
	pop {r3}
	bx r3

	END
