	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030031EE
	IMPORT gUnknown_030031FE
	IMPORT sub_80139AC
	IMPORT sub_8013F6C
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT sub_803F55C
	IMPORT sub_803F5FC
	IMPORT sub_80401E4

	thumb_func_start sub_8014DD4
sub_8014DD4
	push {r4, r5, r6, r7}
	ldr r6, _08014EB0
	ldr r4, _08014EAC
	movs r1, #0
	ldr r2, _08014EB4
	movs r5, #0xff
_08014DE0
	movs r0, #0
	lsls r3, r1, #3
	adds r3, r3, r6
	strb r5, [r4, r1]
_08014DE8
	lsls r7, r0, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	strh r2, [r3, r7]
	blo _08014DE8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x10
	blo _08014DE0
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_8014E04
sub_8014E04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_803F55C
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08014E1C
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
_08014E1C
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _08014E2C
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
_08014E2C
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

	non_word_aligned_thumb_func_start sub_8014E46
sub_8014E46
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	ldrh r2, [r0, #0x1e]
	ldrh r1, [r0, #0x20]
	bl __call_via_r3
	ldr r1, [r4]
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	adds r0, r4, #0
	movs r1, #0x2e
	ldrb r1, [r1, r4]
	bl __call_via_r2
	movs r1, #0
	adds r0, r4, #0
	bl sub_80139AC
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014E76
sub_8014E76
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x60
	adds r6, r0, #0
	ldrb r0, [r5, #0xe]
	adds r7, r1, #0
	ldrb r1, [r5, #0xf]
	movs r4, #0
	muls r0, r1
	cmp r0, #0
	ble _08014EA4
_08014E8C
	ldr r0, [r6, #0x54]
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	adds r1, r7, #0
	bl sub_80401E4
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	adds r4, #1
	muls r0, r1
	cmp r0, r4
	bgt _08014E8C
_08014EA4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08014EAC DCDU gUnknown_030031EE
_08014EB0 DCDU gUnknown_030031FE
_08014EB4 DCDU 0x0000FFFF
	END
