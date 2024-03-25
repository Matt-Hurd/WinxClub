    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EB4
	IMPORT sub_8005106
	IMPORT sub_803D468
	IMPORT sub_803DA9C

	thumb_func_start sub_803FD5C
sub_803FD5C ;@ 0x0803FD5C
	push {r4, r5, r6, r7}
	adds r5, r1, #0
	orrs r5, r2
	ldr r4, [sp, #0x10]
	movs r6, #0x13
	lsls r6, r6, #7
	orrs r5, r3
	orrs r5, r4
	adds r0, r0, r6
	cmp r5, #0
	bne _0803FD9A
	ldr r5, [r0, #0x20]
	ldr r4, [r5, #0x50]
	ldr r5, [r5, #0x54]
	ldrh r2, [r4, #0xc]
	ldr r5, [r5, #4]
	ldrh r4, [r4, #0xe]
	lsls r6, r5, #5
	lsrs r7, r6, #0x1d
	movs r6, #1
	lsls r6, r7
	muls r2, r6
	lsls r5, r5, #2
	lsrs r5, r5, #0x1d
	movs r6, #1
	lsls r6, r5
	muls r4, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
_0803FD9A
	lsls r1, r1, #0x10
	str r1, [r0, #0x28]
	lsls r1, r3, #0x10
	subs r2, #0xf0
	str r1, [r0, #0x2c]
	lsls r1, r2, #0x10
	str r1, [r0, #0x30]
	subs r4, #0xa0
	lsls r1, r4, #0x10
	str r1, [r0, #0x34]
	movs r1, #1
	lsls r1, r1, #0x13
	str r1, [r0, #0x38]
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_803FDB8
sub_803FDB8 ;@ 0x0803FDB8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r6, sp, #0x28
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	ldm r6!, {r5, r6}
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bne _0803FE4C
	bl sub_8005106
	movs r7, #1
	lsls r7, r7, #9
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	adds r0, r7, #0
	bl sub_803DA9C
	str r0, [r4, #0x10]
	ldr r3, [r4, #0x14]
	movs r1, #0
	mov ip, r1
	adds r1, r0, #0
	adds r2, r3, #0
	cmp r3, r0
	bhs _0803FE02
	adds r7, r2, r7
	cmp r7, r1
	bls _0803FE02
	adds r2, r7, #0
	movs r7, #1
	lsls r7, r7, #9
	adds r1, r1, r7
	movs r7, #5
	lsls r7, r7, #0x15
	mov ip, r7
_0803FE02
	ldr r7, _0803FE74 ;@ =gUnknown_03003EB4
	ldr r7, [r7]
	cmp r7, #0
	beq _0803FE16
	adds r1, r0, #0
	adds r0, r3, #0
	ldr r2, _0803FE78 ;@ =0x04000080
	bl sub_803D468
	b _0803FE4C
_0803FE16
	lsls r3, r1, #0x1e
	ldr r0, _0803FE7C ;@ =0x040000D4
	bmi _0803FE20
	lsls r3, r2, #0x1e
	bpl _0803FE38
_0803FE20
	str r2, [r0]
	str r1, [r0, #4]
	movs r1, #0xff
	adds r1, #1
	mov r2, ip
	orrs r1, r2
	movs r2, #1
	lsls r2, r2, #0x1f
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0803FE4C
_0803FE38
	str r2, [r0]
	str r1, [r0, #4]
	movs r1, #0x80
	mov r2, ip
	orrs r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0803FE4C
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [sp, #8]
	lsls r2, r2, #3
	strh r0, [r1, r2]
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	strh r0, [r1, #2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	strh r5, [r0, #4]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	strh r6, [r0, #6]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803FE74 DCDU gUnknown_03003EB4
_0803FE78 DCDU 0x04000080
_0803FE7C DCDU 0x040000D4
	END