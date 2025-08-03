	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0803E684
	IMPORT gUnknown_0804AE70
	IMPORT __call_via_r3
	IMPORT __16__rt_memclr_w
	IMPORT __rt_memcpy_w
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT maybeMallocEWRAM
	IMPORT gUnknown_03000000
	IMPORT gUnknown_03000058

	thumb_func_start sub_80103C8
sub_80103C8
	push {r3, lr}
	cmp r0, #0
	bne _080103D8
	movs r0, #0x1c
	bl maybeMallocEWRAM
	cmp r0, #0
	beq _080103E6
_080103D8
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_080103E6
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80103EC
sub_80103EC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r6, #0xb
	strb r6, [r0, #4]
	movs r5, #0
	ldr r0, _0801068C
	adds r7, r1, #0
	movs r1, #0x90
	str r5, [r4, #0x58]
	str r5, [r4, #0x60]
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r0, #0x1b
	lsls r0, r0, #6
	movs r1, #0x6d
	lsls r1, r1, #4
	adds r0, r4, r0
	str r7, [r0, #0x14]
	adds r1, r4, r1
	strb r6, [r1, #1]
	ldr r2, [r4, #0x5c]
	movs r3, #0x6f
	lsls r3, r3, #4
	adds r3, r4, r3
	str r2, [r0, #0x18]
	strb r6, [r3]
	str r2, [r0, #0x34]
	ldr r2, _08010690
	str r5, [r0, #0x38]
	str r2, [r0, #0x3c]
	movs r2, #7
	lsls r2, r2, #8
	adds r2, r4, r2
	str r5, [r2]
	str r5, [r2, #4]
	str r5, [r2, #8]
	str r5, [r2, #0xc]
	str r5, [r4, #0x7c]
	movs r2, #1
	strb r2, [r1, #0xc]
	strb r5, [r1, #0xd]
	movs r2, #0xff
	strb r2, [r1, #0xe]
	strb r5, [r1, #0xf]
	ldr r1, _08010694
	str r1, [r0, #0x20]
	str r5, [r0, #0x28]
	str r5, [r0, #0x2c]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8010456
sub_8010456
	movs r2, #0x1f
	asrs r3, r0, #3
	cmp r3, #0x1f
	bge _08010478
	movs r2, #0
	cmp r0, #0
	blt _08010478
	ldr r2, _08010698
	lsls r0, r0, #0x1d
	ldrb r1, [r2, r1]
	lsrs r0, r0, #0x1d
	cmp r1, r0
	bhs _08010474
	movs r0, #1
	b _08010476
_08010474
	movs r0, #0
_08010476
	adds r2, r0, r3
_08010478
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_801047C
sub_801047C
	push {r4, r5, r6, r7}
	movs r6, #0xff
	ldr r5, _08010698
	movs r4, #0
	adds r6, #1
_08010486
	movs r1, #0
_08010488
	movs r2, #0x1f
	asrs r3, r1, #3
	cmp r3, #0x1f
	bge _080104A8
	movs r2, #0
	cmp r1, #0
	blt _080104A8
	ldrb r2, [r5, r4]
	lsls r7, r1, #0x1d
	lsrs r7, r7, #0x1d
	cmp r2, r7
	bhs _080104A4
	movs r2, #1
	b _080104A6
_080104A4
	movs r2, #0
_080104A6
	adds r2, r2, r3
_080104A8
	strb r2, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, r6
	blo _08010488
	adds r4, #1
	cmp r4, #0x10
	blo _08010486
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_80104BC
sub_80104BC
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0
	str r6, [r0, #0x74]
	str r6, [r0, #0x70]
	str r6, [r0, #4]
	str r6, [r0, #0x5c]
	str r6, [r0, #0x60]
	str r6, [r0, #0x68]
	str r6, [r0, #0x64]
	adds r7, r1, #0
	adds r4, r0, #0
	movs r0, #0xb
	movs r1, #0x54
	strb r0, [r1, r4]
	str r6, [r4, #0x6c]
	cmp r7, #0
	beq _080104F0
	adds r3, r6, #0
	movs r1, #1
	lsls r1, r1, #0x11
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x78]
	b _080104F2
_080104F0
	str r6, [r4, #0x78]
_080104F2
	adds r5, r4, #0
	adds r5, #0x80
	str r6, [r4, #0x7c]
	str r6, [r5, #4]
	ldr r0, _0801069C
	str r6, [r4, #0x58]
	str r0, [r5]
	movs r0, #0x71
	lsls r0, r0, #4
	adds r0, r4, r0
	bl sub_801047C
	str r6, [r5, #8]
	str r6, [r5, #0xc]
	movs r0, #0x1b
	lsls r0, r0, #6
	str r6, [r5, #0x10]
	adds r5, r4, r0
	cmp r7, #0
	beq _0801052C
	adds r3, r6, #0
	movs r1, #0x21
	lsls r1, r1, #0xb
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r5, #0x24]
	b _0801052E
_0801052C
	str r6, [r5, #0x24]
_0801052E
	movs r1, #0
	adds r0, r4, #0
	bl sub_80103EC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801053C
sub_801053C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080106A0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x94
	bl gUnknown_03000000
	adds r0, r4, #0
	adds r0, #0xf0
	bl gUnknown_03000000
	ldr r0, _080106A4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	adds r0, r4, r0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	movs r1, #1
	adds r0, r4, #0
	bl sub_80104BC
	adds r0, r4, #0
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8010574
sub_8010574
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080106A0
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x94
	bl gUnknown_03000000
	adds r0, r4, #0
	adds r0, #0xf0
	bl gUnknown_03000000
	ldr r0, _080106A4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	adds r0, r4, r0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80104BC
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80105AE
sub_80105AE
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080106A0
	str r0, [r4]
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _080105C4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_080105C4
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _080105D6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r0, #0
	str r0, [r4, #0x78]
_080105D6
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r0, r4, r0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _080105EA
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_080105EA
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xf0
	bl gUnknown_03000058
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x94
	bl gUnknown_03000058
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8010604
sub_8010604
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080106A4
	adds r5, r1, #0
	adds r0, r4, r0
	movs r2, #0x1a
	bl __rt_memcpy_w
	ldrh r0, [r5, #0x16]
	ldr r2, _080106A8
	cmp r0, r2
	bne _0801062E
	ldr r0, [r4, #0xc]
	movs r1, #0xf0
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	strh r0, [r5, #0x16]
_0801062E
	ldrh r0, [r5, #0x18]
	cmp r0, r2
	bne _08010644
	ldr r0, [r4, #0xc]
	movs r1, #0xa0
	lsrs r0, r0, #0x16
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	strh r0, [r5, #0x18]
_08010644
	movs r3, #0x16
	ldrsh r0, [r5, r3]
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	lsls r3, r1, #4
	subs r1, r3, r1
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x90
	str r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r3, r2, r1
	movs r1, #0x17
	lsls r1, r1, #8
	adds r5, r4, r1
	ldr r1, [r5, #0x18]
	ldr r2, _080106AC
	bl __call_via_r3
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r3, r2, r1
	ldr r2, _080106AC
	ldr r1, [r5, #0x1c]
	bl __call_via_r3
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801068C DCDU 0x0000064C
_08010690 DCDU 0x0001FEEB
_08010694 DCDU 0x000007FF
_08010698 DCDU gUnknown_0804AE70
_0801069C DCDU 0x0001FFFF
_080106A0 DCDU gUnknown_0803E684
_080106A4 DCDU 0x00001710
_080106A8 DCDU 0x0000FFFF
_080106AC DCDU 0x0000146C
	END
