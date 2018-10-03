	.file	1 "nlr.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	nlr_push_tail
	.set	nomips16
	.set	nomicromips
	.ent	nlr_push_tail
	.type	nlr_push_tail, @function
nlr_push_tail:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(mp_state_ctx)
	addiu	$2,$2,%lo(mp_state_ctx)
	lw	$3,12($2)
	sw	$3,0($4)
	sw	$4,12($2)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	nlr_push_tail
	.size	nlr_push_tail, .-nlr_push_tail
	.align	2
	.globl	nlr_pop
	.set	nomips16
	.set	nomicromips
	.ent	nlr_pop
	.type	nlr_pop, @function
nlr_pop:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(mp_state_ctx)
	addiu	$2,$2,%lo(mp_state_ctx)
	lw	$3,12($2)
	lw	$3,0($3)
	j	$31
	sw	$3,12($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	nlr_pop
	.size	nlr_pop, .-nlr_pop
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
