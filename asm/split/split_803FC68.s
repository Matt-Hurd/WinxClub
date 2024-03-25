    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003468
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_803DA80
	IMPORT sub_803DA9C

	thumb_func_start sub_803FC68
sub_803FC68 ;@ 0x0803FC68
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r3, #0
	sub sp, #4
	bne _0803FCA2
	movs r1, #5
	lsls r1, r1, #7
	movs r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	b _0803FC88
_0803FC7E
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #4
	bhs _0803FD0E
_0803FC88
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0803FC7E
	lsls r0, r4, #1
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #0x1f
	bmi _0803FC7E
	b _0803FD0E
_0803FCA2
	movs r4, #4
	b _0803FCB0
_0803FCA6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs _0803FCBA
_0803FCB0
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0803FCA6
_0803FCBA
	ldr r0, _0803FD58 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	lsrs r7, r6, #2
	bl sub_8005106
	cmp r7, #0
	beq _0803FCDC
	lsls r7, r7, #2
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_803DA9C
	b _0803FCE8
_0803FCDC
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	movs r0, #4
	bl sub_803DA80
_0803FCE8
	lsls r1, r4, #2
	adds r1, r1, r5
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r1, #0xff
	adds r1, #0x99
	adds r0, r0, r5
	strh r6, [r1, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	strh r1, [r0, #0x18]
_0803FD0E
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0803FD24
	lsls r1, r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	adds r1, r1, r5
	movs r0, #1
	adds r1, r1, r2
	strh r0, [r1, #0x18]
	b _0803FD32
_0803FD24
	lsls r0, r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	adds r0, r0, r5
	movs r1, #0
	adds r0, r0, r2
	strh r1, [r0, #0x18]
_0803FD32
	lsls r1, r4, #2
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r1, r5
	ldr r0, [sp, #8]
	adds r1, r1, r2
	str r0, [r1, #0x18]
	adds r0, r2, #0
	adds r0, #0xff
	adds r0, #0x91
	adds r0, r5, r0
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	add sp, #0x14
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803FD58 DCDU gUnknown_03003468
	END