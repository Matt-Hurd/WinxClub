    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT CpuSet

	arm_func_start sub_803E14C
sub_803E14C ;@ 0x0803E14C
	LDR ip, _0803E154 ;@ =CpuSet
	bx ip
	ALIGN
_0803E154 DCDU CpuSet
	END