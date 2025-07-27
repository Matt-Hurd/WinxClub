    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_0803EC7C
	IMPORT gUnknown_0804AE80
	IMPORT sub_8004674
	IMPORT sub_800529A
	IMPORT sub_80081A8
	IMPORT sub_8010574
	IMPORT sub_80105AE
	IMPORT sub_80108DA
	IMPORT sub_8010B8A
	IMPORT sub_8010D60
	IMPORT sub_802E47A
	IMPORT sub_802F04E
	IMPORT __call_via_r1
	IMPORT __16__rt_udiv
	IMPORT sub_803D9C4
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803E210

	thumb_func_start sub_803B150
sub_803B150 ;@ 0x0803B150
	push {r3, lr}
	bl sub_802E47A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_803B15C
sub_803B15C ;@ 0x0803B15C
	push {r4, lr}
	adds r4, r0, #0
	bne _0803B174
	ldr r0, _0803B300 ;@ =0x0000172C
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0803B174
	adds r0, r4, #0
_0803B16E
	pop {r4}
	pop {r3}
	bx r3
_0803B174
	movs r1, #0
	adds r0, r4, #0
	bl sub_8010574
	ldr r0, _0803B304 ;@ =gUnknown_0803EC7C
	str r0, [r4]
	adds r0, r4, #0
	b _0803B16E

	thumb_func_start sub_803B184
sub_803B184 ;@ 0x0803B184
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803B304 ;@ =gUnknown_0803EC7C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80105AE
	cmp r5, #0
	beq _0803B1A0
	adds r0, r4, #0
	bl sub_803DA18
_0803B1A0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_60
nullsub_60 ;@ 0x0803B1A6
	bx lr

	thumb_func_start sub_803B1A8
sub_803B1A8 ;@ 0x0803B1A8
	movs r0, #0
	bx lr

	thumb_func_start nullsub_61
nullsub_61 ;@ 0x0803B1AC
	bx lr

	non_word_aligned_thumb_func_start sub_803B1AE
sub_803B1AE ;@ 0x0803B1AE
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0803B308 ;@ =gUnknown_03003E84
	movs r7, #0
	adds r6, r1, #0
	adds r3, r7, #0
	movs r2, #0xc
	sub sp, #0x14
	ldr r0, [r0]
	bl sub_800529A
	adds r5, r0, #0
	ldr r0, [r0]
	ldr r2, _0803B30C ;@ =0xFFC00FFF
	ldr r1, [r4, #0xc]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0xa
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r5]
	lsls r1, r1, #0xa
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x16
	lsrs r1, r1, #0xa
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl sub_802F04E
	adds r1, r4, #0
	adds r1, #0x50
	str r1, [sp, #0x10]
	strb r7, [r1, #4]
	movs r1, #0x19
	lsls r1, r1, #6
	adds r5, r5, r0
	adds r0, r6, r0
	adds r1, r4, r1
	str r0, [r1, #0xc]
	movs r0, #3
	lsls r0, r0, #9
	ldm r5!, {r1, r2}
	subs r5, #8
	adds r0, r4, r0
	adds r0, #0x50
	stm r0!, {r1, r2}
	ldr r0, _0803B310 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_8004674
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x4d
	bl sub_80108DA
	bl sub_80081A8
	ldr r6, [r5]
	ldr r1, _0803B314 ;@ =gUnknown_0804AE80
	lsls r0, r6, #0x1d
	lsrs r0, r0, #0x1c
	ldr r7, [r4, #0xc]
	adds r5, r0, r1
	lsls r0, r7, #0xa
	lsrs r1, r0, #0x16
	ldrb r0, [r5]
	bl __16__rt_udiv
	str r0, [sp, #0xc]
	ldrb r0, [r5, #1]
	lsrs r1, r7, #0x16
	bl __16__rt_udiv
	ldr r1, [sp, #0xc]
	movs r7, #1
	muls r1, r0
	adds r0, r7, #0
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x16
	lsls r3, r0, #8
	cmp r2, r3
	bhi _0803B258
	movs r0, #0
_0803B258
	movs r2, #0x84
	str r0, [r2, r4]
	movs r2, #0
	movs r3, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x78]
	movs r1, #0x1b
	lsls r1, r1, #6
	adds r0, r7, #0
	adds r7, r4, r1
	str r0, [r7, #0x34]
	adds r0, r4, #0
	bl sub_8010B8A
	movs r1, #3
	lsls r1, r1, #0xb
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	movs r1, #0x6d
	lsls r1, r1, #4
	str r0, [r7, #0x24]
	movs r0, #1
	adds r6, r4, r1
	strb r0, [r6, #0xc]
	movs r3, #0
	strb r3, [r6, #0xe]
_0803B296
	adds r0, r4, #0
	bl sub_8010D60
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0803B296
	ldrb r1, [r6, #0xe]
	ldr r0, [r7, #0x24]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldr r1, [sp, #0x10]
	ldrb r0, [r1, #4]
	movs r1, #0x65
	lsls r1, r1, #4
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r1
	ldr r3, [r0]
	adds r1, #0xc0
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1d
	adds r2, r4, r1
	str r0, [sp]
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x16
	movs r1, #0xd3
	lsls r1, r1, #2
	movs r0, #0x17
	lsls r0, r0, #8
	adds r1, r4, r1
	str r2, [sp, #8]
	str r1, [sp, #4]
	adds r0, r4, r0
	ldr r1, [r0, #0x14]
	adds r2, r5, #0
	adds r0, r6, #0
	bl sub_803E210
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl __call_via_r1
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803B300 DCDU 0x0000172C
_0803B304 DCDU gUnknown_0803EC7C
_0803B308 DCDU gUnknown_03003E84
_0803B30C DCDU 0xFFC00FFF
_0803B310 DCDU gUnknown_03003E98
_0803B314 DCDU gUnknown_0804AE80
	END