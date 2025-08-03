	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A

	thumb_func_start sub_803F6E0
sub_803F6E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803F704
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	pop {r4}
	pop {r3}
	subs r0, r1, r0
	asrs r0, r0, #2
	bx r3
	ALIGN
_0803F704 DCDU gUnknown_03003EA0
	END
