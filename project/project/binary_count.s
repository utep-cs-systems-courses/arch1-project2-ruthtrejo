	.arch 	msp430g2553
	.p2align 1,0
	
	.data
state:
	.word 0

	.text
jt:
	.word option0
	.word option1
	.word option2
	.word option3

	.global binary_count
binary_count:

	cmp	#4, &state	;state-3
	jnc	option0		;stay in default option ish

	mov	&state, r12
	add	r12, r12	;r12 = 2 * state
	mov	jt(r12), r0	;jmp jt[state]
	
option0:
	mov.b	#0, R13
	mov.b	#0, R12
	call	#led_state
	mov.b	#1, &state
	jmp	out
option1:
	mov.b	#1, R13
	mov.b	#0, R12
	call	#led_state
	mov.b	#2, &state
	jmp	out
option2:
	mov.b	#0, R13
	mov.b	#1, R12
	call	#led_state
	mob.b	#3, &state
	jmp	out
option3:
	mov.b	#1, R13
	mov.b	#1, R12
	call	#led_state
	mov.b	#0, &state
	jmp out
out:
	pop r0
