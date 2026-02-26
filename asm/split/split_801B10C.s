	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __nw__FUi
	IMPORT sub_80154DC

	thumb_func_start sub_801B10C

sub_801B10C
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	ldr r0, _0801B464
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0xb5
	bl sub_80154DC
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r1, [r0, #0x1c]
	movs r2, #0xfe
	lsrs r1, r1, #1
	lsls r1, r1, #1
	bics r1, r2
	adds r2, #2
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #2
	bics r1, r2
	str r1, [r0, #0x1c]
	movs r0, #0x29
	lsls r0, r0, #5
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	movs r0, #0
3
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	cmp r0, #0x64
	str r1, [r2, #0x20]
	blo %3
	adds r0, r4, #0
	b %1

	ALIGN
_0801B464 DCDU 0x00000524

	END
