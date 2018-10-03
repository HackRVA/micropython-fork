	.file	1 "S6B33.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	S6B33_send_command
	.set	nomips16
	.set	nomicromips
	.ent	S6B33_send_command
	.type	S6B33_send_command, @function
S6B33_send_command:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(LATB)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,8,1
	sw	$3,%lo(LATB)($2)
	lui	$3,%hi(LATC)
	lw	$5,%lo(LATC)($3)
	ins	$5,$0,7,1
	sw	$5,%lo(LATC)($3)
	srl	$6,$4,7
	lw	$5,%lo(LATC)($3)
	ins	$5,$6,6,1
	sw	$5,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	li	$5,1			# 0x1
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,6,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,5,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,4,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,3,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,2,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,1,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATC)($3)
	ins	$6,$4,6,1
	sw	$6,%lo(LATC)($3)
	lw	$3,%lo(LATB)($2)
	ins	$3,$5,9,1
	sw	$3,%lo(LATB)($2)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,9,1
	sw	$3,%lo(LATB)($2)
	lw	$3,%lo(LATB)($2)
	ins	$3,$5,8,1
	sw	$3,%lo(LATB)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6B33_send_command
	.size	S6B33_send_command, .-S6B33_send_command
	.align	2
	.globl	S6B33_send_data
	.set	nomips16
	.set	nomicromips
	.ent	S6B33_send_data
	.type	S6B33_send_data, @function
S6B33_send_data:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0xffff
	lui	$2,%hi(LATB)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,8,1
	sw	$3,%lo(LATB)($2)
	lui	$3,%hi(LATC)
	lw	$6,%lo(LATC)($3)
	li	$5,1			# 0x1
	ins	$6,$5,7,1
	sw	$6,%lo(LATC)($3)
	srl	$7,$4,15
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,14,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,13,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,12,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,11,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,10,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,9,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,8,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,7,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,6,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,5,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,4,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,3,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,2,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	ext	$7,$4,1,1
	lw	$6,%lo(LATC)($3)
	ins	$6,$7,6,1
	sw	$6,%lo(LATC)($3)
	lw	$6,%lo(LATB)($2)
	ins	$6,$5,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATB)($2)
	ins	$6,$0,9,1
	sw	$6,%lo(LATB)($2)
	lw	$6,%lo(LATC)($3)
	ins	$6,$4,6,1
	sw	$6,%lo(LATC)($3)
	lw	$3,%lo(LATB)($2)
	ins	$3,$5,9,1
	sw	$3,%lo(LATB)($2)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,9,1
	sw	$3,%lo(LATB)($2)
	lw	$3,%lo(LATB)($2)
	ins	$3,$5,8,1
	sw	$3,%lo(LATB)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6B33_send_data
	.size	S6B33_send_data, .-S6B33_send_data
	.align	2
	.globl	S6Delay
	.set	nomips16
	.set	nomicromips
	.ent	S6Delay
	.type	S6Delay, @function
S6Delay:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$2,10000			# 0x2710
	addiu	$2,$2,-1
.L6:
	bne	$2,$0,.L6
	addiu	$2,$2,-1

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6Delay
	.size	S6Delay, .-S6Delay
	.align	2
	.globl	S6B33_init_device
	.set	nomips16
	.set	nomicromips
	.ent	S6B33_init_device
	.type	S6B33_init_device, @function
S6B33_init_device:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	S6B33_send_command
	li	$4,45			# 0x2d

	jal	S6B33_send_command
	li	$4,38			# 0x26

	jal	S6B33_send_command
	move	$4,$0

	jal	S6B33_send_command
	li	$4,44			# 0x2c

	jal	S6B33_send_command
	li	$4,2			# 0x2

	jal	S6B33_send_command
	li	$4,1			# 0x1

	jal	S6B33_send_command
	li	$4,38			# 0x26

	jal	S6B33_send_command
	li	$4,1			# 0x1

	jal	S6B33_send_command
	li	$4,38			# 0x26

	jal	S6B33_send_command
	li	$4,9			# 0x9

	jal	S6B33_send_command
	li	$4,38			# 0x26

	jal	S6B33_send_command
	li	$4,11			# 0xb

	jal	S6B33_send_command
	li	$4,38			# 0x26

	jal	S6B33_send_command
	li	$4,15			# 0xf

	jal	S6B33_send_command
	li	$4,32			# 0x20

	lui	$2,%hi(G_DCDCselect)
	jal	S6B33_send_command
	lbu	$4,%lo(G_DCDCselect)($2)

	jal	S6B33_send_command
	li	$4,36			# 0x24

	lui	$2,%hi(G_clockDiv)
	jal	S6B33_send_command
	lbu	$4,%lo(G_clockDiv)($2)

	jal	S6B33_send_command
	li	$4,16			# 0x10

	lui	$2,%hi(G_outputMode)
	jal	S6B33_send_command
	lbu	$4,%lo(G_outputMode)($2)

	jal	S6B33_send_command
	li	$4,64			# 0x40

	lui	$2,%hi(G_entry)
	jal	S6B33_send_command
	lbu	$4,%lo(G_entry)($2)

	jal	S6B33_send_command
	li	$4,34			# 0x22

	lui	$2,%hi(G_bias)
	jal	S6B33_send_command
	lbu	$4,%lo(G_bias)($2)

	jal	S6B33_send_command
	li	$4,83			# 0x53

	lui	$2,%hi(G_displayPattern)
	jal	S6B33_send_command
	lbu	$4,%lo(G_displayPattern)($2)

	jal	S6B33_send_command
	li	$4,48			# 0x30

	lui	$2,%hi(G_addressMode)
	jal	S6B33_send_command
	lbu	$4,%lo(G_addressMode)($2)

	jal	S6B33_send_command
	li	$4,50			# 0x32

	lui	$2,%hi(G_rowVector)
	jal	S6B33_send_command
	lbu	$4,%lo(G_rowVector)($2)

	jal	S6B33_send_command
	li	$4,66			# 0x42

	jal	S6B33_send_command
	move	$4,$0

	jal	S6B33_send_command
	li	$4,131			# 0x83

	jal	S6B33_send_command
	li	$4,67			# 0x43

	jal	S6B33_send_command
	move	$4,$0

	jal	S6B33_send_command
	li	$4,131			# 0x83

	jal	S6B33_send_command
	li	$4,42			# 0x2a

	lui	$2,%hi(G_contrast1)
	jal	S6B33_send_command
	lbu	$4,%lo(G_contrast1)($2)

	jal	S6B33_send_command
	li	$4,43			# 0x2b

	lui	$2,%hi(G_contrast2)
	jal	S6B33_send_command
	lbu	$4,%lo(G_contrast2)($2)

	jal	S6B33_send_command
	li	$4,85			# 0x55

	jal	S6B33_send_command
	move	$4,$0

	jal	S6B33_send_command
	li	$4,81			# 0x51

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6B33_init_device
	.size	S6B33_init_device, .-S6B33_init_device
	.align	2
	.globl	S6B33_rect
	.set	nomips16
	.set	nomicromips
	.ent	S6B33_rect
	.type	S6B33_rect, @function
S6B33_rect:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	move	$16,$4
	move	$18,$5
	move	$17,$6
	move	$19,$7
	jal	S6B33_send_command
	li	$4,64			# 0x40

	lui	$2,%hi(G_entry)
	jal	S6B33_send_command
	lbu	$4,%lo(G_entry)($2)

	jal	S6B33_send_command
	li	$4,66			# 0x42

	andi	$16,$16,0x00ff
	jal	S6B33_send_command
	move	$4,$16

	addu	$16,$16,$17
	jal	S6B33_send_command
	andi	$4,$16,0x00ff

	jal	S6B33_send_command
	li	$4,67			# 0x43

	andi	$16,$18,0x00ff
	jal	S6B33_send_command
	move	$4,$16

	addu	$16,$16,$19
	jal	S6B33_send_command
	andi	$4,$16,0x00ff

	lw	$31,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6B33_rect
	.size	S6B33_rect, .-S6B33_rect
	.align	2
	.globl	S6B33_bias
	.set	nomips16
	.set	nomicromips
	.ent	S6B33_bias
	.type	S6B33_bias, @function
S6B33_bias:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	andi	$16,$4,0x00ff
	jal	S6B33_send_command
	li	$4,34			# 0x22

	jal	S6B33_send_command
	move	$4,$16

	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6B33_bias
	.size	S6B33_bias, .-S6B33_bias
	.align	2
	.globl	S6B33_contrast
	.set	nomips16
	.set	nomicromips
	.ent	S6B33_contrast
	.type	S6B33_contrast, @function
S6B33_contrast:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	andi	$16,$4,0x00ff
	jal	S6B33_send_command
	li	$4,42			# 0x2a

	jal	S6B33_send_command
	move	$4,$16

	jal	S6B33_send_command
	li	$4,43			# 0x2b

	jal	S6B33_send_command
	move	$4,$16

	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6B33_contrast
	.size	S6B33_contrast, .-S6B33_contrast
	.align	2
	.globl	S6B33_pixel
	.set	nomips16
	.set	nomicromips
	.ent	S6B33_pixel
	.type	S6B33_pixel, @function
S6B33_pixel:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	S6B33_send_data
	andi	$4,$4,0xffff

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6B33_pixel
	.size	S6B33_pixel, .-S6B33_pixel
	.align	2
	.globl	S6B33_flip
	.set	nomips16
	.set	nomicromips
	.ent	S6B33_flip
	.type	S6B33_flip, @function
S6B33_flip:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	S6B33_send_command
	li	$4,16			# 0x10

	jal	S6B33_send_command
	li	$4,7			# 0x7

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	S6B33_flip
	.size	S6B33_flip, .-S6B33_flip
	.globl	G_bias
	.section	.bss,bss
	.type	G_bias, @object
	.size	G_bias, 1
G_bias:
	.space	1
	.globl	G_entry
	.section	.data, data
	.type	G_entry, @object
	.size	G_entry, 1
G_entry:
	.byte	-128
	.globl	G_outputMode
	.type	G_outputMode, @object
	.size	G_outputMode, 1
G_outputMode:
	.byte	6
	.globl	G_clockDiv
	.type	G_clockDiv, @object
	.size	G_clockDiv, 1
G_clockDiv:
	.byte	17
	.globl	G_DCDCselect
	.section	.bss,bss
	.type	G_DCDCselect, @object
	.size	G_DCDCselect, 1
G_DCDCselect:
	.space	1
	.globl	G_displayPattern
	.type	G_displayPattern, @object
	.size	G_displayPattern, 1
G_displayPattern:
	.space	1
	.globl	G_addressMode
	.section	.data, data
	.type	G_addressMode, @object
	.size	G_addressMode, 1
G_addressMode:
	.byte	29
	.globl	G_rowVector
	.type	G_rowVector, @object
	.size	G_rowVector, 1
G_rowVector:
	.byte	14
	.globl	G_contrast1
	.type	G_contrast1, @object
	.size	G_contrast1, 1
G_contrast1:
	.byte	52
	.globl	G_contrast2
	.type	G_contrast2, @object
	.size	G_contrast2, 1
G_contrast2:
	.byte	52
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
