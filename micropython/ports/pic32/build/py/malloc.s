	.file	1 "malloc.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	m_malloc
	.set	nomips16
	.set	nomicromips
	.ent	m_malloc
	.type	m_malloc, @function
m_malloc:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	jal	malloc
	move	$16,$4

	bne	$2,$0,.L3
	lw	$31,20($sp)

	beql	$16,$0,.L4
	lw	$16,16($sp)

	jal	m_malloc_fail
	move	$4,$16

.L3:
	lw	$16,16($sp)
.L4:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	m_malloc
	.size	m_malloc, .-m_malloc
	.align	2
	.globl	m_malloc_maybe
	.set	nomips16
	.set	nomicromips
	.ent	m_malloc_maybe
	.type	m_malloc_maybe, @function
m_malloc_maybe:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	malloc
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	m_malloc_maybe
	.size	m_malloc_maybe, .-m_malloc_maybe
	.align	2
	.globl	m_malloc0
	.set	nomips16
	.set	nomicromips
	.ent	m_malloc0
	.type	m_malloc0, @function
m_malloc0:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	jal	m_malloc
	move	$17,$4

	move	$16,$2
	move	$4,$2
	move	$5,$0
	jal	memset
	move	$6,$17

	move	$2,$16
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	m_malloc0
	.size	m_malloc0, .-m_malloc0
	.align	2
	.globl	m_realloc
	.set	nomips16
	.set	nomicromips
	.ent	m_realloc
	.type	m_realloc, @function
m_realloc:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	jal	realloc
	move	$16,$5

	bne	$2,$0,.L9
	lw	$31,20($sp)

	beql	$16,$0,.L10
	lw	$16,16($sp)

	jal	m_malloc_fail
	move	$4,$16

.L9:
	lw	$16,16($sp)
.L10:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	m_realloc
	.size	m_realloc, .-m_realloc
	.align	2
	.globl	m_realloc_maybe
	.set	nomips16
	.set	nomicromips
	.ent	m_realloc_maybe
	.type	m_realloc_maybe, @function
m_realloc_maybe:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	andi	$6,$6,0x00ff
	beq	$6,$0,.L13
	sw	$31,20($sp)

	jal	realloc
	nop

	j	.L14
	lw	$31,20($sp)

.L13:
	move	$2,$0
	lw	$31,20($sp)
.L14:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	m_realloc_maybe
	.size	m_realloc_maybe, .-m_realloc_maybe
	.align	2
	.globl	m_free
	.set	nomips16
	.set	nomicromips
	.ent	m_free
	.type	m_free, @function
m_free:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	free
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	m_free
	.size	m_free, .-m_free
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
