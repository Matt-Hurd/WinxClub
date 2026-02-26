	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_sdiv
	IMPORT gUnknown_03003454
	IMPORT rand
	IMPORT sub_8017884

	thumb_func_start sub_801DCFC

sub_801DCFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	beq %1
	bl rand
	adds r1, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	bl __16__rt_sdiv
	ldr r0, [r5, #8]
	str r4, [sp]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r1, r0
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x7c]
	lsrs r1, r1, #0x10
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	ldr r0, _0801DFC8
	movs r3, #1
	ldr r0, [r0]
	bl sub_8017884
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_0801DFC8 DCDU gUnknown_03003454

	END
