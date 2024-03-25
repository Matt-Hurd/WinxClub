    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A
	IMPORT sub_803B940
	IMPORT sub_803B998

	thumb_func_start sub_803FC14
sub_803FC14 ;@ 0x0803FC14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803FC5C ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl sub_803B998
	add r2, pc, #0x24 ;@ =_0803FC60
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0803FC5C DCDU gUnknown_03003EA0
_0803FC60 DCDU 0x0010BE20
_0803FC64 DCDU 0x00000000
	END