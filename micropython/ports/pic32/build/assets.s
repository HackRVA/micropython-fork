	.file	1 "assets.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	drawAsset
	.set	nomips16
	.set	nomicromips
	.ent	drawAsset
	.type	drawAsset, @function
drawAsset:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	andi	$4,$4,0x00ff
	lui	$2,%hi(G_videoAssetId)
	sb	$4,%lo(G_videoAssetId)($2)
	sll	$3,$4,2
	sll	$2,$4,4
	addu	$2,$3,$2
	lui	$3,%hi(assetList)
	addiu	$3,$3,%lo(assetList)
	addu	$2,$2,$3
	lw	$2,16($2)
	lui	$3,%hi(G_videoFrame)
	jalr	$2
	lw	$5,%lo(G_videoFrame)($3)

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	drawAsset
	.size	drawAsset, .-drawAsset
	.align	2
	.globl	drawLCD1
	.set	nomips16
	.set	nomicromips
	.ent	drawLCD1
	.type	drawLCD1, @function
drawLCD1:
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
	andi	$16,$4,0x00ff
	sll	$17,$16,2
	sll	$2,$16,4
	addu	$17,$17,$2
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$17,$17,$2
	lhu	$fp,6($17)
	lhu	$22,4($17)
	move	$4,$0
	move	$5,$0
	addiu	$6,$fp,-1
	jal	S6B33_rect
	addiu	$7,$22,-1

	beq	$fp,$0,.L2
	lw	$21,12($17)

	srl	$22,$22,3
	move	$23,$0
	sw	$17,16($sp)
	j	.L4
	li	$19,8			# 0x8

.L8:
	lw	$2,16($sp)
	lw	$18,8($2)
	lbu	$17,0($21)
.L13:
	addiu	$21,$21,1
	move	$16,$0
	sra	$2,$17,$16
.L12:
	andi	$2,$2,0x1
	sll	$3,$2,1
	addu	$2,$3,$2
	addu	$2,$18,$2
	lbu	$4,2($2)
	srl	$4,$4,3
	lbu	$3,0($2)
	srl	$3,$3,3
	sll	$3,$3,11
	or	$4,$4,$3
	lbu	$2,1($2)
	srl	$2,$2,3
	sll	$2,$2,6
	jal	S6B33_pixel
	or	$4,$4,$2

	addiu	$16,$16,1
	bne	$16,$19,.L12
	sra	$2,$17,$16

	addiu	$20,$20,1
	andi	$20,$20,0x00ff
	sltu	$2,$20,$22
	bnel	$2,$0,.L13
	lbu	$17,0($21)

	addiu	$23,$23,1
.L11:
	andi	$23,$23,0x00ff
	sltu	$2,$23,$fp
	beq	$2,$0,.L14
	lw	$31,60($sp)

.L4:
	bnel	$22,$0,.L8
	move	$20,$0

	j	.L11
	addiu	$23,$23,1

.L2:
	lw	$31,60($sp)
.L14:
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
	.end	drawLCD1
	.size	drawLCD1, .-drawLCD1
	.align	2
	.globl	drawLCD2
	.set	nomips16
	.set	nomicromips
	.ent	drawLCD2
	.type	drawLCD2, @function
drawLCD2:
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
	andi	$16,$4,0x00ff
	sll	$17,$16,2
	sll	$2,$16,4
	addu	$17,$17,$2
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$17,$17,$2
	lhu	$20,4($17)
	lhu	$22,6($17)
	move	$4,$0
	move	$5,$0
	addiu	$6,$20,-1
	jal	S6B33_rect
	addiu	$7,$22,-1

	beq	$22,$0,.L15
	lw	$19,12($17)

	srl	$20,$20,2
	move	$21,$0
	j	.L17
	move	$23,$17

.L20:
	lw	$17,8($23)
	lbu	$16,0($19)
.L23:
	addiu	$19,$19,1
	srl	$2,$16,6
	sll	$3,$2,1
	addu	$2,$3,$2
	addu	$2,$17,$2
	lbu	$4,2($2)
	srl	$4,$4,3
	lbu	$3,0($2)
	srl	$3,$3,3
	sll	$3,$3,11
	or	$4,$4,$3
	lbu	$2,1($2)
	srl	$2,$2,3
	sll	$2,$2,6
	jal	S6B33_pixel
	or	$4,$4,$2

	ext	$2,$16,4,2
	sll	$3,$2,1
	addu	$2,$3,$2
	addu	$2,$17,$2
	lbu	$4,2($2)
	srl	$4,$4,3
	lbu	$3,0($2)
	srl	$3,$3,3
	sll	$3,$3,11
	or	$4,$4,$3
	lbu	$2,1($2)
	srl	$2,$2,3
	sll	$2,$2,6
	jal	S6B33_pixel
	or	$4,$4,$2

	ext	$2,$16,2,2
	sll	$3,$2,1
	addu	$2,$3,$2
	addu	$2,$17,$2
	lbu	$4,2($2)
	srl	$4,$4,3
	lbu	$3,0($2)
	srl	$3,$3,3
	sll	$3,$3,11
	or	$4,$4,$3
	lbu	$2,1($2)
	srl	$2,$2,3
	sll	$2,$2,6
	jal	S6B33_pixel
	or	$4,$4,$2

	andi	$16,$16,0x3
	sll	$2,$16,1
	addu	$16,$2,$16
	addu	$16,$17,$16
	lbu	$4,2($16)
	srl	$4,$4,3
	lbu	$2,0($16)
	srl	$2,$2,3
	sll	$2,$2,11
	or	$4,$4,$2
	lbu	$2,1($16)
	srl	$2,$2,3
	sll	$2,$2,6
	jal	S6B33_pixel
	or	$4,$4,$2

	addiu	$18,$18,1
	andi	$18,$18,0x00ff
	sltu	$2,$18,$20
	bnel	$2,$0,.L23
	lbu	$16,0($19)

	addiu	$21,$21,1
.L22:
	andi	$21,$21,0x00ff
	sltu	$2,$21,$22
	beq	$2,$0,.L24
	lw	$31,52($sp)

.L17:
	bnel	$20,$0,.L20
	move	$18,$0

	j	.L22
	addiu	$21,$21,1

.L15:
	lw	$31,52($sp)
.L24:
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
	.end	drawLCD2
	.size	drawLCD2, .-drawLCD2
	.align	2
	.globl	drawLCD4
	.set	nomips16
	.set	nomicromips
	.ent	drawLCD4
	.type	drawLCD4, @function
drawLCD4:
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
	andi	$16,$4,0x00ff
	sll	$17,$16,2
	sll	$2,$16,4
	addu	$17,$17,$2
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$17,$17,$2
	lhu	$20,4($17)
	lhu	$22,6($17)
	move	$4,$0
	move	$5,$0
	addiu	$6,$20,-1
	jal	S6B33_rect
	addiu	$7,$22,-1

	beq	$22,$0,.L25
	lw	$17,12($17)

	srl	$20,$20,1
	move	$21,$0
	sll	$23,$16,2
	sll	$16,$16,4
	addu	$23,$23,$16
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	j	.L27
	addu	$23,$23,$2

.L30:
	lw	$19,8($23)
	lbu	$18,0($17)
.L33:
	addiu	$17,$17,1
	srl	$2,$18,4
	sll	$3,$2,1
	addu	$2,$3,$2
	addu	$2,$19,$2
	lbu	$4,2($2)
	srl	$4,$4,3
	lbu	$3,0($2)
	srl	$3,$3,3
	sll	$3,$3,11
	or	$4,$4,$3
	lbu	$2,1($2)
	srl	$2,$2,3
	sll	$2,$2,6
	jal	S6B33_pixel
	or	$4,$4,$2

	andi	$18,$18,0xf
	sll	$2,$18,1
	addu	$18,$2,$18
	addu	$18,$19,$18
	lbu	$4,2($18)
	srl	$4,$4,3
	lbu	$2,0($18)
	srl	$2,$2,3
	sll	$2,$2,11
	or	$4,$4,$2
	lbu	$2,1($18)
	srl	$2,$2,3
	sll	$2,$2,6
	jal	S6B33_pixel
	or	$4,$4,$2

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	sltu	$2,$16,$20
	bnel	$2,$0,.L33
	lbu	$18,0($17)

	addiu	$21,$21,1
.L32:
	andi	$21,$21,0x00ff
	sltu	$2,$21,$22
	beq	$2,$0,.L34
	lw	$31,52($sp)

.L27:
	bnel	$20,$0,.L30
	move	$16,$0

	j	.L32
	addiu	$21,$21,1

.L25:
	lw	$31,52($sp)
.L34:
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
	.end	drawLCD4
	.size	drawLCD4, .-drawLCD4
	.align	2
	.globl	drawLCD8
	.set	nomips16
	.set	nomicromips
	.ent	drawLCD8
	.type	drawLCD8, @function
drawLCD8:
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
	andi	$16,$4,0x00ff
	sll	$3,$16,2
	sll	$2,$16,4
	addu	$3,$3,$2
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$2,$3,$2
	lhu	$17,4($2)
	move	$fp,$17
	lhu	$23,6($2)
	move	$4,$0
	move	$5,$0
	addiu	$6,$17,-1
	jal	S6B33_rect
	addiu	$7,$23,-1

	bne	$23,$0,.L40
	move	$21,$0

	j	.L42
	lw	$31,52($sp)

.L38:
	addu	$2,$19,$16
.L43:
	addu	$2,$2,$18
	lbu	$2,0($2)
	sll	$3,$2,1
	addu	$2,$3,$2
	addu	$2,$20,$2
	lbu	$4,2($2)
	srl	$4,$4,3
	lbu	$3,0($2)
	srl	$3,$3,3
	sll	$3,$3,11
	or	$4,$4,$3
	lbu	$2,1($2)
	srl	$2,$2,3
	sll	$2,$2,6
	jal	S6B33_pixel
	or	$4,$4,$2

	addiu	$16,$16,1
	andi	$16,$16,0x00ff
	sltu	$2,$16,$17
	bne	$2,$0,.L43
	addu	$2,$19,$16

	addiu	$21,$21,1
.L44:
	andi	$21,$21,0x00ff
	sltu	$2,$21,$23
	bne	$2,$0,.L36
	lw	$31,52($sp)

	j	.L45
	lw	$fp,48($sp)

.L40:
	sll	$22,$16,2
	sll	$16,$16,4
	addu	$22,$22,$16
	lui	$2,%hi(assetList)
	addiu	$2,$2,%lo(assetList)
	addu	$22,$22,$2
.L36:
	beql	$17,$0,.L44
	addiu	$21,$21,1

	mul	$18,$21,$fp
	move	$16,$0
	lw	$19,12($22)
	j	.L38
	lw	$20,8($22)

.L42:
	lw	$fp,48($sp)
.L45:
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
	.end	drawLCD8
	.size	drawLCD8, .-drawLCD8
	.align	2
	.globl	playAsset
	.set	nomips16
	.set	nomicromips
	.ent	playAsset
	.type	playAsset, @function
playAsset:
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
	lw	$2,16($2)
	jalr	$2
	move	$5,$0

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	playAsset
	.size	playAsset, .-playAsset
	.globl	G_videoAssetId
	.section	.data, data
	.type	G_videoAssetId, @object
	.size	G_videoAssetId, 1
G_videoAssetId:
	.byte	-1
	.globl	G_videoFrame
	.section	.bss,bss
	.align	2
	.type	G_videoFrame, @object
	.size	G_videoFrame, 4
G_videoFrame:
	.space	4
	.globl	G_currentNote
	.align	1
	.type	G_currentNote, @object
	.size	G_currentNote, 2
G_currentNote:
	.space	2
	.globl	G_duration
	.align	1
	.type	G_duration, @object
	.size	G_duration, 2
G_duration:
	.space	2
	.globl	G_duration_cnt
	.align	1
	.type	G_duration_cnt, @object
	.size	G_duration_cnt, 2
G_duration_cnt:
	.space	2
	.globl	G_freq_cnt
	.align	1
	.type	G_freq_cnt, @object
	.size	G_freq_cnt, 2
G_freq_cnt:
	.space	2
	.globl	G_freq
	.align	1
	.type	G_freq, @object
	.size	G_freq, 2
G_freq:
	.space	2
	.globl	G_mute
	.align	1
	.type	G_mute, @object
	.size	G_mute, 2
G_mute:
	.space	2
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
