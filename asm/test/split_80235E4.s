    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003464
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003D28
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_0804AE30
	IMPORT gUnknown_08051040
	IMPORT sub_8005106
	IMPORT sub_800B314
	IMPORT sub_800B3BA
	IMPORT sub_803BEB0
	IMPORT sub_803DA80
	IMPORT sub_803F464
	IMPORT sub_803FEF8
	IMPORT sub_8040684
	IMPORT sub_80406C4

	thumb_func_start sub_80235E4
sub_80235E4 ;@ 0x080235E4
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, sp, #4
	adds r0, r5, #0
	movs r4, #0
	movs r2, #0
	movs r1, #0x20
	bl sub_803F464
	ldr r0, _080239C8 ;@ =0xF0F0F022
	str r0, [sp, #4]
	ldr r0, _080239CC ;@ =gUnknown_03003D28
	ldr r0, [r0, #8]
	ldrb r1, [r0]
	str r1, [sp, #8]
	ldrb r1, [r0, #1]
	str r1, [sp, #0xc]
	ldrb r1, [r0, #3]
	str r1, [sp, #0x10]
	ldrb r0, [r0, #2]
	str r0, [sp, #0x14]
	movs r0, #0
_08023610
	lsls r1, r0, #2
	ldr r1, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	eors r4, r1
	cmp r0, #7
	blo _08023610
	str r4, [sp, #0x20]
	movs r2, #0x20
	str r2, [sp]
	ldr r0, _080239D0 ;@ =gUnknown_03003464
	movs r2, #0
	adds r3, r5, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B314
	add sp, #0x24
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802363C
sub_802363C ;@ 0x0802363C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r4, sp, #8
	movs r2, #0
	movs r1, #0x20
	adds r0, r4, #0
	bl sub_803F464
	ldr r5, _080239CC ;@ =gUnknown_03003D28
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08023674
	bl sub_8005106
	adds r1, r0, #0
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #4
	bl sub_803DA80
	cmp r0, #0
	beq _08023672
	strb r6, [r0]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	strb r6, [r0, #3]
_08023672
	str r0, [r5, #8]
_08023674
	movs r2, #0x20
	str r2, [sp]
	ldr r0, _080239D0 ;@ =gUnknown_03003464
	movs r2, #0
	adds r3, r4, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B3BA
	movs r0, #0
_08023688
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	blo _08023688
	ldr r1, _080239C8 ;@ =0xF0F0F022
	ldr r0, [r4]
	cmp r0, r1
	bne _080236C0
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _080236C0
	ldr r0, [r4, #0xc]
	cmp r0, #5
	bhs _080236C0
	ldr r1, [r4, #4]
	ldr r2, [r5, #8]
	strb r1, [r2]
	ldr r1, [r4, #8]
	strb r1, [r2, #1]
	ldr r1, [r4, #0xc]
	strb r1, [r2, #3]
	ldr r0, [r4, #0x10]
	strb r0, [r2, #2]
_080236B8
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_080236C0
	ldr r1, [r5, #8]
	movs r0, #0xa
	strb r0, [r1]
	strb r0, [r1, #1]
	movs r0, #5
	strb r0, [r1, #2]
	ldr r0, _080239D4 ;@ =gUnknown_0804AE30
	ldrb r0, [r0]
	strb r0, [r1, #3]
	b _080236B8

	thumb_func_start sub_80236D4
sub_80236D4 ;@ 0x080236D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #8
	movs r4, #0
	movs r2, #0
	movs r1, #1
	lsls r1, r1, #9
	add r5, sp, #4
	add r0, sp, #4
	bl sub_803F464
	ldr r1, _080239D8 ;@ =gUnknown_03003E98
	ldr r0, [r1]
	ldr r1, _080239CC ;@ =gUnknown_03003D28
	ldr r0, [r0, #8]
	ldr r6, [r1, #4]
	adds r7, r6, #0
	adds r7, #0x80
	ldr r1, [r7, #8]
	subs r0, r0, r1
	bl sub_80406C4
	ldr r0, [r6]
	adds r0, r1, r0
	str r0, [r6]
	ldr r1, _080239D8 ;@ =gUnknown_03003E98
	movs r6, #1
	ldr r1, [r1]
	lsls r6, r6, #9
	ldr r1, [r1, #8]
	movs r0, #0
	str r1, [r7, #8]
	movs r1, #0
_08023716
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	str r1, [sp, #4]
	blt _08023716
	ldr r7, _080239CC ;@ =gUnknown_03003D28
	ldr r0, _080239DC ;@ =0xF0F0F023
	ldrb r1, [r7]
	cmp r1, #0
	beq _08023734
	adds r0, #1
	cmp r1, #1
	beq _08023734
	adds r0, #1
_08023734
	str r0, [r5]
	ldr r1, [r7, #4]
	ldr r1, [r1]
	str r1, [r5, #4]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldrb r1, [r1, #4]
	str r1, [r5, #8]
	ldr r1, [r7, #4]
	adds r1, #0x90
	ldrb r1, [r1]
	str r1, [r5, #0xc]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldr r1, [r1, #0x14]
	str r1, [r5, #0x10]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldr r1, [r1, #0x18]
	str r1, [r5, #0x14]
	ldr r1, [r7, #4]
	adds r1, #0x90
	ldrb r1, [r1, #0xc]
	str r1, [r5, #0x18]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldr r1, [r1, #0x20]
	str r1, [r5, #0x1c]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldr r1, [r1, #0x24]
	str r1, [r5, #0x20]
	ldr r1, [r7, #4]
	adds r1, #0xb0
	ldrb r1, [r1, #2]
	str r1, [r5, #0x24]
	ldr r1, [r7, #4]
	adds r1, #0xb0
	ldrb r1, [r1, #4]
	str r1, [r5, #0x28]
	adds r5, #0x2c
	movs r1, #0
	movs r0, #2
	bl sub_803FEF8
	ldr r2, _080239E0 ;@ =gUnknown_03003478
	movs r0, #0
_08023792
	lsls r1, r0, #2
	ldr r1, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	stm r5!, {r1}
	blt _08023792
	movs r0, #0
	add r5, sp, #4
_080237A6
	lsls r1, r0, #2
	ldr r1, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	eors r4, r1
	cmp r0, #0x7f
	blt _080237A6
	movs r0, #0xff
	adds r0, #0xfd
	str r4, [r0, r5]
	str r6, [sp]
	ldrb r0, [r7]
	lsls r2, r0, #9
	adds r2, #0x20
	ldr r0, _080239D0 ;@ =gUnknown_03003464
	adds r3, r5, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B314
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80237DA
sub_80237DA ;@ 0x080237DA
	push {r0, r4, r5, r6, r7, lr}
	ldr r0, _080239CC ;@ =gUnknown_03003D28
	movs r1, #0
	ldr r5, [r0, #4]
	adds r4, r5, #0
	adds r4, #0xb0
_080237E6
	adds r2, r5, r1
	adds r2, #0xb0
	movs r0, #0
	strb r0, [r2, #5]
	lsls r3, r1, #1
	ldr r6, _080239E4 ;@ =gUnknown_08051040
	adds r3, r3, r1
	movs r0, #2
	adds r6, r3, r6
	b _0802380E
_080237FA
	ldrb r3, [r6, r0]
	ldrb r7, [r4, #2]
	cmp r3, r7
	bhi _08023806
	adds r3, r0, #1
	strb r3, [r2, #5]
_08023806
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bmi _08023814
_0802380E
	ldrb r3, [r2, #5]
	cmp r3, #0
	beq _080237FA
_08023814
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #4
	blt _080237E6
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0802382E
	ldr r1, [sp]
	strb r0, [r1, #0xd]
_08023828
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802382E
	bl sub_8040684
	adds r0, r1, #1
	ldr r1, [sp]
	strb r0, [r1, #0xd]
	b _08023828

	non_word_aligned_thumb_func_start sub_802383A
sub_802383A ;@ 0x0802383A
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #8
	movs r4, #0
	movs r1, #1
	lsls r1, r1, #9
	add r7, sp, #4
	add r0, sp, #4
	bl sub_803BEB0
	ldr r5, _080239CC ;@ =gUnknown_03003D28
	movs r6, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _08023878
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #0xc8
	bl sub_803DA80
	cmp r0, #0
	beq _08023876
	adds r1, r0, #0
	adds r1, #0xac
	str r6, [r1, #0x10]
	str r6, [r1, #0x14]
	str r6, [r1, #0x18]
_08023876
	str r0, [r5, #4]
_08023878
	movs r2, #1
	lsls r2, r2, #9
	ldr r5, _080239CC ;@ =gUnknown_03003D28
	str r2, [sp]
	ldrb r0, [r5]
	adds r5, r7, #0
	lsls r2, r0, #9
	adds r2, #0x20
	ldr r0, _080239D0 ;@ =gUnknown_03003464
	adds r3, r7, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B3BA
	movs r0, #0
	adds r1, r5, #0
_08023898
	lsls r2, r0, #2
	ldr r2, [r1, r2]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	eors r4, r2
	cmp r0, #0x7f
	blt _08023898
	ldr r5, _080239CC ;@ =gUnknown_03003D28
	adds r1, #0xff
	adds r1, #0xc1
	ldrb r0, [r5]
	ldr r1, [r1, #0x3c]
	movs r2, #1
	cmp r1, r4
	ldr r3, _080239DC ;@ =0xF0F0F023
	bne _080238CC
	ldr r1, [sp, #4]
	cmp r0, #0
	beq _080238C8
	adds r3, #1
	cmp r0, #1
	beq _080238C8
	adds r3, #1
_080238C8
	cmp r1, r3
	beq _080238FE
_080238CC
	ldr r0, [r5, #4]
	movs r3, #0x90
	adds r1, r0, #0
	adds r1, #0x80
	str r6, [r0]
	strb r2, [r1, #4]
	movs r2, #3
	strb r2, [r3, r0]
	ldr r2, _080239E8 ;@ =0x0000FFFF
	adds r0, #0xb0
	str r2, [r1, #0x14]
	str r2, [r1, #0x18]
	strb r6, [r0, #2]
	movs r1, #2
	strb r1, [r0, #4]
	ldr r7, _080239E0 ;@ =gUnknown_03003478
	movs r0, #0
_080238EE
	lsls r1, r0, #2
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	str r6, [r7, r1]
	blt _080238EE
	b _0802397A
_080238FE
	ldr r1, [r5, #4]
	ldr r3, [r7, #4]
	adds r0, r1, #0
	str r3, [r1]
	ldr r4, [r7, #8]
	adds r0, #0x80
	strb r4, [r0, #4]
	adds r3, r7, #0
	ldr r7, [r7, #0xc]
	adds r4, r1, #0
	adds r4, #0x90
	adds r3, #0xc
	adds r3, #4
	strb r7, [r4]
	ldm r3!, {r7}
	adds r1, #0xb0
	str r7, [r0, #0x14]
	ldm r3!, {r7}
	str r7, [r0, #0x18]
	ldm r3!, {r7}
	strb r7, [r4, #0xc]
	ldm r3!, {r4}
	ldr r7, _080239E0 ;@ =gUnknown_03003478
	str r4, [r0, #0x20]
	ldr r4, [r3]
	str r4, [r0, #0x24]
	adds r0, r3, #4
	ldr r3, [r3, #4]
	adds r0, #4
	strb r3, [r1, #2]
	ldm r0!, {r3}
	strb r3, [r1, #4]
	adds r1, r0, #0
	movs r0, #0
_08023942
	lsls r4, r0, #2
	adds r0, #1
	lsls r0, r0, #0x10
	ldm r1!, {r3}
	asrs r0, r0, #0x10
	cmp r0, #0x20
	str r3, [r7, r4]
	blt _08023942
	movs r4, #0
	adds r7, r2, #0
_08023956
	ldr r0, [r5, #4]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	cmp r0, r4
	bgt _08023964
	movs r1, #0
_08023964
	adds r0, r4, #0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_803FEF8
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa
	blt _08023956
_0802397A
	ldr r0, [r5, #4]
	movs r2, #0x2d
	adds r1, r0, #0
	adds r1, #0xb0
	strb r2, [r1, #3]
	ldrb r2, [r1, #4]
	movs r4, #0x60
	movs r7, #0x40
	lsls r3, r2, #1
	adds r3, r3, r2
	adds r2, r0, #0
	adds r2, #0xa0
	lsls r3, r3, #1
	strb r3, [r2, #0xf]
	strb r4, [r1]
	strb r7, [r1, #1]
	strb r3, [r2, #0xc]
	strb r4, [r2, #0xd]
	strb r6, [r2, #0xe]
	adds r0, #0xac
	bl sub_80237DA
	ldr r0, _080239D8 ;@ =gUnknown_03003E98
	ldr r1, [r5, #4]
	ldr r0, [r0]
	movs r2, #0x88
	ldr r0, [r0, #8]
	str r0, [r2, r1]
	adds r1, #0xb0
	strb r6, [r1, #0xa]
	movs r1, #0
	movs r0, #4
	bl sub_803FEF8
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080239C8 DCDU 0xF0F0F022
_080239CC DCDU gUnknown_03003D28
_080239D0 DCDU gUnknown_03003464
_080239D4 DCDU gUnknown_0804AE30
_080239D8 DCDU gUnknown_03003E98
_080239DC DCDU 0xF0F0F023
_080239E0 DCDU gUnknown_03003478
_080239E4 DCDU gUnknown_08051040
_080239E8 DCDU 0x0000FFFF
