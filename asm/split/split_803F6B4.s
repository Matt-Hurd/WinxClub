	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A

	thumb_func_start sub_803F6B4

sub_803F6B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803F6DC
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r4, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq %5
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
5
	pop {r4}
	pop {r3}
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bx r3
	ALIGN

	ALIGN
_0803F6DC DCDU gUnknown_03003EA0

	END
