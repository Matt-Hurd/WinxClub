	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __da__FPv

	thumb_func_start sub_801642C

sub_801642C
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrb r1, [r1]
	adds r4, #0xff
	adds r4, #1
	movs r5, #0
	cmp r1, #0x19
	beq %7
	cmp r1, #0x1a
	beq %10
	cmp r1, #0x1b
	bne %13
	adds r0, #0xf0
	ldrb r0, [r0, #8]
	movs r2, #1
	adds r1, r2, #0
	cmp r0, #0
	bne %5
	movs r1, #0
5
	subs r0, r2, r1
6
	pop {r3, r4, r5}
	pop {r3}
	bx r3
7
	adds r0, #0xff
	adds r0, #0x61
	ldrh r0, [r0, #0x1e]
	ldr r1, _080164A4
	cmp r0, r1
	bne %9
	ldr r0, [r4]
	cmp r0, #0
	beq %8
	bl __da__FPv
8
	movs r0, #1
	str r5, [r4]
	b %6
9
	movs r0, #0
	b %6
10
	movs r1, #0x1b
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	cmp r0, #0xff
	bne %12
	ldr r0, [r4]
	cmp r0, #0
	beq %11
	bl __da__FPv
11
	movs r0, #1
	str r5, [r4]
	b %6
12
	movs r0, #0
	b %6
13
	movs r0, #0
	b %6
	ALIGN

	ALIGN
_080164A4 DCDU 0x0000FFFF

	END
