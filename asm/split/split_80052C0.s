    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_80406E4

	thumb_func_start sub_80052C0
sub_80052C0 ;@ 0x080052C0
	push {r3, r4, r5, r6, r7, lr}
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r7, r2, #0
	lsrs r6, r0, #0x10
	adds r4, r1, #0
	cmp r1, #0
	bne _080052D8
	movs r0, #1
_080052D2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080052D8
	cmp r7, #0
	beq _08005376
_080052DC
	ldr r0, _0800537C ;@ =0x000015B0
	cmp r7, r0
	bhs _080052E4
	adds r0, r7, #0
_080052E4
	subs r7, r7, r0
	cmp r0, #0x10
	blt _08005352
_080052EA
	ldrb r1, [r4]
	ldrb r3, [r4, #1]
	subs r0, #0x10
	adds r1, r1, r5
	adds r2, r6, r1
	adds r1, r3, r1
	ldrb r3, [r4, #2]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #3]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #4]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #5]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #6]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #7]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #8]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #9]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xa]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xb]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xc]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xd]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xe]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xf]
	adds r2, r2, r1
	adds r4, #0x10
	adds r5, r3, r1
	adds r6, r2, r5
	cmp r0, #0x10
	bge _080052EA
_08005352
	cmp r0, #0
	beq _08005362
_08005356
	ldrb r1, [r4]
	adds r4, #1
	adds r5, r1, r5
	adds r6, r6, r5
	subs r0, #1
	bne _08005356
_08005362
	adds r0, r5, #0
	bl sub_80406E4
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_80406E4
	adds r6, r0, #0
	cmp r7, #0
	bne _080052DC
_08005376
	lsls r0, r6, #0x10
	orrs r0, r5
	b _080052D2
	ALIGN
_0800537C DCDU 0x000015B0
	END