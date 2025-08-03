    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003EB4
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_80081A8
	IMPORT strlen
	IMPORT CpuSet
	IMPORT sub_803D984
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT gUnknown_03000000
	IMPORT gUnknown_0300028C
	IMPORT gUnknown_03000284
	IMPORT gUnknown_03000058
	IMPORT gUnknown_03000190
	IMPORT gUnknown_03000090
	IMPORT gUnknown_030001E0
	IMPORT sub_803F3E8

	thumb_func_start sub_80412A8
sub_80412A8 ;@ 0x080412A8
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	sub sp, #0x80
	add r0, sp, #0x24
	adds r7, r2, #0
	bl gUnknown_03000000
	add r0, sp, #0x24
	bl gUnknown_0300028C
	adds r2, r0, #0
	ldr r0, _08041418 ;@ =gUnknown_03003E84
	adds r2, #0x48
	movs r3, #0
	subs r1, r6, #4
	ldr r0, [r0]
	bl sub_800529A
	adds r4, r0, #0
	adds r5, r0, #4
	adds r0, r5, #4
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r6, r0
	str r1, [sp, #0x20]
	ldr r2, [r4]
	adds r1, r5, r0
	lsls r2, r2, #4
	lsrs r2, r2, #2
	subs r6, r2, r0
	add r0, sp, #0x24
	bl gUnknown_03000284
	adds r5, r0, #0
	adds r1, r6, #0
	cmp r6, r0
	bhi _080412FC
	adds r1, r5, #0
_080412FC
	adds r1, #3
	lsrs r0, r1, #2
	lsls r0, r0, #2
	adds r0, #4
	str r0, [sp, #0x1c]
	lsls r0, r7, #0x1f
	bpl _0804131A
	movs r3, #0
	movs r2, #0
	movs r0, #1
	ldr r1, [sp, #0x1c]
	bl sub_803D9C4
	adds r4, r0, #0
	b _08041336
_0804131A
	ldr r4, [sp, #0x84]
	cmp r4, #0
	bne _08041334
	movs r1, #0
	add r0, sp, #0x24
	ldr r4, [sp, #0x1c]
	bl gUnknown_03000058
	adds r0, r4, #0
_0804132C
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08041334
	ldr r4, [sp, #0x84]
_08041336
	ldr r0, [sp, #0x1c]
	adds r0, r4, r0
	subs r3, r0, r6
	ldr r0, _08041418 ;@ =gUnknown_03003E84
	str r3, [sp, #0x18]
	ldr r0, [r0]
	ldr r1, [sp, #0x20]
	adds r2, r6, #0
	bl sub_800529A
	bl sub_80081A8
	lsls r0, r7, #0x1e
	bpl _08041360
	movs r2, #0
	movs r1, #0
	ldr r0, _0804141C ;@ =0x0000146C
	bl sub_803D984
	adds r6, r0, #0
	b _08041362
_08041360
	ldr r6, _08041420 ;@ =0x0601606C
_08041362
	ldr r0, _08041424 ;@ =gUnknown_03003EB4
	ldr r0, [r0]
	cmp r0, #0
	beq _0804137A
	movs r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	adds r1, r6, #0
	ldr r2, _08041428 ;@ =0x0500051B
	bl CpuSet
	b _080413A4
_0804137A
	lsls r1, r6, #0x1e
	ldr r0, _0804142C ;@ =0x040000D4
	bpl _08041394
	movs r1, #0
	add r3, sp, #0
	strh r1, [r3, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _08041430 ;@ =0x81000A36
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _080413A4
_08041394
	movs r1, #0
	str r1, [sp, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _08041434 ;@ =0x8500051B
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_080413A4
	ldr r2, _0804141C ;@ =0x0000146C
	adds r1, r6, #0
	add r0, sp, #0x24
	bl gUnknown_03000190
	mov r0, sp
	bl sub_8008008
	ldr r3, [sp, #0x18]
	movs r0, #0
	str r3, [sp]
	add r3, sp, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r1, #2
	strb r1, [r3, #0xc]
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	mov r1, sp
	bl gUnknown_03000090
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r5, #0
	add r0, sp, #0x24
	bl gUnknown_030001E0
	lsls r0, r7, #0x1e
	bpl _080413EC
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
_080413EC
	lsls r0, r7, #0x1f
	bpl _0804140A
	ldr r0, [sp, #0x84]
	cmp r0, #0
	beq _0804140A
	adds r2, r5, #0
	adds r1, r4, #0
	ldr r0, [sp, #0x84]
	bl sub_803F3E8
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_803D9A8
_0804140A
	movs r1, #0
	add r0, sp, #0x24
	bl gUnknown_03000058
	adds r0, r5, #0
	b _0804132C
	ALIGN
_08041418 DCDU gUnknown_03003E84
_0804141C DCDU 0x0000146C
_08041420 DCDU 0x0601606C
_08041424 DCDU gUnknown_03003EB4
_08041428 DCDU 0x0500051B
_0804142C DCDU 0x040000D4
_08041430 DCDU 0x81000A36
_08041434 DCDU 0x8500051B

	thumb_func_start _fp_init
_fp_init ;@ 0x08041438
	bx pc
	ALIGN

	arm_func_start __32_fp_init
__32_fp_init ;@ 0x0804143C
	bx lr
	END