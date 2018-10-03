	.file	1 "nlrsetjmp.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	nlr_jump
	.set	nomips16
	.set	nomicromips
	.ent	nlr_jump
	.type	nlr_jump, @function
nlr_jump:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(mp_state_ctx+12)
	lw	$2,%lo(mp_state_ctx+12)($2)
	bnel	$2,$0,.L2
	sw	$4,4($2)

	jal	nlr_jump_fail
	nop

.L2:
	lw	$4,0($2)
	lui	$3,%hi(mp_state_ctx+12)
	sw	$4,%lo(mp_state_ctx+12)($3)
	addiu	$4,$2,8
	jal	longjmp
	li	$5,1			# 0x1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	nlr_jump
	.size	nlr_jump, .-nlr_jump
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
