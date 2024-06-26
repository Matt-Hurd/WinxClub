    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB4
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_0804AB68
	IMPORT gUnknown_0804AC68
	IMPORT sub_800B8CE
	IMPORT sub_803C04C
	IMPORT sub_803D468
	IMPORT sub_803D478
	IMPORT sub_803D47C
	IMPORT sub_8040444


	thumb_func_start sub_800BBF4
sub_800BBF4 ;@ 0x0800BBF4
	push {r4, r5, r6, r7}
	movs r2, #0xf
	lsls r2, r2, #6
	adds r2, r0, r2
	movs r3, #0
	cmp r1, #0
	ldrb r7, [r2]
	bls _0800BC24
	movs r6, #0x1d
	lsls r6, r6, #5
_0800BC08
	ldrb r4, [r2]
	adds r3, #1
	lsls r5, r4, #1
	adds r5, r5, r0
	adds r5, r5, r6
	ldrh r5, [r5]
	lsls r4, r4, #1
	adds r4, r4, r0
	strb r5, [r2]
	ldr r5, _0800BFF4 ;@ =0x00000FFF
	adds r4, r4, r6
	strh r5, [r4]
	cmp r3, r1
	blo _0800BC08
_0800BC24
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	strb r0, [r2, #1]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_800BC30
sub_800BC30 ;@ 0x0800BC30
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r0, r1, #1
	adds r5, r0, r4
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, #0x80
	ldrh r0, [r5]
	lsrs r0, r0, #8
	bne _0800BCC6
	movs r0, #0xf
	lsls r0, r0, #6
	adds r1, r4, r0
	movs r0, #0x13
	lsls r0, r0, #8
	adds r0, r4, r0
	lsls r2, r7, #5
	cmp r6, #0
	ldr r3, [r4, #0x1c]
	beq _0800BC7E
	adds r2, r3, r2
	ldr r3, [r0, #0x14]
	str r2, [r3, #4]
	ldrb r1, [r1]
	ldr r2, _0800BFF8 ;@ =0x05000200
	lsls r1, r1, #5
	adds r1, r1, r2
	ldr r2, [r0, #0x14]
	str r1, [r2]
	ldr r2, [r0, #0x14]
	lsls r1, r6, #5
	strh r1, [r2, #8]
	ldr r2, [r0, #0x14]
	movs r1, #0
	strh r1, [r2, #0xa]
	ldr r1, [r0, #0x14]
	adds r1, #0xc
	str r1, [r0, #0x14]
	b _0800BC96
_0800BC7E
	adds r2, r3, r2
	ldr r3, [r0, #0x10]
	str r2, [r3, #4]
	ldrb r1, [r1]
	ldr r2, _0800BFF8 ;@ =0x05000200
	lsls r1, r1, #5
	adds r1, r1, r2
	ldr r2, [r0, #0x10]
	str r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #8
	str r1, [r0, #0x10]
_0800BC96
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_800BBF4
	ldrh r1, [r5]
	movs r2, #0xf0
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	bics r1, r2
	orrs r0, r1
	lsrs r0, r0, #4
	lsls r1, r6, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r0, #4
	orrs r0, r1
	strh r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r0, r0, r4
	adds r0, r0, r1
	strh r7, [r0]
_0800BCC6
	ldrh r0, [r5]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r2, r0, #0
	adds r0, #0xff
	adds r0, #1
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	strh r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r3}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bx r3

	thumb_func_start sub_800BCE4
sub_800BCE4 ;@ 0x0800BCE4
	push {r4, r5, r6, r7}
	ldr r5, [sp, #0x10]
	movs r0, #0
	cmp r5, #0
	beq _0800BCF0
	adds r0, r3, #0
_0800BCF0
	cmp r3, #8
	bhs _0800BD62
_0800BCF4
	lsrs r6, r2, #1
	adds r4, r6, r1
	lsls r2, r2, #0x1f
	ldrb r2, [r4]
	bge _0800BD14
	movs r7, #0x38
	bics r2, r7
	lsls r7, r0, #0x1d
	lsrs r7, r7, #0x1a
	orrs r2, r7
	movs r7, #0x80
	bics r2, r7
	lsls r5, r5, #7
	orrs r2, r5
	strb r2, [r4]
	b _0800BD28
_0800BD14
	lsrs r2, r2, #3
	lsls r7, r0, #0x1d
	lsrs r7, r7, #0x1d
	lsls r2, r2, #3
	orrs r2, r7
	movs r7, #0x40
	bics r2, r7
	lsls r5, r5, #6
	orrs r2, r5
	strb r2, [r4]
_0800BD28
	ldrb r4, [r4]
	adds r2, r6, #0
	lsls r6, r4, #0x1a
	lsls r5, r4, #0x1d
	lsrs r5, r5, #0x1d
	lsrs r6, r6, #0x1d
	cmp r5, r6
	bne _0800BD44
	lsls r5, r4, #0x19
	bpl _0800BD4E
	lsrs r5, r4, #7
	beq _0800BD4E
	adds r0, #1
	b _0800BD4E
_0800BD44
	cmp r5, r6
	bls _0800BD4C
	adds r0, r5, #0
	b _0800BD4E
_0800BD4C
	adds r0, r6, #0
_0800BD4E
	lsls r5, r4, #0x19
	bpl _0800BD5A
	lsrs r4, r4, #7
	beq _0800BD5A
	movs r5, #1
	b _0800BD5C
_0800BD5A
	movs r5, #0
_0800BD5C
	adds r3, #1
	cmp r3, #8
	blo _0800BCF4
_0800BD62
	ldrb r2, [r1]
	movs r3, #0x10
	lsls r0, r0, #0x1c
	bics r2, r3
	lsls r3, r5, #4
	orrs r2, r3
	lsrs r2, r2, #4
	lsls r2, r2, #4
	lsrs r0, r0, #0x1c
	orrs r0, r2
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_800BD7C
sub_800BD7C ;@ 0x0800BD7C
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0x1f
	lsls r4, r4, #6
	adds r2, r0, r4
	ldrb r2, [r2, #0xa]
	ldr r5, _0800BFFC ;@ =0x000003C2
	lsls r3, r2, #7
	adds r3, r3, r0
	adds r6, r3, r5
	ldrb r3, [r6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1c
	cmp r3, r1
	bhs _0800BDAE
_0800BD98
	adds r2, r0, r2
	adds r2, r2, r4
	ldrb r2, [r2, #2]
	lsls r3, r2, #7
	adds r3, r3, r0
	adds r6, r3, r5
	ldrb r3, [r6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1c
	cmp r3, r1
	blo _0800BD98
_0800BDAE
	movs r5, #1
	movs r3, #8
	cmp r1, #8
	bhs _0800BDE6
_0800BDB6
	adds r4, r6, r5
	ldrb r7, [r4]
	lsls r4, r7, #0x1d
	lsrs r4, r4, #0x1d
	cmp r4, r1
	bhs _0800BDC8
	lsls r5, r5, #1
	adds r5, #1
	b _0800BDE0
_0800BDC8
	lsls r7, r7, #0x1a
	lsrs r7, r7, #0x1d
	cmp r7, r1
	bhs _0800BDD4
	lsls r5, r5, #1
	b _0800BDE0
_0800BDD4
	cmp r4, r7
	bhi _0800BDDC
	lsls r5, r5, #1
	b _0800BDE0
_0800BDDC
	lsls r5, r5, #1
	adds r5, #1
_0800BDE0
	subs r3, #1
	cmp r3, r1
	bhi _0800BDB6
_0800BDE6
	movs r4, #8
	subs r4, r4, r3
	movs r3, #1
	lsls r3, r4
	subs r3, r5, r3
	subs r4, r1, #1
	lsls r3, r4
	lsls r2, r2, #7
	adds r4, r2, r3
	movs r2, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r1, #0
	adds r1, r6, #0
	bl sub_800BCE4
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800BE0E
sub_800BE0E ;@ 0x0800BE0E
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x78]
	movs r1, #1
	orrs r0, r1
	sub sp, #0x10
	str r0, [r5, #0x78]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	ldr r3, [sp, #0x14]
	ldr r2, [r3, #0x44]
	cmp r2, #0
	beq _0800BE2C
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x48]
_0800BE2C
	ldr r3, [sp, #0x14]
	ldr r2, [r3, #0x18]
	cmp r2, #0
	beq _0800BE38
	adds r7, r2, #0
	b _0800BE48
_0800BE38
	ldr r4, [r5, #0x18]
	ldr r3, [r0]
	lsls r6, r3, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r7, r4, r3
_0800BE48
	ldr r3, [sp, #0x14]
	ldr r4, [r3, #0x14]
	adds r3, r1, #0
	cmp r2, #0
	bne _0800BE58
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r3, r0, #0x1c
_0800BE58
	subs r0, r3, #1
	str r0, [sp]
	adds r3, r0, #1
	beq _0800BF40
	ldr r1, _0800C004 ;@ =0x000007CC
	ldr r0, _0800C000 ;@ =0x00001810
	adds r2, r5, r1
	movs r1, #0x2f
	lsls r1, r1, #6
	adds r6, r5, r1
	adds r1, r0, #0
	adds r1, #0x10
	adds r1, r5, r1
	str r2, [sp, #0xc]
	adds r2, r5, r0
	str r2, [sp, #4]
	str r1, [sp, #8]
_0800BE7A
	ldr r2, [sp, #4]
	ldr r1, [r4]
	ldrb r0, [r2, #0xe]
	movs r2, #0xff
	lsls r2, r2, #0xd
	bics r1, r2
	lsls r0, r0, #0xd
	orrs r0, r1
	str r0, [r4]
	ldr r2, [sp, #4]
	ldr r1, _0800C008 ;@ =0x00001310
	ldrb r0, [r2, #0xe]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xf]
	strb r0, [r2, #0xe]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #0xf]
	ldr r2, [r4]
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x18
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r1, r2, r1
	strb r0, [r1, #0xf]
	ldr r1, [r4]
	movs r0, #0xff
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r2, r1, r5
	movs r1, #0x99
	lsls r1, r1, #5
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0800BEEC
	ldr r0, [r4]
	ldr r2, [sp, #4]
	lsls r0, r0, #0xb
	ldrb r2, [r2, #0xf]
	lsrs r0, r0, #0x18
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r1, r2, r1
	strb r0, [r1]
_0800BEEC
	ldr r0, [r4]
	ldr r2, [sp, #4]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	strb r0, [r2, #0xf]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	ldr r1, [sp, #8]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r0, [r7, #4]
	lsls r1, r0, #0x14
	lsls r2, r0, #0xc
	lsrs r1, r1, #0x18
	lsls r1, r1, #4
	lsrs r2, r2, #0x18
	orrs r1, r2
	ldr r2, _0800C00C ;@ =gUnknown_0804AB68
	lsls r0, r0, #0x1c
	ldrb r2, [r2, r1]
	movs r1, #1
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0800BF1E
	movs r1, #0
_0800BF1E
	ldr r0, [sp, #0x14]
	mov lr, r2
	ldr r0, [r0, #0x44]
	add lr, r1
	cmp r0, #0
	beq _0800BF42
	mov r1, lr
	adds r0, r5, #0
	bl sub_800BD7C
	ldr r1, [r4]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0xb
	lsls r0, r0, #0x15
	orrs r0, r1
	str r0, [r4]
	b _0800C062
_0800BF40
	b _0800C0CE
_0800BF42
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0800BFAE
	ldr r0, _0800C010 ;@ =0x0FFFFFFF
	ldr r1, [r7]
	bics r0, r1
	beq _0800BFAE
	ldrb r0, [r6, #0xd]
	ldr r2, _0800C004 ;@ =0x000007CC
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r2, [r6, #0xe]
	subs r2, #1
	mov ip, r2
	adds r3, r2, #1
	beq _0800BFAE
	lsls r1, r1, #4
	lsrs r1, r1, #4
_0800BF6A
	ldr r2, [r0]
	cmp r1, r2
	bne _0800C054
	ldr r1, [r0, #4]
	ldr r2, [r4]
	lsls r1, r1, #0x16
	lsls r2, r2, #0xb
	lsrs r2, r2, #0xb
	lsrs r1, r1, #1
	orrs r1, r2
	ldr r2, [sp, #0xc]
	lsrs r1, r1, #8
	subs r2, r0, r2
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	lsls r1, r1, #8
	orrs r1, r2
	str r1, [r4]
	ldr r1, [r0, #4]
	movs r3, #0x3f
	lsls r3, r3, #0xa
	adds r2, r1, #0
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xa
	adds r1, r1, r3
	movs r3, #0x3f
	lsls r3, r3, #0xa
	ands r1, r3
	orrs r1, r2
	mov r2, ip
	cmp r2, #0
	str r1, [r0, #4]
	bpl _0800C062
_0800BFAE
	mov r1, lr
	adds r0, r5, #0
	bl sub_800BD7C
	ldr r1, [r4]
	lsls r0, r0, #0x15
	lsls r1, r1, #0xb
	lsrs r1, r1, #0xb
	orrs r1, r0
	str r1, [r4]
	ldrb r0, [r6, #0xc]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4]
	ldrb r0, [r6, #0xc]
	ldr r1, _0800C004 ;@ =0x000007CC
	movs r3, #0xff
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r1, [r0, #4]
	lsrs r1, r1, #0x18
	strb r1, [r6, #0xc]
	ldrb r1, [r6, #0xd]
	ldr r2, [r0, #4]
	lsls r2, r2, #8
	lsrs r2, r2, #8
	lsls r1, r1, #0x18
	orrs r1, r2
	lsls r3, r3, #0x10
	orrs r1, r3
	str r1, [r0, #4]
	ldr r2, [r7]
	b sub_800C014
	ALIGN
_0800BFF4 DCDU 0x00000FFF
_0800BFF8 DCDU 0x05000200
_0800BFFC DCDU 0x000003C2
_0800C000 DCDU 0x00001810
_0800C004 DCDU 0x000007CC
_0800C008 DCDU 0x00001310
_0800C00C DCDU gUnknown_0804AB68
_0800C010 DCDU 0x0FFFFFFF



	thumb_func_start sub_800C014
sub_800C014 ;@ 0x0800C014
	lsls r2, r2, #4
	lsrs r2, r2, #4
	str r2, [r0]
	ldr r2, [r4]
	lsrs r1, r1, #0xa
	lsls r2, r2, #1
	lsrs r2, r2, #0x16
	lsls r1, r1, #0xa
	orrs r1, r2
	movs r2, #0x3f
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	adds r1, r1, r2
	str r1, [r0, #4]
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0800C058
	ldr r0, [r4]
	movs r2, #0x7d
	lsls r1, r0, #0x18
	ldrb r0, [r6, #0xd]
	lsls r2, r2, #4
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	ldr r2, [r0]
	lsrs r1, r1, #8
	bics r2, r3
	orrs r1, r2
	b _0800C056
_0800C054
	b _0800C080
_0800C056
	str r1, [r0]
_0800C058
	ldr r0, [r4]
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xe]
	adds r0, #1
	strb r0, [r6, #0xe]
_0800C062
	ldr r0, [r4, #4]
	lsls r0, r0, #0x1f
	bmi _0800C0BE
	ldr r0, [r7, #4]
	ldr r2, _0800C44C ;@ =0x00000FFF
	lsrs r1, r0, #0x14
	cmp r1, r2
	beq _0800C0BE
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r2, #0
	cmp r0, #8
	bne _0800C098
	movs r2, #1
	b _0800C0A8
_0800C080
	ldr r0, [r0, #4]
	ldr r2, _0800C450 ;@ =0x000007CC
	lsrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	mov r2, ip
	subs r2, #1
	mov ip, r2
	adds r3, r2, #1
	beq _0800BFAE
	b _0800BF6A
_0800C098
	cmp r0, #9
	bne _0800C0A8
	ldr r0, [r7, #0xc]
	movs r2, #0x10
	lsls r3, r0, #0x1c
	beq _0800C0A8
	lsls r2, r0, #0x1c
	lsrs r2, r2, #0x1c
_0800C0A8
	adds r0, r5, #0
	bl sub_800BC30
	movs r2, #0x1f
	lsls r2, r2, #8
	ldr r1, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
_0800C0BE
	ldr r0, [sp]
	adds r7, #0x14
	subs r0, #1
	adds r4, #8
	adds r3, r0, #1
	str r0, [sp]
	beq _0800C0CE
	b _0800BE7A
_0800C0CE
	ldr r0, [sp, #0x14]
	movs r1, #1
	ldr r0, [r0]
	ldr r3, [sp, #0x14]
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r5, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800C0EC
sub_800C0EC ;@ 0x0800C0EC
	push {r4, r5, r6, r7}
	movs r3, #0
	subs r4, r2, #1
	beq _0800C112
	movs r7, #0x1d
	lsls r7, r7, #5
	subs r6, r2, #1
_0800C0FA
	adds r4, r1, r3
	adds r5, r4, #0
	adds r4, #1
	lsls r5, r5, #1
	adds r5, r5, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r5, r5, r7
	adds r3, #1
	cmp r3, r6
	strh r4, [r5]
	blo _0800C0FA
_0800C112
	movs r3, #0xf
	lsls r3, r3, #6
	adds r3, r0, r3
	adds r5, r1, r2
	lsls r5, r5, #1
	adds r0, r5, r0
	movs r5, #7
	ldrb r4, [r3]
	lsls r5, r5, #7
	adds r0, r0, r5
	strh r4, [r0, #0x1e]
	strb r1, [r3]
	ldrb r0, [r3, #1]
	subs r0, r0, r2
	strb r0, [r3, #1]
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_800C134
sub_800C134 ;@ 0x0800C134
	lsls r1, r1, #1
	adds r2, r1, r0
	adds r2, #0x80
	push {r4}
	ldrh r1, [r2]
	movs r3, #0xff
	lsls r3, r3, #8
	adds r4, r1, #0
	subs r1, #0xff
	subs r1, #1
	ands r1, r3
	bics r4, r3
	orrs r1, r4
	strh r1, [r2]
	lsrs r2, r1, #8
	bne _0800C160
	lsls r2, r1, #0x1c
	lsrs r2, r2, #0x1c
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	pop {r4}
	b sub_800C0EC
_0800C160
	pop {r4}
	bx lr

	thumb_func_start sub_800C164
sub_800C164 ;@ 0x0800C164
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	cmp r1, #0x1f
	beq _0800C192
	lsls r1, r1, #1
	adds r2, r1, r0
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r1, r2, r1
	ldrh r1, [r1]
	ldr r2, _0800C44C ;@ =0x00000FFF
	cmp r1, r2
	beq _0800C192
	bl sub_800C134
	movs r1, #0x1f
	ldr r0, [r4]
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4]
_0800C192
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800C198
sub_800C198 ;@ 0x0800C198
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	lsrs r1, r1, #7
	adds r3, r2, #0
	ldr r2, _0800C454 ;@ =0x000003C2
	lsls r1, r1, #7
	adds r1, r1, r0
	adds r1, r1, r2
	movs r2, #8
	subs r5, r2, r3
	movs r2, #1
	lsls r2, r5
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x19
	subs r5, r3, #1
	lsrs r4, r5
	adds r4, r2, r4
	movs r2, #1
	str r2, [sp]
	adds r2, r4, #0
	bl sub_800BCE4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800C1CA
sub_800C1CA ;@ 0x0800C1CA
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x78]
	movs r2, #1
	orrs r0, r2
	sub sp, #0x18
	str r0, [r4, #0x78]
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x44]
	cmp r0, #0
	beq _0800C1E6
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x48]
	b _0800C1EA
_0800C1E6
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x10]
_0800C1EA
	ldr r1, [sp, #0x1c]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	beq _0800C1F6
	adds r3, r1, #0
	b _0800C206
_0800C1F6
	ldr r5, [r4, #0x18]
	ldr r3, [r0]
	lsls r6, r3, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r3, r5, r3
_0800C206
	str r3, [sp, #8]
	ldr r3, [sp, #0x1c]
	ldr r5, [r3, #0x14]
	adds r3, r2, #0
	cmp r1, #0
	bne _0800C218
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r3, r0, #0x1c
_0800C218
	subs r0, r3, #1
	str r0, [sp, #4]
	adds r3, r0, #1
	beq _0800C304
	movs r0, #3
	lsls r0, r0, #0xb
	adds r0, r4, r0
	movs r1, #0xc1
	lsls r1, r1, #5
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r2, #0x2f
	lsls r2, r2, #6
	adds r1, r4, r1
	adds r7, r4, r2
	subs r0, #0x10
	adds r2, r4, r0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
_0800C23E
	ldr r0, [r5]
	ldr r1, _0800C458 ;@ =0x00001318
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #3
	lsls r2, r2, #8
	bics r1, r2
	subs r2, #0xff
	subs r2, #1
	adds r1, r1, r2
	strh r1, [r0]
	ldr r1, [r5]
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xb
	ldrb r2, [r2, #0xf]
	lsrs r1, r1, #0x18
	cmp r1, r2
	bne _0800C274
	ldrb r1, [r0, #7]
	ldr r2, [sp, #0xc]
	strb r1, [r2, #0xf]
_0800C274
	ldrb r2, [r0, #7]
	cmp r2, #0x80
	bhs _0800C28C
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	movs r3, #0x99
	ldrb r1, [r0, #8]
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2]
_0800C28C
	ldrb r2, [r0, #8]
	cmp r2, #0x80
	bhs _0800C2A2
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	ldr r3, _0800C45C ;@ =0x00001310
	ldrb r1, [r0, #7]
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2, #0xf]
_0800C2A2
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #0xe]
	strb r1, [r0, #7]
	ldr r0, [r5]
	ldr r2, [sp, #0xc]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	strb r0, [r2, #0xe]
	ldr r1, [sp, #0x10]
	movs r2, #1
	ldrb r0, [r1, #1]
	adds r0, #0xff
	strb r0, [r1, #1]
	ldr r0, [sp, #0x14]
	movs r1, #0xff
	str r2, [r0, #0x18]
	ldr r0, [r5]
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r5]
	ldr r1, [sp, #8]
	ldr r1, [r1, #4]
	lsls r3, r1, #0x14
	lsls r6, r1, #0xc
	lsrs r3, r3, #0x18
	lsls r3, r3, #4
	lsrs r6, r6, #0x18
	orrs r3, r6
	ldr r6, _0800C460 ;@ =gUnknown_0804AB68
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #9
	ldrb r3, [r6, r3]
	beq _0800C2E8
	movs r2, #0
_0800C2E8
	ldr r1, [sp, #0x1c]
	adds r3, r3, r2
	ldr r1, [r1, #0x44]
	cmp r1, #0
	beq _0800C322
	lsrs r0, r0, #0x15
	lsrs r1, r0, #7
	lsls r1, r1, #7
	ldr r2, _0800C454 ;@ =0x000003C2
	adds r1, r1, r4
	adds r1, r1, r2
	movs r2, #8
	subs r6, r2, r3
	b _0800C306
_0800C304
	b _0800C446
_0800C306
	movs r2, #1
	lsls r2, r6
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	subs r6, r3, #1
	lsrs r0, r6
	adds r0, r2, r0
	movs r2, #1
	str r2, [sp]
	adds r2, r0, #0
	adds r0, r4, #0
	bl sub_800BCE4
	b _0800C3EC
_0800C322
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	ldr r1, _0800C450 ;@ =0x000007CC
	adds r0, r0, r4
	adds r6, r0, r1
	ldr r0, [r6, #4]
	movs r2, #0x3f
	lsls r2, r2, #0xa
	adds r1, r0, #0
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	subs r0, r0, r2
	movs r2, #0x3f
	lsls r2, r2, #0xa
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	bne _0800C3EC
	ldr r0, [r5]
	ldr r2, _0800C454 ;@ =0x000003C2
	lsrs r0, r0, #0x15
	lsrs r1, r0, #7
	lsls r1, r1, #7
	adds r1, r1, r4
	mov ip, r1
	add ip, r2
	movs r1, #8
	subs r2, r1, r3
	movs r1, #1
	lsls r1, r2
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	subs r2, r3, #1
	lsrs r0, r2
	adds r0, r1, r0
	movs r2, #1
	str r2, [sp]
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, ip
	bl sub_800BCE4
	ldr r0, [r5]
	ldrb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne _0800C38E
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x18
	strb r0, [r7, #0xd]
_0800C38E
	ldr r1, [r6, #4]
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	bhs _0800C3B2
	lsls r0, r0, #3
	movs r2, #0x7d
	lsls r2, r2, #4
	adds r0, r0, r4
	adds r0, r0, r2
	movs r3, #0xff
	lsls r3, r3, #0x10
	ldr r2, [r0]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x10
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
_0800C3B2
	ldr r1, [r6, #4]
	lsls r0, r1, #8
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bhs _0800C3D4
	lsls r0, r0, #3
	movs r2, #0x7d
	lsls r2, r2, #4
	adds r0, r0, r4
	adds r0, r0, r2
	ldr r2, [r0]
	lsrs r1, r1, #0x18
	lsls r2, r2, #8
	lsrs r2, r2, #8
	lsls r1, r1, #0x18
	orrs r1, r2
	str r1, [r0]
_0800C3D4
	ldrb r0, [r7, #0xc]
	ldr r1, [r6, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #8
	lsls r0, r0, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldr r0, [r5]
	strb r0, [r7, #0xc]
	ldrb r0, [r7, #0xe]
	adds r0, #0xff
	strb r0, [r7, #0xe]
_0800C3EC
	ldr r1, _0800C464 ;@ =0xFFE00000
	ldr r0, [r5]
	orrs r0, r1
	movs r1, #0xff
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1f
	bmi _0800C432
	ldr r1, [sp, #8]
	ldr r2, _0800C44C ;@ =0x00000FFF
	ldr r1, [r1, #4]
	lsrs r1, r1, #0x14
	cmp r1, r2
	beq _0800C432
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	cmp r0, #0x1f
	beq _0800C432
	lsls r0, r0, #1
	adds r1, r0, r4
	movs r0, #0x1d
	lsls r0, r0, #5
	adds r0, r1, r0
	ldrh r1, [r0]
	cmp r1, r2
	beq _0800C432
	adds r0, r4, #0
	bl sub_800C134
	movs r1, #0x1f
	ldr r0, [r5]
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5]
_0800C432
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r1, #0x14
	subs r0, #1
	adds r5, #8
	adds r3, r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	beq _0800C446
	b _0800C23E
_0800C446
	ldr r1, [sp, #0x1c]
	ldr r0, [r1]
	b _0800C468
	ALIGN
_0800C44C DCDU 0x00000FFF
_0800C450 DCDU 0x000007CC
_0800C454 DCDU 0x000003C2
_0800C458 DCDU 0x00001318
_0800C45C DCDU 0x00001310
_0800C460 DCDU gUnknown_0804AB68
_0800C464 DCDU 0xFFE00000
_0800C468
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800C482
sub_800C482 ;@ 0x0800C482
	push {r4, r5}
	movs r4, #0xc1
	adds r2, r0, #0
	adds r0, r1, #0
	lsls r4, r4, #5
	cmp r1, #0x20
	bhs _0800C4A4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r2, [r1, #0xc]
	adds r2, #1
	strb r2, [r1, #0xc]
_0800C4A0
	pop {r4, r5}
	bx lr
_0800C4A4
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r1, r2, r0
	ldrb r0, [r1, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	adds r3, r3, r4
	ldrb r3, [r3, #0xd]
	strb r3, [r1, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	adds r3, r3, r4
	ldrb r5, [r3, #0xc]
	adds r5, #1
	strb r5, [r3, #0xc]
	ldrb r5, [r1, #0xb]
	strb r5, [r3, #0xd]
	movs r5, #0xff
	strb r5, [r3, #0xe]
	ldrb r3, [r1, #0xd]
	cmp r3, #0
	beq _0800C4E6
	ldrb r5, [r1, #0xb]
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r2, r3, r2
	adds r2, r2, r4
	strb r0, [r2, #0xe]
_0800C4E6
	strb r0, [r1, #0xb]
	ldrb r2, [r1, #0xd]
	adds r2, #1
	strb r2, [r1, #0xd]
	b _0800C4A0

	thumb_func_start sub_800C4F0
sub_800C4F0 ;@ 0x0800C4F0
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r3, _0800C8A4 ;@ =0x00001824
	adds r2, r2, r0
	adds r2, r2, r3
	push {r4, r5, r6, r7}
	ldrb r3, [r2, #8]
	adds r3, #0xff
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r2, #8]
	bne _0800C55A
	movs r3, #0xcd
	lsls r3, r3, #5
	adds r4, r0, r3
	ldrb r3, [r4, #0xb]
	cmp r3, r1
	bne _0800C51A
	ldrb r3, [r2, #9]
	strb r3, [r4, #0xb]
_0800C51A
	ldrb r3, [r2, #9]
	movs r6, #0xc1
	lsls r6, r6, #5
	cmp r3, #0x20
	bhs _0800C534
	adds r7, r3, #0
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldrb r5, [r2, #0xa]
	adds r3, r3, r0
	adds r3, r3, r6
	strb r5, [r3, #0xe]
_0800C534
	ldrb r3, [r2, #0xa]
	cmp r3, #0x20
	bhs _0800C54A
	adds r7, r3, #0
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldrb r5, [r2, #9]
	adds r0, r3, r0
	adds r0, r0, r6
	strb r5, [r0, #0xd]
_0800C54A
	movs r0, #0
	strb r0, [r2, #0xb]
	ldrb r0, [r4, #0xa]
	strb r0, [r2, #9]
	strb r1, [r4, #0xa]
	ldrb r0, [r4, #0xd]
	adds r0, #0xff
	strb r0, [r4, #0xd]
_0800C55A
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_800C55E
sub_800C55E ;@ 0x0800C55E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x78]
	movs r6, #1
	orrs r0, r6
	sub sp, #0x24
	str r0, [r5, #0x78]
	ldrh r0, [r1, #0x28]
	adds r4, r1, #0
	ldr r1, _0800C8A4 ;@ =0x00001824
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1b
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r1, r0, r1
	str r1, [sp, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #0x1b
	bpl _0800C60C
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _0800C600
	ldrh r0, [r4, #0x24]
	lsls r1, r6, #0xc
	ldr r7, _0800C8A8 ;@ =gUnknown_080414B8
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r0, r0, #2
	NEGS r1, r0
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x24]
	lsls r1, r6, #0xc
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #6]
	ldr r1, [sp, #0x18]
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r5, r0
	strb r6, [r1, #0xb]
	str r6, [r0, #0x24]
_0800C600
	ldr r0, [r4]
	movs r1, #0x10
	bics r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_0800C60C
	ldr r0, [r4, #0x44]
	ldr r2, [r4, #0x10]
	cmp r0, #0
	beq _0800C616
	ldr r2, [r4, #0x48]
_0800C616
	ldr r7, [r4, #0x18]
	cmp r7, #0
	beq _0800C620
	adds r1, r7, #0
	b _0800C630
_0800C620
	ldr r0, [r5, #0x18]
	ldr r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
_0800C630
	ldr r3, [r4, #0x14]
	adds r0, r6, #0
	mov ip, r3
	adds r3, r6, #0
	cmp r7, #0
	bne _0800C642
	ldr r2, [r2]
	lsls r2, r2, #0xc
	lsrs r3, r2, #0x1c
_0800C642
	subs r2, r3, #1
	str r2, [sp, #0x14]
	adds r3, r2, #1
	beq _0800C72E
	movs r3, #3
	lsls r3, r3, #0xb
	adds r3, r5, r3
	movs r2, #0x13
	lsls r2, r2, #8
	adds r2, r5, r2
	str r3, [sp, #0x20]
_0800C658
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	bpl _0800C710
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldr r0, [r1]
	beq _0800C670
	lsls r0, r0, #4
	ldr r3, [r2, #0x14]
	lsrs r0, r0, #4
	str r0, [r3, #4]
	b _0800C68A
_0800C670
	ldr r6, _0800C8AC ;@ =0x0FFFFFFF
	adds r3, r6, #0
	bics r3, r0
	bne _0800C67E
	ldr r0, [r2, #0x14]
	str r6, [r0, #4]
	b _0800C68A
_0800C67E
	lsls r0, r0, #4
	ldr r3, [r5, #0x20]
	lsrs r0, r0, #2
	adds r0, r3, r0
	ldr r3, [r2, #0x14]
	str r0, [r3, #4]
_0800C68A
	mov r3, ip
	ldr r0, [r3]
	ldr r3, _0800C8B0 ;@ =0x06010000
	lsrs r0, r0, #0x15
	lsls r0, r0, #5
	adds r0, r0, r3
	ldr r3, [r2, #0x14]
	str r0, [r3]
	ldr r0, [r1, #4]
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x18
	adds r3, #1
	lsrs r6, r3, #1
	lsls r3, r0, #0xc
	lsrs r3, r3, #0x18
	adds r3, #1
	lsrs r3, r3, #1
	muls r6, r3
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r3, #0x40
	cmp r0, #9
	beq _0800C6BA
	movs r3, #0x20
_0800C6BA
	ldr r0, [r2, #0x14]
	muls r6, r3
	strh r6, [r0, #8]
	ldr r0, [r2, #0x14]
	ldr r6, _0800C8AC ;@ =0x0FFFFFFF
	ldr r3, [r0, #4]
	cmp r3, r6
	beq _0800C6D2
	ldr r3, [r1]
	lsrs r3, r3, #0x1c
	strh r3, [r0, #0xa]
	b _0800C6DA
_0800C6D2
	movs r3, #0
	str r3, [r0, #4]
	ldr r0, [r2, #0x14]
	strh r3, [r0, #0xa]
_0800C6DA
	ldr r0, [r2, #0x14]
	adds r0, #0xc
	str r0, [r2, #0x14]
	ldr r0, [r4]
	lsls r0, r0, #0x18
	bmi _0800C710
	mov r3, ip
	ldr r3, [r3]
	lsrs r0, r3, #0x15
	lsls r3, r3, #0xb
	lsrs r6, r3, #0x18
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	ldr r6, _0800C8B4 ;@ =0x0000131C
	adds r3, r3, r5
	adds r3, r3, r6
	ldrh r6, [r3]
	lsls r0, r0, #0x16
	lsrs r6, r6, #0xa
	lsls r6, r6, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r6
	strh r0, [r3]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [r3, #0x18]
_0800C710
	ldr r0, [r4]
	lsls r0, r0, #0x18
	bpl _0800C7EA
	mov r3, ip
	ldr r0, [r3]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	ldr r3, _0800C8B8 ;@ =0x00001318
	adds r0, r0, r5
	adds r0, r0, r3
	ldrh r3, [r4, #0x26]
	b _0800C730
_0800C72E
	b _0800C91A
_0800C730
	strh r3, [r0]
	ldrh r3, [r4, #0x28]
	movs r7, #3
	lsls r7, r7, #0xe
	strh r3, [r0, #2]
	ldrh r3, [r4, #0x2a]
	strh r3, [r0, #4]
	ldr r3, [r1, #4]
	lsls r6, r3, #0x14
	lsrs r6, r6, #0x18
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x18
	lsls r6, r6, #4
	orrs r3, r6
	ldr r6, _0800C8BC ;@ =gUnknown_0804AC68
	ldrb r3, [r6, r3]
	ldrh r6, [r0, #2]
	bics r6, r7
	lsls r7, r3, #0x1e
	lsrs r7, r7, #0x10
	orrs r6, r7
	strh r6, [r0, #2]
	mov lr, r6
	ldrh r6, [r0]
	movs r7, #3
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	lsls r7, r7, #0xe
	bics r6, r7
	lsls r3, r3, #0xe
	orrs r6, r3
	strh r6, [r0]
	str r6, [sp, #0x1c]
	ldr r3, [r1, #4]
	lsls r6, r3, #0x14
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x18
	lsls r3, r3, #2
	lsrs r6, r6, #0x18
	lsls r7, r6, #2
	adds r3, #4
	str r3, [sp, #0xc]
	adds r7, #4
	str r7, [sp, #0x10]
	ldrh r6, [r0, #4]
	mov r3, ip
	ldr r3, [r3]
	lsrs r6, r6, #0xa
	lsls r3, r3, #1
	lsrs r3, r3, #0x16
	lsls r6, r6, #0xa
	orrs r3, r6
	strh r3, [r0, #4]
	adds r6, r3, #0
	mov r3, ip
	ldr r3, [r3]
	lsls r3, r3, #0x13
	lsrs r7, r3, #0x1b
	adds r3, r6, #0
	movs r6, #0xf
	lsls r6, r6, #0xc
	bics r3, r6
	lsls r6, r7, #0xc
	orrs r3, r6
	strh r3, [r0, #4]
	ldrb r3, [r4, #5]
	strb r3, [r0, #6]
	ldrh r3, [r4, #0x26]
	lsls r3, r3, #0x16
	lsrs r6, r3, #0x1e
	beq _0800C892
	lsrs r3, r3, #0x1e
	cmp r3, #3
	bne _0800C7EC
	mov r6, lr
	lsrs r3, r6, #9
	ldr r7, [sp, #0x10]
	lsls r3, r3, #9
	subs r6, r6, r7
	lsls r6, r6, #0x17
	lsrs r6, r6, #0x17
	orrs r3, r6
	strh r3, [r0, #2]
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0xc]
	lsrs r3, r6, #8
	subs r6, r6, r7
	lsls r6, r6, #0x18
	lsls r3, r3, #8
	lsrs r6, r6, #0x18
	orrs r3, r6
	strh r3, [r0]
	b _0800C814
_0800C7EA
	b _0800C906
_0800C7EC
	ldr r7, [sp, #0x10]
	mov r6, lr
	asrs r3, r7, #1
	subs r3, r6, r3
	lsls r3, r3, #0x17
	lsrs r6, r6, #9
	lsls r6, r6, #9
	lsrs r3, r3, #0x17
	orrs r3, r6
	strh r3, [r0, #2]
	ldr r3, [sp, #0xc]
	ldr r6, [sp, #0x1c]
	asrs r3, r3, #1
	subs r3, r6, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r6, r6, #8
	lsls r6, r6, #8
	orrs r3, r6
	strh r3, [r0]
_0800C814
	ldr r7, [sp, #0x10]
	movs r3, #0x10
	asrs r6, r7, #1
	ldrsh r7, [r1, r3]
	movs r3, #0x20
	subs r7, r6, r7
	ldrsh r6, [r4, r3]
	muls r7, r6
	muls r7, r6
	asrs r3, r7, #0x10
	mov lr, r3
	ldr r3, [sp, #0xc]
	asrs r6, r3, #1
	movs r3, #0x12
	ldrsh r7, [r1, r3]
	movs r3, #0x22
	subs r7, r6, r7
	ldrsh r6, [r4, r3]
	muls r7, r6
	muls r7, r6
	asrs r3, r7, #0x10
	str r3, [sp, #8]
	ldr r7, [sp, #0x18]
	movs r3, #0
	ldrsh r6, [r7, r3]
	mov r3, lr
	muls r6, r3
	movs r3, #2
	ldrsh r7, [r7, r3]
	ldr r3, [sp, #8]
	muls r7, r3
	subs r3, r6, r7
	asrs r7, r3, #8
	str r7, [sp, #4]
	ldr r7, [sp, #0x18]
	mov r6, lr
	ldrh r3, [r7, #4]
	NEGS r3, r3
	muls r3, r6
	ldrh r6, [r7, #6]
	ldr r7, [sp, #8]
	muls r6, r7
	adds r3, r3, r6
	asrs r7, r3, #8
	ldrh r3, [r0, #2]
	mov lr, r7
	ldr r7, [sp, #4]
	lsrs r6, r3, #9
	adds r3, r3, r7
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	lsls r6, r6, #9
	orrs r3, r6
	strh r3, [r0, #2]
	ldrh r3, [r0]
	lsrs r6, r3, #8
	add r3, lr
	lsls r3, r3, #0x18
	lsls r6, r6, #8
	lsrs r3, r3, #0x18
	orrs r3, r6
	strh r3, [r0]
	b _0800C900
_0800C892
	b _0800C894
_0800C894
	ldrh r3, [r4, #0x28]
	lsls r3, r3, #0x13
	bpl _0800C8C0
	movs r3, #0x10
	ldrsh r6, [r1, r3]
	ldr r7, [sp, #0x10]
	subs r3, r7, r6
	b _0800C8C6
	ALIGN
_0800C8A4 DCDU 0x00001824
_0800C8A8 DCDU gUnknown_080414B8
_0800C8AC DCDU 0x0FFFFFFF
_0800C8B0 DCDU 0x06010000
_0800C8B4 DCDU 0x0000131C
_0800C8B8 DCDU 0x00001318
_0800C8BC DCDU gUnknown_0804AC68
_0800C8C0
	movs r3, #0x10
	ldrsh r6, [r1, r3]
	adds r3, r6, #0
_0800C8C6
	mov r7, lr
	subs r3, r7, r3
	mov r6, lr
	lsrs r6, r6, #9
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	lsls r6, r6, #9
	orrs r3, r6
	strh r3, [r0, #2]
	ldrh r3, [r4, #0x28]
	lsls r3, r3, #0x12
	bpl _0800C8E8
	movs r3, #0x12
	ldrsh r6, [r1, r3]
	ldr r3, [sp, #0xc]
	subs r3, r3, r6
	b _0800C8EE
_0800C8E8
	movs r3, #0x12
	ldrsh r6, [r1, r3]
	adds r3, r6, #0
_0800C8EE
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0x1c]
	lsrs r6, r6, #8
	subs r3, r7, r3
	lsls r3, r3, #0x18
	lsls r6, r6, #8
	lsrs r3, r3, #0x18
	orrs r3, r6
	strh r3, [r0]
_0800C900
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [r3, #0x18]
_0800C906
	ldr r0, [sp, #0x14]
	mov r3, ip
	adds r3, #8
	subs r0, #1
	mov ip, r3
	adds r1, #0x14
	adds r3, r0, #1
	str r0, [sp, #0x14]
	beq _0800C91A
	b _0800C658
_0800C91A
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r1
	movs r1, #0x40
	bics r0, r1
	movs r1, #0x80
	bics r0, r1
	str r0, [r4]
	ldr r0, [r5, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

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
	END