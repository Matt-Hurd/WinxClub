    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E98
	IMPORT gUnknown_0804AE70
	IMPORT sub_800B09A
	IMPORT sub_803C124
	IMPORT sub_80405D8

	thumb_func_start sub_8011394
sub_8011394 ;@ 0x08011394
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08011494 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B09A
	ldr r1, _08011498 ;@ =0x00011760
	adds r5, r0, #0
	adds r0, r0, r1
	movs r1, #0x1b
	lsls r1, r1, #6
	adds r1, r6, r1
	ldr r2, [r1, #0x3c]
	movs r3, #0xee
	muls r2, r3
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0xf
	adds r2, r3, r2
	asrs r2, r2, #0x11
	movs r3, #0xee
	subs r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r0
	movs r3, #5
	ldr r7, _0801149C ;@ =0x00007FFF
	movs r4, #1
_080113C8
	strh r7, [r2]
	strh r4, [r2, #2]
	subs r2, #0xff
	subs r2, #0xe1
	subs r3, #1
	cmp r3, #0
	bne _080113C8
	ldr r2, [r6, #0x58]
	movs r3, #0xee
	muls r2, r3
	lsrs r2, r2, #0x11
	lsls r2, r2, #1
	adds r2, r2, r0
	movs r0, #5
	movs r3, #0x1f
_080113E6
	strh r3, [r2]
	subs r2, #0xff
	subs r2, #0xe1
	subs r0, #1
	cmp r0, #0
	bne _080113E6
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r2, r6, r0
	ldrb r0, [r2, #0xd]
	ldrb r2, [r2, #0xe]
	cmp r0, r2
	bls _08011404
	subs r6, r0, r2
	b _08011408
_08011404
	adds r0, #0xb
	subs r6, r0, r2
_08011408
	ldr r2, [r1, #0x2c]
	movs r0, #0
	cmp r2, #0
	beq _0801141E
	ldr r0, [r1, #0x28]
	movs r1, #0x13
	subs r0, r2, r0
	muls r1, r0
	adds r0, r2, #0
	bl sub_803C124
_0801141E
	adds r7, r0, #0
	ldr r0, _080114A0 ;@ =0x000120C0
	adds r5, r5, r0
	movs r0, #0xee
	muls r0, r6
	bl sub_80405D8
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r2, _080114A4 ;@ =0x000003FF
	movs r1, #5
_08011436
	strh r2, [r0]
	strh r4, [r0, #2]
	subs r0, #0xff
	subs r0, #0xe1
	subs r1, #1
	cmp r1, #0
	bne _08011436
	adds r1, r5, #0
	adds r1, #0x26
	ldr r2, _080114A8 ;@ =0x00007C1F
	movs r0, #5
_0801144C
	strh r2, [r1]
	subs r1, #0xff
	subs r1, #0xe1
	subs r0, #1
	cmp r0, #0
	bne _0801144C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801145E
sub_801145E ;@ 0x0801145E
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsls r2, r2, #0x1e
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	lsrs r2, r2, #0x1e
	adds r3, r2, r1
	asrs r2, r0, #3
	movs r1, #0x1f
	cmp r2, #0x1f
	bge _0801148E
	movs r1, #0
	cmp r0, #0
	blt _0801148E
	ldr r1, _080114AC ;@ =gUnknown_0804AE70
	lsls r0, r0, #0x1d
	ldrb r1, [r1, r3]
	lsrs r0, r0, #0x1d
	cmp r1, r0
	bhs _0801148A
	movs r0, #1
	b _0801148C
_0801148A
	movs r0, #0
_0801148C
	adds r1, r0, r2
_0801148E
	adds r0, r1, #0
	bx lr
	ALIGN
_08011494 DCDU gUnknown_03003E98
_08011498 DCDU 0x00011760
_0801149C DCDU 0x00007FFF
_080114A0 DCDU 0x000120C0
_080114A4 DCDU 0x000003FF
_080114A8 DCDU 0x00007C1F
_080114AC DCDU gUnknown_0804AE70
