	.file	1 "timer1_int.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	timerInit
	.set	nomips16
	.set	nomicromips
	.ent	timerInit
	.type	timerInit, @function
timerInit:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(T2CON)
	sw	$0,%lo(T2CON)($2)
	lui	$2,%hi(TMR2)
	sw	$0,%lo(TMR2)($2)
	li	$9,1052			# 0x41c
	lui	$2,%hi(PR2)
	sw	$9,%lo(PR2)($2)
	li	$3,32768			# 0x8000
	lui	$2,%hi(T2CONSET)
	sw	$3,%lo(T2CONSET)($2)
	lui	$7,%hi(IFS0CLR)
	li	$8,512			# 0x200
	sw	$8,%lo(IFS0CLR)($7)
	lui	$4,%hi(IPC2CLR)
	li	$6,28			# 0x1c
	sw	$6,%lo(IPC2CLR)($4)
	lui	$2,%hi(IPC2SET)
	li	$5,20			# 0x14
	sw	$5,%lo(IPC2SET)($2)
	li	$5,3			# 0x3
	sw	$5,%lo(IPC2CLR)($4)
	sw	$0,%lo(IPC2SET)($2)
	lui	$4,%hi(IEC0CLR)
	sw	$8,%lo(IEC0CLR)($4)
	lui	$2,%hi(IEC0SET)
	sw	$8,%lo(IEC0SET)($2)
	lui	$8,%hi(T3CON)
	sw	$0,%lo(T3CON)($8)
	lui	$8,%hi(TMR3)
	sw	$0,%lo(TMR3)($8)
	li	$10,196608			# 0x30000
	addiu	$10,$10,3392
	lui	$8,%hi(PR3)
	sw	$10,%lo(PR3)($8)
	lui	$8,%hi(T3CONSET)
	sw	$3,%lo(T3CONSET)($8)
	li	$8,16384			# 0x4000
	sw	$8,%lo(IFS0CLR)($7)
	lui	$11,%hi(IPC3CLR)
	sw	$6,%lo(IPC3CLR)($11)
	lui	$10,%hi(IPC3SET)
	li	$12,8			# 0x8
	sw	$12,%lo(IPC3SET)($10)
	sw	$5,%lo(IPC3CLR)($11)
	sw	$0,%lo(IPC3SET)($10)
	sw	$8,%lo(IEC0CLR)($4)
	sw	$8,%lo(IEC0SET)($2)
	lui	$8,%hi(T4CON)
	sw	$0,%lo(T4CON)($8)
	lui	$8,%hi(TMR4)
	sw	$0,%lo(TMR4)($8)
	lui	$8,%hi(PR4)
	sw	$9,%lo(PR4)($8)
	lui	$8,%hi(T4CONSET)
	sw	$3,%lo(T4CONSET)($8)
	li	$3,524288			# 0x80000
	sw	$3,%lo(IFS0CLR)($7)
	lui	$7,%hi(IPC4CLR)
	sw	$6,%lo(IPC4CLR)($7)
	lui	$6,%hi(IPC4SET)
	li	$8,12			# 0xc
	sw	$8,%lo(IPC4SET)($6)
	sw	$5,%lo(IPC4CLR)($7)
	sw	$0,%lo(IPC4SET)($6)
	sw	$3,%lo(IEC0CLR)($4)
	sw	$3,%lo(IEC0SET)($2)
	jal	INTEnableSystemMultiVectoredInt
	nop

	lui	$2,%hi(IEC0)
	lw	$3,%lo(IEC0)($2)
	ins	$3,$0,8,1
	sw	$3,%lo(IEC0)($2)
	lui	$6,%hi(TRISB)
	lw	$4,%lo(TRISB)($6)
	li	$3,1			# 0x1
	ins	$4,$3,0,1
	sw	$4,%lo(TRISB)($6)
	lui	$5,%hi(CNPDB)
	lw	$4,%lo(CNPDB)($5)
	ins	$4,$0,0,1
	sw	$4,%lo(CNPDB)($5)
	lui	$4,%hi(CNPUB)
	lw	$7,%lo(CNPUB)($4)
	ins	$7,$0,0,1
	sw	$7,%lo(CNPUB)($4)
	lw	$7,%lo(TRISB)($6)
	ins	$7,$0,13,1
	sw	$7,%lo(TRISB)($6)
	lw	$6,%lo(CNPDB)($5)
	ins	$6,$0,13,1
	sw	$6,%lo(CNPDB)($5)
	lw	$5,%lo(CNPUB)($4)
	ins	$5,$3,13,1
	sw	$5,%lo(CNPUB)($4)
	lui	$4,%hi(SYSKEY)
	sw	$0,%lo(SYSKEY)($4)
	li	$5,-1432813568			# 0xffffffffaa990000
	addiu	$5,$5,26197
	sw	$5,%lo(SYSKEY)($4)
	li	$5,1432748032			# 0x55660000
	ori	$5,$5,0x99aa
	sw	$5,%lo(SYSKEY)($4)
	lui	$5,%hi(CFGCON)
	lw	$6,%lo(CFGCON)($5)
	ins	$6,$0,13,1
	sw	$6,%lo(CFGCON)($5)
	lui	$6,%hi(INT1R)
	lw	$7,%lo(INT1R)($6)
	li	$8,2			# 0x2
	ins	$7,$8,0,4
	sw	$7,%lo(INT1R)($6)
	lw	$6,%lo(CFGCON)($5)
	ins	$6,$3,13,1
	sw	$6,%lo(CFGCON)($5)
	sw	$0,%lo(SYSKEY)($4)
	lui	$4,%hi(INTCON)
	lw	$5,%lo(INTCON)($4)
	ins	$5,$0,1,1
	sw	$5,%lo(INTCON)($4)
	lui	$4,%hi(IPC1)
	lw	$5,%lo(IPC1)($4)
	li	$6,6			# 0x6
	ins	$5,$6,26,3
	sw	$5,%lo(IPC1)($4)
	lw	$5,%lo(IPC1)($4)
	ins	$5,$0,24,2
	sw	$5,%lo(IPC1)($4)
	lw	$4,%lo(IEC0)($2)
	ins	$4,$3,8,1
	sw	$4,%lo(IEC0)($2)
	lw	$4,%lo(IEC0)($2)
	ins	$4,$3,9,1
	sw	$4,%lo(IEC0)($2)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	timerInit
	.size	timerInit, .-timerInit
	.align	2
	.globl	Timer2Handler
	.set	nomips16
	.set	nomicromips
	.ent	Timer2Handler
	.type	Timer2Handler, @function
Timer2Handler:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x0000007c,-20
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SOFTWARE_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-40
	sw	$26,36($sp)
	mfc0	$26,$12,2
	sw	$27,32($sp)
	sw	$26,28($sp)
	ins	$27,$0,1,15
	ori	$27,$27,0x1400
	mtc0	$27,$12
	sw	$6,20($sp)
	sw	$5,16($sp)
	sw	$4,12($sp)
	sw	$3,8($sp)
	sw	$2,4($sp)
	lui	$2,%hi(G_IRrecv)
	lw	$3,%lo(G_IRrecv)($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L3
	lui	$2,%hi(G_IRsend)

	lui	$2,%hi(G_bitCnt)
	lbu	$2,%lo(G_bitCnt)($2)
	sltu	$3,$2,32
	bne	$3,$0,.L4
	lui	$4,%hi(G_halfCount)

	lui	$2,%hi(IRpacketInNext)
	lbu	$2,%lo(IRpacketInNext)($2)
	addiu	$4,$2,1
	andi	$4,$4,0x7
	lui	$3,%hi(IRpacketInCurr)
	lbu	$3,%lo(IRpacketInCurr)($3)
	beq	$4,$3,.L5
	sll	$4,$2,2

	lui	$3,%hi(IRpacketsIn)
	addiu	$3,$3,%lo(IRpacketsIn)
	addu	$3,$4,$3
	lui	$4,%hi(G_IRrecvVal)
	lw	$4,%lo(G_IRrecvVal)($4)
	sw	$4,0($3)
	lui	$3,%hi(G_IRerror)
	lbu	$3,%lo(G_IRerror)($3)
	beq	$3,$0,.L23
	sll	$4,$2,2

	sll	$5,$2,2
	lui	$4,%hi(IRpacketsIn)
	addiu	$4,$4,%lo(IRpacketsIn)
	addu	$4,$5,$4
	lw	$5,0($4)
	li	$6,27			# 0x1b
	ins	$5,$6,25,5
	sw	$5,0($4)
	sh	$3,0($4)
	lui	$3,%hi(G_IRerror)
	sb	$0,%lo(G_IRerror)($3)
	sll	$4,$2,2
.L23:
	lui	$3,%hi(IRpacketsIn)
	addiu	$3,$3,%lo(IRpacketsIn)
	addu	$3,$4,$3
	lw	$4,0($3)
	ext	$3,$4,16,9
	slt	$5,$3,448
	xori	$5,$5,0x1
	ext	$4,$4,25,5
	xori	$4,$4,0x12
	sltu	$4,$4,1
	or	$4,$5,$4
	sltu	$3,$3,1
	or	$3,$4,$3
	beql	$3,$0,.L24
	lui	$2,%hi(G_IRrecv)

	addiu	$2,$2,1
	andi	$2,$2,0x7
	lui	$3,%hi(IRpacketInNext)
	sb	$2,%lo(IRpacketInNext)($3)
.L5:
	lui	$2,%hi(G_IRrecv)
.L24:
	sw	$0,%lo(G_IRrecv)($2)
	lui	$2,%hi(G_bitCnt)
	sb	$0,%lo(G_bitCnt)($2)
	lui	$2,%hi(G_halfCount)
	j	.L7
	sb	$0,%lo(G_halfCount)($2)

.L4:
	lbu	$3,%lo(G_halfCount)($4)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	sb	$3,%lo(G_halfCount)($4)
	li	$4,16			# 0x10
	bne	$3,$4,.L8
	li	$4,48			# 0x30

	lui	$2,%hi(PORTB)
	lw	$3,%lo(PORTB)($2)
	andi	$3,$3,0x1
	sltu	$3,$3,1
	lui	$2,%hi(G_firstHalf)
	j	.L7
	sb	$3,%lo(G_firstHalf)($2)

.L8:
	bne	$3,$4,.L9
	sltu	$3,$3,64

	lui	$2,%hi(PORTB)
	lw	$3,%lo(PORTB)($2)
	andi	$3,$3,0x1
	sltu	$3,$3,1
	lui	$2,%hi(G_lastHalf)
	j	.L7
	sb	$3,%lo(G_lastHalf)($2)

.L9:
	bne	$3,$0,.L7
	lui	$3,%hi(G_IRrecvVal)

	lw	$5,%lo(G_IRrecvVal)($3)
	lui	$3,%hi(G_lastHalf)
	lbu	$3,%lo(G_lastHalf)($3)
	lui	$4,%hi(G_firstHalf)
	lbu	$6,%lo(G_firstHalf)($4)
	addu	$6,$3,$6
	li	$4,1			# 0x1
	beq	$6,$4,.L10
	sll	$5,$5,1

	lui	$4,%hi(G_IRerror)
	lbu	$6,%lo(G_IRerror)($4)
	addiu	$6,$6,1
	sb	$6,%lo(G_IRerror)($4)
.L10:
	or	$3,$3,$5
	lui	$4,%hi(G_IRrecvVal)
	sw	$3,%lo(G_IRrecvVal)($4)
	addiu	$2,$2,1
	lui	$3,%hi(G_bitCnt)
	sb	$2,%lo(G_bitCnt)($3)
	lui	$2,%hi(G_halfCount)
	sb	$0,%lo(G_halfCount)($2)
.L7:
	li	$3,512			# 0x200
	lui	$2,%hi(IFS0CLR)
	sw	$3,%lo(IFS0CLR)($2)
	j	.L2
	nop

.L3:
	lw	$2,%lo(G_IRsend)($2)
	beq	$2,$0,.L12
	lui	$2,%hi(IRpacketOutCurr)

	lui	$2,%hi(sendOne.12915)
	lw	$2,%lo(sendOne.12915)($2)
	bne	$2,$0,.L25
	lui	$2,%hi(G_halfCount)

	lui	$2,%hi(sendZero.12916)
	lw	$2,%lo(sendZero.12916)($2)
	bne	$2,$0,.L26
	lui	$2,%hi(G_halfCount)

	lui	$2,%hi(G_bitCnt)
	lbu	$2,%lo(G_bitCnt)($2)
	sltu	$3,$2,32
	beql	$3,$0,.L15
	lui	$2,%hi(G_IRsend)

	bne	$2,$0,.L16
	andi	$4,$2,0x20

	li	$4,1			# 0x1
	lui	$3,%hi(sendOne.12915)
	j	.L29
	sw	$4,%lo(sendOne.12915)($3)

.L16:
	li	$3,-2147483648			# 0xffffffff80000000
	srl	$3,$3,$2
	movn	$3,$0,$4
	lui	$4,%hi(G_IRsendVal)
	lw	$4,%lo(G_IRsendVal)($4)
	and	$3,$4,$3
	lui	$4,%hi(sendOne.12915)
	sw	$3,%lo(sendOne.12915)($4)
	lui	$3,%hi(sendOne.12915)
.L29:
	lw	$4,%lo(sendOne.12915)($3)
	sltu	$4,$4,1
	lui	$3,%hi(sendZero.12916)
	sw	$4,%lo(sendZero.12916)($3)
	addiu	$2,$2,1
	lui	$3,%hi(G_bitCnt)
	j	.L18
	sb	$2,%lo(G_bitCnt)($3)

.L15:
	sw	$0,%lo(G_IRsend)($2)
	lui	$2,%hi(G_bitCnt)
	sb	$0,%lo(G_bitCnt)($2)
.L18:
	lui	$2,%hi(sendOne.12915)
	lw	$2,%lo(sendOne.12915)($2)
	beq	$2,$0,.L27
	lui	$2,%hi(sendZero.12916)

	lui	$2,%hi(G_halfCount)
.L25:
	lbu	$4,%lo(G_halfCount)($2)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	sb	$4,%lo(G_halfCount)($2)
	lui	$2,%hi(lowHalf.12917)
	lbu	$2,%lo(lowHalf.12917)($2)
	beq	$2,$0,.L20
	lui	$2,%hi(LATB)

	lw	$3,%lo(LATB)($2)
	ins	$3,$0,13,1
	sw	$3,%lo(LATB)($2)
	sltu	$4,$4,32
	bne	$4,$0,.L27
	lui	$2,%hi(sendZero.12916)

	lui	$2,%hi(lowHalf.12917)
	sb	$0,%lo(lowHalf.12917)($2)
	lui	$2,%hi(G_halfCount)
	j	.L19
	sb	$0,%lo(G_halfCount)($2)

.L20:
	lw	$5,%lo(LATB)($2)
	li	$3,1			# 0x1
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,13,1
	sw	$3,%lo(LATB)($2)
	sltu	$4,$4,32
	bne	$4,$0,.L27
	lui	$2,%hi(sendZero.12916)

	li	$3,1			# 0x1
	lui	$2,%hi(lowHalf.12917)
	sb	$3,%lo(lowHalf.12917)($2)
	lui	$2,%hi(G_halfCount)
	sb	$0,%lo(G_halfCount)($2)
	lui	$2,%hi(sendOne.12915)
	sw	$0,%lo(sendOne.12915)($2)
.L19:
	lui	$2,%hi(sendZero.12916)
.L27:
	lw	$2,%lo(sendZero.12916)($2)
	beq	$2,$0,.L28
	li	$3,512			# 0x200

	lui	$2,%hi(G_halfCount)
.L26:
	lbu	$4,%lo(G_halfCount)($2)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	sb	$4,%lo(G_halfCount)($2)
	lui	$2,%hi(highHalf.12918)
	lbu	$2,%lo(highHalf.12918)($2)
	beq	$2,$0,.L22
	lui	$2,%hi(LATB)

	lw	$5,%lo(LATB)($2)
	li	$3,1			# 0x1
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,13,1
	sw	$3,%lo(LATB)($2)
	sltu	$4,$4,32
	bne	$4,$0,.L28
	li	$3,512			# 0x200

	lui	$2,%hi(highHalf.12918)
	sb	$0,%lo(highHalf.12918)($2)
	lui	$2,%hi(G_halfCount)
	j	.L28
	sb	$0,%lo(G_halfCount)($2)

.L22:
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,13,1
	sw	$3,%lo(LATB)($2)
	sltu	$4,$4,32
	bne	$4,$0,.L28
	li	$3,512			# 0x200

	li	$3,1			# 0x1
	lui	$2,%hi(highHalf.12918)
	sb	$3,%lo(highHalf.12918)($2)
	lui	$2,%hi(G_halfCount)
	sb	$0,%lo(G_halfCount)($2)
	lui	$2,%hi(sendZero.12916)
	j	.L21
	sw	$0,%lo(sendZero.12916)($2)

.L12:
	lbu	$2,%lo(IRpacketOutCurr)($2)
	lui	$3,%hi(IRpacketOutNext)
	lbu	$3,%lo(IRpacketOutNext)($3)
	beq	$3,$2,.L21
	sll	$4,$2,2

	lui	$3,%hi(IRpacketsOut)
	addiu	$3,$3,%lo(IRpacketsOut)
	addu	$3,$4,$3
	lw	$4,0($3)
	lui	$3,%hi(G_IRsendVal)
	sw	$4,%lo(G_IRsendVal)($3)
	li	$4,1			# 0x1
	lui	$3,%hi(G_IRsend)
	sw	$4,%lo(G_IRsend)($3)
	addiu	$2,$2,1
	andi	$2,$2,0x7
	lui	$3,%hi(IRpacketOutCurr)
	sb	$2,%lo(IRpacketOutCurr)($3)
.L21:
	li	$3,512			# 0x200
.L28:
	lui	$2,%hi(IFS0CLR)
	sw	$3,%lo(IFS0CLR)($2)
.L2:
	lw	$6,20($sp)
	lw	$5,16($sp)
	lw	$4,12($sp)
	lw	$3,8($sp)
	lw	$2,4($sp)
	di
	ehb
	lw	$26,36($sp)
	lw	$27,32($sp)
	mtc0	$26,$14
	lw	$26,28($sp)
	addiu	$sp,$sp,40
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	Timer2Handler
	.size	Timer2Handler, .-Timer2Handler
	.align	2
	.globl	Int1Interrupt
	.set	nomips16
	.set	nomicromips
	.ent	Int1Interrupt
	.type	Int1Interrupt, @function
Int1Interrupt:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x0000000c,-20
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SOFTWARE_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-24
	sw	$26,20($sp)
	mfc0	$26,$12,2
	sw	$27,16($sp)
	sw	$26,12($sp)
	ins	$27,$0,1,15
	ori	$27,$27,0x1800
	mtc0	$27,$12
	sw	$3,4($sp)
	sw	$2,0($sp)
	lui	$2,%hi(G_IRsend)
	lw	$2,%lo(G_IRsend)($2)
	bne	$2,$0,.L31
	lui	$2,%hi(G_IRrecv)

	lw	$2,%lo(G_IRrecv)($2)
	bne	$2,$0,.L31
	li	$3,1			# 0x1

	lui	$2,%hi(G_IRrecv)
	sw	$3,%lo(G_IRrecv)($2)
	lui	$2,%hi(G_firstHalf)
	sb	$0,%lo(G_firstHalf)($2)
	li	$3,32			# 0x20
	lui	$2,%hi(G_halfCount)
	sb	$3,%lo(G_halfCount)($2)
	lui	$2,%hi(G_IRrecvVal)
	sw	$0,%lo(G_IRrecvVal)($2)
.L31:
	lui	$2,%hi(IFS0)
	lw	$3,%lo(IFS0)($2)
	ins	$3,$0,8,1
	sw	$3,%lo(IFS0)($2)
	lw	$3,4($sp)
	lw	$2,0($sp)
	di
	ehb
	lw	$26,20($sp)
	lw	$27,16($sp)
	mtc0	$26,$14
	lw	$26,12($sp)
	addiu	$sp,$sp,24
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	Int1Interrupt
	.size	Int1Interrupt, .-Int1Interrupt
	.align	2
	.globl	Timer4Handler
	.set	nomips16
	.set	nomicromips
	.ent	Timer4Handler
	.type	Timer4Handler, @function
Timer4Handler:
	.frame	$sp,112,$31		# vars= 0, regs= 18/0, args= 16, gp= 0
	.mask	0x8300fffe,-28
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SOFTWARE_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-112
	sw	$26,108($sp)
	mfc0	$26,$12,2
	sw	$27,104($sp)
	sw	$26,100($sp)
	ins	$27,$0,1,15
	ori	$27,$27,0xc00
	mtc0	$27,$12
	sw	$31,84($sp)
	sw	$25,80($sp)
	sw	$24,76($sp)
	sw	$15,72($sp)
	sw	$14,68($sp)
	sw	$13,64($sp)
	sw	$12,60($sp)
	sw	$11,56($sp)
	sw	$10,52($sp)
	sw	$9,48($sp)
	sw	$8,44($sp)
	sw	$7,40($sp)
	sw	$6,36($sp)
	sw	$5,32($sp)
	sw	$4,28($sp)
	sw	$3,24($sp)
	sw	$2,20($sp)
	sw	$1,16($sp)
	mflo	$2
	sw	$2,92($sp)
	mfhi	$3
	sw	$3,88($sp)
	jal	doAudio
	nop

	li	$3,524288			# 0x80000
	lui	$2,%hi(IFS0CLR)
	sw	$3,%lo(IFS0CLR)($2)
	lw	$2,92($sp)
	mtlo	$2
	lw	$3,88($sp)
	mthi	$3
	lw	$31,84($sp)
	lw	$25,80($sp)
	lw	$24,76($sp)
	lw	$15,72($sp)
	lw	$14,68($sp)
	lw	$13,64($sp)
	lw	$12,60($sp)
	lw	$11,56($sp)
	lw	$10,52($sp)
	lw	$9,48($sp)
	lw	$8,44($sp)
	lw	$7,40($sp)
	lw	$6,36($sp)
	lw	$5,32($sp)
	lw	$4,28($sp)
	lw	$3,24($sp)
	lw	$2,20($sp)
	lw	$1,16($sp)
	di
	ehb
	lw	$26,108($sp)
	lw	$27,104($sp)
	mtc0	$26,$14
	lw	$26,100($sp)
	addiu	$sp,$sp,112
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	Timer4Handler
	.size	Timer4Handler, .-Timer4Handler
	.align	2
	.globl	no_LED_PWM
	.set	nomips16
	.set	nomicromips
	.ent	no_LED_PWM
	.type	no_LED_PWM, @function
no_LED_PWM:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_no_LED_PWM)
	j	$31
	sb	$4,%lo(G_no_LED_PWM)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	no_LED_PWM
	.size	no_LED_PWM, .-no_LED_PWM
	.align	2
	.globl	led_brightness
	.set	nomips16
	.set	nomicromips
	.ent	led_brightness
	.type	led_brightness, @function
led_brightness:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_bright)
	j	$31
	sb	$4,%lo(G_bright)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	led_brightness
	.size	led_brightness, .-led_brightness
	.align	2
	.globl	red
	.set	nomips16
	.set	nomicromips
	.ent	red
	.type	red, @function
red:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(G_bright)
	lbu	$2,%lo(G_bright)($2)
	sra	$4,$4,$2
	lui	$2,%hi(G_red_pwm)
	sb	$4,%lo(G_red_pwm)($2)
	lui	$2,%hi(G_red_cnt)
	j	$31
	sb	$0,%lo(G_red_cnt)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	red
	.size	red, .-red
	.align	2
	.globl	green
	.set	nomips16
	.set	nomicromips
	.ent	green
	.type	green, @function
green:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(G_bright)
	lbu	$2,%lo(G_bright)($2)
	sra	$4,$4,$2
	lui	$2,%hi(G_green_pwm)
	sb	$4,%lo(G_green_pwm)($2)
	lui	$2,%hi(G_green_cnt)
	j	$31
	sb	$0,%lo(G_green_cnt)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	green
	.size	green, .-green
	.align	2
	.globl	blue
	.set	nomips16
	.set	nomicromips
	.ent	blue
	.type	blue, @function
blue:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(G_bright)
	lbu	$2,%lo(G_bright)($2)
	sra	$4,$4,$2
	lui	$2,%hi(G_blue_pwm)
	sb	$4,%lo(G_blue_pwm)($2)
	lui	$2,%hi(G_blue_cnt)
	j	$31
	sb	$0,%lo(G_blue_cnt)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	blue
	.size	blue, .-blue
	.align	2
	.globl	flare_leds
	.set	nomips16
	.set	nomicromips
	.ent	flare_leds
	.type	flare_leds, @function
flare_leds:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(G_bright)
	lbu	$2,%lo(G_bright)($2)
	sra	$4,$4,$2
	lui	$2,%hi(G_flare_pwm)
	sb	$4,%lo(G_flare_pwm)($2)
	lui	$2,%hi(G_flare_cnt)
	j	$31
	sb	$0,%lo(G_flare_cnt)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	flare_leds
	.size	flare_leds, .-flare_leds
	.align	2
	.globl	doLED_PWM
	.set	nomips16
	.set	nomicromips
	.ent	doLED_PWM
	.type	doLED_PWM, @function
doLED_PWM:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_no_LED_PWM)
	lbu	$2,%lo(G_no_LED_PWM)($2)
	bne	$2,$0,.L54
	nop

	lui	$3,%hi(G_backlight_cnt)
	lbu	$2,%lo(G_backlight_cnt)($3)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,%lo(G_backlight_cnt)($3)
	lui	$3,%hi(G_backlight)
	lbu	$3,%lo(G_backlight)($3)
	sltu	$2,$2,$3
	beq	$2,$0,.L41
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,9,1
	sw	$3,%lo(LATC)($2)
	j	.L50
	lui	$3,%hi(G_flare_cnt)

.L41:
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,9,1
	sw	$3,%lo(LATC)($2)
	lui	$3,%hi(G_flare_cnt)
.L50:
	lbu	$2,%lo(G_flare_cnt)($3)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,%lo(G_flare_cnt)($3)
	lui	$3,%hi(G_flare_pwm)
	lbu	$3,%lo(G_flare_pwm)($3)
	sltu	$2,$2,$3
	beq	$2,$0,.L43
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,5,1
	sw	$3,%lo(LATC)($2)
	j	.L51
	lui	$3,%hi(G_red_cnt)

.L43:
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,5,1
	sw	$3,%lo(LATC)($2)
	lui	$3,%hi(G_red_cnt)
.L51:
	lbu	$2,%lo(G_red_cnt)($3)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,%lo(G_red_cnt)($3)
	lui	$3,%hi(G_red_pwm)
	lbu	$3,%lo(G_red_pwm)($3)
	sltu	$2,$2,$3
	beq	$2,$0,.L45
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	j	.L52
	lui	$3,%hi(G_green_cnt)

.L45:
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lui	$3,%hi(G_green_cnt)
.L52:
	lbu	$2,%lo(G_green_cnt)($3)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,%lo(G_green_cnt)($3)
	lui	$3,%hi(G_green_pwm)
	lbu	$3,%lo(G_green_pwm)($3)
	sltu	$2,$2,$3
	beq	$2,$0,.L47
	lui	$2,%hi(LATB)

	lw	$3,%lo(LATB)($2)
	li	$4,1			# 0x1
	ins	$3,$4,3,1
	sw	$3,%lo(LATB)($2)
	j	.L53
	lui	$3,%hi(G_blue_cnt)

.L47:
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(LATB)($2)
	lui	$3,%hi(G_blue_cnt)
.L53:
	lbu	$2,%lo(G_blue_cnt)($3)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,%lo(G_blue_cnt)($3)
	lui	$3,%hi(G_blue_pwm)
	lbu	$3,%lo(G_blue_pwm)($3)
	sltu	$2,$2,$3
	beq	$2,$0,.L49
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	$31
	nop

.L49:
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
.L54:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	doLED_PWM
	.size	doLED_PWM, .-doLED_PWM
	.align	2
	.globl	Timer3Handler
	.set	nomips16
	.set	nomicromips
	.ent	Timer3Handler
	.type	Timer3Handler, @function
Timer3Handler:
	.frame	$sp,112,$31		# vars= 0, regs= 18/0, args= 16, gp= 0
	.mask	0x8300fffe,-28
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SOFTWARE_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-112
	sw	$26,108($sp)
	mfc0	$26,$12,2
	sw	$27,104($sp)
	sw	$26,100($sp)
	ins	$27,$0,1,15
	ori	$27,$27,0x800
	mtc0	$27,$12
	sw	$31,84($sp)
	sw	$25,80($sp)
	sw	$24,76($sp)
	sw	$15,72($sp)
	sw	$14,68($sp)
	sw	$13,64($sp)
	sw	$12,60($sp)
	sw	$11,56($sp)
	sw	$10,52($sp)
	sw	$9,48($sp)
	sw	$8,44($sp)
	sw	$7,40($sp)
	sw	$6,36($sp)
	sw	$5,32($sp)
	sw	$4,28($sp)
	sw	$3,24($sp)
	sw	$2,20($sp)
	sw	$1,16($sp)
	mflo	$2
	sw	$2,92($sp)
	mfhi	$3
	sw	$3,88($sp)
	jal	doLED_PWM
	nop

	li	$3,16384			# 0x4000
	lui	$2,%hi(IFS0CLR)
	sw	$3,%lo(IFS0CLR)($2)
	lw	$2,92($sp)
	mtlo	$2
	lw	$3,88($sp)
	mthi	$3
	lw	$31,84($sp)
	lw	$25,80($sp)
	lw	$24,76($sp)
	lw	$15,72($sp)
	lw	$14,68($sp)
	lw	$13,64($sp)
	lw	$12,60($sp)
	lw	$11,56($sp)
	lw	$10,52($sp)
	lw	$9,48($sp)
	lw	$8,44($sp)
	lw	$7,40($sp)
	lw	$6,36($sp)
	lw	$5,32($sp)
	lw	$4,28($sp)
	lw	$3,24($sp)
	lw	$2,20($sp)
	lw	$1,16($sp)
	di
	ehb
	lw	$26,108($sp)
	lw	$27,104($sp)
	mtc0	$26,$14
	lw	$26,100($sp)
	addiu	$sp,$sp,112
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	Timer3Handler
	.size	Timer3Handler, .-Timer3Handler
	.align	2
	.globl	backlight
	.set	nomips16
	.set	nomicromips
	.ent	backlight
	.type	backlight, @function
backlight:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(G_backlight)
	sb	$4,%lo(G_backlight)($2)
	lui	$2,%hi(G_backlight_cnt)
	j	$31
	sb	$0,%lo(G_backlight_cnt)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	backlight
	.size	backlight, .-backlight
	.align	2
	.globl	led
	.set	nomips16
	.set	nomicromips
	.ent	led
	.type	led, @function
led:
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
	andi	$17,$5,0x00ff
	andi	$16,$6,0x00ff
	jal	red
	andi	$4,$4,0x00ff

	jal	green
	move	$4,$17

	jal	blue
	move	$4,$16

	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	led
	.size	led, .-led
	.globl	G_IRsendVal
	.section	.bss,bss
	.align	2
	.type	G_IRsendVal, @object
	.size	G_IRsendVal, 4
G_IRsendVal:
	.space	4
	.globl	G_IRrecvVal
	.align	2
	.type	G_IRrecvVal, @object
	.size	G_IRrecvVal, 4
G_IRrecvVal:
	.space	4
	.globl	G_IRrecv
	.align	2
	.type	G_IRrecv, @object
	.size	G_IRrecv, 4
G_IRrecv:
	.space	4
	.globl	G_IRsend
	.align	2
	.type	G_IRsend, @object
	.size	G_IRsend, 4
G_IRsend:
	.space	4
	.globl	G_IRerror
	.type	G_IRerror, @object
	.size	G_IRerror, 1
G_IRerror:
	.space	1
	.globl	G_bitCnt
	.type	G_bitCnt, @object
	.size	G_bitCnt, 1
G_bitCnt:
	.space	1
	.globl	G_firstHalf
	.type	G_firstHalf, @object
	.size	G_firstHalf, 1
G_firstHalf:
	.space	1
	.globl	G_lastHalf
	.type	G_lastHalf, @object
	.size	G_lastHalf, 1
G_lastHalf:
	.space	1
	.globl	G_halfCount
	.type	G_halfCount, @object
	.size	G_halfCount, 1
G_halfCount:
	.space	1
	.globl	G_red_cnt
	.type	G_red_cnt, @object
	.size	G_red_cnt, 1
G_red_cnt:
	.space	1
	.globl	G_red_pwm
	.type	G_red_pwm, @object
	.size	G_red_pwm, 1
G_red_pwm:
	.space	1
	.globl	G_green_cnt
	.type	G_green_cnt, @object
	.size	G_green_cnt, 1
G_green_cnt:
	.space	1
	.globl	G_green_pwm
	.type	G_green_pwm, @object
	.size	G_green_pwm, 1
G_green_pwm:
	.space	1
	.globl	G_blue_cnt
	.type	G_blue_cnt, @object
	.size	G_blue_cnt, 1
G_blue_cnt:
	.space	1
	.globl	G_blue_pwm
	.type	G_blue_pwm, @object
	.size	G_blue_pwm, 1
G_blue_pwm:
	.space	1
	.globl	G_flare_cnt
	.type	G_flare_cnt, @object
	.size	G_flare_cnt, 1
G_flare_cnt:
	.space	1
	.globl	G_flare_pwm
	.type	G_flare_pwm, @object
	.size	G_flare_pwm, 1
G_flare_pwm:
	.space	1
	.globl	G_bright
	.type	G_bright, @object
	.size	G_bright, 1
G_bright:
	.space	1
	.globl	G_backlight
	.section	.data, data
	.type	G_backlight, @object
	.size	G_backlight, 1
G_backlight:
	.byte	-1
	.globl	G_backlight_cnt
	.section	.bss,bss
	.type	G_backlight_cnt, @object
	.size	G_backlight_cnt, 1
G_backlight_cnt:
	.space	1
	.globl	G_no_LED_PWM
	.type	G_no_LED_PWM, @object
	.size	G_no_LED_PWM, 1
G_no_LED_PWM:
	.space	1
	.section	.data, data
	.type	highHalf.12918, @object
	.size	highHalf.12918, 1
highHalf.12918:
	.byte	1
	.type	lowHalf.12917, @object
	.size	lowHalf.12917, 1
lowHalf.12917:
	.byte	1
	.section	.bss,bss
	.align	2
	.type	sendZero.12916, @object
	.size	sendZero.12916, 4
sendZero.12916:
	.space	4
	.align	2
	.type	sendOne.12915, @object
	.size	sendOne.12915, 4
sendOne.12915:
	.space	4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 Compiler v1.34"
# Begin MCHP vector dispatch table
	.globl	__vector_dispatch_12
	.section	.vector_12,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_12
__vector_dispatch_12:
	j	Timer3Handler
	nop
	.set reorder
	.end	__vector_dispatch_12
	.size	__vector_dispatch_12, .-__vector_dispatch_12
	.globl	__vector_dispatch_16
	.section	.vector_16,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_16
__vector_dispatch_16:
	j	Timer4Handler
	nop
	.set reorder
	.end	__vector_dispatch_16
	.size	__vector_dispatch_16, .-__vector_dispatch_16
	.globl	__vector_dispatch_7
	.section	.vector_7,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_7
__vector_dispatch_7:
	j	Int1Interrupt
	nop
	.set reorder
	.end	__vector_dispatch_7
	.size	__vector_dispatch_7, .-__vector_dispatch_7
	.globl	__vector_dispatch_8
	.section	.vector_8,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_8
__vector_dispatch_8:
	j	Timer2Handler
	nop
	.set reorder
	.end	__vector_dispatch_8
	.size	__vector_dispatch_8, .-__vector_dispatch_8
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
