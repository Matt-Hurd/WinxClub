    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033FC
	IMPORT sub_800B154

	thumb_func_start sub_800B12C
sub_800B12C ;@ 0x0800B12C
	push {r3, r4, r5, lr}
	ldr r5, _0800B150 ;@ =gUnknown_030033FC
	lsls r4, r1, #2
	str r2, [r5, r4]
	movs r4, #0
	cmp r2, #0
	beq _0800B13C
	adds r4, r3, #0
_0800B13C
	adds r2, r4, #0
	bl sub_800B154
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800B148
sub_800B148 ;@ 0x0800B148
	lsls r0, r1, #2
	ldr r1, _0800B150 ;@ =gUnknown_030033FC
	ldr r0, [r1, r0]
	bx lr
	ALIGN
_0800B150 DCDU gUnknown_030033FC
	END