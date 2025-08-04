	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT sub_8000DE6
	IMPORT __da__FPv

	thumb_func_start sub_803F5FC
sub_803F5FC
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x60
	ldrb r0, [r5, #0xe]
	adds r6, r1, #0
	ldrb r1, [r5, #0xf]
	movs r4, #0
	sub sp, #4
	muls r0, r1
	cmp r0, #0
	bls %3
	ldr r7, _0803F650
1
	lsls r1, r4, #2
	ldr r0, [r6, r1]
	cmp r0, #0
	beq %2
	adds r1, r1, r6
	ldr r0, [r7]
	bl sub_8000DE6
2
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	muls r0, r1
	cmp r0, r4
	bhi %1
3
	adds r0, r6, #0
	bl __da__FPv
	ldr r0, [sp, #0xc]
	bl __da__FPv
	ldr r0, [sp, #0x10]
	bl __da__FPv
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803F650 DCDU gUnknown_03003EB8
	END
