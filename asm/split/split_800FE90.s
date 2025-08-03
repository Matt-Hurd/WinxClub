    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033F4
	IMPORT gUnknown_03003E8C
	IMPORT gUnknown_03003E94
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_03007FF8
	IMPORT gUnknown_0803E868
	IMPORT gUnknown_0803ECC8
	IMPORT nullsub_4
	IMPORT sub_800812A
	IMPORT sub_8008160
	IMPORT sub_80081A8
	IMPORT sub_800B058
	IMPORT sub_800B08E
	IMPORT sub_800B12C
	IMPORT sub_800B148
	IMPORT sub_800B154
	IMPORT sub_800B65E
	IMPORT sub_800B708
	IMPORT sub_800FB96
	IMPORT sub_800FBA0
	IMPORT sub_800FBC0
	IMPORT sub_800FC6C
	IMPORT sub_80103C8
	IMPORT sub_8010604
	IMPORT sub_80106B0
	IMPORT sub_8010920
	IMPORT sub_802EF0A
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __call_via_r5
	IMPORT __call_via_r6
	IMPORT __16__rt_memclr
	IMPORT __16__rt_sdiv
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_800FE90
sub_800FE90 ;@ 0x0800FE90
	push {r3, lr}
	cmp r0, #0
	bne _0800FEA0
	movs r0, #0x20
	bl maybeMallocEWRAM
	cmp r0, #0
	beq _0800FEB6
_0800FEA0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x1c]
	mvns r1, r1
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
_0800FEB6
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800FEBC
sub_800FEBC ;@ 0x0800FEBC
	ldr r0, _080101E4 ;@ =gUnknown_03003E98
	push {r4, lr}
	ldr r0, [r0]
	adds r0, #8
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, _080101E8 ;@ =gUnknown_03003E8C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0800FEDE
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
_0800FEDE
	ldr r4, _080101EC ;@ =gUnknown_03003E94
	ldr r0, [r4]
	cmp r0, #0
	beq _0800FEF0
	bl sub_800B65E
	ldr r0, [r4]
	bl sub_800B708
_0800FEF0
	ldr r2, _080101F0 ;@ =gUnknown_03007FF8
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800FF00
sub_800FF00 ;@ 0x0800FF00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne _0800FF18
	movs r0, #0x28
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _0800FF18
	adds r0, r4, #0
_0800FF12
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0800FF18
	ldr r0, _080101F4 ;@ =_0803ECC8
	movs r5, #0
	str r0, [r4]
	ldr r0, _080101E8 ;@ =gUnknown_03003E8C
	ldr r6, _080101FC ;@ =gUnknown_03003EAC
	str r4, [r0]
	ldr r0, _080101F8 ;@ =_0803E868
	stm r4!, {r0, r5}
	subs r4, #8
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r5, [r4, #0x14]
	str r5, [r4, #0x20]
	str r5, [r4, #0x24]
	ldr r0, [r6]
	movs r1, #0
	bl sub_800B148
	str r0, [r4, #0x1c]
	ldr r1, _08010200 ;@ =0x04000200
	ldr r0, [r6]
	strh r5, [r1, #8]
	movs r3, #1
	movs r1, #0
	ldr r2, _08010204 ;@ =sub_800FEBC
	bl sub_800B12C
	ldr r0, _080101E4 ;@ =gUnknown_03003E98
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	adds r0, r4, #0
	b _0800FF12

	non_word_aligned_thumb_func_start sub_800FF5E
sub_800FF5E ;@ 0x0800FF5E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080101F8 ;@ =_0803E868
	adds r5, r1, #0
	str r0, [r4]
	ldr r2, [r4, #0x1c]
	ldr r0, _080101FC ;@ =gUnknown_03003EAC
	cmp r2, #0
	beq _0800FF82
	ldr r1, _08010208 ;@ =nullsub_4
	cmp r2, r1
	beq _0800FF82
	movs r3, #1
	movs r1, #0
	ldr r0, [r0]
	bl sub_800B12C
	b _0800FF8C
_0800FF82
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_800B154
_0800FF8C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800FF9E
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
_0800FF9E
	ldr r0, _080101F4 ;@ =_0803ECC8
	movs r1, #0
	str r0, [r4]
	ldr r0, _080101E8 ;@ =gUnknown_03003E8C
	str r1, [r4, #0x10]
	str r1, [r0]
	cmp r5, #0
	beq _0800FFB4
	adds r0, r4, #0
	bl sub_803DA18
_0800FFB4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FFBA
sub_800FFBA ;@ 0x0800FFBA
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	str r1, [r0, #0x14]
	adds r4, r0, #0
	adds r0, r1, #0
	adds r6, r3, #0
	cmp r3, #0
	beq _0800FFD0
	cmp r5, #0
	bne _0800FFD4
_0800FFD0
	ldr r5, [r4, #0x24]
	ldr r6, [r4, #0x20]
_0800FFD4
	movs r3, #0
	movs r2, #0
	str r5, [r4, #0x24]
	str r6, [r4, #0x20]
	movs r1, #2
	bl sub_802EF0A
	adds r7, r0, #0
	beq _08010020
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08010016
	adds r0, r7, #0
	bl sub_800FBA0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	bl sub_800FB96
	ldr r1, [sp]
	cmp r1, r0
	beq _08010020
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08010016
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	movs r3, #0
	str r3, [r4, #0x10]
_08010016
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r7, #0
	bl sub_800FBC0
_08010020
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08010062
	adds r1, r5, #0
	adds r0, r6, #0
	bl __16__rt_memclr
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r3, r2, r1
	adds r2, r5, #0
	adds r1, r6, #0
	bl __call_via_r3
	ldr r1, _0801020C ;@ =0x060174D8
	movs r2, #0xb
	ldr r0, [r4, #0x10]
	bl sub_800FC6C
	ldr r4, [r4, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_80106B0
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	ldr r1, [r0, #4]
	adds r5, r1, r0
	adds r1, r7, #0
	adds r0, r4, #0
	bl __call_via_r5
_08010062
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801006A
sub_801006A ;@ 0x0801006A
	push {r4, r5, r6, r7, lr}
	ldr r3, _08010210 ;@ =0xFFFFE5DC
	adds r5, r0, #0
	add sp, r3
	ldr r0, [r1]
	adds r4, r1, #0
	movs r1, #1
	movs r7, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_802EF0A
	adds r1, r0, #0
	beq _0801016C
	movs r2, #0
	ldr r0, [r4, #4]
	bl sub_8010920
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x18]
	adds r6, r2, r1
	ldr r2, [r4, #0xc]
	mvns r1, r7
	cmp r2, #0
	beq _080100A0
	ldr r1, [r2]
_080100A0
	movs r2, #0
	bl __call_via_r6
	ldr r6, _08010214 ;@ =0x00001A08
	add r6, sp
	adds r0, r6, #0
	bl sub_80103C8
	movs r3, #0xd
	lsls r3, r3, #9
	ldr r0, [r4, #8]
	add r3, sp
	str r0, [r3, #0x18]
	add r0, sp, #0x208
	str r0, [r3, #8]
	ldr r0, _08010218 ;@ =0x06012C00
	adds r1, r6, #0
	str r0, [r3, #0xc]
	ldr r0, _0801021C ;@ =0x06014C00
	str r0, [r3, #0x14]
	ldr r0, _08010220 ;@ =0x0601606C
	str r0, [r3, #0x10]
	ldr r0, [r4, #0x10]
	strb r0, [r3, #0x1c]
	ldr r0, [r4, #0x14]
	strb r0, [r3, #0x1d]
	ldrh r0, [r4, #0x18]
	strh r0, [r3, #0x1e]
	ldrh r0, [r4, #0x1a]
	strh r0, [r3, #0x20]
	ldr r0, [r4, #4]
	bl sub_8010604
	ldr r0, [r4, #4]
	bl sub_80106B0
	movs r1, #0xf
	lsls r1, r1, #0x12
	bl __16__rt_sdiv
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #8]
	movs r2, #1
	lsls r2, r2, #9
	str r7, [r5, #0xc]
	str r2, [sp]
	ldm r4!, {r1, r2}
	adds r0, r5, #0
	subs r4, #8
	add r3, sp, #8
	bl sub_800FFBA
	ldr r0, [r4, #4]
	ldr r1, _08010200 ;@ =0x04000200
	str r0, [r5, #4]
	movs r0, #1
	strh r0, [r1, #8]
_08010114
	ldr r6, [r4, #0x1c]
	cmp r6, #0
	beq _08010126
	movs r2, #0
	mvns r2, r2
	movs r1, #0
	movs r0, #0
	bl __call_via_r6
_08010126
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r6, [r4, #0x1c]
	cmp r6, #0
	beq _08010144
	movs r2, #0
	mvns r2, r2
	movs r1, #0
	movs r0, #1
	bl __call_via_r6
_08010144
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	bl sub_80081A8
	ldr r6, _080101E4 ;@ =gUnknown_03003E98
_08010152
	ldr r0, [r6]
	bl sub_800B08E
	ldr r0, [r6]
	ldr r0, [r0, #8]
	ldr r1, [r5, #0xc]
	lsrs r1, r1, #8
	cmp r0, r1
	blo _08010152
	ldr r0, [r6]
	str r7, [r0, #8]
	ldr r0, [r5, #0xc]
	b _0801016E
_0801016C
	b _080101DA
_0801016E
	ldr r3, _08010224 ;@ =0x00044940
	lsrs r0, r0, #8
	ldr r1, _08010228 ;@ =0xFFFF63C0
	muls r0, r3
	adds r0, r0, r1
	bl sub_800812A
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	adds r6, r0, #0
	bne _080101B8
	ldr r0, _0801022C ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _080101AE
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _080101AE
	ldr r0, [r4, #4]
	ldr r6, [r0, #0x64]
	bl sub_8008160
	adds r1, r0, #0
	adds r2, r6, #0
	movs r0, #2
	ldr r3, [r4, #0x1c]
	bl __call_via_r3
_080101AE
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0xc]
	b _08010144
_080101B8
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl __call_via_r1
	cmp r6, #1
	bne _08010114
	str r7, [r5, #4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _080101D6
	ldr r1, [r4, #4]
	ldr r1, [r1, #0x6c]
	str r1, [r0]
_080101D6
	str r7, [r5, #0x20]
	str r7, [r5, #0x24]
_080101DA
	ldr r3, _08010230 ;@ =0x00001A24
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080101E4 DCDU gUnknown_03003E98
_080101E8 DCDU gUnknown_03003E8C
_080101EC DCDU gUnknown_03003E94
_080101F0 DCDU gUnknown_03007FF8
_080101F4 DCDU gUnknown_0803ECC8
_080101F8 DCDU gUnknown_0803E868
_080101FC DCDU gUnknown_03003EAC
_08010200 DCDU 0x04000200
_08010204 DCDU sub_800FEBC
_08010208 DCDU nullsub_4
_0801020C DCDU 0x060174D8
_08010210 DCDU 0xFFFFE5DC
_08010214 DCDU 0x00001A08
_08010218 DCDU 0x06012C00
_0801021C DCDU 0x06014C00
_08010220 DCDU 0x0601606C
_08010224 DCDU 0x00044940
_08010228 DCDU 0xFFFF63C0
_0801022C DCDU gUnknown_030033F4
_08010230 DCDU 0x00001A24
	END