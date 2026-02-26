	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gScriptDataMetadata
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003E9C
	IMPORT gUnknown_03003EA8
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B09A
	IMPORT sub_800E2F6
	IMPORT sub_802EF0A
	IMPORT sub_8031622

	thumb_func_start maybeLoadOrRenderBgImage

maybeLoadOrRenderBgImage
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800EFD0
	ldr r0, [r0, #0x30]
	bl sub_80050FA
	ldr r0, _0800EFDC
	add r1, pc, #0x88
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #4
	bl sub_802EF0A
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r5, _0800F00C
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne %11
	movs r1, #0
	ldr r0, [r5]
	bl sub_8031622
11
	ldr r0, _0800EFF4
	ldr r0, [r0]
	bl sub_800B09A
	adds r1, r0, #0
	movs r2, #3
	adds r0, r4, #0
	bl sub_800E2F6
	ldr r0, [r4]
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne %12
	movs r1, #1
	ldr r0, [r5]
	bl sub_8031622
12
	movs r0, #0
	bl sub_80050FA
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_0800EFD0 DCDU gScriptDataMetadata
_0800EFDC DCDU gUnknown_03003EA8
_0800EFF4 DCDU gUnknown_03003E98
_0800F00C DCDU gUnknown_03003E9C

	END
