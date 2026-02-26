	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT Init_and_add_some_object
	IMPORT __VTABLE__309Kiko
	IMPORT __nw__FUi
	IMPORT gUnknown_08051096

	thumb_func_start Kiko__Create

Kiko__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xa4
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _08031800
	ldr r2, _08031810
	str r0, [r4]
	add r0, pc, #0x170
	str r0, [r4, #0x4c]
	movs r0, #5
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	movs r3, #0x3c
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	ldr r1, [r0, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #3
	lsls r2, r2, #0xf
	adds r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x70
	strb r3, [r1, #0xd]
	movs r3, #0x14
	strb r3, [r1, #0xc]
	ldr r1, [r0]
	ldr r3, _08031814
	ands r1, r3
	ldr r3, _08031818
	adds r1, r1, r3
	str r1, [r0]
	lsrs r1, r2, #0xc
	ldr r2, _0803181C
	lsls r1, r1, #0xc
	adds r1, r1, r2
	ldr r2, [r0, #8]
	ldr r3, _08031820
	ands r2, r3
	ldr r3, _08031824
	adds r2, r2, r3
	str r2, [r0, #8]
	movs r2, #4
	movs r3, #0x97
	strb r2, [r3, r4]
	lsls r2, r2, #0xa
	orrs r1, r2
	str r1, [r0, #0xc]
	ldr r0, _08031828
	ldrh r1, [r0, #4]
	strh r1, [r4, #8]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xc]
	ldrh r1, [r0]
	strh r1, [r4, #0xe]
	ldrh r1, [r0, #0xa]
	strh r1, [r4, #0x18]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x1a]
	ldrh r1, [r0, #0xa]
	strh r1, [r4, #0x1c]
	ldrh r0, [r0, #6]
	movs r1, #0xa0
	strh r0, [r4, #0x1e]
	movs r0, #0xcf
	strh r0, [r1, r4]
	adds r0, r4, #0
	b %1

	ALIGN
_08031800 DCDU __VTABLE__309Kiko
_08031810 DCDU 0xF000FFFF
_08031814 DCDU 0xFF8007FF
_08031818 DCDU 0x0027B000
_0803181C DCDU 0x00000505
_08031820 DCDU 0xFF8003FF
_08031824 DCDU 0x00443800
_08031828 DCDU gUnknown_08051096

	END
