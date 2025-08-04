	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A

	thumb_func_start sub_803F654
sub_803F654
	push {r4, r5, r6}
	adds r2, r0, #0
	adds r2, #0x80
	movs r4, #1
	lsls r4, r4, #0x11
	ldr r3, [r2, #0x2c]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0xe
	bics r3, r4
	orrs r1, r3
	lsls r3, r1, #0xe
	str r1, [r2, #0x2c]
	lsrs r5, r4, #6
	cmp r3, #0
	ldr r1, [r0, #0x2c]
	bge %3
	ldr r3, [r1]
	lsls r4, r3, #0x15
	lsrs r4, r4, #0x1f
	beq %1
	lsls r4, r3, #0x14
	asrs r4, r4, #0x1f
	adds r4, #1
	lsls r4, r4, #0x1f
	lsrs r4, r4, #0x14
	bics r3, r5
	orrs r3, r4
	str r3, [r1]
1
	ldr r1, [r0, #0x70]
	str r1, [r2, #0x20]
	movs r1, #0
	str r1, [r0, #0x70]
2
	pop {r4, r5, r6}
	bx lr
3
	ldr r4, [r1]
	lsls r3, r4, #0x14
	lsrs r6, r3, #0x1f
	beq %4
	asrs r3, r3, #0x1f
	adds r3, #1
	lsls r3, r3, #0x1f
	lsrs r3, r3, #0x14
	bics r4, r5
	orrs r3, r4
	str r3, [r1]
4
	ldr r1, [r2, #0x20]
	str r1, [r0, #0x70]
	b %2

	thumb_func_start sub_803F6B4
sub_803F6B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803F6DC
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r4, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq %5
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
5
	pop {r4}
	pop {r3}
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bx r3
	ALIGN
_0803F6DC DCDU gUnknown_03003EA0
	END
