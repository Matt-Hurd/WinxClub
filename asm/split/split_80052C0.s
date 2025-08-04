	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80406E4

	thumb_func_start sub_80052C0
sub_80052C0
	push {r3, r4, r5, r6, r7, lr}
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r7, r2, #0
	lsrs r6, r0, #0x10
	adds r4, r1, #0
	cmp r1, #0
	bne %2
	movs r0, #1
1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	cmp r7, #0
	beq %9
3
	ldr r0, _0800537C
	cmp r7, r0
	bhs %4
	adds r0, r7, #0
4
	subs r7, r7, r0
	cmp r0, #0x10
	blt %6
5
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
	bge %5
6
	cmp r0, #0
	beq %8
7
	ldrb r1, [r4]
	adds r4, #1
	adds r5, r1, r5
	adds r6, r6, r5
	subs r0, #1
	bne %7
8
	adds r0, r5, #0
	bl sub_80406E4
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_80406E4
	adds r6, r0, #0
	cmp r7, #0
	bne %3
9
	lsls r0, r6, #0x10
	orrs r0, r5
	b %1
	ALIGN
_0800537C DCDU 0x000015B0
	END
