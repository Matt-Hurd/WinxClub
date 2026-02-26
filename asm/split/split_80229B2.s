	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_8028C2E
	IMPORT sub_8040034
	IMPORT sub_8040640

	non_word_aligned_thumb_func_start sub_80229B2

sub_80229B2
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x2f
	lsls r0, r0, #4
	adds r5, r7, r0
	adds r6, r1, #0
	cmp r1, #0
	bge %11
	ldrb r0, [r5, #8]
	adds r0, #2
	bl sub_8040640
	strb r0, [r5, #8]
	b %12
11
	cmp r6, #0
	ble %12
	ldrb r0, [r5, #8]
	adds r0, #1
	bl sub_8040640
	strb r0, [r5, #8]
12
	movs r4, #0
13
	ldrb r1, [r5, #8]
	movs r3, #0x23
	lsls r0, r4, #3
	adds r0, r0, r4
	muls r1, r3
	lsls r0, r0, #1
	adds r0, #0x19
	add r3, sp, #0
	strh r0, [r3]
	adds r1, #0x40
	strh r1, [r3, #2]
	movs r1, #0xb
	lsls r0, r4, #2
	adds r0, r0, r7
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	mov r1, sp
	bl sub_8040034
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %13
	cmp r6, #0
	beq %14
	ldr r0, _08022C34
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
14
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_08022C34 DCDU gUnknown_0300345C

	END
