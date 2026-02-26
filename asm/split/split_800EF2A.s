	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gScriptDataMetadata
	IMPORT gUnknown_03003E98
	IMPORT sub_80014E4
	IMPORT sub_80049B4
	IMPORT sub_800B08E
	IMPORT sub_8013D52
	IMPORT sub_8028B2C

	non_word_aligned_thumb_func_start sub_800EF2A

sub_800EF2A
	push {r4, lr}
	movs r0, #1
	bl sub_8013D52
	ldr r4, _0800EFD0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq %8
	bl sub_80049B4
8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %9
	bl sub_80014E4
9
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq %10
	bl sub_8028B2C
10
	ldr r0, _0800EFF4
	ldr r0, [r0]
	bl sub_800B08E
	pop {r4}
	pop {r3}
	bx r3

	ALIGN
_0800EFD0 DCDU gScriptDataMetadata
_0800EFF4 DCDU gUnknown_03003E98

	END
