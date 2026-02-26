	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EBC
	IMPORT sub_80137F8
	IMPORT vsprintf

	non_word_aligned_thumb_func_start sub_8013946

sub_8013946
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x18
	adds r5, r0, #0
	add r0, sp, #0x3fc
	adds r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, _08013B5C
	add r3, sp, #0x3fc
	adds r3, #0x24
	ldr r0, [r0]
	ldrb r4, [r3, #0xc]
	cmp r4, #0xff
	bne %8
	ldrb r4, [r0, #9]
8
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r6, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r6
	adds r1, r2, r1
	lsls r2, r4, #2
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r4, sp, #0x10
	adds r1, r0, r1
	adds r0, r4, #0
	add r2, sp, #0xc
	bl vsprintf
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #1
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_80137F8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3

	ALIGN
_08013B5C DCDU gUnknown_03003EBC

	END
