	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E9C
	IMPORT __VTABLE__340dword_803EB38
	IMPORT __VTABLE__362dword_803ECD8
	IMPORT GetEWRAMStart
	IMPORT __16__rt_memclr
	IMPORT __16__rt_memcpy
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA9C

	thumb_func_start sub_8031578
sub_8031578
	push {r3, lr}
	cmp r0, #0
	bne _08031588
	movs r0, #0x10
	bl __nw__FUi
	cmp r0, #0
	beq _0803159C
_08031588
	ldr r1, _08031660
	str r1, [r0]
	ldr r1, _08031664
	str r0, [r1]
	ldr r1, _08031668
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
_0803159C
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80315A2
sub_80315A2
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08031668
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0xc]
	bl __da__FPv
	ldr r0, _08031660
	movs r1, #0
	str r0, [r4]
	ldr r0, _08031664
	str r1, [r4, #0xc]
	str r1, [r0]
	cmp r5, #0
	beq _080315C8
	adds r0, r4, #0
	bl sub_803DA18
_080315C8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80315CE
sub_80315CE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	str r1, [r0, #8]
	ldr r0, [r0, #0xc]
	adds r5, r1, #0
	bl __da__FPv
	movs r6, #0
	str r6, [r4, #0xc]
	cmp r5, #0
	beq _080315F6
	bl GetEWRAMStart
	adds r1, r0, #0
	lsls r0, r5, #4
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0xc]
_080315F6
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80315FC
sub_80315FC
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_8031600
sub_8031600
	push {r4, r5, r6}
	add r5, sp, #0xc
	ldr r6, [r0, #0xc]
	ldm r5!, {r4, r5}
	lsls r1, r1, #4
	str r2, [r6, r1]
	ldr r2, [r0, #0xc]
	adds r2, r2, r1
	str r3, [r2, #4]
	ldr r2, [r0, #0xc]
	adds r2, r2, r1
	str r4, [r2, #8]
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r5, [r0, #0xc]
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_8031622
sub_8031622
	push {r3, r4, r5, lr}
	adds r3, r1, #0
	adds r4, r0, #0
	ldr r1, [r0, #4]
	movs r2, #0
	cmp r3, #0
	ldr r0, [r0, #0xc]
	bls _08031640
_08031632
	lsls r5, r2, #4
	adds r5, r0, r5
	ldr r5, [r5, #4]
	adds r2, #1
	adds r1, r5, r1
	cmp r2, r3
	blo _08031632
_08031640
	lsls r5, r3, #4
	adds r2, r0, r5
	ldr r2, [r2, #4]
	ldr r0, [r0, r5]
	bl __16__rt_memcpy
	ldr r0, [r4, #0xc]
	adds r0, r0, r5
	adds r0, #8
	ldm r0!, {r0, r1}
	bl __16__rt_memclr
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08031660 DCDU __VTABLE__362dword_803ECD8
_08031664 DCDU gUnknown_03003E9C
_08031668 DCDU __VTABLE__340dword_803EB38
	END
