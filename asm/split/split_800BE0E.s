	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0804AB68
	IMPORT sub_800BD7C
	IMPORT sub_800C014

	non_word_aligned_thumb_func_start sub_800BE0E

sub_800BE0E
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x78]
	movs r1, #1
	orrs r0, r1
	sub sp, #0x10
	str r0, [r5, #0x78]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	ldr r3, [sp, #0x14]
	ldr r2, [r3, #0x44]
	cmp r2, #0
	beq %24
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x48]
24
	ldr r3, [sp, #0x14]
	ldr r2, [r3, #0x18]
	cmp r2, #0
	beq %25
	adds r7, r2, #0
	b %26
25
	ldr r4, [r5, #0x18]
	ldr r3, [r0]
	lsls r6, r3, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r7, r4, r3
26
	ldr r3, [sp, #0x14]
	ldr r4, [r3, #0x14]
	adds r3, r1, #0
	cmp r2, #0
	bne %27
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r3, r0, #0x1c
27
	subs r0, r3, #1
	str r0, [sp]
	adds r3, r0, #1
	beq %31
	ldr r1, _0800C004
	ldr r0, _0800C000
	adds r2, r5, r1
	movs r1, #0x2f
	lsls r1, r1, #6
	adds r6, r5, r1
	adds r1, r0, #0
	adds r1, #0x10
	adds r1, r5, r1
	str r2, [sp, #0xc]
	adds r2, r5, r0
	str r2, [sp, #4]
	str r1, [sp, #8]
28
	ldr r2, [sp, #4]
	ldr r1, [r4]
	ldrb r0, [r2, #0xe]
	movs r2, #0xff
	lsls r2, r2, #0xd
	bics r1, r2
	lsls r0, r0, #0xd
	orrs r0, r1
	str r0, [r4]
	ldr r2, [sp, #4]
	ldr r1, _0800C008
	ldrb r0, [r2, #0xe]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xf]
	strb r0, [r2, #0xe]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #0xf]
	ldr r2, [r4]
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x18
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r1, r2, r1
	strb r0, [r1, #0xf]
	ldr r1, [r4]
	movs r0, #0xff
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r2, r1, r5
	movs r1, #0x99
	lsls r1, r1, #5
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq %29
	ldr r0, [r4]
	ldr r2, [sp, #4]
	lsls r0, r0, #0xb
	ldrb r2, [r2, #0xf]
	lsrs r0, r0, #0x18
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r1, r2, r1
	strb r0, [r1]
29
	ldr r0, [r4]
	ldr r2, [sp, #4]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	strb r0, [r2, #0xf]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	ldr r1, [sp, #8]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r0, [r7, #4]
	lsls r1, r0, #0x14
	lsls r2, r0, #0xc
	lsrs r1, r1, #0x18
	lsls r1, r1, #4
	lsrs r2, r2, #0x18
	orrs r1, r2
	ldr r2, _0800C00C
	lsls r0, r0, #0x1c
	ldrb r2, [r2, r1]
	movs r1, #1
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq %30
	movs r1, #0
30
	ldr r0, [sp, #0x14]
	mov lr, r2
	ldr r0, [r0, #0x44]
	add lr, r1
	cmp r0, #0
	beq %32
	mov r1, lr
	adds r0, r5, #0
	bl sub_800BD7C
	ldr r1, [r4]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0xb
	lsls r0, r0, #0x15
	orrs r0, r1
	str r0, [r4]
	b %38
31
	b %43
32
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %34
	ldr r0, _0800C010
	ldr r1, [r7]
	bics r0, r1
	beq %34
	ldrb r0, [r6, #0xd]
	ldr r2, _0800C004
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r2, [r6, #0xe]
	subs r2, #1
	mov ip, r2
	adds r3, r2, #1
	beq %34
	lsls r1, r1, #4
	lsrs r1, r1, #4
33
	ldr r2, [r0]
	cmp r1, r2
	bne %35
	ldr r1, [r0, #4]
	ldr r2, [r4]
	lsls r1, r1, #0x16
	lsls r2, r2, #0xb
	lsrs r2, r2, #0xb
	lsrs r1, r1, #1
	orrs r1, r2
	ldr r2, [sp, #0xc]
	lsrs r1, r1, #8
	subs r2, r0, r2
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	lsls r1, r1, #8
	orrs r1, r2
	str r1, [r4]
	ldr r1, [r0, #4]
	movs r3, #0x3f
	lsls r3, r3, #0xa
	adds r2, r1, #0
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xa
	adds r1, r1, r3
	movs r3, #0x3f
	lsls r3, r3, #0xa
	ands r1, r3
	orrs r1, r2
	mov r2, ip
	cmp r2, #0
	str r1, [r0, #4]
	bpl %38
34
	mov r1, lr
	adds r0, r5, #0
	bl sub_800BD7C
	ldr r1, [r4]
	lsls r0, r0, #0x15
	lsls r1, r1, #0xb
	lsrs r1, r1, #0xb
	orrs r1, r0
	str r1, [r4]
	ldrb r0, [r6, #0xc]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4]
	ldrb r0, [r6, #0xc]
	ldr r1, _0800C004
	movs r3, #0xff
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r1, [r0, #4]
	lsrs r1, r1, #0x18
	strb r1, [r6, #0xc]
	ldrb r1, [r6, #0xd]
	ldr r2, [r0, #4]
	lsls r2, r2, #8
	lsrs r2, r2, #8
	lsls r1, r1, #0x18
	orrs r1, r2
	lsls r3, r3, #0x10
	orrs r1, r3
	str r1, [r0, #4]
	ldr r2, [r7]
	b sub_800C014
	ALIGN

	ALIGN
_0800C000 DCDU 0x00001810
_0800C004 DCDU 0x000007CC
_0800C008 DCDU 0x00001310
_0800C00C DCDU gUnknown_0804AB68
_0800C010 DCDU 0x0FFFFFFF

	END
