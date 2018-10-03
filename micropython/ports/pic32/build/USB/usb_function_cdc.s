	.file	1 "usb_function_cdc.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	USBCheckCDCRequest
	.set	nomips16
	.set	nomicromips
	.ent	USBCheckCDCRequest
	.type	USBCheckCDCRequest, @function
USBCheckCDCRequest:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(SetupPkt)
	lbu	$3,%lo(SetupPkt)($2)
	andi	$3,$3,0x1f
	li	$2,1			# 0x1
	bne	$3,$2,.L12
	lui	$2,%hi(SetupPkt)

	lbu	$3,%lo(SetupPkt)($2)
	andi	$3,$3,0x60
	li	$2,32			# 0x20
	bne	$3,$2,.L12
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,4($2)
	andi	$2,$2,0x00ff
	beq	$2,$0,.L10
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,4($2)
	andi	$3,$3,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L12
	lui	$2,%hi(SetupPkt)

.L10:
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,1($2)
	andi	$2,$2,0x00ff
	sltu	$3,$2,35
	beq	$3,$0,.L12
	sll	$2,$2,2

	lui	$3,%hi(.L9)
	addiu	$3,$3,%lo(.L9)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L9:
	.word	.L4
	.word	.L5
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L6
	.word	.L7
	.word	.L8
.L4:
	lui	$2,%hi(inPipes)
	lui	$3,%hi(dummy_encapsulated_cmd_response)
	addiu	$3,$3,%lo(dummy_encapsulated_cmd_response)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	li	$3,8			# 0x8
	sh	$3,8($2)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,4($2)
	lw	$3,4($2)
	ins	$3,$4,7,1
	sw	$3,4($2)
.L12:
	j	$31
	nop

.L5:
	lui	$2,%hi(inPipes)
	lui	$3,%hi(dummy_encapsulated_cmd_response)
	addiu	$3,$3,%lo(dummy_encapsulated_cmd_response)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	j	$31
	nop

.L6:
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$4,6($2)
	andi	$4,$4,0x00ff
	lbu	$3,7($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,8
	or	$3,$3,$4
	lui	$4,%hi(outPipes)
	andi	$5,$3,0xff
	addiu	$2,$4,%lo(outPipes)
	lbu	$6,5($2)
	sb	$5,5($2)
	srl	$3,$3,8
	lbu	$5,6($2)
	sb	$3,6($2)
	lui	$3,%hi(cdc_notice)
	addiu	$3,$3,%lo(cdc_notice)
	andi	$5,$3,0xff
	lbu	$6,%lo(outPipes)($4)
	sb	$5,%lo(outPipes)($4)
	ext	$4,$3,8,8
	lbu	$5,1($2)
	sb	$4,1($2)
	ext	$4,$3,16,8
	lbu	$5,2($2)
	sb	$4,2($2)
	srl	$3,$3,24
	lbu	$4,3($2)
	sb	$3,3($2)
	lui	$3,%hi(mySetLineCodingHandler)
	addiu	$3,$3,%lo(mySetLineCodingHandler)
	andi	$4,$3,0xff
	lbu	$5,7($2)
	sb	$4,7($2)
	ext	$4,$3,8,8
	lbu	$5,8($2)
	sb	$4,8($2)
	ext	$4,$3,16,8
	lbu	$5,9($2)
	sb	$4,9($2)
	srl	$3,$3,24
	lbu	$4,10($2)
	sb	$3,10($2)
	lbu	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sb	$3,4($2)
	j	$31
	nop

.L7:
	lui	$2,%hi(inPipes)
	lui	$3,%hi(line_coding)
	addiu	$3,$3,%lo(line_coding)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	li	$3,7			# 0x7
	sh	$3,8($2)
	li	$3,-63			# 0xffffffffffffffc1
	sb	$3,4($2)
	j	$31
	nop

.L8:
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,2($2)
	lui	$2,%hi(control_signal_bitmap)
	sb	$3,%lo(control_signal_bitmap)($2)
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
.L1:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCheckCDCRequest
	.size	USBCheckCDCRequest, .-USBCheckCDCRequest
	.align	2
	.globl	CDCInitEP
	.set	nomips16
	.set	nomicromips
	.ent	CDCInitEP
	.type	CDCInitEP, @function
CDCInitEP:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(line_coding)
	li	$3,19200			# 0x4b00
	sw	$3,%lo(line_coding)($2)
	addiu	$2,$2,%lo(line_coding)
	sb	$0,4($2)
	sb	$0,5($2)
	li	$3,8			# 0x8
	sb	$3,6($2)
	lui	$2,%hi(cdc_rx_len)
	sb	$0,%lo(cdc_rx_len)($2)
	li	$4,1			# 0x1
	jal	USBEnableEndpoint
	li	$5,21			# 0x15

	li	$4,2			# 0x2
	jal	USBEnableEndpoint
	li	$5,29			# 0x1d

	li	$4,2			# 0x2
	move	$5,$0
	lui	$6,%hi(cdc_data_rx)
	addiu	$6,$6,%lo(cdc_data_rx)
	jal	USBTransferOnePacket
	li	$7,64			# 0x40

	lui	$3,%hi(CDCDataOutHandle)
	sw	$2,%lo(CDCDataOutHandle)($3)
	lui	$2,%hi(CDCDataInHandle)
	sw	$0,%lo(CDCDataInHandle)($2)
	lui	$2,%hi(cdc_trf_state)
	sb	$0,%lo(cdc_trf_state)($2)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CDCInitEP
	.size	CDCInitEP, .-CDCInitEP
	.align	2
	.globl	USBCDCEventHandler
	.set	nomips16
	.set	nomicromips
	.ent	USBCDCEventHandler
	.type	USBCDCEventHandler, @function
USBCDCEventHandler:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	li	$2,5			# 0x5
	bne	$4,$2,.L20
	move	$16,$5

	lui	$2,%hi(CDCDataOutHandle)
	lw	$2,%lo(CDCDataOutHandle)($2)
	bne	$5,$2,.L21
	lui	$2,%hi(CDCDataInHandle)

	li	$4,2			# 0x2
	move	$5,$0
	lui	$6,%hi(cdc_data_rx)
	addiu	$6,$6,%lo(cdc_data_rx)
	jal	USBTransferOnePacket
	li	$7,64			# 0x40

	lui	$3,%hi(CDCDataOutHandle)
	sw	$2,%lo(CDCDataOutHandle)($3)
	lui	$2,%hi(CDCDataInHandle)
.L21:
	lw	$2,%lo(CDCDataInHandle)($2)
	bnel	$16,$2,.L19
	li	$2,1			# 0x1

	lui	$2,%hi(cdc_trf_state)
	sb	$0,%lo(cdc_trf_state)($2)
	lui	$2,%hi(cdc_tx_len)
	sb	$0,%lo(cdc_tx_len)($2)
	j	.L15
	li	$2,1			# 0x1

.L20:
	move	$2,$0
.L19:
.L15:
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCDCEventHandler
	.size	USBCDCEventHandler, .-USBCDCEventHandler
	.align	2
	.globl	getsUSBUSART
	.set	nomips16
	.set	nomicromips
	.ent	getsUSBUSART
	.type	getsUSBUSART, @function
getsUSBUSART:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(cdc_rx_len)
	sb	$0,%lo(cdc_rx_len)($2)
	lui	$2,%hi(CDCDataOutHandle)
	lw	$2,%lo(CDCDataOutHandle)($2)
	beq	$2,$0,.L23
	andi	$5,$5,0x00ff

	lbu	$3,0($2)
	andi	$3,$3,0x80
	andi	$3,$3,0x00ff
	bnel	$3,$0,.L29
	lui	$2,%hi(cdc_rx_len)

.L23:
	lbu	$6,2($2)
	andi	$6,$6,0x00ff
	lbu	$3,3($2)
	andi	$3,$3,0x3
	sll	$3,$3,8
	or	$3,$3,$6
	slt	$3,$3,$5
	beq	$3,$0,.L25
	nop

	lbu	$5,2($2)
	lbu	$2,3($2)
	andi	$5,$5,0x00ff
.L25:
	beq	$5,$0,.L26
	move	$2,$0

	lui	$7,%hi(cdc_data_rx)
	addiu	$7,$7,%lo(cdc_data_rx)
	lui	$3,%hi(cdc_rx_len)
.L27:
	addu	$6,$2,$7
	lbu	$6,0($6)
	addu	$2,$4,$2
	sb	$6,0($2)
	lbu	$2,%lo(cdc_rx_len)($3)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sltu	$6,$2,$5
	bne	$6,$0,.L27
	sb	$2,%lo(cdc_rx_len)($3)

.L26:
	li	$4,2			# 0x2
	move	$5,$0
	lui	$6,%hi(cdc_data_rx)
	addiu	$6,$6,%lo(cdc_data_rx)
	jal	USBTransferOnePacket
	li	$7,64			# 0x40

	lui	$3,%hi(CDCDataOutHandle)
	sw	$2,%lo(CDCDataOutHandle)($3)
	lui	$2,%hi(cdc_rx_len)
.L29:
	lbu	$2,%lo(cdc_rx_len)($2)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getsUSBUSART
	.size	getsUSBUSART, .-getsUSBUSART
	.align	2
	.globl	putUSBUSART
	.set	nomips16
	.set	nomicromips
	.ent	putUSBUSART
	.type	putUSBUSART, @function
putUSBUSART:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$5,$5,0x00ff
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lui	$2,%hi(cdc_trf_state)
	lbu	$2,%lo(cdc_trf_state)($2)
	bne	$2,$0,.L31
	lui	$2,%hi(pCDCSrc)

	sw	$4,%lo(pCDCSrc)($2)
	lui	$2,%hi(cdc_tx_len)
	sb	$5,%lo(cdc_tx_len)($2)
	li	$2,1			# 0x1
	lui	$3,%hi(cdc_mem_type)
	sb	$2,%lo(cdc_mem_type)($3)
	lui	$3,%hi(cdc_trf_state)
	sb	$2,%lo(cdc_trf_state)($3)
.L31:
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	putUSBUSART
	.size	putUSBUSART, .-putUSBUSART
	.align	2
	.globl	putsUSBUSART
	.set	nomips16
	.set	nomicromips
	.ent	putsUSBUSART
	.type	putsUSBUSART, @function
putsUSBUSART:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lui	$2,%hi(cdc_trf_state)
	lbu	$2,%lo(cdc_trf_state)($2)
	beq	$2,$0,.L37
	move	$2,$4

	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

.L36:
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	bnel	$3,$6,.L39
	lb	$5,0($2)

	j	.L38
	lui	$2,%hi(pCDCSrc)

.L37:
	li	$3,1			# 0x1
	li	$6,255			# 0xff
	lb	$5,0($2)
.L39:
	bne	$5,$0,.L36
	addiu	$2,$2,1

	lui	$2,%hi(pCDCSrc)
.L38:
	sw	$4,%lo(pCDCSrc)($2)
	lui	$2,%hi(cdc_tx_len)
	sb	$3,%lo(cdc_tx_len)($2)
	li	$2,1			# 0x1
	lui	$3,%hi(cdc_mem_type)
	sb	$2,%lo(cdc_mem_type)($3)
	lui	$3,%hi(cdc_trf_state)
	sb	$2,%lo(cdc_trf_state)($3)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	putsUSBUSART
	.size	putsUSBUSART, .-putsUSBUSART
	.align	2
	.globl	putrsUSBUSART
	.set	nomips16
	.set	nomicromips
	.ent	putrsUSBUSART
	.type	putrsUSBUSART, @function
putrsUSBUSART:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lui	$2,%hi(cdc_trf_state)
	lbu	$2,%lo(cdc_trf_state)($2)
	beq	$2,$0,.L45
	move	$2,$4

	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

.L44:
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	bnel	$3,$6,.L47
	lb	$5,0($2)

	j	.L46
	lui	$2,%hi(pCDCSrc)

.L45:
	li	$3,1			# 0x1
	li	$6,255			# 0xff
	lb	$5,0($2)
.L47:
	bne	$5,$0,.L44
	addiu	$2,$2,1

	lui	$2,%hi(pCDCSrc)
.L46:
	sw	$4,%lo(pCDCSrc)($2)
	lui	$2,%hi(cdc_tx_len)
	sb	$3,%lo(cdc_tx_len)($2)
	lui	$2,%hi(cdc_mem_type)
	sb	$0,%lo(cdc_mem_type)($2)
	li	$3,1			# 0x1
	lui	$2,%hi(cdc_trf_state)
	sb	$3,%lo(cdc_trf_state)($2)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	putrsUSBUSART
	.size	putrsUSBUSART, .-putrsUSBUSART
	.align	2
	.globl	CDCTxService
	.set	nomips16
	.set	nomicromips
	.ent	CDCTxService
	.type	CDCTxService, @function
CDCTxService:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lui	$2,%hi(CDCDataInHandle)
	lw	$2,%lo(CDCDataInHandle)($2)
	beql	$2,$0,.L68
	lui	$2,%hi(cdc_trf_state)

	lbu	$2,0($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L49
	lui	$2,%hi(cdc_trf_state)

	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	.L66
	lw	$31,20($sp)

.L49:
.L68:
	lbu	$2,%lo(cdc_trf_state)($2)
	li	$3,3			# 0x3
	bne	$2,$3,.L51
	nop

	lui	$2,%hi(cdc_trf_state)
	j	.L52
	sb	$0,%lo(cdc_trf_state)($2)

.L51:
	bne	$2,$0,.L53
	li	$3,2			# 0x2

.L52:
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	.L66
	lw	$31,20($sp)

.L53:
	bne	$2,$3,.L54
	li	$3,1			# 0x1

	li	$4,2			# 0x2
	li	$5,1			# 0x1
	move	$6,$0
	jal	USBTransferOnePacket
	move	$7,$0

	lui	$3,%hi(CDCDataInHandle)
	sw	$2,%lo(CDCDataInHandle)($3)
	li	$3,3			# 0x3
	lui	$2,%hi(cdc_trf_state)
	j	.L55
	sb	$3,%lo(cdc_trf_state)($2)

.L54:
	bne	$2,$3,.L69
	li	$3,8			# 0x8

	lui	$2,%hi(cdc_tx_len)
	lbu	$2,%lo(cdc_tx_len)($2)
	sltu	$3,$2,65
	bne	$3,$0,.L56
	move	$7,$2

	li	$7,64			# 0x40
.L56:
	andi	$7,$7,0x00ff
	subu	$2,$2,$7
	lui	$3,%hi(cdc_tx_len)
	sb	$2,%lo(cdc_tx_len)($3)
	lui	$3,%hi(cdc_data_tx)
	addiu	$3,$3,%lo(cdc_data_tx)
	lui	$2,%hi(pCDCDst)
	sw	$3,%lo(pCDCDst)($2)
	lui	$2,%hi(cdc_mem_type)
	lbu	$2,%lo(cdc_mem_type)($2)
	beq	$2,$0,.L57
	nop

	bnel	$7,$0,.L63
	move	$4,$7

	j	.L67
	lui	$2,%hi(cdc_tx_len)

.L57:
	beq	$7,$0,.L59
	lui	$2,%hi(pCDCSrc)

	move	$4,$7
	lui	$3,%hi(pCDCDst)
.L60:
	lw	$5,%lo(pCDCDst)($3)
	lw	$6,%lo(pCDCSrc)($2)
	lbu	$6,0($6)
	sb	$6,0($5)
	lw	$5,%lo(pCDCDst)($3)
	addiu	$5,$5,1
	sw	$5,%lo(pCDCDst)($3)
	lw	$5,%lo(pCDCSrc)($2)
	addiu	$5,$5,1
	addiu	$4,$4,-1
	andi	$4,$4,0x00ff
	bne	$4,$0,.L60
	sw	$5,%lo(pCDCSrc)($2)

	j	.L67
	lui	$2,%hi(cdc_tx_len)

.L63:
	lui	$3,%hi(pCDCDst)
	lui	$2,%hi(pCDCSrc)
.L58:
	lw	$5,%lo(pCDCDst)($3)
	lw	$6,%lo(pCDCSrc)($2)
	lbu	$6,0($6)
	sb	$6,0($5)
	lw	$5,%lo(pCDCDst)($3)
	addiu	$5,$5,1
	sw	$5,%lo(pCDCDst)($3)
	lw	$5,%lo(pCDCSrc)($2)
	addiu	$5,$5,1
	addiu	$4,$4,-1
	andi	$4,$4,0x00ff
	bne	$4,$0,.L58
	sw	$5,%lo(pCDCSrc)($2)

.L59:
	lui	$2,%hi(cdc_tx_len)
.L67:
	lbu	$2,%lo(cdc_tx_len)($2)
	bne	$2,$0,.L70
	li	$4,2			# 0x2

	li	$2,64			# 0x40
	bne	$7,$2,.L62
	li	$3,3			# 0x3

	li	$3,2			# 0x2
	lui	$2,%hi(cdc_trf_state)
	j	.L70
	sb	$3,%lo(cdc_trf_state)($2)

.L62:
	lui	$2,%hi(cdc_trf_state)
	sb	$3,%lo(cdc_trf_state)($2)
	li	$4,2			# 0x2
.L70:
	li	$5,1			# 0x1
	lui	$6,%hi(cdc_data_tx)
	jal	USBTransferOnePacket
	addiu	$6,$6,%lo(cdc_data_tx)

	lui	$3,%hi(CDCDataInHandle)
	sw	$2,%lo(CDCDataInHandle)($3)
.L55:
	li	$3,8			# 0x8
.L69:
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	lw	$31,20($sp)
.L66:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CDCTxService
	.size	CDCTxService, .-CDCTxService

	.comm	cdc_rx_len,1,1

	.comm	cdc_trf_state,1,1

	.comm	pCDCSrc,4,4

	.comm	cdc_tx_len,1,1

	.comm	cdc_mem_type,1,1

	.comm	cdc_notice,10,4

	.comm	line_coding,8,4

	.comm	cdc_data_tx,64,4

	.comm	cdc_data_rx,64,4

	.comm	pCDCDst,4,4

	.comm	CDCDataOutHandle,4,4

	.comm	CDCDataInHandle,4,4

	.comm	control_signal_bitmap,4,4

	.comm	BaudRateGen,4,4

	.comm	dummy_encapsulated_cmd_response,8,4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
