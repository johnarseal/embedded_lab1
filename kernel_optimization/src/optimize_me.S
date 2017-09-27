	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"optimize_me.c"
	.text
	.align	2

	.global	optimize_me
	.type	optimize_me, %function
optimize_me:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ r7 holds the outer iterator(fp-24), r8 holds the inner iterator(fp-28), r9 hold the address of the array
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #28
	mov	r9, r0
	mov	r7, #0
	mov	r10, #-26
	mov	r1, r0
	b	.L4

.L6:
	ldr	r3, [r4]
	add	r3, r3, r3, asl #4
	add	r5, r3, #19
	@ r5 = arg[j] * 17 + 19

	@ below is the func
	add	r0, r0, #25
	@ increment r0 by 25

	mul	r3, r6, r0
	add	r3, r5, r3

	cmp	r3, #0
	addlt	r3, r3, #15

	mov	r3, r3, asr #4
	str	r3, [r4], #4

	@ update r6 when arg[r7] is written
	cmp	r8, r7
	moveq	r6, r3

	add	r8, r8, #1

.L5:
	cmp	r8, #500
	blt	.L6

	add	r7, r7, #1
.L4:
	add	r10, r10, #1
	mov	r0, r10
	ldr	r6, [r1], #4
	@ r6 = arg[i]	

	cmp	r7, #500
	mov	r8, #0
	mov	r4, r9
	blt	.L6

	sub	sp, fp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr

	.size	optimize_me, .-optimize_me
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 224288]"
