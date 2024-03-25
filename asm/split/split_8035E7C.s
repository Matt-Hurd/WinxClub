    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_0803E528
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8005106
	IMPORT sub_801D564
	IMPORT sub_801D714
	IMPORT sub_801DD40
	IMPORT sub_801DF50
	IMPORT sub_801E124
	IMPORT sub_801E2DA
	IMPORT sub_803B8CC
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803DA80

	thumb_func_start sub_8035E7C
sub_8035E7C ;@ 0x08035E7C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08035E94
	movs r0, #0xbc
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08035E94
	adds r0, r4, #0
_08035E8E
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08035E94
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _08036128 ;@ =gUnknown_0803E528
	movs r1, #0
	str r0, [r4]
	add r0, pc, #0x288 ;@ =_0803612C
	str r0, [r4, #0x4c]
	movs r0, #0x14
	strh r0, [r4, #4]
	movs r0, #0x7d
	strb r1, [r0, r4]
	adds r2, r4, #0
	adds r2, #0xa0
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r2, #8]
	ldr r3, [r0, #4]
	ldr r5, _08036140 ;@ =0xF000FFFF
	ands r3, r5
	str r3, [r0, #4]
	ldr r3, [r4, #0x7c]
	movs r5, #0xf
	lsls r5, r5, #0x18
	bics r3, r5
	str r3, [r4, #0x7c]
	movs r3, #0x11
	str r3, [r0, #0x1c]
	movs r3, #0xff
	strb r3, [r2]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	movs r3, #0x13
	lsls r3, r3, #5
	strh r1, [r4, #0x1e]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0xa]
	strh r3, [r4, #0xc]
	strh r3, [r4, #8]
	movs r3, #4
	movs r5, #0x97
	strb r3, [r5, r4]
	movs r5, #1
	ldr r3, [r0, #0xc]
	lsls r5, r5, #0xc
	orrs r3, r5
	str r3, [r0, #0xc]
	strh r1, [r2, #0x16]
	adds r0, r4, #0
	b _08035E8E

	non_word_aligned_thumb_func_start sub_8035EFA
sub_8035EFA ;@ 0x08035EFA
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08036128 ;@ =gUnknown_0803E528
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _08035F16
	adds r0, r4, #0
	bl sub_803DA18
_08035F16
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8035F1C
sub_8035F1C ;@ 0x08035F1C
	push {r4}
	ldr r1, [r1]
	adds r0, #0xa0
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x18]
	ldrh r3, [r1, #8]
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	strh r3, [r0, #0x12]
	ldrh r3, [r1, #0xa]
	strh r3, [r0, #0x14]
	movs r3, #1
	lsls r3, r4
	cmp r2, #0
	beq _08035F4E
	lsrs r2, r2, #5
	ldr r4, _08036144 ;@ =gUnknown_03003478
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ands r2, r3
	bne _08035F4E
	ldrh r1, [r1, #4]
	strh r1, [r0, #0x16]
_08035F4A
	pop {r4}
	bx lr
_08035F4E
	movs r1, #0
	strh r1, [r0, #0x16]
	b _08035F4A

	thumb_func_start sub_8035F54
sub_8035F54 ;@ 0x08035F54
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r0, [r5, #6]
	ldr r6, [r4, #0x2c]
	cmp r0, #0
	beq _08035F6A
	ldr r0, [r6]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08035FAC
_08035F6A
	ldrh r0, [r5, #4]
	movs r1, #0
	mvns r1, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0x1a]
	ldr r0, _08036148 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	cmp r2, #0
	beq _08035F8C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08035F8C
	lsls r0, r1, #0x10
	ldrh r1, [r5, #4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08035F9E
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_08035F9E
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08035FAC
	bl sub_8000914
_08035FAC
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8035FB2
sub_8035FB2 ;@ 0x08035FB2
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	beq _08035FCE
	cmp r2, #0x27
	beq _08035FDA
	cmp r2, #0x28
	bne _08035FE0
	bl sub_8035F1C
_08035FC8
	add sp, #4
	pop {r3}
	bx r3
_08035FCE
	ldr r2, [r0]
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl sub_803B8CC
	b _08035FC8
_08035FDA
	bl sub_8035F54
	b _08035FC8
_08035FE0
	bl sub_801DD40
	b _08035FC8

	non_word_aligned_thumb_func_start sub_8035FE6
sub_8035FE6 ;@ 0x08035FE6
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	bne _08035FF8
	movs r0, #1
_08035FF2
	add sp, #4
	pop {r3}
	bx r3
_08035FF8
	bl sub_801DF50
	b _08035FF2

	non_word_aligned_thumb_func_start sub_8035FFE
sub_8035FFE ;@ 0x08035FFE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08036026
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08036026
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

	non_word_aligned_thumb_func_start sub_803604E
sub_803604E ;@ 0x0803604E
	push {r4}
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	str r2, [r0, #0x5c]
	ldrh r2, [r1, #4]
	cmp r2, #0
	bne _08036092
	ldrh r1, [r1, #6]
	cmp r1, #0
	bne _08036092
	movs r1, #0x7d
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bge _08036092
	ldr r1, _0803614C ;@ =gUnknown_03003454
	movs r2, #3
	ldr r1, [r1]
	lsls r2, r2, #9
	adds r1, #0x10
	adds r1, r1, r2
	adds r0, #0xa0
	ldrh r2, [r0, #0xe]
	ldrh r3, [r0, #0xa]
	ldrh r4, [r0, #0x10]
	ldrh r0, [r0, #0xc]
	ldr r1, [r1, #0x1c]
	strh r4, [r1, #0x26]
	strh r0, [r1, #0x22]
	strh r2, [r1, #0x24]
	strh r3, [r1, #0x20]
_08036092
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start sub_8036096
sub_8036096 ;@ 0x08036096
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
	beq _080360C2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_080360C2
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

	non_word_aligned_thumb_func_start sub_80360EA
sub_80360EA ;@ 0x080360EA
	push {r3, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x14
	beq _08036118
	cmp r3, #0x1f
	bne _08036122
	ldr r1, [r2, #4]
	adds r2, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, #0x70
	strb r1, [r2, #0xd]
	cmp r1, #0
	bge _0803610A
	NEGS r1, r1
_0803610A
	adds r0, #0xa0
	strb r1, [r0, #8]
	movs r0, #0
	strb r0, [r2, #0xc]
_08036112
	add sp, #4
	pop {r3}
	bx r3
_08036118
	ldr r1, [r2, #4]
	strh r1, [r0, #0x1a]
	ldr r1, [r2, #4]
	strh r1, [r0, #0x18]
	b _08036112
_08036122
	bl sub_801E2DA
	b _08036112
	ALIGN
_08036128 DCDU gUnknown_0803E528
_0803612C DCDU 0x6C6C6157
_08036130 DCDU 0x6A624F20
_08036134 DCDU 0x20746365
_08036138 DCDU 0x756F7247
_0803613C DCDU 0x00000070
_08036140 DCDU 0xF000FFFF
_08036144 DCDU gUnknown_03003478
_08036148 DCDU gUnknown_03003EA0
_0803614C DCDU gUnknown_03003454
	END