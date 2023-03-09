    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0300344C
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EB4
	IMPORT gUnknown_0804AE30
	IMPORT gUnknown_08050694
	IMPORT sub_80046F8
	IMPORT sub_8004716
	IMPORT sub_800474E
	IMPORT sub_80050C0
	IMPORT sub_8005106
	IMPORT sub_800B058
	IMPORT sub_800E53C
	IMPORT sub_800E71C
	IMPORT sub_800ED7C
	IMPORT sub_800EF2A
	IMPORT sub_800EF60
	IMPORT sub_8017B9A
	IMPORT sub_8017CA0
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386
	IMPORT sub_803D468
	IMPORT sub_803D680
	IMPORT sub_803D834
	IMPORT sub_803D97C
	IMPORT sub_803DA4C
	IMPORT sub_803DA9C

	thumb_func_start sub_8017E40
sub_8017E40 ;@ 0x08017E40
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r0, sp, #8
	bl sub_80046F8
	bl sub_80180BE
	movs r0, #0
	bl sub_800E53C
	ldr r0, _0801803C ;@ =gUnknown_03003454
	ldr r0, [r0]
	bl sub_8017B9A
	ldr r0, _08018040 ;@ =gUnknown_03003E98
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	ldr r0, _08018044 ;@ =gUnknown_03003EB4
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #0x18
	movs r6, #0
	cmp r0, #0
	beq _08017E86
	movs r0, #0
	ldr r2, _08018048 ;@ =0x05000020
	str r0, [sp, #4]
	adds r1, r2, #0
	subs r1, #0x20
	add r0, sp, #4
	bl sub_803D468
	b _08017E98
_08017E86
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0801804C ;@ =0x040000D4
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08018050 ;@ =0x85000020
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08017E98
	add r0, pc, #0x1B8 ;@ =_08018054
	bl sub_800EF60
	bl sub_8018070
	ldr r4, _0801805C ;@ =gUnknown_0804AE30
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	bne _08017EB8
	ldr r1, _08018060 ;@ =gUnknown_03003D30
	ldrb r0, [r4]
	ldr r1, [r1]
	strb r0, [r1, #3]
	ldr r1, _08018064 ;@ =gUnknown_0300344C
	ldr r1, [r1]
	strb r0, [r1, #9]
_08017EB8
	ldr r5, _08018068 ;@ =gUnknown_03003468
	ldr r0, [r5]
	bl sub_803DA4C
	movs r1, #0
	movs r0, #0
	bl sub_800ED7C
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r6, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl sub_80050C0
	str r0, [r5]
	movs r0, #3
	bl sub_800E71C
	ldr r0, _0801803C ;@ =gUnknown_03003454
	ldr r0, [r0]
	bl sub_8017CA0
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	beq _08017F06
	movs r0, #0xc
	bl sub_8018386
_08017EFE
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08017F06
	movs r0, #2
	bl sub_8018386
	b _08017EFE

	non_word_aligned_thumb_func_start sub_8017F0E
sub_8017F0E ;@ 0x08017F0E
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #1]
	adds r5, r4, #4
	movs r6, #0
	cmp r0, #0
	sub sp, #0x10
	bne _08017F5E
	movs r2, #0
	movs r1, #4
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #3
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	ldrb r0, [r4]
	ldr r1, _0801806C ;@ =gUnknown_08050694
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_800EF60
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_08017F56
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08017F5E
	cmp r0, #1
	bne _08017F82
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	adds r0, r5, #0
	bl sub_803D97C
	cmp r0, #0
	beq _08017F56
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _08017F56
_08017F82
	cmp r0, #2
	bne _08017FCE
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #2]
	cmp r0, #0x3c
	bne _08017F56
	ldrb r0, [r4]
	adds r0, #1
	cmp r0, #5
	bhs _08017FCA
	movs r2, #0
	movs r1, #4
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #2
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _08017F56
_08017FCA
	strb r0, [r4]
	b _08017F56
_08017FCE
	cmp r0, #3
	bne _08017F56
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	adds r0, r5, #0
	bl sub_803D97C
	cmp r0, #0
	beq _08017F56
	strb r6, [r4, #2]
	strb r6, [r4, #1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08017F56

	thumb_func_start sub_8017FF4
sub_8017FF4 ;@ 0x08017FF4
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start sub_8017FFE
sub_8017FFE ;@ 0x08017FFE
	push {r4, lr}
	sub sp, #0x10
	mov r4, sp
	add r0, sp, #4
	bl sub_8004716
	movs r0, #0
	add r3, sp, #0
	strb r0, [r3]
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	ldrb r0, [r3]
	cmp r0, #5
	bhs _0801802C
_0801801A
	adds r0, r4, #0
	bl sub_8017F0E
	bl sub_800EF2A
	add r3, sp, #0
	ldrb r0, [r3]
	cmp r0, #5
	blo _0801801A
_0801802C
	adds r0, r4, #0
	bl sub_8017E40
	add sp, #0x10
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0801803C DCDU gUnknown_03003454
_08018040 DCDU gUnknown_03003E98
_08018044 DCDU gUnknown_03003EB4
_08018048 DCDU 0x05000020
_0801804C DCDU 0x040000D4
_08018050 DCDU 0x85000020
_08018054 DCDU 0x6F4D6742
_08018058 DCDU 0x00656976
_0801805C DCDU gUnknown_0804AE30
_08018060 DCDU gUnknown_03003D30
_08018064 DCDU gUnknown_0300344C
_08018068 DCDU gUnknown_03003468
_0801806C DCDU gUnknown_08050694
