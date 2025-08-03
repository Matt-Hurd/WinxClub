	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT eeprom
	IMPORT sub_803B5A0

	thumb_func_start sub_803B7C4
sub_803B7C4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _0803B7E0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _0803B7E8
	ldr r0, _0803B7E4
	b _0803B812
	ALIGN
_0803B7E0 DCDU eeprom
_0803B7E4 DCDU 0x000080FF
_0803B7E8
	adds r0, r1, #0
	mov r1, sp
	bl sub_803B5A0
	mov r2, sp
	movs r3, #0
	b _0803B800
_0803B7F6
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _0803B810
_0803B800
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _0803B7F6
	movs r5, #0x80
	lsls r5, r5, #8
_0803B810
	adds r0, r5, #0
_0803B812
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	ALIGN
	END