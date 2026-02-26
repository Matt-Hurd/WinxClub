	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_8028C2E

	thumb_func_start sub_80302CC

sub_80302CC
	push {r3, r4, r5, r6, r7, lr}
	mov ip, r1
	cmp r1, #0
	beq %11
	ldrb r1, [r0]
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	strb r1, [r0]
11
	movs r2, #0
	movs r7, #3
	lsls r7, r7, #0xa
12
	ldrb r1, [r0]
	movs r4, #1
	cmp r1, r2
	bne %13
	movs r4, #0
13
	lsls r1, r2, #3
	adds r5, r1, r0
	adds r5, #0xff
	adds r5, #0x41
	ldr r3, [r5, #0x2c]
	ldrh r6, [r3, #0x26]
	lsls r1, r6, #0x14
	lsrs r1, r1, #0x1e
	cmp r1, r4
	beq %14
	lsls r1, r4, #0x1e
	lsrs r1, r1, #0x14
	bics r6, r7
	orrs r6, r1
	adds r4, r6, #0
	strh r4, [r3, #0x26]
	ldr r4, [r3]
	movs r6, #0x80
	orrs r4, r6
	str r4, [r3]
	ldr r3, [r5, #0x30]
	ldrh r4, [r3, #0x26]
	bics r4, r7
	orrs r1, r4
	strh r1, [r3, #0x26]
	ldr r1, [r3]
	orrs r1, r6
	str r1, [r3]
14
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #2
	blo %12
	mov r1, ip
	cmp r1, #0
	beq %15
	ldr r0, _08030594
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
15
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_08030594 DCDU gUnknown_0300345C

	END
