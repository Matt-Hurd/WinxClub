	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA

	thumb_func_start sub_8040034
sub_8040034
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r5, #0x80
	lsls r2, r0, #0x10
	lsls r3, r1, #0x10
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	subs r1, r3, r1
	ldr r3, [r4, #0x34]
	subs r0, r2, r0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, r4, #0
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	adds r2, #0x34
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	lsls r6, r5, #2
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	ldr r1, _08040100
	cmp r0, #0
	blt _0804008E
	movs r2, #0xf
	ldr r0, [r4, #0x34]
	lsls r2, r2, #0x14
	cmp r0, r2
	bge _0804008E
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt _0804008E
	movs r2, #5
	ldr r0, [r4, #0x38]
	lsls r2, r2, #0x15
	cmp r0, r2
	blt _080400AA
_0804008E
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _080400A4
	ldr r0, [r1]
	adds r1, r4, #0
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4]
_080400A4
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_080400AA
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _080400C6
	ldr r0, [r1]
	adds r1, r4, #0
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_080400C6
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	b _080400A4
	ALIGN
_08040100 DCDU gUnknown_03003EA0
	END