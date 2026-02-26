	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003530
	IMPORT gUnknown_030037A0

	thumb_func_start sub_8012180

sub_8012180
	ldr r2, _0801232C
	push {r4, r5}
	ldrb r1, [r2, #0xf]
	movs r3, #0x4c
	ldrb r2, [r2, #0xe]
	muls r1, r3
	ldr r3, _08012330
	ldr r5, _0801232C
	adds r1, r1, r3
	subs r5, #0x18
	cmp r2, #0
	beq %9
	ldr r4, [r5, #4]
6
	ldr r3, [r1, #4]
	lsls r3, r3, #0x1f
	bmi %8
	ldr r3, [r1, #0x10]
	cmp r3, #0
	ldr r3, [r1, #0x18]
	beq %7
	muls r3, r4
	lsrs r3, r3, #8
	str r3, [r1, #0x38]
	b %8
7
	muls r3, r0
	lsrs r3, r3, #8
	str r3, [r1, #0x38]
8
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne %6
9
	str r0, [r5, #4]
	pop {r4, r5}
	bx lr

	ALIGN
_0801232C DCDU gUnknown_03003530
_08012330 DCDU gUnknown_030037A0

	END
