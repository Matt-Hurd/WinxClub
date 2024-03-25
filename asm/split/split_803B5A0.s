    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EC0
	IMPORT sub_803B520

	thumb_func_start sub_803B5A0
sub_803B5A0 ;@ 0x0803B5A0
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803B5B8 ;@ =gUnknown_03003EC0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _0803B5C0
	ldr r0, _0803B5BC ;@ =0x000080FF
	b _0803B642
	ALIGN
_0803B5B8 DCDU gUnknown_03003EC0
_0803B5BC DCDU 0x000080FF
_0803B5C0
	ldr r0, _0803B64C ;@ =gUnknown_03003EC0
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _0803B5EA
_0803B5D6
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _0803B5D6
_0803B5EA
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _0803B64C ;@ =gUnknown_03003EC0
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl sub_803B520
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl sub_803B520
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_0803B618
	movs r1, #0
	movs r3, #0
_0803B61C
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0803B61C
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803B618
	movs r0, #0
_0803B642
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	ALIGN
_0803B64C DCDU gUnknown_03003EC0
	END