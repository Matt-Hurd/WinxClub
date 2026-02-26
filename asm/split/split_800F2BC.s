	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT nullsub_5

	thumb_func_start sub_800F2BC

sub_800F2BC
	push {r3, lr}
	ldr r1, [r0, #0x74]
	cmp r1, #0
	beq %8
	ldr r2, [r0, #0x70]
	adds r2, #0x80
	ldr r2, [r2, #0x10]
	cmp r2, #0
	beq %8
	ldr r0, [r0, #0x5c]
	lsls r0, r0, #0x1e
	beq %8
	ldr r0, _0800F4EC
	ldr r0, [r0]
	bl nullsub_5
8
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_0800F4EC DCDU gUnknown_03003E84

	END
