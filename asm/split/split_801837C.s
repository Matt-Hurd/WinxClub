    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003C84
	IMPORT __call_via_r0

	thumb_func_start sub_801837C
sub_801837C ;@ 0x0801837C
	ldr r2, _080183B8 ;@ =gUnknown_03003C84
	lsls r1, r1, #2
	str r0, [r2, r1]
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_8018386
sub_8018386 ;@ 0x08018386
	ldr r1, _080183B8 ;@ =gUnknown_03003C84
	subs r1, #4
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start sub_8018390
sub_8018390 ;@ 0x08018390
	ldr r0, _080183B8 ;@ =gUnknown_03003C84
	subs r0, #4
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_8018398
sub_8018398 ;@ 0x08018398
	push {r3, r4, r5, lr}
	ldr r5, _080183B8 ;@ =gUnknown_03003C84
	subs r4, r5, #4
_0801839E
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl __call_via_r0
	ldrb r0, [r4]
	cmp r0, #0x18
	bne _0801839E
	pop {r3, r4, r5}
	pop {r3}
	movs r0, #0
	bx r3
	ALIGN
_080183B8 DCDU gUnknown_03003C84
	END