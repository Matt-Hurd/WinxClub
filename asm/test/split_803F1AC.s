    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT sub_80012F0
	IMPORT sub_8001338

	thumb_func_start sub_803F1AC
sub_803F1AC ;@ 0x0803F1AC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r7, r0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	movs r5, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0803F230
	lsls r0, r1, #0x1f
	lsrs r3, r0, #0x12
	str r3, [sp, #4]
_0803F1CA
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r1, [r0, #0x20]
	movs r0, #0x97
	ldrsb r0, [r0, r1]
	cmp r0, #2
	beq _0803F1DC
	cmp r0, #0
	bne _0803F222
_0803F1DC
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, [r2, #0xc]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r0, r3
	ldr r3, [sp, #4]
	orrs r0, r3
	str r0, [r2, #0xc]
	ldr r4, [r1, #0x2c]
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x1f
	ldr r0, [r4]
	beq _0803F208
	lsls r0, r0, #0x1c
	bmi _0803F216
	ldr r0, _0803F238 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0803F216
_0803F208
	lsls r0, r0, #0x1c
	bpl _0803F216
	ldr r0, _0803F238 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0803F216
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r4]
_0803F222
	ldr r0, [sp, #8]
	adds r5, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r5
	bhi _0803F1CA
_0803F230
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803F238 DCDU gUnknown_03003EB8
