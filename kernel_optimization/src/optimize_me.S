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
	@ r7 holds the outer iterator(fp-24), r8 holds the inner iterator(fp-28), r1 hold the address of the array
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #32
	mov	r1, r0
	mov	r7, #0
	mov	r2, r1
	b	.L4

.L6:
	@/////copy of the loop
	ldr	r3, [r4]

	add	r3, r3, r3, asl #4
	add	r5, r3, #19
	@ r5 = arg[r8] * 17 + 19
	mla	r3, r6, r0, r5

	@ increment r0 by 25
	add	r0, r0, #25

	cmp	r3, #0
	addlt	r3, r3, #15

	asr	r3, #4
	str	r3, [r4], #4

	@ update r6 incase it is written
	cmp	r8, r7
	moveq	r6, r3

	add	r8, r8, #1









	cmp	r8, #500
	blt	.L6

	add	r7, r7, #1
.L4:
	mov	r0, r7
	ldr	r6, [r2], #4
	@ r6 = arg[r7]	
	cmp	r7, #500
	mov	r8, #0
	mov	r4, r1
	blt	.L6

	sub	sp, fp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr

	.size	optimize_me, .-optimize_me
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 224288]"
