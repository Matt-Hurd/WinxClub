	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_sdiv
	IMPORT gUnknown_03003EA4
	IMPORT sub_8001B80

	thumb_func_start sub_8015240

sub_8015240
	push {r4, r5, r6, r7, lr}
	ldr r2, [r0, #0x10]
	adds r6, r0, #0
	adds r0, #0xc0
	ldr r4, [r0, #0x20]
	movs r5, #1
	lsls r5, r5, #0x12
	adds r3, r4, r5
	subs r0, r2, r3
	adds r2, r2, r4
	ldr r7, [r6, #0x14]
	adds r2, r2, r5
	adds r4, r7, r4
	adds r4, r4, r5
	ldr r5, [r1]
	subs r3, r7, r3
	cmp r5, #0
	sub sp, #0xc
	ble %24
	adds r2, r5, r2
	b %25
24
	adds r0, r5, r0
25
	ldr r1, [r1, #4]
	cmp r1, #0
	ble %26
	adds r4, r1, r4
	b %27
26
	adds r3, r1, r3
27
	ldr r5, [r6, #8]
	lsrs r2, r2, #0x10
	asrs r2, r5
	lsrs r1, r3, #0x10
	adds r3, r2, #0
	ldr r2, [r6, #0xc]
	lsrs r0, r0, #0x10
	lsrs r4, r4, #0x10
	asrs r4, r2
	lsrs r0, r5
	adds r7, r4, #0
	lsrs r1, r2
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r3, r4
	subs r1, r7, r5
	adds r1, #1
	adds r0, #1
	str r0, [sp, #8]
	str r1, [sp, #4]
	ldr r7, [r6]
	cmp r7, r4
	bgt %28
	adds r1, r4, #0
	adds r0, r7, #0
	bl __16__rt_sdiv
	muls r7, r0
	subs r4, r4, r7
	b %29
28
	cmp r4, #0
	bge %29
	adds r1, r4, #0
	adds r0, r7, #0
	bl __16__rt_sdiv
	muls r0, r7
	subs r0, r4, r0
	adds r4, r7, r0
	cmp r7, r4
	bne %29
	movs r4, #0
29
	ldr r7, [r6, #4]
	cmp r7, r5
	bgt %30
	adds r1, r5, #0
	adds r0, r7, #0
	bl __16__rt_sdiv
	muls r7, r0
	subs r5, r5, r7
	b %31
30
	cmp r4, #0
	bge %31
	adds r1, r5, #0
	adds r0, r7, #0
	bl __16__rt_sdiv
	muls r0, r7
	subs r0, r5, r0
	adds r5, r7, r0
	cmp r7, r5
	bne %31
	movs r5, #0
31
	ldr r0, _08015378
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	movs r2, #1
	movs r1, #0
	ldr r0, [r0, #0x50]
	bl sub_8001B80
	ldr r3, [r0, #0x10]
	ldr r0, [r6]
	adds r1, r3, r4
	adds r2, r0, #0
	muls r2, r5
	adds r1, r2, r1
	adds r4, r0, r3
	adds r2, r2, r4
	adds r4, r3, #0
	ldr r5, [r6, #4]
	adds r3, r0, #0
	muls r3, r5
	ldr r5, [sp, #4]
	adds r4, r3, r4
	cmp r5, #0
	mov ip, r5
	ble %39
32
	ldr r6, [sp, #8]
	adds r5, r1, #0
	cmp r6, #0
	ble %37
33
	ldrb r7, [r5]
	cmp r7, #0
	beq %35
	cmp r7, #0x1a
	bhs %35
	movs r0, #1
34
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
35
	adds r5, #1
	cmp r5, r2
	blo %36
	subs r5, r5, r0
36
	subs r6, #1
	cmp r6, #0
	bgt %33
37
	adds r1, r0, r1
	adds r2, r0, r2
	cmp r1, r4
	blo %38
	subs r1, r1, r3
	subs r2, r2, r3
38
	mov r5, ip
	subs r5, #1
	mov ip, r5
	cmp r5, #0
	bgt %32
39
	movs r0, #0
	b %34
	ALIGN

	ALIGN
_08015378 DCDU gUnknown_03003EA4

	END
