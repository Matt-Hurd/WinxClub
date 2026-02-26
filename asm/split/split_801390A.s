	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80137F8
	IMPORT vsprintf

	non_word_aligned_thumb_func_start sub_801390A

sub_801390A
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0xc
	adds r5, r0, #0
	add r0, sp, #0x3fc
	adds r0, #0x1c
	str r0, [sp]
	add r3, sp, #0x3fc
	add r4, sp, #4
	adds r0, r4, #0
	ldr r1, [r3, #0x18]
	mov r2, sp
	bl vsprintf
	movs r0, #0
	str r0, [sp]
	movs r2, #1
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_80137F8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3

	END
