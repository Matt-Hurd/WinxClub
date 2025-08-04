	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_03003EB0
	IMPORT __VTABLE__349dword_803EC74
	IMPORT __VTABLE__367dword_803ECEC
	IMPORT sub_800B082
	IMPORT __16__rt_memclr_w
	IMPORT CpuSet
	IMPORT sub_803D984
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_8002580
sub_8002580
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne _08002598
	ldr r0, _0800280C
	bl __nw__FUi
	adds r4, r0, #0
	bne _08002598
	adds r0, r4, #0
_08002592
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08002598
	ldr r0, _08002810
	movs r1, #0
	str r0, [r4]
	ldr r0, _08002814
	movs r2, #0
	str r4, [r0]
	ldr r0, _08002818
	movs r3, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc
	stm r0!, {r1, r2, r3}
	movs r6, #1
	lsls r6, r6, #0xb
	adds r1, r6, #0
	stm r0!, {r3}
	adds r5, r0, #0
	bl __16__rt_memclr_w
	adds r1, r4, r6
	movs r0, #0
	str r0, [r1, #0x20]
	str r5, [r1, #0x1c]
	ldr r0, [r1, #0x28]
	movs r2, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r2
	str r0, [r1, #0x28]
	adds r0, r4, #0
	b _08002592

	non_word_aligned_thumb_func_start sub_80025D6
sub_80025D6
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r7, #0
_080025DE
	lsls r0, r4, #2
	adds r5, r0, r6
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _080025F2
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r5, #0xc]
_080025F2
	adds r4, #1
	cmp r4, #4
	blt _080025DE
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0800260E
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r4, #0x20]
_0800260E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8002614
sub_8002614
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08002818
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80025D6
	ldr r0, _08002810
	ldr r1, _08002814
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq _08002638
	adds r0, r4, #0
	bl sub_803DA18
_08002638
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800263E
sub_800263E
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800281C
	sub sp, #8
	ldr r0, [r0]
	bl sub_800B082
	cmp r0, #3
	bhs _08002656
	movs r0, #1
	lsls r0, r0, #0x10
	b _0800265A
_08002656
	movs r0, #5
	lsls r0, r0, #0xe
_0800265A
	movs r1, #3
	lsls r1, r1, #0x19
	cmp r4, #0
	beq _0800267E
	movs r2, #0
	str r2, [sp, #4]
	lsls r0, r0, #9
	lsrs r0, r0, #0xb
	movs r2, #5
	lsls r2, r2, #0x18
	orrs r2, r0
	add r0, sp, #4
	bl CpuSet
_08002676
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
_0800267E
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, _08002820
	add r3, sp, #4
	str r3, [r2]
	str r1, [r2, #4]
	lsrs r0, r0, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08002676

	thumb_func_start sub_8002698
sub_8002698
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
_080026A0
	lsls r0, r4, #2
	adds r6, r0, r5
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _080026B4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r6, #0xc]
_080026B4
	ldr r0, _08002824
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _080026C2
	ldrb r0, [r1]
_080026C2
	cmp r0, r4
	bls _080026E4
	movs r0, #0x58
	muls r0, r4
	movs r1, #0x11
	lsls r1, r1, #7
	adds r0, r2, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	movs r2, #0
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r3, r7, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r6, #0xc]
_080026E4
	adds r4, #1
	cmp r4, #4
	blo _080026A0
	ldr r0, _08002824
	adds r1, r7, #0
	ldr r0, [r0]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _080026F8
	ldrb r1, [r2]
_080026F8
	movs r3, #0x58
	muls r1, r3
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	movs r1, #0x7d
	lsls r1, r1, #0x19
	adds r0, r0, r1
	asrs r0, r0, #5
	movs r1, #1
	lsls r1, r1, #0xb
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r4, r5, r1
	str r0, [r4, #0x24]
	lsls r0, r0, #2
	movs r2, #0
	movs r1, #0
	bl sub_803D984
	str r0, [r4, #0x20]
	str r0, [r5, #8]
	str r7, [r5, #4]
	ldr r1, [r4, #0x24]
	movs r0, #0
	lsrs r1, r1, #1
	subs r1, #1
	beq _0800274C
_08002734
	ldr r2, [r4, #0x20]
	lsls r1, r0, #3
	adds r2, r2, r1
	ldr r3, [r5, #8]
	adds r2, #8
	str r2, [r3, r1]
	ldr r1, [r4, #0x24]
	adds r0, #1
	lsrs r1, r1, #1
	subs r1, #1
	cmp r1, r0
	bhi _08002734
_0800274C
	ldr r1, [r4, #0x24]
	ldr r0, [r5, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, #0x40
	str r7, [r0, #0x38]
	adds r5, #0x1c
	str r5, [r4, #0x1c]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8002762
sub_8002762
	push {r3, r4, r5, r6, r7, lr}
	movs r2, #1
	lsls r2, r2, #0xb
	adds r4, r0, r2
	ldr r2, [r4, #0x28]
	lsls r2, r2, #0x1f
	bmi _080027BE
	adds r5, r0, #0
	movs r3, #3
	lsls r3, r3, #0x19
	adds r5, #0x1c
	movs r6, #1
	cmp r1, #0
	ldr r0, [r4, #0x1c]
	beq _080027C4
	cmp r0, r5
	beq _080027BE
_08002784
	ldr r0, [r4, #0x1c]
	subs r0, #8
	str r0, [r4, #0x1c]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsls r2, r1, #0x12
	lsrs r3, r2, #0x1d
	adds r2, r6, #0
	lsls r2, r3
	asrs r7, r2, #0x1f
	lsrs r7, r7, #0x1e
	adds r2, r7, r2
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	asrs r2, r2, #2
	lsls r2, r2, #0xb
	lsls r1, r3
	movs r7, #1
	lsls r7, r7, #0x1a
	movs r3, #3
	lsrs r2, r2, #0xb
	adds r2, r2, r7
	lsls r3, r3, #0x19
	adds r1, r1, r3
	bl CpuSet
	ldr r0, [r4, #0x1c]
	cmp r0, r5
	bne _08002784
_080027BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080027C4
	cmp r0, r5
	beq _080027BE
	ldr r0, _08002820
_080027CA
	ldr r1, [r4, #0x1c]
	subs r1, #8
	str r1, [r4, #0x1c]
	ldr r1, [r1, #4]
	str r1, [r0]
	ldr r1, [r4, #0x1c]
	ldr r1, [r1]
	lsls r2, r1, #0x15
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1d
	lsrs r2, r2, #0x15
	lsls r2, r1
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, [r4, #0x1c]
	ldr r1, [r1]
	lsls r1, r1, #0x12
	lsrs r2, r1, #0x1d
	adds r1, r6, #0
	lsls r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1e
	adds r1, r2, r1
	asrs r1, r1, #2
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, [r4, #0x1c]
	cmp r1, r5
	bne _080027CA
	b _080027BE
	ALIGN
_0800280C DCDU 0x0000082C
_08002810 DCDU __VTABLE__367dword_803ECEC
_08002814 DCDU gUnknown_03003EB0
_08002818 DCDU __VTABLE__349dword_803EC74
_0800281C DCDU gUnknown_03003E98
_08002820 DCDU REG_DMA3
_08002824 DCDU gUnknown_03003EA4
	END
