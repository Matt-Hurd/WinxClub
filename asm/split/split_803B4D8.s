    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EC0
	IMPORT gUnknown_08051744
	IMPORT gUnknown_08051750

	thumb_func_start sub_803B4D8
sub_803B4D8 ;@ 0x0803B4D8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _0803B4F4
	ldr r1, _0803B4EC ;@ =gUnknown_03003EC0
	ldr r0, _0803B4F0 ;@ =gUnknown_08051744
	str r0, [r1]
	b _0803B510
	ALIGN
_0803B4EC DCDU gUnknown_03003EC0
_0803B4F0 DCDU gUnknown_08051744
_0803B4F4
	cmp r0, #0x40
	bne _0803B508
	ldr r1, _0803B500 ;@ =gUnknown_03003EC0
	ldr r0, _0803B504 ;@ =gUnknown_08051750
	str r0, [r1]
	b _0803B510
	ALIGN
_0803B500 DCDU gUnknown_03003EC0
_0803B504 DCDU gUnknown_08051750
_0803B508
	ldr r1, _0803B518 ;@ =gUnknown_03003EC0
	ldr r0, _0803B51C ;@ =gUnknown_08051744
	str r0, [r1]
	movs r2, #1
_0803B510
	adds r0, r2, #0
	pop {r1}
	bx r1
	ALIGN
_0803B518 DCDU gUnknown_03003EC0
_0803B51C DCDU gUnknown_08051744
	END