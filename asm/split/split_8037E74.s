	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__305dword_803E350
	IMPORT sub_802E4AA
	IMPORT sub_803DA18

	thumb_func_start sub_8037E74

sub_8037E74
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803818C
	adds r5, r1, #0
	str r0, [r4]
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq %3
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
3
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %4
	adds r0, r4, #0
	bl sub_803DA18
4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_0803818C DCDU __VTABLE__305dword_803E350

	END
