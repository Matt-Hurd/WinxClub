	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8013F6C
	IMPORT sub_803F55C
	IMPORT sub_803F5FC

	thumb_func_start sub_8014E04

sub_8014E04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_803F55C
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq %3
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
3
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq %4
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
4
	movs r1, #0
	str r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x60
	str r1, [r4, #0x60]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	bl sub_8013F6C
	pop {r4}
	pop {r3}
	bx r3

	END
