    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E7C
	IMPORT gUnknown_03003E84
	IMPORT gUnknown_0803E59C
	IMPORT gUnknown_0803ECB8
	IMPORT sub_8005106
	IMPORT sub_800529A
	IMPORT sub_800F264
	IMPORT sub_800F72C
	IMPORT sub_800FAB0
	IMPORT sub_800FD48
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __16_ll_mullu
	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT __16_ll_udiv
	IMPORT __16__rt_memclr
	IMPORT __16__rt_memclr_w
	IMPORT __rt_memcpy_w
	IMPORT sub_803DA80

	thumb_func_start sub_800FB18
sub_800FB18 ;@ 0x0800FB18
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0800FB2E
	ldr r2, [r4, #8]
	movs r1, #1
	lsls r1, r2
	adds r1, #0x10
	bl __16__rt_memclr
_0800FB2E
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x48
	adds r0, #0x14
	bl __16__rt_memclr_w
	movs r0, #8
	str r0, [r4, #0x5c]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800FB48
sub_800FB48 ;@ 0x0800FB48
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800FD30 ;@ =_0803ECB8
	str r0, [r4]
	ldr r0, _0800FD34 ;@ =gUnknown_03003E7C
	str r4, [r0]
	ldr r0, _0800FD38 ;@ =_0803E59C
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	adds r0, r4, #0
	bl sub_800FB18
	adds r0, r4, #0
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FB72
sub_800FB72 ;@ 0x0800FB72
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800FD38 ;@ =_0803E59C
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FD48
	adds r0, r4, #0
	bl sub_800FB18
	ldr r0, _0800FD30 ;@ =_0803ECB8
	ldr r1, _0800FD34 ;@ =gUnknown_03003E7C
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FB96
sub_800FB96 ;@ 0x0800FB96
	ldr r0, [r0, #0x18]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	bx lr

	non_word_aligned_thumb_func_start nullsub_37
nullsub_37 ;@ 0x0800FB9E
	bx lr

	thumb_func_start sub_800FBA0
sub_800FBA0 ;@ 0x0800FBA0
	push {r3, lr}
	adds r1, r0, #0
	bne _0800FBAC
_0800FBA6
	add sp, #4
	pop {r3}
	bx r3
_0800FBAC
	ldr r0, _0800FD3C ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x48
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	b _0800FBA6

	thumb_func_start sub_800FBC0
sub_800FBC0 ;@ 0x0800FBC0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	beq _0800FBCA
	cmp r0, #0
	bne _0800FBD2
_0800FBCA
	movs r0, #0
_0800FBCC
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0800FBD2
	ldr r1, _0800FD3C ;@ =gUnknown_03003E84
	movs r3, #0
	ldr r5, [r1]
	adds r1, r0, #0
	movs r2, #0x48
	adds r0, r5, #0
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bhs _0800FC58
	add r3, pc, #0x8 ;@ =_0800FBF8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0800FBF8
	DCB 0x30
_0800FBF9
	DCB 0x03
_0800FBFA
	DCB 0x03
_0800FBFB
	DCB 0x12
_0800FBFC
	DCB 0x32
_0800FBFD
	DCB 0x21
loc_800fbfe
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x6c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800FC18
	adds r0, r5, #0
	bl sub_800FAB0
_0800FC18
	str r5, [r4]
	b _0800FC5C
loc_800fc1c
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x78
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800FC36
	adds r0, r5, #0
	bl sub_800F264
_0800FC36
	str r5, [r4]
	b _0800FC5C
loc_800fc3a
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x8c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800FC54
	adds r0, r5, #0
	bl sub_800F72C
_0800FC54
	str r5, [r4]
	b _0800FC5C
_0800FC58
	movs r0, #0
	str r0, [r4]
_0800FC5C
	ldr r1, [r4]
	movs r0, #0
	cmp r1, #0
	beq _0800FBCC
	ldr r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	b _0800FBCC

	thumb_func_start sub_800FC6C
sub_800FC6C ;@ 0x0800FC6C
	adds r0, #4
	stm r0!, {r1, r2}
	bx lr

	non_word_aligned_thumb_func_start sub_800FC72
sub_800FC72 ;@ 0x0800FC72
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_800FC76
sub_800FC76 ;@ 0x0800FC76
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x14
	adds r4, r0, #0
	adds r2, r3, #0
	cmp r1, #0
	sub sp, #4
	bne _0800FC9C
	movs r1, #0x48
	adds r0, r6, #0
	bl __16__rt_memclr_w
	movs r0, #8
	str r0, [r4, #0x5c]
	movs r0, #0
_0800FC94
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800FC9C
	ldr r0, _0800FD3C ;@ =gUnknown_03003E84
	movs r3, #0
	adds r2, #0x48
	ldr r0, [r0]
	bl sub_800529A
	adds r5, r0, #0
	movs r2, #0x48
	adds r1, r0, #0
	adds r0, r6, #0
	bl __rt_memcpy_w
	ldr r0, [r4, #0x18]
	movs r2, #1
	lsls r0, r0, #6
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	asrs r1, r0, #0x1f
	adds r7, r1, #0
	adds r6, r0, #0
	lsls r2, r2, #0x18
	bl __16_ll_mullu
	add r2, pc, #0x74 ;@ =_0800FD40
	ldm r2!, {r2, r3}
	bl __16_ll_udiv
	str r0, [r4, #0x68]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #8
	bl __16_ll_shift_l
	adds r2, r0, #0
	ldr r0, [sp, #0xc]
	adds r3, r1, #0
	asrs r1, r0, #0x1f
	bl __16_ll_srdv
	str r0, [r4, #0x60]
	adds r0, r5, #0
	b _0800FC94

	thumb_func_start sub_800FCF0
sub_800FCF0 ;@ 0x0800FCF0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, r3, #0
	bl sub_800FB18
	cmp r5, #0
	beq _0800FD24
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	adds r2, r7, #0
	adds r1, r5, #0
	bl __call_via_r3
	cmp r6, #0
	beq _0800FD24
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
_0800FD24
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_38
nullsub_38 ;@ 0x0800FD2A
	bx lr

	thumb_func_start sub_800FD2C
sub_800FD2C ;@ 0x0800FD2C
	movs r0, #0
	bx lr
	ALIGN
_0800FD30 DCDU gUnknown_0803ECB8
_0800FD34 DCDU gUnknown_03003E7C
_0800FD38 DCDU gUnknown_0803E59C
_0800FD3C DCDU gUnknown_03003E84
_0800FD40 DCDU 0x01012B00
_0800FD44 DCDU 0x00000000
	END