	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT sub_8000AC4
	IMPORT sub_8001338
	IMPORT sub_80019B4

	thumb_func_start sub_802E800
sub_802E800
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	sub sp, #0x14
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _0802E85E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0802E85E
	adds r1, r4, #0
	adds r1, #0x24
	bl sub_8000AC4
	cmp r0, #0
	beq _0802E85E
	ldr r0, _0802E8FC
	ldr r0, [r0]
	bl sub_80019B4
	mov r5, sp
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r5!, {r2, r3}
	ldr r1, [r4, #4]
	movs r0, #0x50
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0802E85E
	lsls r2, r0, #0x1e
	bpl _0802E866
	movs r1, #1
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
_0802E85E
	add sp, #0x14
	pop {r4, r5}
	pop {r3}
	bx r3
_0802E866
	lsls r0, r0, #0x1f
	bpl _0802E85E
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	ldr r0, [r4, #8]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	movs r2, #1
	ldr r0, [r4, #0x34]
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r4, #0x34]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _0802E8AA
	ldr r0, [sp, #0x10]
	str r0, [r4, #0xc]
	b _0802E85E
_0802E8AA
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _0802E85E

	thumb_func_start sub_802E8B0
sub_802E8B0
	push {r4, r5, r6, lr}
	ldr r5, [r0, #4]
	adds r4, r0, #0
	ldr r0, [r5]
	movs r6, #0
	lsls r0, r0, #0x1c
	bpl _0802E8C8
	ldr r0, _0802E8FC
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802E8C8
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #0x34]
	lsls r1, r2, #0x12
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	lsls r1, r2, #7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	str r6, [r4, #0xc]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802E8F8
sub_802E8F8
	movs r0, #0
	bx lr
	ALIGN
_0802E8FC DCDU gUnknown_03003EB8
	END
