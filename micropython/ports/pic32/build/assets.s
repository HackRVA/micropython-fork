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
	.globl	__floatunsisf
	.globl	fpdiv
	.align	2
	.globl	setNote
	.set	nomips16
	.set	nomicromips
	.ent	setNote
	.type	setNote, @function
setNote:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	andi	$16,$5,0xffff
	jal	__floatunsisf
	andi	$4,$4,0xffff

	lui	$3,%hi(.LC0)
	lw	$4,%lo(.LC0)($3)
	jal	fpdiv
	move	$5,$2

	lui	$3,%hi(G_wavehop)
	sw	$2,%lo(G_wavehop)($3)
	lui	$2,%hi(G_samples_per_step)
	li	$4,4750			# 0x128e
	sw	$4,%lo(G_samples_per_step)($2)
	lw	$2,%lo(G_samples_per_step)($2)
	div	$0,$16,$2
	teq	$2,$0,7
	mflo	$16
	seh	$2,$16
	lui	$4,%hi(G_duration)
	sh	$2,%lo(G_duration)($4)
	li	$4,1			# 0x1
	lui	$2,%hi(G_playing)
	sb	$4,%lo(G_playing)($2)
	addiu	$3,$3,%lo(G_wavehop)
	move	$2,$0
	sw	$2,4($3)
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setNote
	.size	setNote, .-setNote
	.align	2
	.globl	endNote
	.set	nomips16
	.set	nomicromips
	.ent	endNote
	.type	endNote, @function
endNote:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(LATA)
	lw	$3,%lo(LATA)($2)
	ins	$3,$0,9,1
	sw	$3,%lo(LATA)($2)
	lw	$3,%lo(LATA)($2)
	ins	$3,$0,4,1
	sw	$3,%lo(LATA)($2)
	lui	$2,%hi(G_playing)
	sb	$0,%lo(G_playing)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	endNote
	.size	endNote, .-endNote
	.align	2
	.globl	haltPlayback
	.set	nomips16
	.set	nomicromips
	.ent	haltPlayback
	.type	haltPlayback, @function
haltPlayback:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	li	$3,-1			# 0xffffffffffffffff
	lui	$2,%hi(G_audioAssetId)
	sb	$3,%lo(G_audioAssetId)($2)
	jal	endNote
	nop

	lui	$2,%hi(G_playing)
	sb	$0,%lo(G_playing)($2)
	lui	$2,%hi(G_samples_cnt)
	sw	$0,%lo(G_samples_cnt)($2)
	lui	$2,%hi(G_note_num)
	sh	$0,%lo(G_note_num)($2)
	lui	$2,%hi(G_duration_cnt)
	sb	$0,%lo(G_duration_cnt)($2)
	lui	$2,%hi(G_wavepos)
	addiu	$2,$2,%lo(G_wavepos)
	move	$3,$0
	sw	$3,8($2)
	sw	$3,8($2)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	haltPlayback
	.size	haltPlayback, .-haltPlayback
	.align	2
	.globl	nextNote
	.set	nomips16
	.set	nomicromips
	.ent	nextNote
	.type	nextNote, @function
nextNote:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_note_num)
	lhu	$4,%lo(G_note_num)($2)
	seh	$4,$4
	lui	$2,%hi(G_audioAssetId)
	lbu	$2,%lo(G_audioAssetId)($2)
	andi	$2,$2,0x00ff
	sll	$3,$2,2
	sll	$2,$2,4
	addu	$2,$3,$2
	lui	$3,%hi(assetList)
	addiu	$3,$3,%lo(assetList)
	addu	$2,$2,$3
	lbu	$3,2($2)
	slt	$2,$4,$3
	bne	$2,$0,.L51
	li	$3,1			# 0x1

	lui	$2,%hi(G_note_num)
	sh	$0,%lo(G_note_num)($2)
	li	$3,1			# 0x1
.L51:
	lui	$2,%hi(G_playing)
	sb	$3,%lo(G_playing)($2)
	lui	$6,%hi(G_audioAssetId)
	lbu	$3,%lo(G_audioAssetId)($6)
	andi	$3,$3,0x00ff
	lui	$4,%hi(G_note_num)
	lhu	$2,%lo(G_note_num)($4)
	seh	$2,$2
	lui	$5,%hi(assetList)
	addiu	$5,$5,%lo(assetList)
	sll	$7,$3,2
	sll	$3,$3,4
	addu	$3,$7,$3
	addu	$3,$5,$3
	sll	$7,$2,3
	addu	$2,$7,$2
	lw	$3,12($3)
	addu	$2,$3,$2
	lwl	$7,3($2)
	lwr	$7,0($2)
	lui	$3,%hi(G_wavehop)
	sw	$7,%lo(G_wavehop)($3)
	addiu	$3,$2,4
	lwl	$7,3($3)
	lwr	$7,0($3)
	lui	$3,%hi(G_wavehop+4)
	sw	$7,%lo(G_wavehop+4)($3)
	lb	$3,8($2)
	lui	$2,%hi(G_duration)
	sh	$3,%lo(G_duration)($2)
	lhu	$2,%lo(G_note_num)($4)
	addiu	$2,$2,1
	seh	$2,$2
	sh	$2,%lo(G_note_num)($4)
	lbu	$2,%lo(G_audioAssetId)($6)
	andi	$2,$2,0x00ff
	sll	$3,$2,2
	sll	$2,$2,4
	addu	$2,$3,$2
	addu	$5,$2,$5
	lhu	$3,4($5)
	lui	$2,%hi(G_samples_per_step)
	sw	$3,%lo(G_samples_per_step)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	nextNote
	.size	nextNote, .-nextNote
	.globl	fpcmp
	.globl	fptosi
	.globl	fpadd
	.globl	fpsub
	.align	2
	.globl	doAudio
	.set	nomips16
	.set	nomicromips
	.ent	doAudio
	.type	doAudio, @function
doAudio:
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
	lui	$2,%hi(G_mute)
	lhu	$2,%lo(G_mute)($2)
	andi	$2,$2,0xffff
	bne	$2,$0,.L52
	lui	$2,%hi(G_playing)

	lbu	$2,%lo(G_playing)($2)
	seb	$2,$2
	beq	$2,$0,.L52
	move	$16,$0

	move	$18,$0
	lui	$19,%hi(G_wavehop)
	addiu	$19,$19,%lo(G_wavehop)
	lui	$22,%hi(G_wavepos)
	addiu	$22,$22,%lo(G_wavepos)
	lui	$23,%hi(wave_table)
	addiu	$23,$23,%lo(wave_table)
	lui	$2,%hi(.LC0)
	lw	$fp,%lo(.LC0)($2)
	li	$21,2			# 0x2
	sll	$2,$16,2
.L61:
	addu	$2,$2,$19
	lw	$4,0($2)
	li	$17,1			# 0x1
	jal	fpcmp
	move	$5,$0

	beql	$2,$0,.L55
	move	$17,$0

.L55:
	andi	$17,$17,0x00ff
	beql	$17,$0,.L60
	addiu	$16,$16,1

	sll	$20,$16,2
	addu	$17,$20,$22
	lw	$4,0($17)
	jal	fptosi
	nop

	addu	$2,$23,$2
	lbu	$2,0($2)
	addu	$18,$2,$18
	seb	$18,$18
	lw	$4,0($17)
	addu	$20,$20,$19
	lw	$5,0($20)
	jal	fpadd
	nop

	sw	$2,0($17)
	lw	$4,0($17)
	jal	fptosi
	nop

	slt	$2,$2,16
	bnel	$2,$0,.L60
	addiu	$16,$16,1

	sll	$17,$16,2
	addu	$17,$17,$22
	lw	$4,0($17)
	jal	fpsub
	move	$5,$fp

	sw	$2,0($17)
	addiu	$16,$16,1
.L60:
	bne	$16,$21,.L61
	sll	$2,$16,2

	slt	$4,$0,$18
	lui	$2,%hi(LATA)
	lw	$3,%lo(LATA)($2)
	ins	$3,$4,9,1
	sw	$3,%lo(LATA)($2)
	srl	$18,$18,31
	lw	$3,%lo(LATA)($2)
	ins	$3,$18,4,1
	sw	$3,%lo(LATA)($2)
	lui	$2,%hi(G_samples_cnt)
	lw	$3,%lo(G_samples_cnt)($2)
	addiu	$3,$3,1
	sw	$3,%lo(G_samples_cnt)($2)
	lw	$3,%lo(G_samples_cnt)($2)
	lui	$2,%hi(G_samples_per_step)
	lw	$2,%lo(G_samples_per_step)($2)
	slt	$2,$3,$2
	bne	$2,$0,.L52
	lui	$2,%hi(G_samples_cnt)

	sw	$0,%lo(G_samples_cnt)($2)
	lui	$2,%hi(G_duration_cnt)
	lbu	$3,%lo(G_duration_cnt)($2)
	addiu	$3,$3,1
	seb	$3,$3
	sb	$3,%lo(G_duration_cnt)($2)
	lbu	$3,%lo(G_duration_cnt)($2)
	seb	$3,$3
	lui	$2,%hi(G_duration)
	lhu	$2,%lo(G_duration)($2)
	seh	$2,$2
	slt	$2,$3,$2
	bne	$2,$0,.L52
	lui	$2,%hi(G_duration_cnt)

	sb	$0,%lo(G_duration_cnt)($2)
	lui	$2,%hi(G_audioAssetId)
	lbu	$3,%lo(G_audioAssetId)($2)
	andi	$3,$3,0x00ff
	li	$2,255			# 0xff
	beq	$3,$2,.L57
	nop

	jal	nextNote
	nop

	j	.L59
	lw	$31,52($sp)

.L57:
	jal	endNote
	nop

.L52:
	lw	$31,52($sp)
.L59:
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
	.end	doAudio
	.size	doAudio, .-doAudio
	.align	2
	.globl	playAsset
	.set	nomips16
	.set	nomicromips
	.ent	playAsset
	.type	playAsset, @function
playAsset:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	jal	haltPlayback
	andi	$16,$4,0x00ff

	lui	$2,%hi(G_audioAssetId)
	sb	$16,%lo(G_audioAssetId)($2)
	jal	nextNote
	nop

	lw	$31,20($sp)
	lw	$16,16($sp)
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
	.globl	G_audioAssetId
	.section	.data, data
	.type	G_audioAssetId, @object
	.size	G_audioAssetId, 1
G_audioAssetId:
	.byte	-1
	.globl	G_playing
	.section	.bss,bss
	.type	G_playing, @object
	.size	G_playing, 1
G_playing:
	.space	1
	.globl	G_samples_per_step
	.align	2
	.type	G_samples_per_step, @object
	.size	G_samples_per_step, 4
G_samples_per_step:
	.space	4
	.globl	G_samples_cnt
	.align	2
	.type	G_samples_cnt, @object
	.size	G_samples_cnt, 4
G_samples_cnt:
	.space	4
	.globl	G_note_num
	.align	1
	.type	G_note_num, @object
	.size	G_note_num, 2
G_note_num:
	.space	2
	.globl	G_duration
	.align	1
	.type	G_duration, @object
	.size	G_duration, 2
G_duration:
	.space	2
	.globl	G_duration_cnt
	.type	G_duration_cnt, @object
	.size	G_duration_cnt, 1
G_duration_cnt:
	.space	1
	.globl	G_wavehop
	.align	2
	.type	G_wavehop, @object
	.size	G_wavehop, 8
G_wavehop:
	.space	8
	.globl	G_wavepos
	.align	2
	.type	G_wavepos, @object
	.size	G_wavepos, 8
G_wavepos:
	.space	8
	.globl	G_mute
	.align	1
	.type	G_mute, @object
	.size	G_mute, 2
G_mute:
	.space	2
	.section	.rodata,code
	.align	2
	.type	wave_table, @object
	.size	wave_table, 16
wave_table:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align	2
.LC0:
	.word	1098907648
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
