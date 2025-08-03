	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r0
	thumb_func_start __cpp_initialise
__cpp_initialise
	push {r3, r4, r5, lr}
	ldr r4, _0803B8FC
	add r4, pc
	ldr r5, _0803B900
	add r5, pc
	cmp r4, r5
	beq _0803B8F4
_0803B8E6
	ldr r0, [r4]
	adds r0, r0, r4
	bl __call_via_r0
	adds r4, #4
	cmp r4, r5
	bne _0803B8E6
_0803B8F4
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0803B8FC DCDU 0x00001BC4
_0803B900 DCDU 0x00001BC4
	END
