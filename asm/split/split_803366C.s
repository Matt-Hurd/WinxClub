	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458

	thumb_func_start sub_803366C

sub_803366C
	push {r4}
	ldr r2, [r0, #0x58]
	cmp r2, #0
	ble %1
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	ble %1
	ldr r1, _08033A5C
	movs r3, #3
	ldr r1, [r1]
	lsls r3, r3, #0x10
	ldr r4, [r1, #0x14]
	subs r4, r4, r3
	cmp r2, r4
	bge %1
	ldr r1, [r1, #0x18]
	subs r1, r1, r3
	cmp r0, r1
	blt %3
1
	movs r0, #0
2
	pop {r4}
	bx lr
3
	movs r0, #1
	b %2

	ALIGN
_08033A5C DCDU gUnknown_03003458

	END
