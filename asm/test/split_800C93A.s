    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB4
	IMPORT sub_800B8CE
	IMPORT sub_803D468
	IMPORT sub_803D478
	IMPORT sub_803D47C
	IMPORT sub_8040444

	non_word_aligned_thumb_func_start sub_800C93A
sub_800C93A ;@ 0x0800C93A
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #4
	adds r4, r5, r0
	movs r0, #0x13
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x14]
	cmp r0, r4
	bls _0800C9B2
	ldr r7, _0800CCE0 ;@ =0x040000D4
_0800C952
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0800C996
	ldr r1, _0800CCE4 ;@ =gUnknown_03003EB4
	ldr r0, [r1]
	cmp r0, #0
	beq _0800C97A
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r4, #8]
	movs r1, #5
	lsls r1, r1, #0x18
	lsrs r0, r0, #2
	orrs r0, r1
	adds r2, r0, #0
	mov r0, sp
	ldr r1, [r4]
	bl sub_803D468
	b _0800C9AA
_0800C97A
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	str r0, [r7]
	ldr r0, [r4]
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x85
	lsrs r0, r0, #2
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b _0800C9AA
_0800C996
	ldrh r1, [r4, #0xa]
	cmp r1, #0
	beq _0800C9C0
	cmp r1, #1
	beq _0800C9F0
	cmp r1, #2
	bne _0800C9AA
	ldr r1, [r4]
	bl sub_803D478
_0800C9AA
	ldr r0, [r6, #0x14]
	adds r4, #0xc
	cmp r0, r4
	bhi _0800C952
_0800C9B2
	movs r0, #0xbd
	lsls r0, r0, #4
	ldr r1, [r6, #0x10]
	adds r0, r5, r0
	cmp r1, r0
	bls _0800CA10
	b _0800C9F8
_0800C9C0
	ldr r1, _0800CCE4 ;@ =gUnknown_03003EB4
	ldr r1, [r1]
	cmp r1, #0
	beq _0800C9DA
	ldrh r1, [r4, #8]
	movs r2, #1
	lsrs r1, r1, #2
	lsls r2, r2, #0x1a
	orrs r2, r1
	ldr r1, [r4]
	bl sub_803D468
	b _0800C9AA
_0800C9DA
	str r0, [r7]
	ldr r0, [r4]
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x21
	lsrs r0, r0, #2
	lsls r1, r1, #0x1a
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b _0800C9AA
_0800C9F0
	ldr r1, [r4]
	bl sub_803D47C
	b _0800C9AA
_0800C9F8
	ldr r4, [r0, #4]
	ldr r7, [r0]
	ldm r4!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r4!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r1, [r6, #0x10]
	adds r0, #8
	cmp r1, r0
	bhi _0800C9F8
_0800CA10
	movs r0, #3
	lsls r0, r0, #0xb
	adds r0, r5, r0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0800CA90
	movs r0, #0xc1
	lsls r0, r0, #5
	adds r1, r5, r0
	ldrb r3, [r1, #1]
	movs r0, #7
	movs r2, #1
	lsls r2, r2, #9
	lsls r0, r0, #0x18
	cmp r3, #0
	bne _0800CA4C
	adds r3, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800CA46
_0800CA38
	stm r3!, {r2}
	ldr r4, [r3]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x10
	stm r3!, {r4}
	subs r0, #1
	bne _0800CA38
_0800CA46
	movs r0, #0
	strb r0, [r1]
	b _0800CA90
_0800CA4C
	ldr r3, _0800CCE8 ;@ =0x00001818
	ldr r4, _0800CCEC ;@ =0x00001318
	adds r3, r5, r3
_0800CA52
	ldrb r6, [r3, #7]
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	adds r3, r3, r5
	adds r3, r3, r4
	ldrh r6, [r3]
	strh r6, [r0]
	ldrh r6, [r3, #2]
	strh r6, [r0, #2]
	ldrh r6, [r3, #4]
	strh r6, [r0, #4]
	ldrb r6, [r3, #7]
	adds r0, #8
	cmp r6, #0x80
	blo _0800CA52
	ldrb r3, [r1, #1]
	ldrb r4, [r1]
	cmp r4, r3
	bls _0800CA8C
_0800CA7A
	stm r0!, {r2}
	ldr r4, [r0]
	adds r3, #1
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x10
	stm r0!, {r4}
	ldrb r4, [r1]
	cmp r4, r3
	bhi _0800CA7A
_0800CA8C
	ldrb r0, [r1, #1]
	strb r0, [r1]
_0800CA90
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r5, r0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0800CACE
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r5, r0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _0800CACE
	ldr r0, _0800CCF0 ;@ =0x00001824
	ldr r1, _0800CCF4 ;@ =0x07000006
	adds r0, r5, r0
	movs r2, #0x1f
_0800CAB0
	ldrb r3, [r0, #8]
	cmp r3, #0
	beq _0800CAC6
	ldrh r3, [r0]
	strh r3, [r1]
	ldrh r3, [r0, #2]
	strh r3, [r1, #8]
	ldrh r3, [r0, #4]
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #6]
	strh r3, [r1, #0x18]
_0800CAC6
	adds r0, #0xc
	adds r1, #0x20
	subs r2, #1
	bhs _0800CAB0
_0800CACE
	adds r0, r5, #0
	bl sub_800B8CE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800CADA
sub_800CADA ;@ 0x0800CADA
	ldr r0, [r0, #0x78]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	non_word_aligned_thumb_func_start sub_800CAE2
sub_800CAE2 ;@ 0x0800CAE2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800CCF8 ;@ =gUnknown_03003EA0
	movs r1, #0xc1
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	sub sp, #0x1fc
	sub sp, #0x18
	cmp r0, #1
	bls _0800CB5C
	ldr r0, [r4, #0x78]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x78]
	ldr r0, _0800CCFC ;@ =0x00001810
	movs r1, #0
	adds r2, r4, r0
	str r2, [sp, #0x210]
	ldrb r0, [r2, #0xf]
	movs r2, #0
	add r7, sp, #0x200
	lsls r3, r0, #2
	adds r0, r3, r0
	movs r3, #0
	stm r7!, {r1, r2, r3}
	lsls r0, r0, #1
	ldr r6, _0800CCEC ;@ =0x00001318
	adds r0, r0, r4
	adds r0, r0, r6
	stm r7!, {r3}
	movs r5, #0
	subs r7, #0x10
_0800CB26
	ldrb r2, [r0, #6]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	adds r2, r2, r7
	ldrb r3, [r2]
	adds r3, #1
	strb r3, [r2]
	ldrb r2, [r0, #6]
	cmp r2, r5
	bhs _0800CB3C
	movs r1, #1
_0800CB3C
	ldrb r0, [r0, #7]
	cmp r0, #0x80
	bhs _0800CB50
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r2, #0
	adds r0, r0, r6
	b _0800CB26
_0800CB50
	cmp r1, #0
	bne _0800CB66
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
_0800CB5C
	add sp, #0x1fc
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800CB66
	movs r0, #0
	movs r2, #0
	adds r1, r7, #0
_0800CB6C
	ldrb r3, [r1, r0]
	strb r2, [r1, r0]
	adds r0, #1
	adds r2, r2, r3
	cmp r0, #0x10
	blt _0800CB6C
	ldr r2, [sp, #0x210]
	adds r7, r6, #0
	ldrb r0, [r2, #0xf]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r0, r6
	adds r6, r4, r6
_0800CB8A
	subs r0, r5, r6
	bl sub_8040444
	ldrb r0, [r5, #6]
	adds r2, r1, #0
	add r1, sp, #0x200
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r3, r1, #1
	strb r3, [r0]
	add r0, sp, #0x100
	strb r2, [r0, r1]
	ldrb r1, [r5, #7]
	cmp r1, #0x80
	bhs _0800CBB8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r0, r7
	b _0800CB8A
_0800CBB8
	add r5, sp, #0x200
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	movs r1, #0xc1
	lsls r1, r1, #5
	adds r1, r4, r1
	stm r5!, {r3}
	ldrb r3, [r1, #1]
	subs r5, #0x10
	cmp r3, #0
	ble _0800CBF4
	ldr r7, _0800CD00 ;@ =0x00001310
_0800CBD4
	ldrb r6, [r0, r2]
	adds r2, #1
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, r3, r7
	ldrb r3, [r3, #0xe]
	lsrs r3, r3, #4
	adds r3, r3, r5
	ldrb r6, [r3]
	adds r6, #1
	strb r6, [r3]
	ldrb r3, [r1, #1]
	cmp r3, r2
	bgt _0800CBD4
_0800CBF4
	movs r2, #0
	movs r3, #0
_0800CBF8
	ldrb r6, [r5, r2]
	strb r3, [r5, r2]
	adds r2, #1
	adds r3, r3, r6
	cmp r2, #0x10
	blt _0800CBF8
	ldrb r3, [r1, #1]
	movs r2, #0
	cmp r3, #0
	ble _0800CC34
_0800CC0C
	ldrb r5, [r0, r2]
	ldr r6, _0800CD00 ;@ =0x00001310
	adds r2, #1
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, r3, r6
	ldrb r3, [r3, #0xe]
	add r6, sp, #0x200
	lsrs r3, r3, #4
	adds r3, r3, r6
	ldrb r6, [r3]
	adds r7, r6, #1
	strb r7, [r3]
	mov r3, sp
	strb r5, [r3, r6]
	ldrb r3, [r1, #1]
	cmp r3, r2
	bgt _0800CC0C
_0800CC34
	add r3, sp, #0
	ldrb r0, [r3]
	ldr r2, [sp, #0x210]
	strb r0, [r2, #0xf]
	ldrb r2, [r3]
	movs r0, #0xff
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r0, [r2]
	add r3, sp, #0
	ldrb r2, [r3]
	ldrb r0, [r3, #1]
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	ldr r3, _0800CD00 ;@ =0x00001310
	adds r2, r2, r4
	adds r2, r2, r3
	strb r0, [r2, #0xf]
	ldrb r2, [r1, #1]
	movs r0, #1
	subs r2, #1
	cmp r2, #1
	ble _0800CCA8
	mov r6, sp
_0800CC70
	movs r3, #0
	ldrb r7, [r6, r0]
	mvns r3, r3
	adds r2, r6, r0
	ldrb r5, [r3, r2]
	lsls r3, r7, #2
	adds r3, r3, r7
	lsls r3, r3, #1
	movs r7, #0x99
	lsls r7, r7, #5
	adds r3, r3, r4
	adds r3, r3, r7
	strb r5, [r3]
	ldrb r5, [r6, r0]
	ldrb r2, [r2, #1]
	adds r0, #1
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #1
	adds r5, r7, #0
	subs r5, #0x10
	adds r3, r3, r4
	adds r3, r3, r5
	strb r2, [r3, #0xf]
	ldrb r2, [r1, #1]
	subs r2, #1
	cmp r2, r0
	bgt _0800CC70
_0800CCA8
	mov r6, sp
	ldrb r2, [r6, r0]
	mov r1, sp
	adds r1, r1, r0
	lsls r3, r2, #2
	adds r2, r3, r2
	subs r1, #0x10
	ldrb r1, [r1, #0xf]
	lsls r2, r2, #1
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2]
	ldrb r0, [r6, r0]
	movs r1, #0xff
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	ldr r3, _0800CD00 ;@ =0x00001310
	adds r0, r0, r4
	adds r0, r0, r3
	strb r1, [r0, #0xf]
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
	b _0800CB5C
	ALIGN
_0800CCE0 DCDU 0x040000D4
_0800CCE4 DCDU gUnknown_03003EB4
_0800CCE8 DCDU 0x00001818
_0800CCEC DCDU 0x00001318
_0800CCF0 DCDU 0x00001824
_0800CCF4 DCDU 0x07000006
_0800CCF8 DCDU gUnknown_03003EA0
_0800CCFC DCDU 0x00001810
_0800CD00 DCDU 0x00001310
