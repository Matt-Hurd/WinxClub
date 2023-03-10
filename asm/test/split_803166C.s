    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_0803E488
	IMPORT gUnknown_08051096
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_801D564
	IMPORT sub_801D714
	IMPORT sub_801DD40
	IMPORT sub_801DF50
	IMPORT sub_801EBCA
	IMPORT sub_803BE1C
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_80404B4

	thumb_func_start sub_803166C
sub_803166C ;@ 0x0803166C
	push {r4, lr}
	adds r4, r0, #0
	bne _08031684
	movs r0, #0xa4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08031684
	adds r0, r4, #0
_0803167E
	pop {r4}
	pop {r3}
	bx r3
_08031684
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _08031800 ;@ =gUnknown_0803E488
	ldr r2, _08031810 ;@ =0xF000FFFF
	str r0, [r4]
	add r0, pc, #0x170 ;@ =_08031804
	str r0, [r4, #0x4c]
	movs r0, #5
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	movs r3, #0x3c
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	ldr r1, [r0, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #3
	lsls r2, r2, #0xf
	adds r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x70
	strb r3, [r1, #0xd]
	movs r3, #0x14
	strb r3, [r1, #0xc]
	ldr r1, [r0]
	ldr r3, _08031814 ;@ =0xFF8007FF
	ands r1, r3
	ldr r3, _08031818 ;@ =0x0027B000
	adds r1, r1, r3
	str r1, [r0]
	lsrs r1, r2, #0xc
	ldr r2, _0803181C ;@ =0x00000505
	lsls r1, r1, #0xc
	adds r1, r1, r2
	ldr r2, [r0, #8]
	ldr r3, _08031820 ;@ =0xFF8003FF
	ands r2, r3
	ldr r3, _08031824 ;@ =0x00443800
	adds r2, r2, r3
	str r2, [r0, #8]
	movs r2, #4
	movs r3, #0x97
	strb r2, [r3, r4]
	lsls r2, r2, #0xa
	orrs r1, r2
	str r1, [r0, #0xc]
	ldr r0, _08031828 ;@ =gUnknown_08051096
	ldrh r1, [r0, #4]
	strh r1, [r4, #8]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xc]
	ldrh r1, [r0]
	strh r1, [r4, #0xe]
	ldrh r1, [r0, #0xa]
	strh r1, [r4, #0x18]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x1a]
	ldrh r1, [r0, #0xa]
	strh r1, [r4, #0x1c]
	ldrh r0, [r0, #6]
	movs r1, #0xa0
	strh r0, [r4, #0x1e]
	movs r0, #0xcf
	strh r0, [r1, r4]
	adds r0, r4, #0
	b _0803167E

	non_word_aligned_thumb_func_start sub_803171A
sub_803171A ;@ 0x0803171A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08031800 ;@ =gUnknown_0803E488
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _08031736
	adds r0, r4, #0
	bl sub_803DA18
_08031736
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803173C
sub_803173C ;@ 0x0803173C
	push {r3, lr}
	bl sub_801DD40
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8031748
sub_8031748 ;@ 0x08031748
	push {r3, lr}
	bl sub_801DF50
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8031754
sub_8031754 ;@ 0x08031754
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_803BE1C
	movs r1, #0xa0
	ldrh r1, [r1, r4]
	ands r0, r1
	bne _0803178C
	bl sub_803BE1C
	bl sub_80404B4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r3, _08031828 ;@ =gUnknown_08051096
	lsls r1, r1, #1
	adds r0, r1, r3
	ldrh r2, [r0, #4]
	strh r2, [r4, #0x18]
	ldrh r2, [r0, #2]
	strh r2, [r4, #0x1a]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x1c]
	ldrh r0, [r3, r1]
	strh r0, [r4, #0x1e]
_0803178C
	movs r0, #0x9c
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _080317F4
	ldr r7, _0803182C ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x30]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	ldr r5, [r4, #0x2c]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	ldr r5, _08031828 ;@ =gUnknown_08051096
	subs r0, r1, r0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r5, #0x18
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _080317F4
	ldr r6, [r4, #0x2c]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r6, #0x48]
	subs r0, r1, r0
	asrs r0, r0, #2
	lsls r0, r0, #1
	ldrh r1, [r5, r0]
	ldr r0, [r4, #0x30]
	bl sub_800065C
_080317F4
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08031800 DCDU gUnknown_0803E488
_08031804 DCDU 0x6F6B694B
_08031808 DCDU 0x6F724720
_0803180C DCDU 0x00007075
_08031810 DCDU 0xF000FFFF
_08031814 DCDU 0xFF8007FF
_08031818 DCDU 0x0027B000
_0803181C DCDU 0x00000505
_08031820 DCDU 0xFF8003FF
_08031824 DCDU 0x00443800
_08031828 DCDU gUnknown_08051096
_0803182C DCDU gUnknown_03003EA0
