	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003C40

	thumb_func_start sub_8013FC4

sub_8013FC4
	movs r3, #0
	cmp r1, #0
	push {r4}
	beq %58
	strh r3, [r0, #0xe]
57
	pop {r4}
	bx lr
58
	ldrb r1, [r0, #0xc]
	ldr r2, _08013FF0
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq %57
59
	ldrb r2, [r1, #0xc]
	ldrb r4, [r0, #0xc]
	cmp r2, r4
	bne %60
	strh r3, [r1, #0xe]
60
	ldr r1, [r1, #4]
	cmp r1, #0
	bne %59
	b %57
	ALIGN

	ALIGN
_08013FF0 DCDU gUnknown_03003C40

	END
