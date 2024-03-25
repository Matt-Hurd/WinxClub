    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A

	thumb_func_start sub_803F8BC
sub_803F8BC ;@ 0x0803F8BC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x18]
	adds r5, r1, #0
	cmp r0, #0
	bne _0803F8E2
	ldr r0, _0803F900 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0803F8E2
	ldr r1, [r0, #4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x18
	lsls r0, r0, #2
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	adds r0, #4
	lsls r1, r1, #2
	adds r1, #4
	strh r0, [r5]
	strh r1, [r5, #2]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0803F900 DCDU gUnknown_03003EA0
	END