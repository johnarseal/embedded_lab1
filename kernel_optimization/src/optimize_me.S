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



	.global	func
	.type	func, %function
func:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	@str	r0, [fp, #-8]
	@str	r1, [fp, #-12]

	add	r2, r1, r1, asl #3
	add	r2, r2, r1, asl #4
	@ r2 = r1 * 25

	add	r3, r2, r0
	mov	r0, r3
	mov	sp, fp
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	func, .-func
	.align	2



	.global	optimize_me
	.type	optimize_me, %function
optimize_me:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ r7 holds the outer iterator(fp-24), r8 holds the inner iterator(fp-28)
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #28
	str	r0, [fp, #-40]
	mov	r7, #0
	b	.L4

.L7:
	mov	r8, #0
	b	.L5

.L6:
	mov	r3, #3
	str	r3, [fp, #-36]
	@r3 = 3
	mov	r3, r8
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	mov	r4, r3

	ldr	r3, [r3]
	add	r3, r3, r3, asl #4
	add	r5, r3, #16
	@ r5 = *(arg + r8) * 17 + 16 

	mov	r3, r7, asl #2
	add	r3, r2, r3
	ldr	r6, [r3]
	@ r6 = *(arg + r7)

	@mov	r0, r7
	@mov	r1, r8
	@bl	func

	@ below is the func
	add	r2, r8, r8, asl #3
	add	r2, r2, r8, asl #4
	@ r2 = r8 * 25

	add	r0, r2, r7


	mul	r3, r6, r0
	add	r2, r5, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	add	r2, r3, #15
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	mov	r3, r3, asr #4
	str	r3, [r4]
	add	r8, r8, #1
.L5:
	cmp	r8, #500
	blt	.L6

	add	r7, r7, #1
.L4:
	cmp	r7, #500
	blt	.L7

	sub	sp, fp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr

	.size	optimize_me, .-optimize_me
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 224288]"
