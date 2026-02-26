	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_08050716
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8018C48
	IMPORT sub_8028C2E
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_8040640

	non_word_aligned_thumb_func_start sub_8039206

sub_8039206
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r6, r5, r0
	ldrb r0, [r6, #0xd]
	cmp r1, #0
	sub sp, #0xc
	bge %3
	adds r0, #2
	bl sub_8040640
	strb r0, [r6, #0xd]
	b %4
3
	cmp r1, #0
	ble %4
	adds r0, #1
	bl sub_8040640
	strb r0, [r6, #0xd]
4
	movs r4, #0
5
	ldrb r0, [r6, #0xd]
	ldr r7, _080395B4
	cmp r0, r4
	bne %6
	subs r7, #2
6
	lsls r0, r4, #3
	adds r0, r0, r5
	adds r0, #0xc0
	str r0, [sp, #8]
	ldr r1, [r0, #0x38]
	ldr r0, _080395B8
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq %7
	ldr r0, [sp, #8]
	adds r1, r7, #0
	ldr r0, [r0, #0x38]
	bl sub_800065C
	ldr r0, [sp, #8]
	adds r1, r7, #1
	ldr r0, [r0, #0x3c]
	bl sub_800065C
7
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %5
	ldrb r0, [r6, #0xd]
	movs r1, #5
	adds r4, r5, #0
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #4
	add r3, sp, #0
	strh r1, [r3, #4]
	adds r0, #2
	adds r4, #0xff
	adds r4, #1
	strh r0, [r3, #6]
	ldr r0, [r4, #0x38]
	add r1, sp, #4
	bl sub_8040034
	ldrb r0, [r6, #0xd]
	movs r1, #0x13
	lsls r1, r1, #7
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	adds r1, r5, #0
	adds r1, #8
	cmp r0, #0
	beq %8
	movs r3, #0xb
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b %9
8
	movs r3, #0xa
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
9
	ldr r0, _080395B8
	ldr r7, [r4, #0x10]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %10
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
10
	lsls r0, r1, #0x10
	ldrb r1, [r6, #0xd]
	lsrs r0, r0, #0x10
	adds r2, r1, r5
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r1, r2, r1
	ldrb r1, [r1, #0xc]
	ldr r2, _080395BC
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	beq %11
	ldr r0, [r4, #0x10]
	bl sub_800065C
11
	ldr r0, [r4, #0x10]
	movs r3, #0x13
	ldr r1, [r0]
	lsls r3, r3, #7
	lsls r2, r1, #0x1f
	ldrb r1, [r6, #0xd]
	lsrs r2, r2, #0x1f
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, r1, r3
	ldr r1, [r1, #0x30]
	cmp r2, r1
	beq %12
	bl sub_80401E4
12
	ldr r0, _080395AC
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_080395AC DCDU gUnknown_0300345C
_080395B4 DCDU 0x00000CED
_080395B8 DCDU gUnknown_03003EA0
_080395BC DCDU gUnknown_08050716

	END
