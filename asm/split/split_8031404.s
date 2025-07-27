    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8005106
	IMPORT sub_801E124
	IMPORT sub_801EBCA
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_sshift_r
	IMPORT rand
	IMPORT sub_803DA80
	IMPORT sub_8040528
	IMPORT sub_8040594

	thumb_func_start sub_8031404
sub_8031404 ;@ 0x08031404
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x28]
	sub sp, #8
	adds r1, r0, #0
	beq _080314AC
	movs r0, #0x5a
	asrs r1, r1, #0x10
	cmp r1, #0x5a
	bge _0803141E
	adds r0, r1, #0
_0803141E
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0xb2
	ldrsh r0, [r0, r4]
	ldr r6, [r5, #0x28]
	muls r0, r6
	bl sub_8040528
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x5c]
	ldr r0, [r5, #0x2c]
	adds r1, r6, r0
	str r1, [r5, #0x28]
	movs r1, #5
	lsls r1, r1, #0xe
	cmp r0, r1
	bge _08031462
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x2c]
_08031462
	ldr r1, [r4, #0x2c]
	ldr r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _080314B2
	movs r2, #0
	str r2, [r4, #0x58]
	str r2, [r4, #0x5c]
	str r2, [r5, #0x28]
	ldr r3, [r1, #0x2c]
	ldr r6, [r1, #0x30]
	subs r3, r2, r3
	subs r2, r2, r6
	ldr r6, [r1, #0x34]
	adds r0, r1, #0
	adds r6, r6, r3
	str r6, [r1, #0x34]
	ldr r6, [r1, #0x38]
	adds r0, #0x34
	adds r6, r6, r2
	str r6, [r1, #0x38]
	ldr r6, [r0, #8]
	adds r3, r6, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r2, r3, r2
	str r2, [r0, #0xc]
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	str r2, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	b _080314B2
_080314AC
	adds r0, r4, #0
	bl sub_801EBCA
_080314B2
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _08031512
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r1, r0, #0x1f
	beq _08031512
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08031512
	bl rand
	lsls r0, r0, #0x19
	bne _08031512
	ldr r0, _0803156C ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl __16_ll_sshift_r
	add r2, pc, #0x7C ;@ =_08031570
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08031512
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803151A
sub_803151A ;@ 0x0803151A
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
	beq _08031546
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08031546
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
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
	ALIGN
_0803156C DCDU gUnknown_03003EA0
_08031570 DCDU 0x0010BE20
_08031574 DCDU 0x00000000
	END