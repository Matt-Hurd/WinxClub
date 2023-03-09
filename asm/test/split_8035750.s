    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003EA0
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8005106
	IMPORT sub_80179BE
	IMPORT sub_801E124
	IMPORT sub_801E2DA
	IMPORT sub_801EBCA
	IMPORT sub_80268AC
	IMPORT sub_8028C2E
	IMPORT sub_803DA80

	thumb_func_start sub_8035750
sub_8035750 ;@ 0x08035750
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0803577C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0803577C
	movs r1, #7
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	NEGS r1, r1
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80357A4
sub_80357A4 ;@ 0x080357A4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x20]
	lsls r0, r0, #8
	lsrs r0, r0, #0x14
	beq _08035846
	ldr r0, _08035B94 ;@ =gUnknown_03003EA0
	ldr r6, [r4, #0x2c]
	movs r7, #0
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	mvns r7, r7
	adds r1, r7, #0
	cmp r2, #0
	beq _080357D2
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080357D2
	ldr r0, [r5, #0x20]
	lsls r1, r1, #0x10
	lsls r2, r0, #0x14
	lsrs r2, r2, #0x14
	lsrs r1, r1, #0x10
	cmp r1, r2
	bne _08035846
	ldr r6, [r4, #0x2c]
	ldr r1, [r6]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08035846
	lsls r0, r0, #8
	lsrs r0, r0, #0x14
	strh r0, [r4, #0x18]
	ldr r0, _08035B94 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	ldr r1, [r6, #0x44]
	cmp r1, #0
	beq _08035806
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r7, r0, #3
_08035806
	ldr r1, [r5, #0x20]
	lsls r0, r7, #0x10
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0803581C
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0803581C
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803582A
	bl sub_8000914
_0803582A
	ldr r0, [r5, #0x24]
	lsls r1, r0, #4
	lsrs r0, r1, #0x18
	beq _08035846
	ldr r0, _08035B98 ;@ =gUnknown_0300345C
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _08035846
	bl sub_8028C2E
_08035846
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8035852
sub_8035852 ;@ 0x08035852
	push {r4, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x1f
	bne _0803588A
	ldr r1, [r2, #4]
	adds r2, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, #0x70
	strb r1, [r2, #0xd]
	cmp r1, #0
	bge _0803586E
	NEGS r1, r1
_0803586E
	adds r0, #0x80
	movs r4, #0xff
	lsls r4, r4, #8
	ldr r3, [r0, #0x28]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	bics r3, r4
	orrs r1, r3
	str r1, [r0, #0x28]
	movs r0, #0
	strb r0, [r2, #0xc]
_08035884
	pop {r4}
	pop {r3}
	bx r3
_0803588A
	bl sub_801E2DA
	b _08035884

	thumb_func_start sub_8035890
sub_8035890 ;@ 0x08035890
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _08035B9C ;@ =gUnknown_03003478
	adds r5, r0, #0
	ldr r1, [r1]
	movs r0, #0x20
	adds r2, r1, #0
	ands r1, r0
	adds r0, r5, #0
	adds r4, r5, #0
	adds r4, #0x80
	adds r0, #0x70
	cmp r1, #0
	beq _080358C2
	ldr r1, [r4, #0x20]
	lsls r6, r1, #0x14
	ldr r1, [r4, #0x24]
	lsrs r6, r6, #0x14
	lsls r1, r1, #0xc
	lsrs r7, r1, #0x18
	ldr r1, [r4, #0x28]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	NEGS r1, r1
	strb r1, [r0, #0xd]
	b _08035910
_080358C2
	movs r1, #0x40
	ands r2, r1
	beq _08035968
	ldr r2, [r4, #0x28]
	ldr r1, [r4, #0x24]
	lsls r7, r2, #0x18
	lsls r2, r2, #0x10
	lsls r6, r1, #0x14
	lsrs r2, r2, #0x18
	strb r2, [r0, #0xd]
	lsrs r6, r6, #0x14
	lsls r1, r1, #4
	lsrs r7, r7, #0x18
	lsrs r0, r1, #0x18
	beq _080358F4
	ldr r0, _08035B98 ;@ =gUnknown_0300345C
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _080358F4
	bl sub_80268AC
_080358F4
	ldr r0, [r4, #0x24]
	lsls r1, r0, #0xc
	lsrs r0, r1, #0x18
	beq _08035910
	ldr r0, _08035B98 ;@ =gUnknown_0300345C
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _08035910
	bl sub_80268AC
_08035910
	cmp r6, #0
	beq _08035956
	movs r0, #0x11
	str r0, [r4, #0x1c]
	strh r6, [r5, #0x18]
	ldr r0, _08035B94 ;@ =gUnknown_03003EA0
	ldr r4, [r5, #0x2c]
	ldr r0, [r0]
	ldr r2, [r4, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08035936
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08035936
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	beq _08035948
	movs r2, #0
	adds r1, r6, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
_08035948
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08035956
	bl sub_8000914
_08035956
	cmp r7, #0
	beq _08035968
	ldr r0, _08035B98 ;@ =gUnknown_0300345C
	lsls r1, r7, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
_08035968
	ldr r0, _08035BA0 ;@ =gUnknown_03003E88
	movs r6, #0xff
	ldr r0, [r0]
	adds r6, #0x99
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #1
	ldrh r2, [r1, #0x18]
	ldrh r6, [r6, r0]
	movs r4, #4
	adds r2, r2, r4
	movs r3, #0
	cmp r2, r6
	bls _08035986
	strh r3, [r1, #0x18]
_08035986
	ldrh r2, [r1, #0x18]
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	adds r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r1, #0x18]
	lsls r3, r2, #0x1e
	beq _080359A2
	lsls r3, r2, #0x1e
	lsrs r3, r3, #0x1e
	subs r3, r4, r3
	adds r2, r2, r3
	strh r2, [r1, #0x18]
_080359A2
	movs r1, #0x2c
	strh r1, [r0]
	strh r4, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _08035BA4 ;@ =gUnknown_03003454
	movs r3, #1
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80179BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80359C0
sub_80359C0 ;@ 0x080359C0
	push {r4, r5, r6, r7, lr}
	ldr r4, _08035BA8 ;@ =0xFF000FFF
	adds r3, r1, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r1, #0x80
	movs r6, #0
	lsrs r5, r4, #0x10
	cmp r3, #0x5b
	beq _08035ABA
	bgt _08035ABC
	movs r7, #1
	lsls r7, r7, #0xf
	cmp r3, #0x58
	beq _08035ABE
	bgt _08035A54
	cmp r3, #0x42
	beq _08035AC0
	cmp r3, #0x56
	beq _08035AC2
	cmp r3, #0x57
	bne _08035A4E
	ldr r3, _08035BAC ;@ =0x000002B2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	lsls r5, r5, #9
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #1
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	lsrs r3, r4, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0x2d
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	lsls r3, r3, #0xc
	adds r2, r2, r3
	movs r0, #0x17
	lsls r0, r0, #0x15
	bics r2, r4
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
_08035A4E
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08035A54
	cmp r3, #0x59
	beq _08035B3C
	cmp r3, #0x5a
	bne _08035A4E
	ldr r3, _08035BB0 ;@ =0x0000028B
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	lsls r5, r5, #0xb
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #2
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	movs r4, #0xa3
	lsls r4, r4, #0xe
	adds r2, r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	lsls r0, r0, #8
	adds r0, #0x2f
	movs r3, #0x2d
	lsls r3, r3, #0xc
	str r0, [r1, #0x28]
	movs r0, #0x17
	adds r2, r2, r3
	bics r2, r4
	lsls r0, r0, #0x15
	adds r0, r2, r0
	b _08035AC4
_08035ABA
	b _08035C34
_08035ABC
	b _08035AC8
_08035ABE
	b _08035B50
_08035AC0
	b _08035E20
_08035AC2
	b _08035AE6
_08035AC4
	str r0, [r1, #0x24]
	b _08035A4E
_08035AC8
	adds r7, r3, #0
	subs r7, #0x5c
	cmp r7, #5
	bhs _08035ADA
	add r3, pc, #0x8 ;@ =_08035ADC
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_08035ADA
	b _08035A4E
_08035ADC
	DCB 0xFF, 0x00
_08035ADE
	DCB 0x28, 0x01
_08035AE0
	DCB 0xD5, 0x00
_08035AE2
	DCB 0x51, 0x01
_08035AE4
	DCB 0x7A, 0x01
_08035AE6
	movs r3, #0x9b
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	lsls r5, r5, #9
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #1
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0x2d
	lsls r3, r3, #0xc
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	adds r2, r2, r3
	bics r2, r4
	movs r0, #0x17
	lsls r0, r0, #0x15
	b _08035B3E
_08035B3C
	b _08035BD4
_08035B3E
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
	b _08035A4E
_08035B50
	movs r3, #0x9b
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	ldr r2, [r1, #0x20]
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #1
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	b _08035BB4
	ALIGN
_08035B94 DCDU gUnknown_03003EA0
_08035B98 DCDU gUnknown_0300345C
_08035B9C DCDU gUnknown_03003478
_08035BA0 DCDU gUnknown_03003E88
_08035BA4 DCDU gUnknown_03003454
_08035BA8 DCDU 0xFF000FFF
_08035BAC DCDU 0x000002B2
_08035BB0 DCDU 0x0000028B
_08035BB4
	lsrs r0, r0, #8
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	movs r0, #0x19
	bics r2, r3
	bics r2, r4
	lsls r0, r0, #0x15
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
	b _08035A4E
_08035BD4
	movs r3, #0x9b
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	lsls r5, r5, #9
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #1
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	bics r2, r3
	movs r0, #0x19
	lsls r0, r0, #0x15
	bics r2, r4
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
	b _08035A4E
_08035C34
	ldr r3, _08035E68 ;@ =0x0000025D
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xb
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #2
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0xb
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035c86
	movs r3, #0x95
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xb
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #2
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0xb
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035cda
	ldr r3, _08035E6C ;@ =0x00000257
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xb
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #2
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0xb
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035d2c
	ldr r3, _08035E70 ;@ =0x0000025A
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xb
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #2
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0xb
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035d7e
	ldr r3, _08035E74 ;@ =0x00000231
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x14
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xa
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	subs r5, r3, #1
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x13
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035dd0
	ldr r3, _08035E78 ;@ =0x0000026A
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x3c
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #0xf
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xa
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	subs r5, r3, #1
	adds r2, r2, r5
	ands r2, r4
	lsls r4, r3, #0xc
	adds r2, r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	lsls r4, r3, #8
	bics r2, r3
	bics r2, r4
	lsls r0, r0, #8
	bics r2, r3
	bics r2, r4
	str r0, [r1, #0x28]
	str r2, [r1, #0x24]
	b _08035A4E
_08035E20
	movs r3, #0x13
	lsls r3, r3, #5
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strb r6, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	ldr r2, [r1, #0x20]
	bics r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	ands r2, r4
	lsls r4, r3, #0xc
	adds r2, r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	lsls r4, r3, #8
	bics r2, r3
	bics r2, r4
	lsls r0, r0, #8
	bics r2, r3
	bics r2, r4
	str r0, [r1, #0x28]
	str r2, [r1, #0x24]
	b _08035A4E
	ALIGN
_08035E68 DCDU 0x0000025D
_08035E6C DCDU 0x00000257
_08035E70 DCDU 0x0000025A
_08035E74 DCDU 0x00000231
_08035E78 DCDU 0x0000026A
