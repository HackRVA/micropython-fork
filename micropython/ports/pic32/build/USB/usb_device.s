	.file	1 "usb_device.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	USBConfigureEndpoint
	.type	USBConfigureEndpoint, @function
USBConfigureEndpoint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	sll	$3,$4,1
	addu	$3,$5,$3
	sll	$3,$3,4
	lui	$2,%hi(BDT)
	addiu	$2,$2,%lo(BDT)
	addu	$2,$2,$3
	lbu	$3,0($2)
	ins	$3,$0,7,1
	sb	$3,0($2)
	bne	$5,$0,.L2
	sll	$4,$4,2

	lui	$3,%hi(pBDTEntryOut)
	addiu	$3,$3,%lo(pBDTEntryOut)
	addu	$4,$4,$3
	j	.L3
	sw	$2,0($4)

.L2:
	lui	$3,%hi(pBDTEntryIn)
	addiu	$3,$3,%lo(pBDTEntryIn)
	addu	$4,$4,$3
	sw	$2,0($4)
.L3:
	lbu	$3,0($2)
	ins	$3,$0,6,1
	sb	$3,0($2)
	lbu	$3,8($2)
	li	$4,1			# 0x1
	ins	$3,$4,6,1
	sb	$3,8($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBConfigureEndpoint
	.size	USBConfigureEndpoint, .-USBConfigureEndpoint
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	USBCtrlTrfTxService
	.type	USBCtrlTrfTxService, @function
USBCtrlTrfTxService:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lhu	$2,8($2)
	andi	$2,$2,0xffff
	sltu	$2,$2,8
	beq	$2,$0,.L11
	li	$2,8			# 0x8

	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lhu	$2,8($2)
	andi	$2,$2,0x00ff
	lui	$3,%hi(shortPacketStatus)
	lbu	$3,%lo(shortPacketStatus)($3)
	andi	$3,$3,0x00ff
	bne	$3,$0,.L6
	lui	$3,%hi(shortPacketStatus)

	li	$4,1			# 0x1
	sb	$4,%lo(shortPacketStatus)($3)
	j	.L16
	lui	$4,%hi(inPipes)

.L6:
	lbu	$4,%lo(shortPacketStatus)($3)
	andi	$4,$4,0x00ff
	li	$3,1			# 0x1
	bnel	$4,$3,.L16
	lui	$4,%hi(inPipes)

	li	$4,2			# 0x2
	lui	$3,%hi(shortPacketStatus)
	sb	$4,%lo(shortPacketStatus)($3)
	j	.L16
	lui	$4,%hi(inPipes)

.L11:
	lui	$4,%hi(inPipes)
.L16:
	addiu	$4,$4,%lo(inPipes)
	lhu	$3,8($4)
	subu	$3,$3,$2
	andi	$3,$3,0xffff
	sh	$3,8($4)
	lui	$3,%hi(pBDTEntryIn)
	lw	$3,%lo(pBDTEntryIn)($3)
	andi	$5,$2,0xff
	lbu	$6,2($3)
	sb	$5,2($3)
	lbu	$5,3($3)
	li	$6,-4			# 0xfffffffffffffffc
	and	$5,$6,$5
	sb	$5,3($3)
	lui	$5,%hi(CtrlTrfData)
	addiu	$5,$5,%lo(CtrlTrfData)
	lui	$3,%hi(pDst)
	sw	$5,%lo(pDst)($3)
	lw	$3,4($4)
	andi	$3,$3,0x1
	beq	$3,$0,.L7
	nop

	bne	$2,$0,.L8
	lui	$6,%hi(pDst)

.L20:
	j	$31
	nop

.L7:
	beq	$2,$0,.L20
	lui	$6,%hi(pDst)

	lui	$5,%hi(inPipes)
	lw	$4,%lo(pDst)($6)
.L17:
	lw	$3,%lo(inPipes)($5)
	lbu	$7,0($3)
	sb	$7,0($4)
	addiu	$4,$4,1
	sw	$4,%lo(pDst)($6)
	addiu	$3,$3,1
	sw	$3,%lo(inPipes)($5)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	bne	$2,$0,.L17
	lw	$4,%lo(pDst)($6)

	j	$31
	nop

.L8:
	lui	$5,%hi(inPipes)
	lw	$4,%lo(pDst)($6)
.L18:
	lw	$3,%lo(inPipes)($5)
	lbu	$7,0($3)
	sb	$7,0($4)
	addiu	$4,$4,1
	sw	$4,%lo(pDst)($6)
	addiu	$3,$3,1
	sw	$3,%lo(inPipes)($5)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	bne	$2,$0,.L18
	lw	$4,%lo(pDst)($6)

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCtrlTrfTxService
	.size	USBCtrlTrfTxService, .-USBCtrlTrfTxService
	.align	2
	.globl	USBDeviceInit
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceInit
	.type	USBDeviceInit, @function
USBDeviceInit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	li	$2,255			# 0xff
	lui	$3,%hi(U1EIR)
	sw	$2,%lo(U1EIR)($3)
	lui	$3,%hi(U1IR)
	sw	$2,%lo(U1IR)($3)
	lui	$2,%hi(U1EP0)
	sw	$0,%lo(U1EP0)($2)
	lui	$2,%hi(U1EP1)
	sw	$0,%lo(U1EP1)($2)
	lui	$2,%hi(U1EP1+16)
	sw	$0,%lo(U1EP1+16)($2)
	lui	$2,%hi(U1CNFG1)
	sw	$0,%lo(U1CNFG1)($2)
	li	$2,159			# 0x9f
	lui	$3,%hi(U1EIE)
	sw	$2,%lo(U1EIE)($3)
	lui	$3,%hi(U1IE)
	sw	$2,%lo(U1IE)($3)
	lui	$2,%hi(U1OTGCON)
	lw	$3,%lo(U1OTGCON)($2)
	andi	$3,$3,0xf
	sw	$3,%lo(U1OTGCON)($2)
	lw	$3,%lo(U1OTGCON)($2)
	sw	$3,%lo(U1OTGCON)($2)
	lui	$2,%hi(U1PWRC)
	lw	$3,%lo(U1PWRC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(U1PWRC)($2)
	lui	$2,%hi(BDT)
	addiu	$2,$2,%lo(BDT)
	ext	$2,$2,0,29
	srl	$4,$2,24
	lui	$3,%hi(U1BDTP3)
	sw	$4,%lo(U1BDTP3)($3)
	srl	$4,$2,16
	lui	$3,%hi(U1BDTP2)
	sw	$4,%lo(U1BDTP2)($3)
	srl	$2,$2,8
	lui	$3,%hi(U1BDTP1)
	sw	$2,%lo(U1BDTP1)($3)
	move	$2,$0
	lui	$5,%hi(BDT)
	addiu	$5,$5,%lo(BDT)
	li	$4,12			# 0xc
	sll	$3,$2,3
.L28:
	addu	$3,$3,$5
	move	$6,$0
	move	$7,$0
	sw	$6,0($3)
	sw	$7,4($3)
	addiu	$2,$2,1
	bne	$2,$4,.L28
	sll	$3,$2,3

	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(U1CON)($2)
	lui	$3,%hi(U1ADDR)
	sw	$0,%lo(U1ADDR)($3)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,5,1
	sw	$3,%lo(U1CON)($2)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(U1CON)($2)
	lui	$2,%hi(U1IR)
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L23
	lui	$6,%hi(inPipes)

	lui	$8,%hi(U1IR)
	li	$7,8			# 0x8
	lui	$5,%hi(outPipes)
	lui	$4,%hi(U1IR)
.L25:
	sw	$7,%lo(U1IR)($8)
	addiu	$2,$6,%lo(inPipes)
	sb	$0,4($2)
	addiu	$2,$5,%lo(outPipes)
	sb	$0,4($2)
	lw	$3,4($2)
	ins	$3,$0,8,16
	sw	$3,4($2)
	lw	$2,%lo(U1IR)($4)
	andi	$2,$2,0x8
	bne	$2,$0,.L25
	nop

.L23:
	li	$2,1			# 0x1
	lui	$3,%hi(USBStatusStageEnabledFlag1)
	sw	$2,%lo(USBStatusStageEnabledFlag1)($3)
	lui	$3,%hi(USBStatusStageEnabledFlag2)
	sw	$2,%lo(USBStatusStageEnabledFlag2)($3)
	lui	$2,%hi(USBDeferINDataStagePackets)
	sw	$0,%lo(USBDeferINDataStagePackets)($2)
	lui	$2,%hi(USBDeferOUTDataStagePackets)
	sw	$0,%lo(USBDeferOUTDataStagePackets)($2)
	lui	$2,%hi(USBBusIsSuspended)
	sw	$0,%lo(USBBusIsSuspended)($2)
	lui	$5,%hi(pBDTEntryOut)
	sw	$0,%lo(pBDTEntryOut)($5)
	lui	$4,%hi(ep_data_in)
	sb	$0,%lo(ep_data_in)($4)
	lui	$3,%hi(ep_data_out)
	sb	$0,%lo(ep_data_out)($3)
	lui	$2,%hi(pBDTEntryIn)
	addiu	$6,$2,%lo(pBDTEntryIn)
	sw	$0,4($6)
	addiu	$5,$5,%lo(pBDTEntryOut)
	sw	$0,4($5)
	addiu	$4,$4,%lo(ep_data_in)
	sb	$0,1($4)
	addiu	$3,$3,%lo(ep_data_out)
	sb	$0,1($3)
	sw	$0,8($6)
	sw	$0,8($5)
	sb	$0,2($4)
	sb	$0,2($3)
	lui	$3,%hi(BDT+16)
	addiu	$3,$3,%lo(BDT+16)
	sw	$3,%lo(pBDTEntryIn)($2)
	li	$3,13			# 0xd
	lui	$2,%hi(U1EP0)
	sw	$3,%lo(U1EP0)($2)
	lui	$4,%hi(SetupPkt)
	addiu	$4,$4,%lo(SetupPkt)
	ext	$4,$4,0,29
	lui	$2,%hi(BDT)
	addiu	$3,$2,%lo(BDT)
	sw	$4,4($3)
	lw	$3,%lo(BDT)($2)
	li	$4,8			# 0x8
	ins	$3,$4,16,10
	sw	$3,%lo(BDT)($2)
	li	$3,132			# 0x84
	sh	$3,%lo(BDT)($2)
	lui	$2,%hi(USBActiveConfiguration)
	sb	$0,%lo(USBActiveConfiguration)($2)
	lui	$2,%hi(USBDeviceState)
	sw	$0,%lo(USBDeviceState)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceInit
	.size	USBDeviceInit, .-USBDeviceInit
	.align	2
	.globl	USBEnableEndpoint
	.set	nomips16
	.set	nomicromips
	.ent	USBEnableEndpoint
	.type	USBEnableEndpoint, @function
USBEnableEndpoint:
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
	andi	$16,$5,0x00ff
	andi	$2,$16,0x8
	beq	$2,$0,.L30
	andi	$17,$4,0x00ff

	move	$4,$17
	jal	USBConfigureEndpoint
	move	$5,$0

.L30:
	andi	$2,$16,0x4
	beql	$2,$0,.L32
	sll	$17,$17,4

	move	$4,$17
	jal	USBConfigureEndpoint
	li	$5,1			# 0x1

	sll	$17,$17,4
.L32:
	lui	$2,%hi(U1EP0)
	addiu	$2,$2,%lo(U1EP0)
	addu	$17,$2,$17
	sb	$16,0($17)
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBEnableEndpoint
	.size	USBEnableEndpoint, .-USBEnableEndpoint
	.align	2
	.globl	USBTransferOnePacket
	.set	nomips16
	.set	nomicromips
	.ent	USBTransferOnePacket
	.type	USBTransferOnePacket, @function
USBTransferOnePacket:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	beq	$5,$0,.L34
	andi	$7,$7,0x00ff

	sll	$3,$4,2
	lui	$2,%hi(pBDTEntryIn)
	addiu	$2,$2,%lo(pBDTEntryIn)
	addu	$2,$3,$2
	j	.L35
	lw	$2,0($2)

.L34:
	sll	$3,$4,2
	lui	$2,%hi(pBDTEntryOut)
	addiu	$2,$2,%lo(pBDTEntryOut)
	addu	$2,$3,$2
	lw	$2,0($2)
.L35:
	beq	$2,$0,.L38
	ext	$3,$6,0,29

	andi	$6,$6,0xff
	lbu	$8,4($2)
	sb	$6,4($2)
	ext	$6,$3,8,8
	lbu	$8,5($2)
	sb	$6,5($2)
	ext	$6,$3,16,8
	lbu	$8,6($2)
	sb	$6,6($2)
	srl	$3,$3,24
	lbu	$6,7($2)
	sb	$3,7($2)
	andi	$7,$7,0xff
	lbu	$3,2($2)
	sb	$7,2($2)
	lbu	$3,3($2)
	li	$6,-4			# 0xfffffffffffffffc
	and	$3,$6,$3
	sb	$3,3($2)
	lbu	$3,0($2)
	lbu	$6,1($2)
	andi	$3,$3,0x40
	andi	$3,$3,0xffff
	andi	$3,$3,0xff
	lbu	$6,0($2)
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lbu	$6,0($2)
	andi	$6,$6,0x00ff
	lbu	$3,1($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,8
	or	$3,$3,$6
	ori	$3,$3,0x88
	andi	$6,$3,0xff
	lbu	$7,0($2)
	sb	$6,0($2)
	srl	$3,$3,8
	lbu	$6,1($2)
	sb	$3,1($2)
	beq	$5,$0,.L37
	sll	$4,$4,2

	lui	$3,%hi(pBDTEntryIn)
	addiu	$3,$3,%lo(pBDTEntryIn)
	addu	$4,$3,$4
	lbu	$3,0($4)
	xori	$3,$3,0x8
	j	$31
	sb	$3,0($4)

.L37:
	lui	$3,%hi(pBDTEntryOut)
	addiu	$3,$3,%lo(pBDTEntryOut)
	addu	$4,$3,$4
	lbu	$3,0($4)
	xori	$3,$3,0x8
	j	$31
	sb	$3,0($4)

.L38:
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBTransferOnePacket
	.size	USBTransferOnePacket, .-USBTransferOnePacket
	.align	2
	.globl	USBStallEndpoint
	.set	nomips16
	.set	nomicromips
	.ent	USBStallEndpoint
	.type	USBStallEndpoint, @function
USBStallEndpoint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	bne	$4,$0,.L40
	andi	$5,$5,0x00ff

	lui	$3,%hi(pBDTEntryEP0OutNext)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lbu	$4,2($2)
	li	$4,8			# 0x8
	sb	$4,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lui	$4,%hi(SetupPkt)
	addiu	$4,$4,%lo(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-116			# 0xffffffffffffff8c
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lui	$2,%hi(pBDTEntryIn)
	lw	$2,%lo(pBDTEntryIn)($2)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	$31
	nop

.L40:
	sll	$4,$4,1
	addu	$4,$5,$4
	sll	$4,$4,4
	lui	$3,%hi(BDT)
	addiu	$3,$3,%lo(BDT)
	addu	$2,$3,$4
	lbu	$6,0($2)
	lbu	$5,1($2)
	sll	$5,$5,8
	or	$5,$5,$6
	ori	$5,$5,0x84
	sb	$5,0($2)
	srl	$5,$5,8
	sb	$5,1($2)
	addiu	$4,$4,8
	addu	$4,$3,$4
	lbu	$3,0($4)
	lbu	$2,1($4)
	sll	$2,$2,8
	or	$2,$2,$3
	ori	$2,$2,0x84
	sb	$2,0($4)
	srl	$2,$2,8
	j	$31
	sb	$2,1($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBStallEndpoint
	.size	USBStallEndpoint, .-USBStallEndpoint
	.align	2
	.globl	USBCancelIO
	.set	nomips16
	.set	nomicromips
	.ent	USBCancelIO
	.type	USBCancelIO, @function
USBCancelIO:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(U1CON)
	lw	$2,%lo(U1CON)($2)
	andi	$2,$2,0x20
	beq	$2,$0,.L44
	sll	$4,$4,2

	lui	$2,%hi(pBDTEntryIn)
	addiu	$2,$2,%lo(pBDTEntryIn)
	addu	$4,$4,$2
	lw	$2,0($4)
	lbu	$3,0($2)
	lbu	$5,1($2)
	lbu	$5,2($2)
	lbu	$5,3($2)
	lbu	$5,4($2)
	lbu	$5,5($2)
	lbu	$5,6($2)
	lbu	$5,7($2)
	andi	$3,$3,0x40
	lbu	$5,0($2)
	sb	$3,0($2)
	lbu	$5,1($2)
	sb	$0,1($2)
	lbu	$5,2($2)
	sb	$0,2($2)
	srl	$3,$3,24
	lbu	$5,3($2)
	sb	$3,3($2)
	lbu	$3,4($2)
	sb	$0,4($2)
	lbu	$3,5($2)
	sb	$0,5($2)
	lbu	$3,6($2)
	sb	$0,6($2)
	lbu	$3,7($2)
	sb	$0,7($2)
	lw	$2,0($4)
	lbu	$7,0($2)
	andi	$7,$7,0x00ff
	lbu	$6,1($2)
	andi	$6,$6,0x00ff
	sll	$6,$6,8
	or	$6,$6,$7
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,16
	or	$3,$3,$6
	lbu	$5,3($2)
	sll	$5,$5,24
	or	$5,$5,$3
	lbu	$8,4($2)
	andi	$8,$8,0x00ff
	lbu	$7,5($2)
	andi	$7,$7,0x00ff
	sll	$7,$7,8
	or	$7,$7,$8
	lbu	$6,6($2)
	andi	$6,$6,0x00ff
	sll	$6,$6,16
	or	$6,$6,$7
	lbu	$3,7($2)
	sll	$3,$3,24
	or	$3,$3,$6
	xori	$5,$5,0x40
	andi	$6,$5,0xff
	lbu	$7,0($2)
	sb	$6,0($2)
	ext	$6,$5,8,8
	lbu	$7,1($2)
	sb	$6,1($2)
	ext	$6,$5,16,8
	lbu	$7,2($2)
	sb	$6,2($2)
	srl	$5,$5,24
	lbu	$6,3($2)
	sb	$5,3($2)
	andi	$5,$3,0xff
	lbu	$6,4($2)
	sb	$5,4($2)
	ext	$5,$3,8,8
	lbu	$6,5($2)
	sb	$5,5($2)
	ext	$5,$3,16,8
	lbu	$6,6($2)
	sb	$5,6($2)
	srl	$3,$3,24
	lbu	$5,7($2)
	sb	$3,7($2)
	lbu	$2,0($4)
	xori	$2,$2,0x8
	sb	$2,0($4)
	lw	$2,0($4)
	lbu	$3,0($2)
	lbu	$5,1($2)
	andi	$3,$3,0x40
	andi	$3,$3,0xffff
	andi	$3,$3,0xff
	lbu	$5,0($2)
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lw	$2,0($4)
	lbu	$4,0($2)
	andi	$4,$4,0x00ff
	lbu	$3,1($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,8
	or	$3,$3,$4
	xori	$3,$3,0x40
	andi	$4,$3,0xff
	lbu	$5,0($2)
	sb	$4,0($2)
	srl	$3,$3,8
	lbu	$4,1($2)
	sb	$3,1($2)
.L44:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCancelIO
	.size	USBCancelIO, .-USBCancelIO
	.align	2
	.globl	USBDeviceDetach
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceDetach
	.type	USBDeviceDetach, @function
USBDeviceDetach:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(U1CON)
	sw	$0,%lo(U1CON)($2)
	lui	$2,%hi(U1IE)
	sw	$0,%lo(U1IE)($2)
	lui	$2,%hi(USBDeviceState)
	sw	$0,%lo(USBDeviceState)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceDetach
	.size	USBDeviceDetach, .-USBDeviceDetach
	.align	2
	.globl	USBDeviceAttach
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceAttach
	.type	USBDeviceAttach, @function
USBDeviceAttach:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	bne	$2,$0,.L52
	lw	$31,20($sp)

	lui	$2,%hi(U1CON)
	sw	$0,%lo(U1CON)($2)
	lui	$2,%hi(U1IE)
	sw	$0,%lo(U1IE)($2)
	lui	$3,%hi(U1CNFG1)
	sw	$0,%lo(U1CNFG1)($3)
	li	$3,159			# 0x9f
	lui	$4,%hi(U1EIE)
	sw	$3,%lo(U1EIE)($4)
	sw	$3,%lo(U1IE)($2)
	lui	$2,%hi(U1OTGCON)
	lw	$3,%lo(U1OTGCON)($2)
	andi	$3,$3,0xf
	sw	$3,%lo(U1OTGCON)($2)
	lw	$3,%lo(U1OTGCON)($2)
	sw	$3,%lo(U1OTGCON)($2)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	li	$3,16711680			# 0xff0000
	lui	$2,%hi(IPC7CLR)
	sw	$3,%lo(IPC7CLR)($2)
	li	$3,1048576			# 0x100000
	lui	$2,%hi(IPC7SET)
	sw	$3,%lo(IPC7SET)($2)
	jal	INTEnableSystemMultiVectoredInt
	nop

	jal	INTEnableInterrupts
	nop

	lui	$2,%hi(U1CON)
	lw	$2,%lo(U1CON)($2)
	andi	$2,$2,0x1
	bne	$2,$0,.L48
	lui	$2,%hi(U1CON)

	li	$4,1			# 0x1
.L50:
	lw	$3,%lo(U1CON)($2)
	ins	$3,$4,0,1
	sw	$3,%lo(U1CON)($2)
	lw	$3,%lo(U1CON)($2)
	andi	$3,$3,0x1
	beq	$3,$0,.L50
	nop

.L48:
	li	$3,1			# 0x1
	lui	$2,%hi(USBDeviceState)
	sw	$3,%lo(USBDeviceState)($2)
	lw	$31,20($sp)
.L52:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceAttach
	.size	USBDeviceAttach, .-USBDeviceAttach
	.align	2
	.globl	USBCtrlEPAllowStatusStage
	.set	nomips16
	.set	nomicromips
	.ent	USBCtrlEPAllowStatusStage
	.type	USBCtrlEPAllowStatusStage, @function
USBCtrlEPAllowStatusStage:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USBStatusStageEnabledFlag1)
	lw	$2,%lo(USBStatusStageEnabledFlag1)($2)
	bne	$2,$0,.L57
	li	$3,1			# 0x1

	lui	$2,%hi(USBStatusStageEnabledFlag1)
	sw	$3,%lo(USBStatusStageEnabledFlag1)($2)
	lui	$2,%hi(USBStatusStageEnabledFlag2)
	lw	$2,%lo(USBStatusStageEnabledFlag2)($2)
	bne	$2,$0,.L57
	lui	$2,%hi(USBStatusStageEnabledFlag2)

	sw	$3,%lo(USBStatusStageEnabledFlag2)($2)
	lui	$2,%hi(controlTransferState)
	lbu	$3,%lo(controlTransferState)($2)
	andi	$3,$3,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L55
	lui	$2,%hi(controlTransferState)

	lui	$3,%hi(pBDTEntryIn)
	lw	$2,%lo(pBDTEntryIn)($3)
	lbu	$4,2($2)
	sb	$0,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryIn)($3)
	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
.L57:
	j	$31
	nop

.L55:
	lbu	$3,%lo(controlTransferState)($2)
	andi	$3,$3,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L57
	lui	$7,%hi(BothEP0OutUOWNsSet)

	sw	$0,%lo(BothEP0OutUOWNsSet)($7)
	lui	$3,%hi(pBDTEntryEP0OutCurrent)
	lw	$2,%lo(pBDTEntryEP0OutCurrent)($3)
	lbu	$4,2($2)
	li	$9,8			# 0x8
	sb	$9,2($2)
	lbu	$4,3($2)
	li	$8,-4			# 0xfffffffffffffffc
	and	$4,$4,$8
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryEP0OutCurrent)($3)
	lui	$6,%hi(SetupPkt)
	addiu	$6,$6,%lo(SetupPkt)
	ext	$3,$6,0,29
	andi	$6,$6,0xff
	lbu	$4,4($2)
	sb	$6,4($2)
	ext	$5,$3,8,8
	lbu	$4,5($2)
	sb	$5,5($2)
	ext	$4,$3,16,8
	lbu	$10,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$10,7($2)
	sb	$3,7($2)
	lbu	$10,0($2)
	li	$10,-124			# 0xffffffffffffff84
	sb	$10,0($2)
	lbu	$10,1($2)
	sb	$0,1($2)
	li	$2,1			# 0x1
	sw	$2,%lo(BothEP0OutUOWNsSet)($7)
	lui	$7,%hi(pBDTEntryEP0OutNext)
	lw	$2,%lo(pBDTEntryEP0OutNext)($7)
	lbu	$10,2($2)
	sb	$9,2($2)
	lbu	$9,3($2)
	and	$8,$9,$8
	sb	$8,3($2)
	lw	$2,%lo(pBDTEntryEP0OutNext)($7)
	lbu	$7,4($2)
	sb	$6,4($2)
	lbu	$6,5($2)
	sb	$5,5($2)
	lbu	$5,6($2)
	sb	$4,6($2)
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-128			# 0xffffffffffffff80
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCtrlEPAllowStatusStage
	.size	USBCtrlEPAllowStatusStage, .-USBCtrlEPAllowStatusStage
	.align	2
	.globl	USBCtrlEPAllowDataStage
	.set	nomips16
	.set	nomicromips
	.ent	USBCtrlEPAllowDataStage
	.type	USBCtrlEPAllowDataStage, @function
USBCtrlEPAllowDataStage:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(USBDeferINDataStagePackets)
	sw	$0,%lo(USBDeferINDataStagePackets)($2)
	lui	$2,%hi(USBDeferOUTDataStagePackets)
	sw	$0,%lo(USBDeferOUTDataStagePackets)($2)
	lui	$2,%hi(controlTransferState)
	lbu	$3,%lo(controlTransferState)($2)
	andi	$3,$3,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L59
	lui	$2,%hi(SetupPkt)

	lui	$3,%hi(pBDTEntryEP0OutNext)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lbu	$4,2($2)
	li	$4,8			# 0x8
	sb	$4,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lui	$4,%hi(CtrlTrfData)
	addiu	$4,$4,%lo(CtrlTrfData)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L62
	lw	$31,20($sp)

.L59:
	addiu	$2,$2,%lo(SetupPkt)
	lhu	$3,6($2)
	andi	$3,$3,0xffff
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lhu	$2,8($2)
	andi	$2,$2,0xffff
	sltu	$2,$3,$2
	beq	$2,$0,.L61
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lhu	$3,6($2)
	andi	$3,$3,0xffff
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	sh	$3,8($2)
.L61:
	jal	USBCtrlTrfTxService
	nop

	lui	$2,%hi(pBDTEntryIn)
	lw	$2,%lo(pBDTEntryIn)($2)
	lui	$4,%hi(CtrlTrfData)
	addiu	$4,$4,%lo(CtrlTrfData)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lw	$31,20($sp)
.L62:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCtrlEPAllowDataStage
	.size	USBCtrlEPAllowDataStage, .-USBCtrlEPAllowDataStage
	.align	2
	.globl	_USB1Interrupt
	.set	nomips16
	.set	nomicromips
	.ent	_USB1Interrupt
	.type	_USB1Interrupt, @function
_USB1Interrupt:
	.frame	$sp,168,$31		# vars= 16, regs= 27/0, args= 16, gp= 0
	.mask	0xc3fffffe,-28
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: DEFAULT_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$27,$14
	mfc0	$26,$12,2
	addiu	$sp,$sp,-168
	sw	$27,164($sp)
	mfc0	$27,$12
	sw	$26,160($sp)
	mfc0	$26,$13
	sw	$27,156($sp)
	srl	$26,$26,10
	ins	$27,$26,10,6
	ins	$27,$0,1,4
	mtc0	$27,$12
	sw	$3,44($sp)
	sw	$2,40($sp)
	lw	$3,160($sp)
	andi	$3,$3,0xf
	bne	$3,$0,.L154
	nop

	sw	$31,140($sp)
	sw	$fp,136($sp)
	sw	$25,132($sp)
	sw	$24,128($sp)
	sw	$23,124($sp)
	sw	$22,120($sp)
	sw	$21,116($sp)
	sw	$20,112($sp)
	sw	$19,108($sp)
	sw	$18,104($sp)
	sw	$17,100($sp)
	sw	$16,96($sp)
	sw	$15,92($sp)
	sw	$14,88($sp)
	sw	$13,84($sp)
	sw	$12,80($sp)
	sw	$11,76($sp)
	sw	$10,72($sp)
	sw	$9,68($sp)
	sw	$8,64($sp)
	sw	$7,60($sp)
	sw	$6,56($sp)
	sw	$5,52($sp)
	sw	$4,48($sp)
	sw	$1,36($sp)
.L154:
	mflo	$2
	sw	$2,148($sp)
	mfhi	$3
	sw	$3,144($sp)
	lui	$2,%hi(USBDeviceState)
	lw	$3,%lo(USBDeviceState)($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L168
	lui	$2,%hi(U1OTGIR)

	li	$3,255			# 0xff
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lui	$2,%hi(U1IE)
	lw	$3,%lo(U1IE)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(U1IE)($2)
	lw	$3,%lo(U1IE)($2)
	ins	$3,$4,4,1
	sw	$3,%lo(U1IE)($2)
	li	$3,2			# 0x2
	lui	$2,%hi(USBDeviceState)
	sw	$3,%lo(USBDeviceState)($2)
	lui	$2,%hi(U1OTGIR)
.L168:
	lw	$2,%lo(U1OTGIR)($2)
	andi	$2,$2,0x10
	beq	$2,$0,.L169
	lui	$2,%hi(U1PWRC)

	lui	$2,%hi(U1OTGIE)
	lw	$2,%lo(U1OTGIE)($2)
	andi	$2,$2,0x10
	beq	$2,$0,.L169
	lui	$2,%hi(U1PWRC)

	lui	$17,%hi(U1OTGIR)
	li	$16,16			# 0x10
	sw	$16,%lo(U1OTGIR)($17)
	lui	$2,%hi(USBBusIsSuspended)
	sw	$0,%lo(USBBusIsSuspended)($2)
	li	$4,116			# 0x74
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

	lui	$2,%hi(U1OTGIE)
	lw	$3,%lo(U1OTGIE)($2)
	ins	$3,$0,4,1
	sw	$3,%lo(U1OTGIE)($2)
	sw	$16,%lo(U1OTGIR)($17)
	lui	$2,%hi(U1PWRC)
.L169:
	lw	$2,%lo(U1PWRC)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L66
	lui	$2,%hi(U1IR)

	jal	INTClearFlag
	li	$4,69			# 0x45

	j	.L63
	nop

.L66:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L170
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L170
	lui	$2,%hi(U1IR)

	jal	USBDeviceInit
	nop

	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	li	$3,4			# 0x4
	lui	$2,%hi(USBDeviceState)
	sw	$3,%lo(USBDeviceState)($2)
	li	$3,1			# 0x1
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lui	$2,%hi(U1IR)
.L170:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x10
	beq	$2,$0,.L171
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x10
	beq	$2,$0,.L171
	lui	$2,%hi(U1IR)

	lui	$3,%hi(U1OTGIE)
	lw	$4,%lo(U1OTGIE)($3)
	li	$2,1			# 0x1
	ins	$4,$2,4,1
	sw	$4,%lo(U1OTGIE)($3)
	lui	$17,%hi(U1IR)
	li	$16,16			# 0x10
	sw	$16,%lo(U1IR)($17)
	lui	$3,%hi(USBBusIsSuspended)
	sw	$2,%lo(USBBusIsSuspended)($3)
	li	$4,117			# 0x75
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

	sw	$16,%lo(U1IR)($17)
	lui	$2,%hi(U1IR)
.L171:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x4
	beq	$2,$0,.L172
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x4
	beq	$2,$0,.L173
	li	$3,4			# 0x4

	li	$4,115			# 0x73
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,1			# 0x1

	li	$3,4			# 0x4
.L173:
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lui	$2,%hi(USBStatusStageTimeoutCounter)
	lbu	$2,%lo(USBStatusStageTimeoutCounter)($2)
	andi	$2,$2,0x00ff
	beq	$2,$0,.L174
	lui	$2,%hi(USBStatusStageTimeoutCounter)

	lbu	$3,%lo(USBStatusStageTimeoutCounter)($2)
	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	sb	$3,%lo(USBStatusStageTimeoutCounter)($2)
	lui	$2,%hi(USBStatusStageTimeoutCounter)
.L174:
	lbu	$2,%lo(USBStatusStageTimeoutCounter)($2)
	andi	$2,$2,0x00ff
	bne	$2,$0,.L172
	lui	$2,%hi(U1IR)

	jal	USBCtrlEPAllowStatusStage
	nop

	lui	$2,%hi(U1IR)
.L172:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x80
	beq	$2,$0,.L175
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x80
	beq	$2,$0,.L175
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1EP0)
	lw	$2,%lo(U1EP0)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L74
	lui	$2,%hi(pBDTEntryEP0OutCurrent)

	lw	$2,%lo(pBDTEntryEP0OutCurrent)($2)
	lbu	$3,0($2)
	andi	$3,$3,0x00ff
	lbu	$4,1($2)
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	or	$4,$4,$3
	li	$3,128			# 0x80
	bnel	$4,$3,.L176
	lui	$2,%hi(U1EP0)

	lui	$3,%hi(pBDTEntryIn)
	lw	$3,%lo(pBDTEntryIn)($3)
	lbu	$5,0($3)
	andi	$5,$5,0x00ff
	lbu	$4,1($3)
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	or	$4,$4,$5
	li	$3,132			# 0x84
	bnel	$4,$3,.L176
	lui	$2,%hi(U1EP0)

	lbu	$3,0($2)
	li	$3,-116			# 0xffffffffffffff8c
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lui	$2,%hi(U1EP0)
.L176:
	lw	$3,%lo(U1EP0)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(U1EP0)($2)
.L74:
	li	$3,128			# 0x80
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lui	$2,%hi(U1IR)
.L175:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L177
	lui	$2,%hi(USBDeviceState)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L177
	lui	$2,%hi(USBDeviceState)

	li	$4,2147418112			# 0x7fff0000
	ori	$4,$4,0xffff
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,1			# 0x1

	li	$3,255			# 0xff
	lui	$2,%hi(U1EIR)
	sw	$3,%lo(U1EIR)($2)
	li	$3,2			# 0x2
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lui	$2,%hi(USBDeviceState)
.L177:
	lw	$2,%lo(USBDeviceState)($2)
	sltu	$2,$2,4
	beq	$2,$0,.L77
	lui	$2,%hi(U1IE)

	jal	INTClearFlag
	li	$4,69			# 0x45

	j	.L63
	nop

.L77:
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L78
	lui	$2,%hi(U1IR)

	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x8
	bnel	$2,$0,.L149
	li	$16,4			# 0x4

	j	.L78
	nop

.L148:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x8
	bne	$2,$0,.L178
	lui	$2,%hi(U1STAT)

	j	.L78
	nop

.L149:
	lui	$19,%hi(U1IR)
	li	$17,8			# 0x8
	move	$18,$17
	lui	$fp,%hi(ep_data_in)
	addiu	$20,$fp,%lo(ep_data_in)
	lui	$23,%hi(CtrlTrfData)
	addiu	$21,$23,%lo(CtrlTrfData)
	ext	$22,$21,0,29
	ext	$2,$22,8,8
	sw	$2,24($sp)
	lui	$2,%hi(U1STAT)
.L178:
	lw	$3,%lo(U1STAT)($2)
	andi	$3,$3,0x00ff
	lui	$2,%hi(USTATcopy)
	sb	$3,%lo(USTATcopy)($2)
	lbu	$4,%lo(USTATcopy)($2)
	ext	$4,$4,4,4
	lui	$3,%hi(endpoint_number)
	sb	$4,%lo(endpoint_number)($3)
	sw	$18,%lo(U1IR)($19)
	lbu	$2,%lo(USTATcopy)($2)
	andi	$2,$2,0x8
	andi	$2,$2,0x00ff
	bnel	$2,$0,.L80
	lui	$2,%hi(endpoint_number)

	move	$2,$3
	lbu	$3,%lo(endpoint_number)($2)
	andi	$3,$3,0x00ff
	lui	$2,%hi(ep_data_out)
	addiu	$2,$2,%lo(ep_data_out)
	addu	$2,$3,$2
	lbu	$4,0($2)
	andi	$4,$4,0x1
	xori	$4,$4,0x1
	lbu	$3,0($2)
	ins	$3,$4,0,1
	sb	$3,0($2)
	j	.L158
	lui	$2,%hi(endpoint_number)

.L80:
	lbu	$2,%lo(endpoint_number)($2)
	andi	$2,$2,0x00ff
	addu	$2,$2,$20
	lbu	$4,0($2)
	andi	$4,$4,0x1
	xori	$4,$4,0x1
	lbu	$3,0($2)
	ins	$3,$4,0,1
	sb	$3,0($2)
	lui	$2,%hi(endpoint_number)
.L158:
	lbu	$2,%lo(endpoint_number)($2)
	andi	$2,$2,0x00ff
	bne	$2,$0,.L82
	li	$4,114			# 0x72

	li	$3,45			# 0x2d
	lui	$2,%hi(USBStatusStageTimeoutCounter)
	sb	$3,%lo(USBStatusStageTimeoutCounter)($2)
	lui	$2,%hi(USTATcopy)
	lbu	$2,%lo(USTATcopy)($2)
	andi	$2,$2,0xfb
	bne	$2,$0,.L83
	lui	$2,%hi(USTATcopy)

	lbu	$9,%lo(USTATcopy)($2)
	ext	$9,$9,2,6
	sll	$3,$9,3
	lui	$2,%hi(BDT)
	addiu	$2,$2,%lo(BDT)
	addu	$2,$2,$3
	lui	$3,%hi(pBDTEntryEP0OutCurrent)
	sw	$2,%lo(pBDTEntryEP0OutCurrent)($3)
	lui	$3,%hi(pBDTEntryEP0OutNext)
	sw	$2,%lo(pBDTEntryEP0OutNext)($3)
	xori	$4,$2,0x8
	sb	$4,%lo(pBDTEntryEP0OutNext)($3)
	lbu	$4,0($2)
	andi	$4,$4,0x3c
	li	$3,52			# 0x34
	bne	$4,$3,.L84
	move	$4,$0

	lui	$8,%hi(SetupPkt)
	addiu	$8,$8,%lo(SetupPkt)
	li	$7,-1610612736			# 0xffffffffa0000000
.L85:
	lbu	$10,4($2)
	andi	$10,$10,0x00ff
	lbu	$6,5($2)
	andi	$6,$6,0x00ff
	sll	$6,$6,8
	or	$6,$6,$10
	lbu	$3,6($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,16
	or	$3,$3,$6
	lbu	$5,7($2)
	sll	$5,$5,24
	or	$5,$5,$3
	addu	$3,$8,$4
	or	$5,$5,$7
	lbu	$5,0($5)
	sb	$5,0($3)
	lbu	$10,4($2)
	andi	$10,$10,0x00ff
	lbu	$6,5($2)
	andi	$6,$6,0x00ff
	sll	$6,$6,8
	or	$6,$6,$10
	lbu	$5,6($2)
	andi	$5,$5,0x00ff
	sll	$5,$5,16
	or	$5,$5,$6
	lbu	$3,7($2)
	sll	$3,$3,24
	or	$3,$3,$5
	addiu	$3,$3,1
	andi	$5,$3,0xff
	lbu	$6,4($2)
	sb	$5,4($2)
	ext	$5,$3,8,8
	lbu	$6,5($2)
	sb	$5,5($2)
	ext	$5,$3,16,8
	lbu	$6,6($2)
	sb	$5,6($2)
	srl	$3,$3,24
	lbu	$5,7($2)
	sb	$3,7($2)
	addiu	$4,$4,1
	bne	$4,$17,.L85
	lui	$5,%hi(SetupPkt)

	addiu	$2,$5,%lo(SetupPkt)
	ext	$2,$2,0,29
	sll	$9,$9,3
	lui	$3,%hi(BDT)
	addiu	$3,$3,%lo(BDT)
	addu	$9,$9,$3
	sw	$2,4($9)
	lui	$2,%hi(shortPacketStatus)
	sb	$0,%lo(shortPacketStatus)($2)
	lui	$2,%hi(USBDeferStatusStagePacket)
	sw	$0,%lo(USBDeferStatusStagePacket)($2)
	lui	$2,%hi(USBDeferINDataStagePackets)
	sw	$0,%lo(USBDeferINDataStagePackets)($2)
	lui	$2,%hi(USBDeferOUTDataStagePackets)
	sw	$0,%lo(USBDeferOUTDataStagePackets)($2)
	lui	$2,%hi(BothEP0OutUOWNsSet)
	sw	$0,%lo(BothEP0OutUOWNsSet)($2)
	lui	$2,%hi(controlTransferState)
	sb	$0,%lo(controlTransferState)($2)
	lui	$2,%hi(pBDTEntryIn)
	lw	$3,%lo(pBDTEntryIn)($2)
	lbu	$4,0($3)
	andi	$4,$4,0x00ff
	lbu	$6,1($3)
	andi	$6,$6,0x00ff
	sll	$6,$6,8
	or	$6,$6,$4
	li	$4,-129			# 0xffffffffffffff7f
	and	$6,$6,$4
	andi	$7,$6,0xff
	lbu	$8,0($3)
	sb	$7,0($3)
	srl	$6,$6,8
	lbu	$7,1($3)
	sb	$6,1($3)
	lbu	$3,%lo(pBDTEntryIn)($2)
	xori	$3,$3,0x8
	sb	$3,%lo(pBDTEntryIn)($2)
	lw	$3,%lo(pBDTEntryIn)($2)
	lbu	$7,0($3)
	andi	$7,$7,0x00ff
	lbu	$6,1($3)
	andi	$6,$6,0x00ff
	sll	$6,$6,8
	or	$6,$6,$7
	and	$6,$6,$4
	andi	$7,$6,0xff
	lbu	$8,0($3)
	sb	$7,0($3)
	srl	$6,$6,8
	lbu	$7,1($3)
	sb	$6,1($3)
	lbu	$3,%lo(pBDTEntryIn)($2)
	xori	$3,$3,0x8
	sb	$3,%lo(pBDTEntryIn)($2)
	lui	$2,%hi(pBDTEntryEP0OutNext)
	lw	$2,%lo(pBDTEntryEP0OutNext)($2)
	lbu	$6,0($2)
	andi	$6,$6,0x00ff
	lbu	$3,1($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,8
	or	$3,$3,$6
	and	$4,$3,$4
	andi	$3,$4,0xff
	lbu	$6,0($2)
	sb	$3,0($2)
	srl	$4,$4,8
	lbu	$3,1($2)
	sb	$4,1($2)
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	sb	$0,4($2)
	sh	$0,8($2)
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	sb	$0,4($2)
	lw	$3,4($2)
	ins	$3,$0,8,16
	sw	$3,4($2)
	lbu	$2,%lo(SetupPkt)($5)
	andi	$2,$2,0x60
	bne	$2,$0,.L86
	move	$2,$5

	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,1($2)
	andi	$2,$2,0x00ff
	sltu	$3,$2,12
	beql	$3,$0,.L159
	li	$4,3			# 0x3

	sll	$2,$2,2
	lui	$3,%hi(.L96)
	addiu	$3,$3,%lo(.L96)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L96:
	.word	.L87
	.word	.L88
	.word	.L86
	.word	.L88
	.word	.L86
	.word	.L89
	.word	.L90
	.word	.L91
	.word	.L92
	.word	.L93
	.word	.L94
	.word	.L95
.L89:
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lui	$2,%hi(USBDeviceState)
	sw	$18,%lo(USBDeviceState)($2)
	j	.L159
	li	$4,3			# 0x3

.L90:
	lui	$2,%hi(SetupPkt)
	lbu	$3,%lo(SetupPkt)($2)
	andi	$3,$3,0x00ff
	li	$2,128			# 0x80
	bne	$3,$2,.L159
	li	$4,3			# 0x3

	li	$3,-64			# 0xffffffffffffffc0
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	sb	$3,4($2)
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,3($2)
	andi	$2,$2,0x00ff
	li	$3,2			# 0x2
	beq	$2,$3,.L99
	li	$3,3			# 0x3

	beq	$2,$3,.L100
	li	$3,1			# 0x1

	bne	$2,$3,.L152
	lui	$2,%hi(inPipes)

	lui	$3,%hi(device_dsc)
	addiu	$3,$3,%lo(device_dsc)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	li	$3,18			# 0x12
	sh	$3,8($2)
	j	.L159
	li	$4,3			# 0x3

.L99:
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,2
	lui	$2,%hi(USB_CD_Ptr)
	addiu	$2,$2,%lo(USB_CD_Ptr)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(inPipes)
	sw	$3,%lo(inPipes)($2)
	lw	$3,%lo(inPipes)($2)
	lbu	$4,2($3)
	addiu	$3,$2,%lo(inPipes)
	sb	$4,8($3)
	lw	$2,%lo(inPipes)($2)
	lbu	$2,3($2)
	sb	$2,9($3)
	j	.L159
	li	$4,3			# 0x3

.L100:
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,2($2)
	andi	$2,$2,0x00ff
	sltu	$2,$2,3
	beq	$2,$0,.L101
	lui	$2,%hi(inPipes)

	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,2
	lui	$2,%hi(USB_SD_Ptr)
	addiu	$2,$2,%lo(USB_SD_Ptr)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(inPipes)
	sw	$3,%lo(inPipes)($2)
	lw	$3,%lo(inPipes)($2)
	lbu	$3,0($3)
	addiu	$2,$2,%lo(inPipes)
	sh	$3,8($2)
	j	.L159
	li	$4,3			# 0x3

.L101:
	addiu	$2,$2,%lo(inPipes)
	sb	$0,4($2)
	j	.L159
	li	$4,3			# 0x3

.L152:
	addiu	$2,$2,%lo(inPipes)
	sb	$0,4($2)
	j	.L159
	li	$4,3			# 0x3

.L93:
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lui	$2,%hi(U1EP1)
	sw	$0,%lo(U1EP1)($2)
	lui	$2,%hi(U1EP1+16)
	sw	$0,%lo(U1EP1+16)($2)
	lui	$4,%hi(BDT)
	addiu	$4,$4,%lo(BDT)
	move	$5,$0
	jal	memset
	li	$6,96			# 0x60

	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(U1CON)($2)
	sb	$0,%lo(ep_data_in)($fp)
	lui	$3,%hi(ep_data_out)
	sb	$0,%lo(ep_data_out)($3)
	sb	$0,1($20)
	addiu	$3,$3,%lo(ep_data_out)
	sb	$0,1($3)
	sb	$0,2($20)
	sb	$0,2($3)
	lui	$3,%hi(USBAlternateInterface)
	sh	$0,%lo(USBAlternateInterface)($3)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(U1CON)($2)
	lui	$3,%hi(BDT+16)
	addiu	$3,$3,%lo(BDT+16)
	lui	$2,%hi(pBDTEntryIn)
	sw	$3,%lo(pBDTEntryIn)($2)
	lui	$2,%hi(pBDTEntryEP0OutCurrent)
	lui	$3,%hi(BDT)
	addiu	$3,$3,%lo(BDT)
	sw	$3,%lo(pBDTEntryEP0OutCurrent)($2)
	lui	$2,%hi(pBDTEntryEP0OutNext)
	sw	$3,%lo(pBDTEntryEP0OutNext)($2)
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	lui	$2,%hi(USBActiveConfiguration)
	sb	$3,%lo(USBActiveConfiguration)($2)
	lbu	$2,%lo(USBActiveConfiguration)($2)
	andi	$2,$2,0x00ff
	bne	$2,$0,.L102
	li	$3,16			# 0x10

	lui	$2,%hi(USBDeviceState)
	sw	$3,%lo(USBDeviceState)($2)
	j	.L159
	li	$4,3			# 0x3

.L102:
	li	$4,1			# 0x1
	lui	$5,%hi(USBActiveConfiguration)
	addiu	$5,$5,%lo(USBActiveConfiguration)
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,1			# 0x1

	li	$3,32			# 0x20
	lui	$2,%hi(USBDeviceState)
	sw	$3,%lo(USBDeviceState)($2)
	j	.L159
	li	$4,3			# 0x3

.L92:
	lui	$2,%hi(inPipes)
	lui	$3,%hi(USBActiveConfiguration)
	addiu	$3,$3,%lo(USBActiveConfiguration)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	lw	$4,4($2)
	li	$3,1			# 0x1
	ins	$4,$3,0,1
	sw	$4,4($2)
	sb	$3,8($2)
	lw	$4,4($2)
	ins	$4,$3,7,1
	sw	$4,4($2)
	j	.L159
	li	$4,3			# 0x3

.L87:
	sb	$0,%lo(CtrlTrfData)($23)
	sb	$0,1($21)
	lui	$2,%hi(SetupPkt)
	lw	$2,%lo(SetupPkt)($2)
	andi	$2,$2,0x1f
	li	$3,1			# 0x1
	beq	$2,$3,.L105
	li	$3,2			# 0x2

	beql	$2,$3,.L106
	lui	$2,%hi(inPipes)

	bne	$2,$0,.L160
	lui	$2,%hi(inPipes)

	lui	$3,%hi(inPipes)
	addiu	$3,$3,%lo(inPipes)
	lw	$4,4($3)
	li	$2,1			# 0x1
	ins	$4,$2,7,1
	sw	$4,4($3)
	lbu	$3,%lo(CtrlTrfData)($23)
	andi	$3,$3,0x00ff
	ori	$3,$3,0x1
	sb	$3,%lo(CtrlTrfData)($23)
	lui	$3,%hi(RemoteWakeup)
	lw	$3,%lo(RemoteWakeup)($3)
	bnel	$3,$2,.L160
	lui	$2,%hi(inPipes)

	lbu	$2,%lo(CtrlTrfData)($23)
	andi	$2,$2,0x00ff
	ori	$2,$2,0x2
	sb	$2,%lo(CtrlTrfData)($23)
	j	.L160
	lui	$2,%hi(inPipes)

.L105:
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	j	.L160
	lui	$2,%hi(inPipes)

.L106:
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L107
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lw	$3,4($2)
	andi	$3,$3,0xf
	sll	$3,$3,2
	lui	$2,%hi(pBDTEntryOut)
	addiu	$2,$2,%lo(pBDTEntryOut)
	addu	$2,$3,$2
	j	.L108
	lw	$2,0($2)

.L107:
	addiu	$2,$2,%lo(SetupPkt)
	lw	$3,4($2)
	andi	$3,$3,0xf
	sll	$3,$3,2
	lui	$2,%hi(pBDTEntryIn)
	addiu	$2,$2,%lo(pBDTEntryIn)
	addu	$2,$3,$2
	lw	$2,0($2)
.L108:
	lbu	$3,0($2)
	andi	$3,$3,0x84
	li	$2,132			# 0x84
	bne	$3,$2,.L160
	lui	$2,%hi(inPipes)

	li	$2,1			# 0x1
	sb	$2,%lo(CtrlTrfData)($23)
	lui	$2,%hi(inPipes)
.L160:
	addiu	$2,$2,%lo(inPipes)
	lw	$2,4($2)
	andi	$2,$2,0x80
	beq	$2,$0,.L86
	lui	$2,%hi(inPipes)

	sw	$21,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,4($2)
	li	$3,2			# 0x2
	sb	$3,8($2)
	j	.L159
	li	$4,3			# 0x3

.L88:
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L161
	lui	$2,%hi(SetupPkt)

	lbu	$2,%lo(SetupPkt)($2)
	andi	$2,$2,0x1f
	bne	$2,$0,.L161
	lui	$2,%hi(SetupPkt)

	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,1($2)
	andi	$3,$3,0x00ff
	li	$2,3			# 0x3
	bne	$3,$2,.L110
	lui	$2,%hi(RemoteWakeup)

	li	$3,1			# 0x1
	sw	$3,%lo(RemoteWakeup)($2)
	j	.L161
	lui	$2,%hi(SetupPkt)

.L110:
	sw	$0,%lo(RemoteWakeup)($2)
	lui	$2,%hi(SetupPkt)
.L161:
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,2($2)
	andi	$2,$2,0x00ff
	bne	$2,$0,.L86
	lui	$2,%hi(SetupPkt)

	lbu	$3,%lo(SetupPkt)($2)
	andi	$3,$3,0x1f
	li	$2,2			# 0x2
	bne	$3,$2,.L159
	li	$4,3			# 0x3

	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,4($2)
	andi	$2,$2,0xf
	beq	$2,$0,.L159
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lw	$2,4($2)
	andi	$2,$2,0xf
	slt	$2,$2,3
	beq	$2,$0,.L185
	lui	$2,%hi(USBDeviceState)

	lw	$3,%lo(USBDeviceState)($2)
	li	$2,32			# 0x20
	bne	$3,$2,.L179
	move	$5,$0

	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L111
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lw	$4,4($2)
	andi	$4,$4,0xf
	sll	$4,$4,2
	lui	$3,%hi(pBDTEntryOut)
	addiu	$3,$3,%lo(pBDTEntryOut)
	addu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,16($sp)
	lw	$3,4($2)
	andi	$3,$3,0xf
	lui	$2,%hi(ep_data_out)
	addiu	$2,$2,%lo(ep_data_out)
	addu	$2,$3,$2
	lbu	$2,0($2)
	andi	$4,$2,0x00ff
	j	.L112
	sw	$4,28($sp)

.L111:
	addiu	$2,$2,%lo(SetupPkt)
	lw	$4,4($2)
	andi	$4,$4,0xf
	sll	$4,$4,2
	lui	$3,%hi(pBDTEntryIn)
	addiu	$3,$3,%lo(pBDTEntryIn)
	addu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,16($sp)
	lw	$2,4($2)
	andi	$2,$2,0xf
	addu	$2,$2,$20
	lbu	$2,0($2)
	andi	$3,$2,0x00ff
	sw	$3,28($sp)
.L112:
	lw	$4,28($sp)
	andi	$2,$4,0x1
	bne	$2,$0,.L113
	lbu	$2,16($sp)

	andi	$2,$2,0xf7
	j	.L114
	sb	$2,16($sp)

.L113:
	ori	$2,$2,0x8
	sb	$2,16($sp)
.L114:
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L115
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lw	$3,4($2)
	andi	$3,$3,0xf
	sll	$3,$3,2
	lui	$2,%hi(pBDTEntryOut)
	addiu	$2,$2,%lo(pBDTEntryOut)
	addu	$2,$3,$2
	lw	$3,16($sp)
	j	.L116
	sw	$3,0($2)

.L115:
	addiu	$2,$2,%lo(SetupPkt)
	lw	$3,4($2)
	andi	$3,$3,0xf
	sll	$3,$3,2
	lui	$2,%hi(pBDTEntryIn)
	addiu	$2,$2,%lo(pBDTEntryIn)
	addu	$2,$3,$2
	lw	$3,16($sp)
	sw	$3,0($2)
.L116:
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,1($2)
	andi	$3,$3,0x00ff
	li	$2,3			# 0x3
	bne	$3,$2,.L117
	lbu	$2,16($sp)

	lw	$2,16($sp)
	lbu	$2,0($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L118
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L119
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lw	$3,4($2)
	andi	$3,$3,0xf
	lui	$2,%hi(ep_data_out)
	addiu	$2,$2,%lo(ep_data_out)
	addu	$2,$3,$2
	lbu	$3,0($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sb	$3,0($2)
	j	.L162
	lw	$2,16($sp)

.L119:
	addiu	$2,$2,%lo(SetupPkt)
	lw	$2,4($2)
	andi	$2,$2,0xf
	addu	$2,$2,$20
	lbu	$3,0($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sb	$3,0($2)
.L118:
	lw	$2,16($sp)
.L162:
	lbu	$4,0($2)
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	ori	$3,$3,0x84
	sb	$3,0($2)
	srl	$3,$3,8
	j	.L86
	sb	$3,1($2)

.L117:
	xori	$2,$2,0x8
	sb	$2,16($sp)
	lw	$2,16($sp)
	lbu	$3,0($2)
	andi	$3,$3,0x80
	andi	$3,$3,0x00ff
	beq	$3,$0,.L120
	lbu	$4,0($2)

	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	andi	$3,$3,0xff7f
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	lw	$2,16($sp)
	lbu	$4,0($2)
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	ori	$3,$3,0x40
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	li	$4,5			# 0x5
	lw	$5,16($sp)
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,4			# 0x4

	j	.L163
	lbu	$2,16($sp)

.L120:
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	ori	$3,$3,0x40
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	lbu	$2,16($sp)
.L163:
	xori	$2,$2,0x8
	sb	$2,16($sp)
	lw	$3,28($sp)
	andi	$2,$3,0x2
	andi	$2,$2,0x00ff
	bne	$2,$0,.L180
	lui	$2,%hi(SetupPkt)

	lw	$2,16($sp)
	lbu	$3,0($2)
	andi	$3,$3,0x80
	andi	$3,$3,0x00ff
	beql	$3,$0,.L123
	lbu	$4,0($2)

	lui	$2,%hi(SetupPkt)
.L180:
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L124
	lui	$2,%hi(SetupPkt)

	addiu	$2,$2,%lo(SetupPkt)
	lw	$3,4($2)
	andi	$3,$3,0xf
	lui	$2,%hi(ep_data_out)
	addiu	$2,$2,%lo(ep_data_out)
	addu	$2,$3,$2
	lbu	$3,0($2)
	ins	$3,$0,1,1
	sb	$3,0($2)
	j	.L164
	lw	$2,16($sp)

.L124:
	addiu	$2,$2,%lo(SetupPkt)
	lw	$2,4($2)
	andi	$2,$2,0xf
	addu	$2,$2,$20
	lbu	$3,0($2)
	ins	$3,$0,1,1
	sb	$3,0($2)
	lw	$2,16($sp)
.L164:
	lbu	$4,0($2)
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	andi	$3,$3,0xff3b
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	li	$4,5			# 0x5
	lw	$5,16($sp)
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,4			# 0x4

	j	.L165
	lui	$2,%hi(SetupPkt)

.L123:
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	andi	$3,$3,0xff3b
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	lui	$2,%hi(SetupPkt)
.L165:
	addiu	$2,$2,%lo(SetupPkt)
	lw	$3,4($2)
	andi	$3,$3,0xf
	sll	$3,$3,4
	lui	$2,%hi(U1EP0)
	addiu	$2,$2,%lo(U1EP0)
	addu	$2,$2,$3
	lw	$4,0($2)
	li	$3,-3			# 0xfffffffffffffffd
	and	$3,$4,$3
	j	.L86
	sw	$3,0($2)

.L94:
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$2,4($2)
	andi	$2,$2,0x00ff
	lui	$3,%hi(USBAlternateInterface)
	addiu	$3,$3,%lo(USBAlternateInterface)
	addu	$3,$3,$2
	lui	$2,%hi(inPipes)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	lw	$4,4($2)
	li	$3,1			# 0x1
	ins	$4,$3,0,1
	sw	$4,4($2)
	sb	$3,8($2)
	lw	$4,4($2)
	ins	$4,$3,7,1
	sw	$4,4($2)
	j	.L159
	li	$4,3			# 0x3

.L95:
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$4,4($2)
	andi	$4,$4,0x00ff
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	lui	$2,%hi(USBAlternateInterface)
	addiu	$2,$2,%lo(USBAlternateInterface)
	addu	$2,$4,$2
	sb	$3,0($2)
	j	.L159
	li	$4,3			# 0x3

.L91:
	li	$4,2			# 0x2
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

.L86:
	li	$4,3			# 0x3
.L159:
.L185:
	move	$5,$0
.L179:
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,5,1
	sw	$3,%lo(U1CON)($2)
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$2,4($2)
	andi	$2,$2,0x80
	bne	$2,$0,.L127
	lui	$2,%hi(SetupPkt)

	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L128
	li	$3,2			# 0x2

	lui	$2,%hi(controlTransferState)
	sb	$3,%lo(controlTransferState)($2)
	lui	$2,%hi(USBDeferOUTDataStagePackets)
	lw	$2,%lo(USBDeferOUTDataStagePackets)($2)
	bne	$2,$0,.L181
	lui	$2,%hi(USBStatusStageEnabledFlag2)

	jal	USBCtrlEPAllowDataStage
	nop

	lui	$2,%hi(USBStatusStageEnabledFlag2)
.L181:
	sw	$0,%lo(USBStatusStageEnabledFlag2)($2)
	lui	$2,%hi(USBStatusStageEnabledFlag1)
	sw	$0,%lo(USBStatusStageEnabledFlag1)($2)
	j	.L157
	addiu	$16,$16,-1

.L128:
	lui	$3,%hi(pBDTEntryEP0OutNext)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lbu	$4,2($2)
	sb	$17,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lui	$4,%hi(SetupPkt)
	addiu	$4,$4,%lo(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-116			# 0xffffffffffffff8c
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lui	$2,%hi(pBDTEntryIn)
	lw	$2,%lo(pBDTEntryIn)($2)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L157
	addiu	$16,$16,-1

.L127:
	lbu	$2,%lo(SetupPkt)($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L131
	li	$3,2			# 0x2

	li	$3,1			# 0x1
	lui	$2,%hi(controlTransferState)
	sb	$3,%lo(controlTransferState)($2)
	lui	$2,%hi(USBDeferINDataStagePackets)
	lw	$2,%lo(USBDeferINDataStagePackets)($2)
	bne	$2,$0,.L182
	lui	$2,%hi(USBStatusStageEnabledFlag2)

	jal	USBCtrlEPAllowDataStage
	nop

	lui	$2,%hi(USBStatusStageEnabledFlag2)
.L182:
	sw	$0,%lo(USBStatusStageEnabledFlag2)($2)
	lui	$2,%hi(USBStatusStageEnabledFlag1)
	sw	$0,%lo(USBStatusStageEnabledFlag1)($2)
	lui	$2,%hi(USBDeferStatusStagePacket)
	lw	$2,%lo(USBDeferStatusStagePacket)($2)
	bne	$2,$0,.L157
	addiu	$16,$16,-1

	jal	USBCtrlEPAllowStatusStage
	nop

	j	.L166
	andi	$16,$16,0x00ff

.L131:
	lui	$2,%hi(controlTransferState)
	sb	$3,%lo(controlTransferState)($2)
	lui	$3,%hi(pBDTEntryEP0OutNext)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lbu	$4,2($2)
	sb	$17,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lui	$4,%hi(SetupPkt)
	addiu	$4,$4,%lo(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lui	$2,%hi(USBStatusStageEnabledFlag2)
	sw	$0,%lo(USBStatusStageEnabledFlag2)($2)
	lui	$2,%hi(USBStatusStageEnabledFlag1)
	sw	$0,%lo(USBStatusStageEnabledFlag1)($2)
	lui	$2,%hi(USBDeferStatusStagePacket)
	lw	$2,%lo(USBDeferStatusStagePacket)($2)
	bne	$2,$0,.L157
	addiu	$16,$16,-1

	jal	USBCtrlEPAllowStatusStage
	nop

	j	.L166
	andi	$16,$16,0x00ff

.L84:
	lui	$2,%hi(controlTransferState)
	lbu	$3,%lo(controlTransferState)($2)
	andi	$3,$3,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L133
	lui	$2,%hi(controlTransferState)

	sll	$9,$9,3
	lui	$2,%hi(BDT)
	addiu	$2,$2,%lo(BDT)
	addu	$9,$9,$2
	lw	$6,0($9)
	ext	$6,$6,16,8
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$2,4($2)
	ext	$2,$2,8,16
	sltu	$2,$2,$6
	beq	$2,$0,.L183
	lui	$2,%hi(outPipes)

	addiu	$2,$2,%lo(outPipes)
	lw	$6,4($2)
	ext	$6,$6,8,8
	lui	$2,%hi(outPipes)
.L183:
	addiu	$2,$2,%lo(outPipes)
	lw	$4,4($2)
	ext	$4,$4,8,16
	subu	$4,$4,$6
	andi	$4,$4,0xffff
	lw	$3,4($2)
	ins	$3,$4,8,16
	sw	$3,4($2)
	beq	$6,$0,.L135
	move	$2,$0

	lui	$4,%hi(outPipes)
.L136:
	lw	$3,%lo(outPipes)($4)
	addu	$5,$2,$21
	lbu	$5,0($5)
	sb	$5,0($3)
	addiu	$3,$3,1
	sw	$3,%lo(outPipes)($4)
	addiu	$2,$2,1
	andi	$3,$2,0x00ff
	sltu	$3,$3,$6
	bne	$3,$0,.L136
	nop

.L135:
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$2,4($2)
	ext	$2,$2,8,16
	beq	$2,$0,.L137
	lui	$3,%hi(pBDTEntryEP0OutNext)

	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lbu	$4,2($2)
	sb	$17,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	andi	$3,$21,0xff
	lbu	$4,4($2)
	sb	$3,4($2)
	lbu	$3,5($2)
	lw	$4,24($sp)
	sb	$4,5($2)
	ext	$3,$22,16,8
	lbu	$4,6($2)
	sb	$3,6($2)
	srl	$3,$22,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lui	$3,%hi(pBDTEntryEP0OutCurrent)
	lw	$3,%lo(pBDTEntryEP0OutCurrent)($3)
	lbu	$3,0($3)
	andi	$3,$3,0x40
	andi	$3,$3,0x00ff
	bne	$3,$0,.L138
	nop

	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L157
	addiu	$16,$16,-1

.L138:
	lbu	$3,0($2)
	li	$3,-120			# 0xffffffffffffff88
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L157
	addiu	$16,$16,-1

.L137:
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lbu	$4,2($2)
	sb	$17,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lui	$4,%hi(SetupPkt)
	addiu	$4,$4,%lo(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$3,4($2)
	srl	$3,$3,24
	lw	$2,8($2)
	sll	$2,$2,8
	or	$2,$2,$3
	beq	$2,$0,.L139
	lui	$3,%hi(outPipes)

	addiu	$3,$3,%lo(outPipes)
	lw	$4,4($3)
	srl	$4,$4,24
	lw	$2,8($3)
	sll	$2,$2,8
	or	$2,$2,$4
	jalr	$2
	nop

.L139:
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$3,4($2)
	ins	$3,$0,7,1
	sw	$3,4($2)
	lui	$2,%hi(USBDeferStatusStagePacket)
	lw	$2,%lo(USBDeferStatusStagePacket)($2)
	bne	$2,$0,.L157
	addiu	$16,$16,-1

	jal	USBCtrlEPAllowStatusStage
	nop

	j	.L166
	andi	$16,$16,0x00ff

.L133:
	sb	$0,%lo(controlTransferState)($2)
	lui	$2,%hi(BothEP0OutUOWNsSet)
	lw	$2,%lo(BothEP0OutUOWNsSet)($2)
	bne	$2,$0,.L140
	lui	$2,%hi(BothEP0OutUOWNsSet)

	lui	$3,%hi(pBDTEntryEP0OutNext)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lbu	$4,2($2)
	sb	$17,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryEP0OutNext)($3)
	lui	$4,%hi(SetupPkt)
	addiu	$4,$4,%lo(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-116			# 0xffffffffffffff8c
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L157
	addiu	$16,$16,-1

.L140:
	sw	$0,%lo(BothEP0OutUOWNsSet)($2)
	j	.L157
	addiu	$16,$16,-1

.L83:
	lbu	$2,%lo(USTATcopy)($2)
	andi	$2,$2,0xfb
	bnel	$2,$17,.L157
	addiu	$16,$16,-1

	lui	$2,%hi(pBDTEntryIn)
	lw	$3,%lo(pBDTEntryIn)($2)
	lbu	$3,0($3)
	ext	$4,$3,6,1
	sw	$4,28($sp)
	lbu	$3,%lo(pBDTEntryIn)($2)
	xori	$3,$3,0x8
	sb	$3,%lo(pBDTEntryIn)($2)
	lui	$2,%hi(USBDeviceState)
	lw	$2,%lo(USBDeviceState)($2)
	bne	$2,$17,.L167
	lui	$2,%hi(controlTransferState)

	lui	$2,%hi(SetupPkt)
	addiu	$2,$2,%lo(SetupPkt)
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	lui	$2,%hi(U1ADDR)
	sw	$3,%lo(U1ADDR)($2)
	lw	$2,%lo(U1ADDR)($2)
	beq	$2,$0,.L142
	li	$3,4			# 0x4

	li	$3,16			# 0x10
	lui	$2,%hi(USBDeviceState)
	sw	$3,%lo(USBDeviceState)($2)
	j	.L167
	lui	$2,%hi(controlTransferState)

.L142:
	lui	$2,%hi(USBDeviceState)
	sw	$3,%lo(USBDeviceState)($2)
	lui	$2,%hi(controlTransferState)
.L167:
	lbu	$3,%lo(controlTransferState)($2)
	andi	$3,$3,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L143
	lui	$2,%hi(outPipes)

	lui	$2,%hi(pBDTEntryIn)
	lw	$2,%lo(pBDTEntryIn)($2)
	andi	$3,$21,0xff
	lbu	$4,4($2)
	sb	$3,4($2)
	lbu	$3,5($2)
	lw	$3,24($sp)
	sb	$3,5($2)
	ext	$3,$22,16,8
	lbu	$4,6($2)
	sb	$3,6($2)
	srl	$3,$22,24
	lbu	$4,7($2)
	sb	$3,7($2)
	jal	USBCtrlTrfTxService
	nop

	lui	$2,%hi(shortPacketStatus)
	lbu	$3,%lo(shortPacketStatus)($2)
	andi	$3,$3,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L144
	lw	$4,28($sp)

	lui	$2,%hi(pBDTEntryIn)
	lw	$2,%lo(pBDTEntryIn)($2)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L157
	addiu	$16,$16,-1

.L144:
	bne	$4,$0,.L145
	lui	$2,%hi(pBDTEntryIn)

	lw	$2,%lo(pBDTEntryIn)($2)
	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L157
	addiu	$16,$16,-1

.L145:
	lw	$2,%lo(pBDTEntryIn)($2)
	lbu	$3,0($2)
	li	$3,-120			# 0xffffffffffffff88
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L157
	addiu	$16,$16,-1

.L143:
	addiu	$2,$2,%lo(outPipes)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L184
	lui	$2,%hi(controlTransferState)

	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$3,4($2)
	srl	$3,$3,24
	lw	$2,8($2)
	sll	$2,$2,8
	or	$2,$2,$3
	beq	$2,$0,.L147
	lui	$3,%hi(outPipes)

	addiu	$3,$3,%lo(outPipes)
	lw	$4,4($3)
	srl	$4,$4,24
	lw	$2,8($3)
	sll	$2,$2,8
	or	$2,$2,$4
	jalr	$2
	nop

.L147:
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$3,4($2)
	ins	$3,$0,7,1
	sw	$3,4($2)
	lui	$2,%hi(controlTransferState)
.L184:
	sb	$0,%lo(controlTransferState)($2)
	j	.L157
	addiu	$16,$16,-1

.L82:
	lui	$5,%hi(USTATcopy)
	addiu	$5,$5,%lo(USTATcopy)
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

	addiu	$16,$16,-1
.L157:
	andi	$16,$16,0x00ff
.L166:
	bne	$16,$0,.L148
	lui	$2,%hi(U1IR)

.L78:
	jal	INTClearFlag
	li	$4,69			# 0x45

.L63:
	lw	$2,148($sp)
	mtlo	$2
	lw	$3,144($sp)
	lw	$2,160($sp)
	andi	$2,$2,0xf
	bne	$2,$0,.L156
	mthi	$3

	lw	$31,140($sp)
	lw	$fp,136($sp)
	lw	$25,132($sp)
	lw	$24,128($sp)
	lw	$23,124($sp)
	lw	$22,120($sp)
	lw	$21,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	lw	$15,92($sp)
	lw	$14,88($sp)
	lw	$13,84($sp)
	lw	$12,80($sp)
	lw	$11,76($sp)
	lw	$10,72($sp)
	lw	$9,68($sp)
	lw	$8,64($sp)
	lw	$7,60($sp)
	lw	$6,56($sp)
	lw	$5,52($sp)
	lw	$4,48($sp)
	lw	$3,44($sp)
	lw	$2,40($sp)
	lw	$1,36($sp)
.L156:
	di
	ehb
	lw	$26,164($sp)
	lw	$27,156($sp)
	mtc0	$26,$14
	lw	$26,160($sp)
	addiu	$sp,$sp,168
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	_USB1Interrupt
	.size	_USB1Interrupt, .-_USB1Interrupt

	.comm	USBDeferOUTDataStagePackets,4,4

	.comm	USBDeferStatusStagePacket,4,4

	.comm	USBDeferINDataStagePackets,4,4

	.comm	inPipes,16,8

	.comm	RemoteWakeup,4,4

	.comm	USBBusIsSuspended,4,4

	.comm	USBDeviceState,4,4

	.comm	USBActiveConfiguration,1,1

	.comm	outPipes,11,4

	.comm	pBDTEntryOut,12,4

	.comm	pBDTEntryIn,12,4

	.comm	USBAlternateInterface,2,4

	.comm	pBDTEntryEP0OutCurrent,4,4

	.comm	pBDTEntryEP0OutNext,4,4

	.comm	shortPacketStatus,1,1

	.comm	controlTransferState,1,1

	.comm	pDst,4,4

	.comm	USTATcopy,1,4

	.comm	endpoint_number,1,1

	.comm	BothEP0OutUOWNsSet,4,4

	.comm	ep_data_in,3,4

	.comm	ep_data_out,3,4

	.comm	USBStatusStageTimeoutCounter,1,1

	.comm	USBStatusStageEnabledFlag1,4,4

	.comm	USBStatusStageEnabledFlag2,4,4

	.comm	BDT,96,512

	.comm	SetupPkt,8,4

	.comm	CtrlTrfData,8,4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
	.globl	__vector_dispatch_30
	.section	.vector_30,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_30
__vector_dispatch_30:
	j	_USB1Interrupt
	nop
	.set reorder
	.end	__vector_dispatch_30
	.size	__vector_dispatch_30, .-__vector_dispatch_30
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
