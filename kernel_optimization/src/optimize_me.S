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
	@ r1 holds the outer iterator(fp-24), r8 holds the inner iterator(fp-28), r0 hold the address of the array
	stmfd	sp!, {r4, r5, r6, r7, fp, lr}
	mov	r1, #0
	mov	r2, r0
	add	r5, r0, #2000


.L4:	mov	ip, r1
	ldr	r6, [r2], #4
	mov	r4, r0

.L6:
	@/////copy of the loop	
	ldmia	r4, {r3,r7}
	@/////////using r3
	add	r3, r3, r3, asl #4
	add	r3, r3, #19
	mlas	r3, r6, ip, r3
	@ increment ip by 25
	add	ip, ip, #25
	addmi	r3, r3, #15

	asr	r3, #4
	str	r3, [r4], #4

	@ update r6 incase it is written
	cmp	r4, r2
	moveq	r6, r3

	@/////////using r7
	add	r7, r7, r7, asl #4
	add	r7, r7, #19
	mlas	r3, r6, ip, r7
	@ increment ip by 25
	add	ip, ip, #25
	addmi	r3, r3, #15

	asr	r3, #4
	str	r3, [r4], #4

	@ update r6 incase it is written
	cmp	r4, r2
	moveq	r6, r3
	@/////end of the loop	

	cmp	r4, r5
	blt	.L6

	add	r1, r1, #1
	cmp	r1, #500	
	blt	.L4

	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, fp, lr}
	bx	lr




	.size	optimize_me, .-optimize_me
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 224288]"
