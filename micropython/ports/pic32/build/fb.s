	.file	1 "fb.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	FbInit
	.set	nomips16
	.set	nomicromips
	.ent	FbInit
	.type	FbInit, @function
FbInit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_Fb)
	lui	$3,%hi(LCDbuffer)
	addiu	$3,$3,%lo(LCDbuffer)
	sw	$3,%lo(G_Fb)($2)
	addiu	$2,$2,%lo(G_Fb)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	li	$3,8			# 0x8
	sb	$3,7($2)
	li	$3,255			# 0xff
	sh	$3,8($2)
	sh	$0,10($2)
	sh	$0,12($2)
	sh	$0,14($2)
	j	$31
	sh	$0,16($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbInit
	.size	FbInit, .-FbInit
	.align	2
	.globl	FbMoveX
	.set	nomips16
	.set	nomicromips
	.ent	FbMoveX
	.type	FbMoveX, @function
FbMoveX:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(G_Fb+4)
	sb	$4,%lo(G_Fb+4)($2)
	sltu	$4,$4,133
	bne	$4,$0,.L4
	li	$3,-125			# 0xffffffffffffff83

	sb	$3,%lo(G_Fb+4)($2)
.L4:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbMoveX
	.size	FbMoveX, .-FbMoveX
	.align	2
	.globl	FbMoveY
	.set	nomips16
	.set	nomicromips
	.ent	FbMoveY
	.type	FbMoveY, @function
FbMoveY:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(G_Fb+5)
	sb	$4,%lo(G_Fb+5)($2)
	sltu	$4,$4,133
	bne	$4,$0,.L7
	li	$3,-125			# 0xffffffffffffff83

	sb	$3,%lo(G_Fb+5)($2)
.L7:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbMoveY
	.size	FbMoveY, .-FbMoveY
	.align	2
	.globl	FbMove
	.set	nomips16
	.set	nomicromips
	.ent	FbMove
	.type	FbMove, @function
FbMove:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	sb	$4,4($2)
	sltu	$4,$4,133
	bne	$4,$0,.L9
	sb	$5,5($2)

	li	$3,-125			# 0xffffffffffffff83
	lui	$2,%hi(G_Fb+4)
	sb	$3,%lo(G_Fb+4)($2)
.L9:
	sltu	$5,$5,133
	bne	$5,$0,.L11
	li	$3,-125			# 0xffffffffffffff83

	lui	$2,%hi(G_Fb+5)
	sb	$3,%lo(G_Fb+5)($2)
.L11:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbMove
	.size	FbMove, .-FbMove
	.align	2
	.globl	FbMoveRelative
	.set	nomips16
	.set	nomicromips
	.ent	FbMoveRelative
	.type	FbMoveRelative, @function
FbMoveRelative:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	lbu	$3,4($2)
	addu	$4,$4,$3
	lbu	$2,5($2)
	addu	$5,$5,$2
	andi	$4,$4,0x00ff
	jal	FbMove
	andi	$5,$5,0x00ff

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbMoveRelative
	.size	FbMoveRelative, .-FbMoveRelative
	.align	2
	.globl	FbClear
	.set	nomips16
	.set	nomicromips
	.ent	FbClear
	.type	FbClear, @function
FbClear:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	move	$4,$0
	move	$5,$0
	li	$6,131			# 0x83
	jal	S6B33_rect
	li	$7,131			# 0x83

	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	sb	$0,4($2)
	sb	$0,5($2)
	sh	$0,16($2)
	lui	$16,%hi(LCDbuffer)
	addiu	$16,$16,%lo(LCDbuffer)
	li	$17,34848			# 0x8820
	addu	$17,$16,$17
	lui	$18,%hi(G_Fb)
	addiu	$2,$18,%lo(G_Fb)
.L16:
	lhu	$4,10($2)
	jal	S6B33_pixel
	sh	$4,0($16)

	addiu	$16,$16,2
	bne	$16,$17,.L16
	addiu	$2,$18,%lo(G_Fb)

	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbClear
	.size	FbClear, .-FbClear
	.align	2
	.globl	FbTransparency
	.set	nomips16
	.set	nomicromips
	.ent	FbTransparency
	.type	FbTransparency, @function
FbTransparency:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_Fb+12)
	j	$31
	sh	$4,%lo(G_Fb+12)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbTransparency
	.size	FbTransparency, .-FbTransparency
	.align	2
	.globl	FbColor
	.set	nomips16
	.set	nomicromips
	.ent	FbColor
	.type	FbColor, @function
FbColor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_Fb+8)
	j	$31
	sh	$4,%lo(G_Fb+8)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbColor
	.size	FbColor, .-FbColor
	.align	2
	.globl	FbBackgroundColor
	.set	nomips16
	.set	nomicromips
	.ent	FbBackgroundColor
	.type	FbBackgroundColor, @function
FbBackgroundColor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_Fb+10)
	j	$31
	sh	$4,%lo(G_Fb+10)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbBackgroundColor
	.size	FbBackgroundColor, .-FbBackgroundColor
	.align	2
	.globl	FbImage8bit
	.set	nomips16
	.set	nomicromips
	.ent	FbImage8bit
	.type	FbImage8bit, @function
FbImage8bit:
	.frame	$sp,24,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x001f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	sw	$16,4($sp)
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	lui	$2,%hi(G_Fb+5)
	lbu	$10,%lo(G_Fb+5)($2)
	sll	$6,$4,2
	sll	$2,$4,4
	addu	$6,$6,$2
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$2,$6,$2
	lhu	$6,6($2)
	addu	$25,$10,$6
	andi	$25,$25,0x00ff
	sltu	$2,$25,133
	bne	$2,$0,.L21
	move	$3,$4

	li	$25,131			# 0x83
.L21:
	sltu	$2,$10,$25
	beq	$2,$0,.L22
	sll	$2,$4,2

	sll	$4,$4,4
	addu	$4,$2,$4
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$2,$4,$2
	lhu	$16,4($2)
	mul	$6,$5,$6
	subu	$19,$6,$10
	move	$18,$16
	lw	$17,12($2)
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	lbu	$7,4($2)
	lhu	$13,14($2)
	lhu	$11,12($2)
	nor	$24,$0,$11
	seh	$24,$24
	sll	$14,$3,2
	sll	$3,$3,4
	addu	$14,$14,$3
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$14,$14,$2
	lui	$12,%hi(LCDbuffer)
	addiu	$12,$12,%lo(LCDbuffer)
.L28:
	beql	$16,$0,.L32
	addiu	$10,$10,1

	addu	$5,$10,$19
	mul	$2,$5,$18
	addu	$5,$2,$17
	sll	$15,$10,2
	sll	$2,$10,7
	addu	$15,$15,$2
	addu	$15,$15,$7
	lhu	$8,4($14)
	move	$2,$0
	addu	$3,$2,$7
.L34:
	slt	$4,$3,132
	beql	$4,$0,.L33
	addiu	$2,$2,1

	lbu	$4,0($5)
	beq	$4,$13,.L25
	sll	$9,$4,1

	addu	$4,$9,$4
	lw	$9,8($14)
	addu	$4,$9,$4
	lbu	$20,2($4)
	srl	$20,$20,3
	lbu	$9,0($4)
	srl	$9,$9,3
	sll	$9,$9,11
	or	$9,$20,$9
	lbu	$4,1($4)
	srl	$4,$4,3
	sll	$4,$4,6
	beq	$11,$0,.L26
	or	$4,$9,$4

	addu	$6,$2,$15
	sll	$6,$6,1
	addu	$6,$6,$12
	and	$4,$4,$11
	sll	$3,$3,1
	addu	$3,$3,$12
	lhu	$3,0($3)
	and	$3,$24,$3
	or	$4,$4,$3
	j	.L25
	sh	$4,0($6)

.L26:
	addu	$6,$2,$15
	sll	$6,$6,1
	addu	$6,$6,$12
	sh	$4,0($6)
.L25:
	addiu	$5,$5,1
	addiu	$2,$2,1
.L33:
	andi	$2,$2,0x00ff
	sltu	$3,$2,$8
	bne	$3,$0,.L34
	addu	$3,$2,$7

	addiu	$10,$10,1
.L32:
	andi	$10,$10,0x00ff
	bne	$10,$25,.L28
	nop

.L22:
	li	$3,1			# 0x1
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbImage8bit
	.size	FbImage8bit, .-FbImage8bit
	.align	2
	.globl	FbImage4bit
	.set	nomips16
	.set	nomicromips
	.ent	FbImage4bit
	.type	FbImage4bit, @function
FbImage4bit:
	.frame	$sp,24,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x001f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	sw	$16,4($sp)
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	lui	$2,%hi(G_Fb+5)
	lbu	$14,%lo(G_Fb+5)($2)
	sll	$6,$4,2
	sll	$2,$4,4
	addu	$6,$6,$2
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$2,$6,$2
	lhu	$2,6($2)
	addu	$25,$14,$2
	andi	$6,$25,0x00ff
	sltu	$6,$6,132
	bne	$6,$0,.L36
	move	$3,$4

	li	$25,-125			# 0xffffffffffffff83
.L36:
	andi	$25,$25,0x00ff
	sltu	$6,$14,$25
	beq	$6,$0,.L37
	sll	$6,$4,2

	sll	$4,$4,4
	addu	$4,$6,$4
	lui	$6,%hi(assetList)
	addiu	$6,$6,%lo(assetList)
	addu	$4,$6,$4
	lw	$18,12($4)
	lhu	$9,4($4)
	srl	$17,$9,1
	mul	$2,$5,$2
	subu	$16,$2,$14
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	lbu	$7,4($2)
	lhu	$12,14($2)
	lhu	$10,12($2)
	nor	$24,$0,$10
	seh	$24,$24
	sll	$15,$3,2
	sll	$3,$3,4
	addu	$15,$15,$3
	addu	$15,$15,$6
	lui	$11,%hi(LCDbuffer)
	addiu	$11,$11,%lo(LCDbuffer)
	addu	$3,$14,$16
.L51:
	mul	$2,$3,$17
	addu	$3,$2,$18
	sll	$13,$14,2
	sll	$2,$14,7
	addu	$13,$13,$2
	addu	$13,$13,$7
	j	.L49
	move	$2,$0

.L44:
	addu	$4,$2,$7
	slt	$5,$4,132
	beq	$5,$0,.L49
	addiu	$3,$3,1

	srl	$5,$6,4
	beq	$5,$12,.L40
	sll	$19,$5,1

	addu	$5,$19,$5
	lw	$19,8($15)
	addu	$5,$19,$5
	lbu	$20,2($5)
	srl	$20,$20,3
	lbu	$19,0($5)
	srl	$19,$19,3
	sll	$19,$19,11
	or	$19,$20,$19
	lbu	$5,1($5)
	srl	$5,$5,3
	sll	$5,$5,6
	beq	$10,$0,.L41
	or	$5,$19,$5

	addu	$8,$2,$13
	sll	$8,$8,1
	addu	$8,$8,$11
	sll	$4,$4,1
	addu	$4,$4,$11
	lhu	$19,0($4)
	and	$19,$24,$19
	and	$5,$5,$10
	or	$5,$19,$5
	j	.L40
	sh	$5,0($8)

.L41:
	addu	$8,$2,$13
	sll	$8,$8,1
	addu	$8,$8,$11
	sh	$5,0($8)
.L40:
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	addu	$4,$7,$2
	slt	$5,$4,132
	beql	$5,$0,.L50
	sltu	$4,$2,$9

	andi	$6,$6,0xf
	beq	$12,$6,.L42
	sll	$5,$6,1

	addu	$6,$5,$6
	lw	$5,8($15)
	addu	$6,$5,$6
	lbu	$19,2($6)
	srl	$19,$19,3
	lbu	$5,0($6)
	srl	$5,$5,3
	sll	$5,$5,11
	or	$19,$19,$5
	lbu	$5,1($6)
	srl	$5,$5,3
	sll	$5,$5,6
	beq	$10,$0,.L43
	or	$5,$19,$5

	addu	$8,$13,$2
	sll	$8,$8,1
	addu	$8,$8,$11
	sll	$4,$4,1
	addu	$4,$4,$11
	lhu	$4,0($4)
	and	$4,$24,$4
	and	$5,$10,$5
	or	$5,$4,$5
	j	.L42
	sh	$5,0($8)

.L43:
	addu	$8,$13,$2
	sll	$8,$8,1
	addu	$8,$8,$11
	sh	$5,0($8)
.L42:
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
.L49:
	sltu	$4,$2,$9
.L50:
	bnel	$4,$0,.L44
	lbu	$6,0($3)

	addiu	$14,$14,1
	andi	$14,$14,0x00ff
	bne	$14,$25,.L51
	addu	$3,$14,$16

.L37:
	li	$3,1			# 0x1
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbImage4bit
	.size	FbImage4bit, .-FbImage4bit
	.align	2
	.globl	FbImage2bit
	.set	nomips16
	.set	nomicromips
	.ent	FbImage2bit
	.type	FbImage2bit, @function
FbImage2bit:
	.frame	$sp,24,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x001f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	sw	$16,4($sp)
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	lui	$2,%hi(G_Fb+5)
	lbu	$15,%lo(G_Fb+5)($2)
	sll	$6,$4,2
	sll	$2,$4,4
	addu	$6,$6,$2
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$2,$6,$2
	lhu	$2,6($2)
	addu	$25,$15,$2
	andi	$25,$25,0x00ff
	sltu	$6,$25,133
	bne	$6,$0,.L53
	move	$3,$4

	li	$25,131			# 0x83
.L53:
	sltu	$6,$15,$25
	beq	$6,$0,.L54
	mul	$2,$5,$2

	sll	$6,$4,2
	sll	$4,$4,4
	addu	$4,$6,$4
	lui	$6,%hi(assetList)
	addiu	$6,$6,%lo(assetList)
	addu	$4,$6,$4
	lw	$18,12($4)
	lhu	$9,4($4)
	srl	$17,$9,2
	subu	$16,$2,$15
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	lbu	$6,4($2)
	lhu	$12,14($2)
	lhu	$10,12($2)
	nor	$24,$0,$10
	seh	$24,$24
	sll	$14,$3,2
	sll	$3,$3,4
	addu	$14,$14,$3
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$14,$14,$2
	lui	$11,%hi(LCDbuffer)
	addiu	$11,$11,%lo(LCDbuffer)
	addu	$3,$15,$16
.L73:
	mul	$2,$3,$17
	addu	$3,$2,$18
	sll	$13,$15,2
	sll	$2,$15,7
	addu	$13,$13,$2
	addu	$13,$13,$6
	j	.L71
	move	$2,$0

.L65:
	addu	$4,$2,$6
	slt	$5,$4,132
	beq	$5,$0,.L71
	addiu	$3,$3,1

	srl	$5,$7,6
	beq	$5,$12,.L57
	sll	$19,$5,1

	addu	$5,$19,$5
	lw	$19,8($14)
	addu	$5,$19,$5
	lbu	$20,2($5)
	srl	$20,$20,3
	lbu	$19,0($5)
	srl	$19,$19,3
	sll	$19,$19,11
	or	$19,$20,$19
	lbu	$5,1($5)
	srl	$5,$5,3
	sll	$5,$5,6
	beq	$10,$0,.L58
	or	$5,$19,$5

	addu	$8,$2,$13
	sll	$8,$8,1
	addu	$8,$8,$11
	sll	$4,$4,1
	addu	$4,$4,$11
	lhu	$19,0($4)
	and	$19,$24,$19
	and	$5,$5,$10
	or	$5,$19,$5
	j	.L57
	sh	$5,0($8)

.L58:
	addu	$8,$2,$13
	sll	$8,$8,1
	addu	$8,$8,$11
	sh	$5,0($8)
.L57:
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	addu	$4,$6,$2
	slt	$5,$4,132
	beql	$5,$0,.L72
	sltu	$4,$2,$9

	ext	$5,$7,4,2
	beq	$12,$5,.L59
	sll	$19,$5,1

	addu	$5,$19,$5
	lw	$19,8($14)
	addu	$5,$19,$5
	lbu	$20,2($5)
	srl	$20,$20,3
	lbu	$19,0($5)
	srl	$19,$19,3
	sll	$19,$19,11
	or	$19,$20,$19
	lbu	$5,1($5)
	srl	$5,$5,3
	sll	$5,$5,6
	beq	$10,$0,.L60
	or	$5,$19,$5

	addu	$8,$13,$2
	sll	$8,$8,1
	addu	$8,$8,$11
	sll	$4,$4,1
	addu	$4,$4,$11
	lhu	$4,0($4)
	and	$4,$24,$4
	and	$5,$10,$5
	or	$5,$4,$5
	j	.L59
	sh	$5,0($8)

.L60:
	addu	$8,$13,$2
	sll	$8,$8,1
	addu	$8,$8,$11
	sh	$5,0($8)
.L59:
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	addu	$4,$6,$2
	slt	$5,$4,132
	beql	$5,$0,.L72
	sltu	$4,$2,$9

	ext	$5,$7,2,2
	beq	$12,$5,.L61
	sll	$19,$5,1

	addu	$5,$19,$5
	lw	$19,8($14)
	addu	$5,$19,$5
	lbu	$20,2($5)
	srl	$20,$20,3
	lbu	$19,0($5)
	srl	$19,$19,3
	sll	$19,$19,11
	or	$19,$20,$19
	lbu	$5,1($5)
	srl	$5,$5,3
	sll	$5,$5,6
	beq	$10,$0,.L62
	or	$5,$19,$5

	addu	$8,$13,$2
	sll	$8,$8,1
	addu	$8,$8,$11
	sll	$4,$4,1
	addu	$4,$4,$11
	lhu	$4,0($4)
	and	$4,$24,$4
	and	$5,$10,$5
	or	$5,$4,$5
	j	.L61
	sh	$5,0($8)

.L62:
	addu	$8,$13,$2
	sll	$8,$8,1
	addu	$8,$8,$11
	sh	$5,0($8)
.L61:
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	addu	$4,$6,$2
	slt	$5,$4,132
	beql	$5,$0,.L72
	sltu	$4,$2,$9

	andi	$7,$7,0x3
	beq	$12,$7,.L63
	sll	$5,$7,1

	addu	$7,$5,$7
	lw	$5,8($14)
	addu	$7,$5,$7
	lbu	$19,2($7)
	srl	$19,$19,3
	lbu	$5,0($7)
	srl	$5,$5,3
	sll	$5,$5,11
	or	$5,$19,$5
	lbu	$7,1($7)
	srl	$7,$7,3
	sll	$7,$7,6
	beq	$10,$0,.L64
	or	$5,$5,$7

	addu	$7,$13,$2
	sll	$7,$7,1
	addu	$7,$7,$11
	sll	$4,$4,1
	addu	$4,$4,$11
	lhu	$4,0($4)
	and	$4,$24,$4
	and	$5,$10,$5
	or	$5,$4,$5
	j	.L63
	sh	$5,0($7)

.L64:
	addu	$4,$13,$2
	sll	$4,$4,1
	addu	$4,$4,$11
	sh	$5,0($4)
.L63:
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
.L71:
	sltu	$4,$2,$9
.L72:
	bnel	$4,$0,.L65
	lbu	$7,0($3)

	addiu	$15,$15,1
	andi	$15,$15,0x00ff
	bne	$15,$25,.L73
	addu	$3,$15,$16

.L54:
	li	$3,1			# 0x1
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbImage2bit
	.size	FbImage2bit, .-FbImage2bit
	.align	2
	.globl	FbImage1bit
	.set	nomips16
	.set	nomicromips
	.ent	FbImage1bit
	.type	FbImage1bit, @function
FbImage1bit:
	.frame	$sp,64,$31		# vars= 24, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$fp,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	lui	$2,%hi(G_Fb+5)
	lbu	$22,%lo(G_Fb+5)($2)
	sll	$6,$4,2
	sll	$2,$4,4
	addu	$6,$6,$2
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$2,$6,$2
	lhu	$6,6($2)
	addu	$2,$22,$6
	move	$fp,$2
	andi	$2,$2,0x00ff
	sltu	$2,$2,132
	bne	$2,$0,.L75
	move	$3,$4

	li	$fp,-125			# 0xffffffffffffff83
.L75:
	andi	$fp,$fp,0x00ff
	sltu	$2,$22,$fp
	beq	$2,$0,.L76
	sll	$2,$4,2

	sll	$4,$4,4
	addu	$4,$2,$4
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$2,$4,$2
	lhu	$23,4($2)
	mul	$6,$5,$6
	subu	$6,$6,$22
	sw	$6,4($sp)
	srl	$4,$23,3
	sw	$4,0($sp)
	lw	$2,12($2)
	sw	$2,16($sp)
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	lbu	$16,4($2)
	sw	$16,8($sp)
	lhu	$12,14($2)
	lhu	$14,12($2)
	nor	$15,$0,$14
	seh	$15,$15
	lhu	$19,10($2)
	and	$21,$19,$14
	seh	$21,$21
	lhu	$18,8($2)
	and	$20,$14,$18
	seh	$20,$20
	sll	$2,$3,2
	sll	$3,$3,4
	addu	$3,$2,$3
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$2,$3,$2
	sw	$2,12($sp)
	lui	$17,%hi(LCDbuffer)
	addiu	$17,$17,%lo(LCDbuffer)
	li	$9,8			# 0x8
.L84:
	beq	$23,$0,.L77
	lw	$2,4($sp)

	addu	$13,$22,$2
	lw	$2,0($sp)
	lw	$3,16($sp)
	mul	$4,$13,$2
	addu	$13,$4,$3
	sll	$25,$22,2
	sll	$2,$22,7
	addu	$25,$25,$2
	lw	$2,8($sp)
	addu	$25,$25,$2
	lw	$3,12($sp)
	lhu	$24,4($3)
	move	$11,$0
	lbu	$10,0($13)
.L89:
	addiu	$13,$13,1
	move	$3,$16
	addu	$4,$11,$25
	sll	$4,$4,1
	addu	$4,$17,$4
	move	$6,$4
	move	$7,$4
	move	$5,$4
	move	$2,$0
.L82:
	slt	$8,$3,132
	beql	$8,$0,.L88
	addiu	$2,$2,1

	sra	$8,$10,$2
	andi	$8,$8,0x1
	beql	$8,$12,.L88
	addiu	$2,$2,1

	bne	$8,$0,.L79
	nop

	beql	$14,$0,.L78
	sh	$19,0($4)

	lhu	$8,0($6)
	and	$8,$15,$8
	or	$8,$21,$8
	j	.L78
	sh	$8,0($6)

.L79:
	beql	$14,$0,.L81
	sh	$18,0($7)

	lhu	$8,0($5)
	and	$8,$15,$8
	or	$8,$20,$8
	sh	$8,0($5)
.L81:
.L78:
	addiu	$2,$2,1
.L88:
	addiu	$3,$3,1
	addiu	$4,$4,2
	addiu	$5,$5,2
	addiu	$7,$7,2
	bne	$2,$9,.L82
	addiu	$6,$6,2

	addiu	$11,$11,8
	andi	$11,$11,0x00ff
	sltu	$2,$11,$24
	bnel	$2,$0,.L89
	lbu	$10,0($13)

.L77:
	addiu	$22,$22,1
	andi	$22,$22,0x00ff
	bne	$22,$fp,.L84
	nop

.L76:
	li	$3,1			# 0x1
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$fp,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbImage1bit
	.size	FbImage1bit, .-FbImage1bit
	.align	2
	.globl	FbImage
	.set	nomips16
	.set	nomicromips
	.ent	FbImage
	.type	FbImage, @function
FbImage:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	andi	$4,$4,0x00ff
	sll	$3,$4,2
	sll	$2,$4,4
	addu	$2,$3,$2
	lui	$3,%hi(assetList)
	addiu	$3,$3,%lo(assetList)
	addu	$2,$2,$3
	lbu	$2,1($2)
	li	$3,3			# 0x3
	beq	$2,$3,.L93
	andi	$5,$5,0x00ff

	sltu	$3,$2,4
	beq	$3,$0,.L96
	li	$3,4			# 0x4

	li	$3,2			# 0x2
	bnel	$2,$3,.L100
	lw	$31,20($sp)

	j	.L97
	nop

.L96:
	beq	$2,$3,.L94
	li	$3,5			# 0x5

	bne	$2,$3,.L100
	lw	$31,20($sp)

	j	.L98
	nop

.L97:
	jal	FbImage1bit
	nop

	j	.L99
	lw	$31,20($sp)

.L93:
	jal	FbImage2bit
	nop

	j	.L99
	lw	$31,20($sp)

.L94:
	jal	FbImage4bit
	nop

	j	.L99
	lw	$31,20($sp)

.L98:
	jal	FbImage8bit
	nop

	lw	$31,20($sp)
.L99:
.L100:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbImage
	.size	FbImage, .-FbImage
	.align	2
	.globl	FbTransparentIndex
	.set	nomips16
	.set	nomicromips
	.ent	FbTransparentIndex
	.type	FbTransparentIndex, @function
FbTransparentIndex:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_Fb+14)
	j	$31
	sh	$4,%lo(G_Fb+14)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbTransparentIndex
	.size	FbTransparentIndex, .-FbTransparentIndex
	.align	2
	.globl	FbCharacter
	.set	nomips16
	.set	nomicromips
	.ent	FbCharacter
	.type	FbCharacter, @function
FbCharacter:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	andi	$4,$4,0x00ff
	addiu	$2,$4,-32
	andi	$2,$2,0x00ff
	sltu	$2,$2,95
	bne	$2,$0,.L103
	sw	$16,16($sp)

	li	$4,32			# 0x20
.L103:
	lui	$16,%hi(G_Fb)
	addiu	$16,$16,%lo(G_Fb)
	addiu	$5,$4,-32
	lbu	$4,6($16)
	jal	FbImage1bit
	andi	$5,$5,0x00ff

	li	$2,1			# 0x1
	sh	$2,16($16)
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbCharacter
	.size	FbCharacter, .-FbCharacter
	.align	2
	.globl	FbFilledRectangle
	.set	nomips16
	.set	nomicromips
	.ent	FbFilledRectangle
	.type	FbFilledRectangle, @function
FbFilledRectangle:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	andi	$4,$4,0x00ff
	lui	$2,%hi(G_Fb+4)
	lbu	$3,%lo(G_Fb+4)($2)
	addu	$4,$4,$3
	sltu	$2,$4,132
	bne	$2,$0,.L106
	andi	$5,$5,0x00ff

	li	$4,132			# 0x84
.L106:
	lui	$2,%hi(G_Fb+5)
	lbu	$2,%lo(G_Fb+5)($2)
	addu	$5,$5,$2
	sltu	$6,$5,132
	beql	$6,$0,.L107
	li	$5,132			# 0x84

.L107:
	sltu	$6,$2,$5
	beq	$6,$0,.L108
	move	$7,$2

	lui	$6,%hi(G_Fb+8)
	lhu	$6,%lo(G_Fb+8)($6)
	move	$10,$3
	li	$8,132			# 0x84
	mul	$9,$2,$8
	addu	$8,$9,$3
	sltu	$9,$3,$4
	lui	$11,%hi(LCDbuffer)
	addiu	$11,$11,%lo(LCDbuffer)
.L111:
	beql	$9,$0,.L116
	addiu	$7,$7,1

	sll	$3,$8,1
	addu	$3,$11,$3
	move	$2,$10
.L110:
	sh	$6,0($3)
	addiu	$2,$2,1
	bne	$2,$4,.L110
	addiu	$3,$3,2

	addiu	$7,$7,1
.L116:
	bne	$7,$5,.L111
	addiu	$8,$8,132

.L108:
	andi	$4,$4,0x00ff
	jal	FbMove
	andi	$5,$5,0x00ff

	li	$3,1			# 0x1
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbFilledRectangle
	.size	FbFilledRectangle, .-FbFilledRectangle
	.align	2
	.globl	FbPoint
	.set	nomips16
	.set	nomicromips
	.ent	FbPoint
	.type	FbPoint, @function
FbPoint:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	andi	$2,$5,0x00ff
	sltu	$2,$2,132
	bne	$2,$0,.L118
	andi	$4,$4,0x00ff

	li	$5,-125			# 0xffffffffffffff83
.L118:
	move	$2,$4
	sltu	$4,$4,132
	bne	$4,$0,.L119
	andi	$5,$5,0x00ff

	li	$2,-125			# 0xffffffffffffff83
.L119:
	andi	$4,$2,0x00ff
	sll	$3,$5,2
	sll	$2,$5,7
	addu	$2,$3,$2
	addu	$2,$2,$4
	sll	$2,$2,1
	lui	$3,%hi(LCDbuffer)
	addiu	$3,$3,%lo(LCDbuffer)
	addu	$2,$2,$3
	lui	$16,%hi(G_Fb)
	addiu	$16,$16,%lo(G_Fb)
	lhu	$3,8($16)
	jal	FbMove
	sh	$3,0($2)

	li	$2,1			# 0x1
	sh	$2,16($16)
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbPoint
	.size	FbPoint, .-FbPoint
	.align	2
	.globl	FbHorizontalLine
	.set	nomips16
	.set	nomicromips
	.ent	FbHorizontalLine
	.type	FbHorizontalLine, @function
FbHorizontalLine:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	andi	$16,$4,0x00ff
	andi	$5,$5,0x00ff
	andi	$17,$6,0x00ff
	move	$18,$5
	jal	FbMove
	move	$4,$16

	sltu	$2,$16,$17
	beq	$2,$0,.L124
	li	$3,1			# 0x1

	move	$4,$16
.L125:
	jal	FbPoint
	move	$5,$18

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bne	$16,$17,.L125
	move	$4,$16

	li	$3,1			# 0x1
.L124:
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbHorizontalLine
	.size	FbHorizontalLine, .-FbHorizontalLine
	.align	2
	.globl	FbVerticalLine
	.set	nomips16
	.set	nomicromips
	.ent	FbVerticalLine
	.type	FbVerticalLine, @function
FbVerticalLine:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	andi	$4,$4,0x00ff
	andi	$16,$5,0x00ff
	andi	$17,$7,0x00ff
	move	$18,$4
	jal	FbMove
	move	$5,$16

	sltu	$2,$16,$17
	beq	$2,$0,.L130
	li	$3,1			# 0x1

	move	$4,$18
.L131:
	jal	FbPoint
	move	$5,$16

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	bne	$16,$17,.L131
	move	$4,$18

	li	$3,1			# 0x1
.L130:
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbVerticalLine
	.size	FbVerticalLine, .-FbVerticalLine
	.align	2
	.globl	FbLine
	.set	nomips16
	.set	nomicromips
	.ent	FbLine
	.type	FbLine, @function
FbLine:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	andi	$17,$4,0x00ff
	andi	$18,$5,0x00ff
	andi	$20,$6,0x00ff
	andi	$7,$7,0x00ff
	subu	$22,$20,$17
	sra	$2,$22,31
	xor	$22,$2,$22
	subu	$22,$22,$2
	sltu	$2,$17,$20
	beq	$2,$0,.L142
	sw	$7,16($sp)

	j	.L133
	li	$fp,1			# 0x1

.L142:
	li	$fp,-1			# 0xffffffffffffffff
.L133:
	lw	$2,16($sp)
	subu	$19,$2,$18
	sra	$2,$19,31
	xor	$19,$2,$19
	subu	$19,$19,$2
	lw	$3,16($sp)
	sltu	$2,$18,$3
	beql	$2,$0,.L143
	li	$23,-1			# 0xffffffffffffffff

	li	$23,1			# 0x1
.L143:
	slt	$2,$19,$22
	bnel	$2,$0,.L135
	srl	$16,$22,31

	subu	$2,$0,$19
	srl	$16,$2,31
	addu	$2,$16,$2
	j	.L146
	sra	$16,$2,1

.L135:
	addu	$16,$16,$22
	sra	$16,$16,1
.L146:
	subu	$21,$0,$22
.L147:
	move	$4,$17
	jal	FbPoint
	move	$5,$18

	bne	$17,$20,.L148
	slt	$2,$21,$16

	lw	$2,16($sp)
	beq	$18,$2,.L139
	slt	$2,$21,$16

.L148:
	beql	$2,$0,.L144
	move	$2,$16

	subu	$2,$16,$19
	addu	$17,$17,$fp
	andi	$17,$17,0x00ff
.L144:
	slt	$16,$16,$19
	beql	$16,$0,.L147
	move	$16,$2

	addu	$16,$2,$22
	addu	$18,$18,$23
	j	.L147
	andi	$18,$18,0x00ff

.L139:
	li	$3,1			# 0x1
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbLine
	.size	FbLine, .-FbLine
	.align	2
	.globl	FbLine1
	.set	nomips16
	.set	nomicromips
	.ent	FbLine1
	.type	FbLine1, @function
FbLine1:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	andi	$17,$4,0x00ff
	andi	$18,$5,0x00ff
	lui	$16,%hi(G_Fb)
	addiu	$16,$16,%lo(G_Fb)
	lbu	$4,4($16)
	lbu	$5,5($16)
	move	$6,$17
	jal	FbLine
	move	$7,$18

	sb	$17,4($16)
	sb	$18,5($16)
	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbLine1
	.size	FbLine1, .-FbLine1
	.align	2
	.globl	FbWriteLine
	.set	nomips16
	.set	nomicromips
	.ent	FbWriteLine
	.type	FbWriteLine, @function
FbWriteLine:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$22,40($sp)
	sw	$21,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	lbu	$20,4($2)
	lbu	$19,5($2)
	lbu	$2,0($4)
	beq	$2,$0,.L151
	move	$18,$4

	move	$17,$4
	move	$16,$0
	lui	$21,%hi(G_Fb)
	lui	$22,%hi(assetList)
	addiu	$22,$22,%lo(assetList)
	addiu	$2,$21,%lo(G_Fb)
.L154:
	lbu	$2,6($2)
	sll	$3,$2,2
	sll	$2,$2,4
	addu	$2,$3,$2
	addu	$2,$2,$22
	lbu	$4,4($2)
	mul	$2,$16,$4
	addu	$4,$2,$20
	andi	$4,$4,0x00ff
	jal	FbMove
	move	$5,$19

	jal	FbCharacter
	lbu	$4,0($17)

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	addu	$17,$18,$16
	lbu	$2,0($17)
	bne	$2,$0,.L154
	addiu	$2,$21,%lo(G_Fb)

.L151:
	li	$3,1			# 0x1
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$31,44($sp)
	lw	$22,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbWriteLine
	.size	FbWriteLine, .-FbWriteLine
	.align	2
	.globl	FbWriteString
	.set	nomips16
	.set	nomicromips
	.ent	FbWriteString
	.type	FbWriteString, @function
FbWriteString:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	andi	$21,$5,0x00ff
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	lbu	$19,4($2)
	beq	$21,$0,.L156
	lbu	$18,5($2)

	move	$17,$4
	move	$16,$0
	lui	$22,%hi(G_Fb)
	lui	$23,%hi(assetList)
	addiu	$23,$23,%lo(assetList)
.L159:
	andi	$3,$16,0x00ff
	move	$20,$17
	addiu	$16,$16,1
	addiu	$2,$22,%lo(G_Fb)
	lbu	$2,6($2)
	sll	$4,$2,2
	sll	$2,$2,4
	addu	$2,$4,$2
	addu	$2,$2,$23
	lbu	$4,0($17)
	xori	$4,$4,0xa
	beq	$4,$0,.L160
	lhu	$2,4($2)

	mul	$5,$2,$16
	addu	$4,$5,$19
	slt	$4,$4,132
	bnel	$4,$0,.L162
	mul	$4,$3,$2

.L160:
	addiu	$18,$18,10
	andi	$18,$18,0x00ff
	move	$19,$0
	mul	$4,$3,$2
.L162:
	addu	$2,$4,$19
	andi	$4,$2,0x00ff
	jal	FbMove
	move	$5,$18

	jal	FbCharacter
	lbu	$4,0($20)

	andi	$2,$16,0x00ff
	sltu	$2,$2,$21
	bne	$2,$0,.L159
	addiu	$17,$17,1

.L156:
	li	$3,1			# 0x1
	lui	$2,%hi(G_Fb+16)
	sh	$3,%lo(G_Fb+16)($2)
	lw	$31,52($sp)
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbWriteString
	.size	FbWriteString, .-FbWriteString
	.align	2
	.globl	FbRectangle
	.set	nomips16
	.set	nomicromips
	.ent	FbRectangle
	.type	FbRectangle, @function
FbRectangle:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	andi	$16,$4,0x00ff
	lui	$20,%hi(G_Fb)
	addiu	$20,$20,%lo(G_Fb)
	lbu	$19,4($20)
	lbu	$18,5($20)
	addu	$5,$5,$18
	andi	$17,$5,0x00ff
	move	$4,$19
	move	$5,$18
	move	$6,$19
	jal	FbVerticalLine
	move	$7,$17

	addu	$16,$16,$19
	andi	$16,$16,0x00ff
	move	$4,$16
	move	$5,$18
	move	$6,$16
	jal	FbVerticalLine
	move	$7,$17

	move	$4,$19
	move	$5,$18
	move	$6,$16
	jal	FbHorizontalLine
	move	$7,$18

	move	$4,$19
	move	$5,$17
	move	$6,$16
	jal	FbHorizontalLine
	move	$7,$17

	li	$2,1			# 0x1
	sh	$2,16($20)
	lw	$31,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbRectangle
	.size	FbRectangle, .-FbRectangle
	.align	2
	.globl	FbSwapBuffers
	.set	nomips16
	.set	nomicromips
	.ent	FbSwapBuffers
	.type	FbSwapBuffers, @function
FbSwapBuffers:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	lui	$2,%hi(G_Fb+16)
	lhu	$2,%lo(G_Fb+16)($2)
	beq	$2,$0,.L168
	lw	$31,28($sp)

	move	$4,$0
	move	$5,$0
	li	$6,131			# 0x83
	jal	S6B33_rect
	li	$7,131			# 0x83

	lui	$16,%hi(LCDbuffer)
	addiu	$16,$16,%lo(LCDbuffer)
	li	$17,34848			# 0x8820
	addu	$17,$16,$17
	lui	$18,%hi(G_Fb)
.L166:
	jal	S6B33_pixel
	lhu	$4,0($16)

	addiu	$2,$18,%lo(G_Fb)
	lhu	$2,10($2)
	sh	$2,0($16)
	addiu	$16,$16,2
	bne	$16,$17,.L166
	lui	$2,%hi(G_Fb)

	addiu	$2,$2,%lo(G_Fb)
	sh	$0,16($2)
	sb	$0,4($2)
	sb	$0,5($2)
	lw	$31,28($sp)
.L168:
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbSwapBuffers
	.size	FbSwapBuffers, .-FbSwapBuffers
	.align	2
	.globl	FbPushBuffer
	.set	nomips16
	.set	nomicromips
	.ent	FbPushBuffer
	.type	FbPushBuffer, @function
FbPushBuffer:
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
	lui	$2,%hi(G_Fb+16)
	lhu	$2,%lo(G_Fb+16)($2)
	beq	$2,$0,.L173
	lw	$31,28($sp)

	move	$4,$0
	move	$5,$0
	li	$6,131			# 0x83
	jal	S6B33_rect
	li	$7,131			# 0x83

	lui	$17,%hi(LCDbuffer)
	addiu	$17,$17,%lo(LCDbuffer)
	li	$16,34848			# 0x8820
	addu	$16,$17,$16
.L171:
	jal	S6B33_pixel
	lhu	$4,0($17)

	addiu	$17,$17,2
	bne	$17,$16,.L171
	lui	$2,%hi(G_Fb+16)

	sh	$0,%lo(G_Fb+16)($2)
	lw	$31,28($sp)
.L173:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbPushBuffer
	.size	FbPushBuffer, .-FbPushBuffer
	.align	2
	.globl	FbPushRegion
	.set	nomips16
	.set	nomicromips
	.ent	FbPushRegion
	.type	FbPushRegion, @function
FbPushRegion:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	move	$19,$4
	move	$20,$5
	move	$21,$6
	lui	$2,%hi(G_Fb+16)
	lhu	$2,%lo(G_Fb+16)($2)
	beq	$2,$0,.L174
	move	$22,$7

	jal	S6B33_rect
	addu	$22,$22,$20

	addiu	$3,$20,-1
	addiu	$2,$22,-1
	sltu	$2,$3,$2
	beq	$2,$0,.L176
	addiu	$19,$19,-132

	li	$2,132			# 0x84
	mul	$3,$20,$2
	addu	$19,$3,$19
	lui	$23,%hi(LCDbuffer)
	addiu	$23,$23,%lo(LCDbuffer)
.L179:
	addu	$18,$19,$21
	sltu	$2,$19,$18
	beql	$2,$0,.L182
	addiu	$20,$20,1

	sll	$16,$19,1
	addu	$16,$23,$16
	move	$17,$19
.L178:
	jal	S6B33_pixel
	lhu	$4,0($16)

	addiu	$17,$17,1
	bne	$17,$18,.L178
	addiu	$16,$16,2

	addiu	$20,$20,1
.L182:
	bne	$20,$22,.L179
	addiu	$19,$19,132

.L176:
	lui	$2,%hi(G_Fb)
	addiu	$2,$2,%lo(G_Fb)
	sh	$0,16($2)
	sb	$0,4($2)
	sb	$0,5($2)
.L174:
	lw	$31,52($sp)
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbPushRegion
	.size	FbPushRegion, .-FbPushRegion
	.align	2
	.globl	FbDrawVectors
	.set	nomips16
	.set	nomicromips
	.ent	FbDrawVectors
	.type	FbDrawVectors, @function
FbDrawVectors:
	.frame	$sp,56,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$23,44($sp)
	sw	$22,40($sp)
	sw	$21,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	move	$17,$4
	andi	$21,$5,0x00ff
	seh	$22,$6
	seh	$23,$7
	addiu	$19,$21,-1
	blez	$19,.L184
	lbu	$fp,72($sp)

	move	$16,$0
	andi	$18,$22,0xffff
	andi	$20,$23,0xffff
	sll	$2,$16,2
.L190:
	addu	$2,$17,$2
	lhu	$4,0($2)
	addu	$4,$18,$4
	andi	$4,$4,0xffff
	lh	$5,2($2)
	addiu	$2,$16,1
	sll	$2,$2,2
	addu	$2,$17,$2
	lh	$6,0($2)
	lh	$7,2($2)
	addiu	$2,$4,-1
	andi	$2,$2,0xffff
	sltu	$2,$2,131
	beql	$2,$0,.L189
	addiu	$16,$16,1

	addu	$6,$18,$6
	seh	$6,$6
	blez	$6,.L185
	slt	$2,$6,132

	beql	$2,$0,.L189
	addiu	$16,$16,1

	addu	$5,$20,$5
	seh	$5,$5
	blez	$5,.L185
	slt	$2,$5,132

	beql	$2,$0,.L189
	addiu	$16,$16,1

	addu	$7,$20,$7
	seh	$7,$7
	blez	$7,.L185
	slt	$2,$7,132

	beql	$2,$0,.L189
	addiu	$16,$16,1

	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	andi	$6,$6,0x00ff
	jal	FbLine
	andi	$7,$7,0x00ff

.L185:
	addiu	$16,$16,1
.L189:
	andi	$16,$16,0x00ff
	slt	$2,$16,$19
	bne	$2,$0,.L190
	sll	$2,$16,2

.L184:
	beq	$fp,$0,.L183
	addiu	$21,$21,-1

	sll	$21,$21,2
	addu	$21,$17,$21
	andi	$22,$22,0xffff
	lhu	$4,0($21)
	addu	$4,$22,$4
	andi	$4,$4,0xffff
	lh	$5,2($21)
	lh	$6,0($17)
	sltu	$2,$4,133
	beq	$2,$0,.L183
	lh	$3,2($17)

	addu	$6,$22,$6
	seh	$6,$6
	bltz	$6,.L183
	slt	$2,$6,133

	beq	$2,$0,.L183
	andi	$23,$23,0xffff

	addu	$5,$23,$5
	seh	$5,$5
	bltz	$5,.L183
	slt	$2,$5,133

	beq	$2,$0,.L183
	addu	$23,$23,$3

	seh	$7,$23
	bltz	$7,.L183
	slt	$2,$7,133

	beq	$2,$0,.L191
	lw	$31,52($sp)

	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	andi	$6,$6,0x00ff
	jal	FbLine
	andi	$7,$7,0x00ff

.L183:
	lw	$31,52($sp)
.L191:
	lw	$fp,48($sp)
	lw	$23,44($sp)
	lw	$22,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbDrawVectors
	.size	FbDrawVectors, .-FbDrawVectors
	.align	2
	.globl	FbPolygonFromPoints
	.set	nomips16
	.set	nomicromips
	.ent	FbPolygonFromPoints
	.type	FbPolygonFromPoints, @function
FbPolygonFromPoints:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 24, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	li	$2,1			# 0x1
	sw	$2,16($sp)
	andi	$5,$5,0x00ff
	seh	$6,$6
	jal	FbDrawVectors
	seh	$7,$7

	lw	$31,28($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FbPolygonFromPoints
	.size	FbPolygonFromPoints, .-FbPolygonFromPoints

	.comm	G_Fb,20,4

	.comm	LCDbuffer,34848,4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
