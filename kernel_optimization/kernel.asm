
kernel_optimization/kernel.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <__start>:
    8000:	e10f0000 	mrs	r0, CPSR
    8004:	e321f0d2 	msr	CPSR_c, #210	; 0xd2
    8008:	e59fd034 	ldr	sp, [pc, #52]	; 8044 <hang+0x8>
    800c:	e121f000 	msr	CPSR_c, r0
    8010:	e59fd030 	ldr	sp, [pc, #48]	; 8048 <hang+0xc>
    8014:	e59f0030 	ldr	r0, [pc, #48]	; 804c <hang+0x10>
    8018:	e59f1030 	ldr	r1, [pc, #48]	; 8050 <hang+0x14>
    801c:	e3a02000 	mov	r2, #0
    8020:	e3a03000 	mov	r3, #0
    8024:	e3a04000 	mov	r4, #0
    8028:	e3a05000 	mov	r5, #0

0000802c <bss_loop>:
    802c:	e8a0003c 	stmia	r0!, {r2, r3, r4, r5}
    8030:	e1500001 	cmp	r0, r1
    8034:	3afffffc 	bcc	802c <bss_loop>
    8038:	eb0000cd 	bl	8374 <kernel_main>

0000803c <hang>:
    803c:	e320f003 	wfi
    8040:	eafffffd 	b	803c <hang>
    8044:	0012e000 	andseq	lr, r2, r0
    8048:	0011d000 	andseq	sp, r1, r0
    804c:	0000c000 	andeq	ip, r0, r0
    8050:	0000d000 	andeq	sp, r0, r0

00008054 <gpio_config>:
    8054:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8058:	e28db000 	add	fp, sp, #0
    805c:	e24dd01c 	sub	sp, sp, #28
    8060:	e1a03000 	mov	r3, r0
    8064:	e1a02001 	mov	r2, r1
    8068:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    806c:	e1a03002 	mov	r3, r2
    8070:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    8074:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    8078:	e3530035 	cmp	r3, #53	; 0x35
    807c:	8a000002 	bhi	808c <gpio_config+0x38>
    8080:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
    8084:	e3530007 	cmp	r3, #7
    8088:	9a000000 	bls	8090 <gpio_config+0x3c>
    808c:	ea000035 	b	8168 <gpio_config+0x114>
    8090:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    8094:	e30c3ccd 	movw	r3, #52429	; 0xcccd
    8098:	e34c3ccc 	movt	r3, #52428	; 0xcccc
    809c:	e0832392 	umull	r2, r3, r2, r3
    80a0:	e1a031a3 	lsr	r3, r3, #3
    80a4:	e6ef3073 	uxtb	r3, r3
    80a8:	e50b3008 	str	r3, [fp, #-8]
    80ac:	e30b3000 	movw	r3, #45056	; 0xb000
    80b0:	e3403000 	movt	r3, #0
    80b4:	e5932000 	ldr	r2, [r3]
    80b8:	e51b3008 	ldr	r3, [fp, #-8]
    80bc:	e1a03103 	lsl	r3, r3, #2
    80c0:	e0823003 	add	r3, r2, r3
    80c4:	e5933000 	ldr	r3, [r3]
    80c8:	e50b300c 	str	r3, [fp, #-12]
    80cc:	e55b1015 	ldrb	r1, [fp, #-21]	; 0xffffffeb
    80d0:	e30c3ccd 	movw	r3, #52429	; 0xcccd
    80d4:	e34c3ccc 	movt	r3, #52428	; 0xcccc
    80d8:	e0832391 	umull	r2, r3, r1, r3
    80dc:	e1a021a3 	lsr	r2, r3, #3
    80e0:	e1a03002 	mov	r3, r2
    80e4:	e1a03103 	lsl	r3, r3, #2
    80e8:	e0833002 	add	r3, r3, r2
    80ec:	e1a03083 	lsl	r3, r3, #1
    80f0:	e0633001 	rsb	r3, r3, r1
    80f4:	e6ef3073 	uxtb	r3, r3
    80f8:	e1a02003 	mov	r2, r3
    80fc:	e1a03002 	mov	r3, r2
    8100:	e1a03083 	lsl	r3, r3, #1
    8104:	e0833002 	add	r3, r3, r2
    8108:	e50b3010 	str	r3, [fp, #-16]
    810c:	e51b3010 	ldr	r3, [fp, #-16]
    8110:	e3a02007 	mov	r2, #7
    8114:	e1a03312 	lsl	r3, r2, r3
    8118:	e1e03003 	mvn	r3, r3
    811c:	e1a02003 	mov	r2, r3
    8120:	e51b300c 	ldr	r3, [fp, #-12]
    8124:	e0033002 	and	r3, r3, r2
    8128:	e50b300c 	str	r3, [fp, #-12]
    812c:	e55b2016 	ldrb	r2, [fp, #-22]	; 0xffffffea
    8130:	e51b3010 	ldr	r3, [fp, #-16]
    8134:	e1a03312 	lsl	r3, r2, r3
    8138:	e1a02003 	mov	r2, r3
    813c:	e51b300c 	ldr	r3, [fp, #-12]
    8140:	e1833002 	orr	r3, r3, r2
    8144:	e50b300c 	str	r3, [fp, #-12]
    8148:	e30b3000 	movw	r3, #45056	; 0xb000
    814c:	e3403000 	movt	r3, #0
    8150:	e5932000 	ldr	r2, [r3]
    8154:	e51b3008 	ldr	r3, [fp, #-8]
    8158:	e1a03103 	lsl	r3, r3, #2
    815c:	e0823003 	add	r3, r2, r3
    8160:	e51b200c 	ldr	r2, [fp, #-12]
    8164:	e5832000 	str	r2, [r3]
    8168:	e24bd000 	sub	sp, fp, #0
    816c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8170:	e12fff1e 	bx	lr

00008174 <gpio_set>:
    8174:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8178:	e28db000 	add	fp, sp, #0
    817c:	e24dd00c 	sub	sp, sp, #12
    8180:	e1a03000 	mov	r3, r0
    8184:	e54b3005 	strb	r3, [fp, #-5]
    8188:	e55b3005 	ldrb	r3, [fp, #-5]
    818c:	e3530035 	cmp	r3, #53	; 0x35
    8190:	9a000000 	bls	8198 <gpio_set+0x24>
    8194:	ea000014 	b	81ec <gpio_set+0x78>
    8198:	e55b3005 	ldrb	r3, [fp, #-5]
    819c:	e353001f 	cmp	r3, #31
    81a0:	9a000009 	bls	81cc <gpio_set+0x58>
    81a4:	e30b3000 	movw	r3, #45056	; 0xb000
    81a8:	e3403000 	movt	r3, #0
    81ac:	e5933000 	ldr	r3, [r3]
    81b0:	e2833020 	add	r3, r3, #32
    81b4:	e55b2005 	ldrb	r2, [fp, #-5]
    81b8:	e2422020 	sub	r2, r2, #32
    81bc:	e3a01001 	mov	r1, #1
    81c0:	e1a02211 	lsl	r2, r1, r2
    81c4:	e5832000 	str	r2, [r3]
    81c8:	ea000007 	b	81ec <gpio_set+0x78>
    81cc:	e30b3000 	movw	r3, #45056	; 0xb000
    81d0:	e3403000 	movt	r3, #0
    81d4:	e5933000 	ldr	r3, [r3]
    81d8:	e283301c 	add	r3, r3, #28
    81dc:	e55b2005 	ldrb	r2, [fp, #-5]
    81e0:	e3a01001 	mov	r1, #1
    81e4:	e1a02211 	lsl	r2, r1, r2
    81e8:	e5832000 	str	r2, [r3]
    81ec:	e24bd000 	sub	sp, fp, #0
    81f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    81f4:	e12fff1e 	bx	lr

000081f8 <gpio_clr>:
    81f8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    81fc:	e28db000 	add	fp, sp, #0
    8200:	e24dd00c 	sub	sp, sp, #12
    8204:	e1a03000 	mov	r3, r0
    8208:	e54b3005 	strb	r3, [fp, #-5]
    820c:	e55b3005 	ldrb	r3, [fp, #-5]
    8210:	e3530035 	cmp	r3, #53	; 0x35
    8214:	9a000000 	bls	821c <gpio_clr+0x24>
    8218:	ea000014 	b	8270 <gpio_clr+0x78>
    821c:	e55b3005 	ldrb	r3, [fp, #-5]
    8220:	e353001f 	cmp	r3, #31
    8224:	9a000009 	bls	8250 <gpio_clr+0x58>
    8228:	e30b3000 	movw	r3, #45056	; 0xb000
    822c:	e3403000 	movt	r3, #0
    8230:	e5933000 	ldr	r3, [r3]
    8234:	e283302c 	add	r3, r3, #44	; 0x2c
    8238:	e55b2005 	ldrb	r2, [fp, #-5]
    823c:	e2422020 	sub	r2, r2, #32
    8240:	e3a01001 	mov	r1, #1
    8244:	e1a02211 	lsl	r2, r1, r2
    8248:	e5832000 	str	r2, [r3]
    824c:	ea000007 	b	8270 <gpio_clr+0x78>
    8250:	e30b3000 	movw	r3, #45056	; 0xb000
    8254:	e3403000 	movt	r3, #0
    8258:	e5933000 	ldr	r3, [r3]
    825c:	e2833028 	add	r3, r3, #40	; 0x28
    8260:	e55b2005 	ldrb	r2, [fp, #-5]
    8264:	e3a01001 	mov	r1, #1
    8268:	e1a02211 	lsl	r2, r1, r2
    826c:	e5832000 	str	r2, [r3]
    8270:	e24bd000 	sub	sp, fp, #0
    8274:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8278:	e12fff1e 	bx	lr

0000827c <gpio_set_pull>:
    827c:	e92d4800 	push	{fp, lr}
    8280:	e28db004 	add	fp, sp, #4
    8284:	e24dd008 	sub	sp, sp, #8
    8288:	e1a03000 	mov	r3, r0
    828c:	e1a02001 	mov	r2, r1
    8290:	e54b3005 	strb	r3, [fp, #-5]
    8294:	e1a03002 	mov	r3, r2
    8298:	e54b3006 	strb	r3, [fp, #-6]
    829c:	e55b3005 	ldrb	r3, [fp, #-5]
    82a0:	e3530035 	cmp	r3, #53	; 0x35
    82a4:	8a000002 	bhi	82b4 <gpio_set_pull+0x38>
    82a8:	e55b3006 	ldrb	r3, [fp, #-6]
    82ac:	e3530002 	cmp	r3, #2
    82b0:	9a000000 	bls	82b8 <gpio_set_pull+0x3c>
    82b4:	ea00002c 	b	836c <gpio_set_pull+0xf0>
    82b8:	e30b3000 	movw	r3, #45056	; 0xb000
    82bc:	e3403000 	movt	r3, #0
    82c0:	e5933000 	ldr	r3, [r3]
    82c4:	e2833094 	add	r3, r3, #148	; 0x94
    82c8:	e55b2006 	ldrb	r2, [fp, #-6]
    82cc:	e5832000 	str	r2, [r3]
    82d0:	e3a00096 	mov	r0, #150	; 0x96
    82d4:	eb0001f4 	bl	8aac <delay_cycles>
    82d8:	e55b3005 	ldrb	r3, [fp, #-5]
    82dc:	e353001f 	cmp	r3, #31
    82e0:	9a000011 	bls	832c <gpio_set_pull+0xb0>
    82e4:	e30b3000 	movw	r3, #45056	; 0xb000
    82e8:	e3403000 	movt	r3, #0
    82ec:	e5933000 	ldr	r3, [r3]
    82f0:	e283309c 	add	r3, r3, #156	; 0x9c
    82f4:	e55b2005 	ldrb	r2, [fp, #-5]
    82f8:	e2422020 	sub	r2, r2, #32
    82fc:	e3a01001 	mov	r1, #1
    8300:	e1a02211 	lsl	r2, r1, r2
    8304:	e5832000 	str	r2, [r3]
    8308:	e3a00096 	mov	r0, #150	; 0x96
    830c:	eb0001e6 	bl	8aac <delay_cycles>
    8310:	e30b3000 	movw	r3, #45056	; 0xb000
    8314:	e3403000 	movt	r3, #0
    8318:	e5933000 	ldr	r3, [r3]
    831c:	e283309c 	add	r3, r3, #156	; 0x9c
    8320:	e3a02000 	mov	r2, #0
    8324:	e5832000 	str	r2, [r3]
    8328:	ea00000f 	b	836c <gpio_set_pull+0xf0>
    832c:	e30b3000 	movw	r3, #45056	; 0xb000
    8330:	e3403000 	movt	r3, #0
    8334:	e5933000 	ldr	r3, [r3]
    8338:	e2833098 	add	r3, r3, #152	; 0x98
    833c:	e55b2005 	ldrb	r2, [fp, #-5]
    8340:	e3a01001 	mov	r1, #1
    8344:	e1a02211 	lsl	r2, r1, r2
    8348:	e5832000 	str	r2, [r3]
    834c:	e3a00096 	mov	r0, #150	; 0x96
    8350:	eb0001d5 	bl	8aac <delay_cycles>
    8354:	e30b3000 	movw	r3, #45056	; 0xb000
    8358:	e3403000 	movt	r3, #0
    835c:	e5933000 	ldr	r3, [r3]
    8360:	e2833098 	add	r3, r3, #152	; 0x98
    8364:	e3a02000 	mov	r2, #0
    8368:	e5832000 	str	r2, [r3]
    836c:	e24bd004 	sub	sp, fp, #4
    8370:	e8bd8800 	pop	{fp, pc}

00008374 <kernel_main>:
    8374:	e92d4800 	push	{fp, lr}
    8378:	e28db004 	add	fp, sp, #4
    837c:	e24dd010 	sub	sp, sp, #16
    8380:	e3a03001 	mov	r3, #1
    8384:	e50b300c 	str	r3, [fp, #-12]
    8388:	eb000131 	bl	8854 <uart_init>
    838c:	e3a03000 	mov	r3, #0
    8390:	e50b3008 	str	r3, [fp, #-8]
    8394:	ea00000c 	b	83cc <kernel_main+0x58>
    8398:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    839c:	e3403000 	movt	r3, #0
    83a0:	e51b2008 	ldr	r2, [fp, #-8]
    83a4:	e51b1008 	ldr	r1, [fp, #-8]
    83a8:	e7831102 	str	r1, [r3, r2, lsl #2]
    83ac:	e30c3000 	movw	r3, #49152	; 0xc000
    83b0:	e3403000 	movt	r3, #0
    83b4:	e51b2008 	ldr	r2, [fp, #-8]
    83b8:	e51b1008 	ldr	r1, [fp, #-8]
    83bc:	e7831102 	str	r1, [r3, r2, lsl #2]
    83c0:	e51b3008 	ldr	r3, [fp, #-8]
    83c4:	e2833001 	add	r3, r3, #1
    83c8:	e50b3008 	str	r3, [fp, #-8]
    83cc:	e51b3008 	ldr	r3, [fp, #-8]
    83d0:	e3530f7d 	cmp	r3, #500	; 0x1f4
    83d4:	baffffef 	blt	8398 <kernel_main+0x24>
    83d8:	e30a0000 	movw	r0, #40960	; 0xa000
    83dc:	e3400000 	movt	r0, #0
    83e0:	eb000087 	bl	8604 <printk>
    83e4:	eb000195 	bl	8a40 <tic>
    83e8:	e30c07d0 	movw	r0, #51152	; 0xc7d0
    83ec:	e3400000 	movt	r0, #0
    83f0:	eb00021e 	bl	8c70 <optimize_me>
    83f4:	eb00019f 	bl	8a78 <toc>
    83f8:	e50b0010 	str	r0, [fp, #-16]
    83fc:	e30a0024 	movw	r0, #40996	; 0xa024
    8400:	e3400000 	movt	r0, #0
    8404:	e51b1010 	ldr	r1, [fp, #-16]
    8408:	eb00007d 	bl	8604 <printk>
    840c:	e30a0028 	movw	r0, #41000	; 0xa028
    8410:	e3400000 	movt	r0, #0
    8414:	eb00007a 	bl	8604 <printk>
    8418:	eb000188 	bl	8a40 <tic>
    841c:	e30c0000 	movw	r0, #49152	; 0xc000
    8420:	e3400000 	movt	r0, #0
    8424:	eb0001c2 	bl	8b34 <unoptimized>
    8428:	eb000192 	bl	8a78 <toc>
    842c:	e50b0010 	str	r0, [fp, #-16]
    8430:	e30a0024 	movw	r0, #40996	; 0xa024
    8434:	e3400000 	movt	r0, #0
    8438:	e51b1010 	ldr	r1, [fp, #-16]
    843c:	eb000070 	bl	8604 <printk>
    8440:	e3a03000 	mov	r3, #0
    8444:	e50b3008 	str	r3, [fp, #-8]
    8448:	ea000012 	b	8498 <kernel_main+0x124>
    844c:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    8450:	e3403000 	movt	r3, #0
    8454:	e51b2008 	ldr	r2, [fp, #-8]
    8458:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    845c:	e30c3000 	movw	r3, #49152	; 0xc000
    8460:	e3403000 	movt	r3, #0
    8464:	e51b1008 	ldr	r1, [fp, #-8]
    8468:	e7933101 	ldr	r3, [r3, r1, lsl #2]
    846c:	e1520003 	cmp	r2, r3
    8470:	0a000005 	beq	848c <kernel_main+0x118>
    8474:	e30a004c 	movw	r0, #41036	; 0xa04c
    8478:	e3400000 	movt	r0, #0
    847c:	eb000060 	bl	8604 <printk>
    8480:	e3a03000 	mov	r3, #0
    8484:	e50b300c 	str	r3, [fp, #-12]
    8488:	ea000005 	b	84a4 <kernel_main+0x130>
    848c:	e51b3008 	ldr	r3, [fp, #-8]
    8490:	e2833001 	add	r3, r3, #1
    8494:	e50b3008 	str	r3, [fp, #-8]
    8498:	e51b3008 	ldr	r3, [fp, #-8]
    849c:	e3530f7d 	cmp	r3, #500	; 0x1f4
    84a0:	baffffe9 	blt	844c <kernel_main+0xd8>
    84a4:	e51b300c 	ldr	r3, [fp, #-12]
    84a8:	e3530000 	cmp	r3, #0
    84ac:	0a000002 	beq	84bc <kernel_main+0x148>
    84b0:	e30a0068 	movw	r0, #41064	; 0xa068
    84b4:	e3400000 	movt	r0, #0
    84b8:	eb000051 	bl	8604 <printk>
    84bc:	e30806a0 	movw	r0, #34464	; 0x86a0
    84c0:	e3400001 	movt	r0, #1
    84c4:	eb000178 	bl	8aac <delay_cycles>
    84c8:	eafffffb 	b	84bc <kernel_main+0x148>

000084cc <printnumk>:
    84cc:	e92d4810 	push	{r4, fp, lr}
    84d0:	e28db008 	add	fp, sp, #8
    84d4:	e24dd024 	sub	sp, sp, #36	; 0x24
    84d8:	e1a01000 	mov	r1, r0
    84dc:	e14b22fc 	strd	r2, [fp, #-44]	; 0xffffffd4
    84e0:	e1a03001 	mov	r3, r1
    84e4:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
    84e8:	e3a03000 	mov	r3, #0
    84ec:	e50b3010 	str	r3, [fp, #-16]
    84f0:	e24b301c 	sub	r3, fp, #28
    84f4:	e2833007 	add	r3, r3, #7
    84f8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    84fc:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
    8500:	e3530008 	cmp	r3, #8
    8504:	1a000003 	bne	8518 <printnumk+0x4c>
    8508:	e30a3084 	movw	r3, #41092	; 0xa084
    850c:	e3403000 	movt	r3, #0
    8510:	e50b3010 	str	r3, [fp, #-16]
    8514:	ea000005 	b	8530 <printnumk+0x64>
    8518:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
    851c:	e3530010 	cmp	r3, #16
    8520:	1a000002 	bne	8530 <printnumk+0x64>
    8524:	e30a3088 	movw	r3, #41096	; 0xa088
    8528:	e3403000 	movt	r3, #0
    852c:	e50b3010 	str	r3, [fp, #-16]
    8530:	e51b4014 	ldr	r4, [fp, #-20]	; 0xffffffec
    8534:	e2443001 	sub	r3, r4, #1
    8538:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    853c:	e55b201d 	ldrb	r2, [fp, #-29]	; 0xffffffe3
    8540:	e3a03000 	mov	r3, #0
    8544:	e14b02dc 	ldrd	r0, [fp, #-44]	; 0xffffffd4
    8548:	eb0001f3 	bl	8d1c <__aeabi_uldivmod>
    854c:	e1a00002 	mov	r0, r2
    8550:	e1a01003 	mov	r1, r3
    8554:	e30b3004 	movw	r3, #45060	; 0xb004
    8558:	e3403000 	movt	r3, #0
    855c:	e0833000 	add	r3, r3, r0
    8560:	e5d33000 	ldrb	r3, [r3]
    8564:	e5c43000 	strb	r3, [r4]
    8568:	e55b201d 	ldrb	r2, [fp, #-29]	; 0xffffffe3
    856c:	e3a03000 	mov	r3, #0
    8570:	e14b02dc 	ldrd	r0, [fp, #-44]	; 0xffffffd4
    8574:	eb0001e8 	bl	8d1c <__aeabi_uldivmod>
    8578:	e1a02000 	mov	r2, r0
    857c:	e1a03001 	mov	r3, r1
    8580:	e14b22fc 	strd	r2, [fp, #-44]	; 0xffffffd4
    8584:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
    8588:	e1923003 	orrs	r3, r2, r3
    858c:	1affffe7 	bne	8530 <printnumk+0x64>
    8590:	e51b3010 	ldr	r3, [fp, #-16]
    8594:	e3530000 	cmp	r3, #0
    8598:	0a00000a 	beq	85c8 <printnumk+0xfc>
    859c:	ea000005 	b	85b8 <printnumk+0xec>
    85a0:	e51b3010 	ldr	r3, [fp, #-16]
    85a4:	e2832001 	add	r2, r3, #1
    85a8:	e50b2010 	str	r2, [fp, #-16]
    85ac:	e5d33000 	ldrb	r3, [r3]
    85b0:	e1a00003 	mov	r0, r3
    85b4:	eb0000db 	bl	8928 <uart_put_byte>
    85b8:	e51b3010 	ldr	r3, [fp, #-16]
    85bc:	e5d33000 	ldrb	r3, [r3]
    85c0:	e3530000 	cmp	r3, #0
    85c4:	1afffff5 	bne	85a0 <printnumk+0xd4>
    85c8:	ea000003 	b	85dc <printnumk+0x110>
    85cc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    85d0:	e5d33000 	ldrb	r3, [r3]
    85d4:	e1a00003 	mov	r0, r3
    85d8:	eb0000d2 	bl	8928 <uart_put_byte>
    85dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    85e0:	e2833001 	add	r3, r3, #1
    85e4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    85e8:	e24b301c 	sub	r3, fp, #28
    85ec:	e2833008 	add	r3, r3, #8
    85f0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    85f4:	e1520003 	cmp	r2, r3
    85f8:	1afffff3 	bne	85cc <printnumk+0x100>
    85fc:	e24bd008 	sub	sp, fp, #8
    8600:	e8bd8810 	pop	{r4, fp, pc}

00008604 <printk>:
    8604:	e92d000f 	push	{r0, r1, r2, r3}
    8608:	e92d4800 	push	{fp, lr}
    860c:	e28db004 	add	fp, sp, #4
    8610:	e24dd020 	sub	sp, sp, #32
    8614:	e28b3008 	add	r3, fp, #8
    8618:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    861c:	ea000082 	b	882c <printk+0x228>
    8620:	e59b3004 	ldr	r3, [fp, #4]
    8624:	e5d33000 	ldrb	r3, [r3]
    8628:	e3530025 	cmp	r3, #37	; 0x25
    862c:	0a000006 	beq	864c <printk+0x48>
    8630:	e59b3004 	ldr	r3, [fp, #4]
    8634:	e2832001 	add	r2, r3, #1
    8638:	e58b2004 	str	r2, [fp, #4]
    863c:	e5d33000 	ldrb	r3, [r3]
    8640:	e1a00003 	mov	r0, r3
    8644:	eb0000b7 	bl	8928 <uart_put_byte>
    8648:	ea000077 	b	882c <printk+0x228>
    864c:	e59b3004 	ldr	r3, [fp, #4]
    8650:	e2833001 	add	r3, r3, #1
    8654:	e58b3004 	str	r3, [fp, #4]
    8658:	e59b3004 	ldr	r3, [fp, #4]
    865c:	e5d33000 	ldrb	r3, [r3]
    8660:	e353006f 	cmp	r3, #111	; 0x6f
    8664:	0a000036 	beq	8744 <printk+0x140>
    8668:	e353006f 	cmp	r3, #111	; 0x6f
    866c:	ca000006 	bgt	868c <printk+0x88>
    8670:	e3530063 	cmp	r3, #99	; 0x63
    8674:	0a00005a 	beq	87e4 <printk+0x1e0>
    8678:	e3530064 	cmp	r3, #100	; 0x64
    867c:	0a00000e 	beq	86bc <printk+0xb8>
    8680:	e3530025 	cmp	r3, #37	; 0x25
    8684:	0a000060 	beq	880c <printk+0x208>
    8688:	ea000062 	b	8818 <printk+0x214>
    868c:	e3530073 	cmp	r3, #115	; 0x73
    8690:	0a000041 	beq	879c <printk+0x198>
    8694:	e3530073 	cmp	r3, #115	; 0x73
    8698:	ca000002 	bgt	86a8 <printk+0xa4>
    869c:	e3530070 	cmp	r3, #112	; 0x70
    86a0:	0a000032 	beq	8770 <printk+0x16c>
    86a4:	ea00005b 	b	8818 <printk+0x214>
    86a8:	e3530075 	cmp	r3, #117	; 0x75
    86ac:	0a000019 	beq	8718 <printk+0x114>
    86b0:	e3530078 	cmp	r3, #120	; 0x78
    86b4:	0a00002d 	beq	8770 <printk+0x16c>
    86b8:	ea000056 	b	8818 <printk+0x214>
    86bc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    86c0:	e2832004 	add	r2, r3, #4
    86c4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    86c8:	e5933000 	ldr	r3, [r3]
    86cc:	e50b300c 	str	r3, [fp, #-12]
    86d0:	e51b300c 	ldr	r3, [fp, #-12]
    86d4:	e3530000 	cmp	r3, #0
    86d8:	aa000008 	bge	8700 <printk+0xfc>
    86dc:	e3a0002d 	mov	r0, #45	; 0x2d
    86e0:	eb000090 	bl	8928 <uart_put_byte>
    86e4:	e51b300c 	ldr	r3, [fp, #-12]
    86e8:	e2633000 	rsb	r3, r3, #0
    86ec:	e1a02003 	mov	r2, r3
    86f0:	e1a03fc2 	asr	r3, r2, #31
    86f4:	e3a0000a 	mov	r0, #10
    86f8:	ebffff73 	bl	84cc <printnumk>
    86fc:	ea000047 	b	8820 <printk+0x21c>
    8700:	e51b300c 	ldr	r3, [fp, #-12]
    8704:	e1a02003 	mov	r2, r3
    8708:	e1a03fc2 	asr	r3, r2, #31
    870c:	e3a0000a 	mov	r0, #10
    8710:	ebffff6d 	bl	84cc <printnumk>
    8714:	ea000041 	b	8820 <printk+0x21c>
    8718:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    871c:	e2832004 	add	r2, r3, #4
    8720:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    8724:	e5933000 	ldr	r3, [r3]
    8728:	e50b3010 	str	r3, [fp, #-16]
    872c:	e51b3010 	ldr	r3, [fp, #-16]
    8730:	e1a02003 	mov	r2, r3
    8734:	e3a03000 	mov	r3, #0
    8738:	e3a0000a 	mov	r0, #10
    873c:	ebffff62 	bl	84cc <printnumk>
    8740:	ea000036 	b	8820 <printk+0x21c>
    8744:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    8748:	e2832004 	add	r2, r3, #4
    874c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    8750:	e5933000 	ldr	r3, [r3]
    8754:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    8758:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    875c:	e1a02003 	mov	r2, r3
    8760:	e3a03000 	mov	r3, #0
    8764:	e3a00008 	mov	r0, #8
    8768:	ebffff57 	bl	84cc <printnumk>
    876c:	ea00002b 	b	8820 <printk+0x21c>
    8770:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    8774:	e2832004 	add	r2, r3, #4
    8778:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    877c:	e5933000 	ldr	r3, [r3]
    8780:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8784:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8788:	e1a02003 	mov	r2, r3
    878c:	e3a03000 	mov	r3, #0
    8790:	e3a00010 	mov	r0, #16
    8794:	ebffff4c 	bl	84cc <printnumk>
    8798:	ea000020 	b	8820 <printk+0x21c>
    879c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    87a0:	e2832004 	add	r2, r3, #4
    87a4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    87a8:	e5933000 	ldr	r3, [r3]
    87ac:	e50b3008 	str	r3, [fp, #-8]
    87b0:	ea000006 	b	87d0 <printk+0x1cc>
    87b4:	e51b3008 	ldr	r3, [fp, #-8]
    87b8:	e5d33000 	ldrb	r3, [r3]
    87bc:	e1a00003 	mov	r0, r3
    87c0:	eb000058 	bl	8928 <uart_put_byte>
    87c4:	e51b3008 	ldr	r3, [fp, #-8]
    87c8:	e2833001 	add	r3, r3, #1
    87cc:	e50b3008 	str	r3, [fp, #-8]
    87d0:	e51b3008 	ldr	r3, [fp, #-8]
    87d4:	e5d33000 	ldrb	r3, [r3]
    87d8:	e3530000 	cmp	r3, #0
    87dc:	1afffff4 	bne	87b4 <printk+0x1b0>
    87e0:	ea00000e 	b	8820 <printk+0x21c>
    87e4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    87e8:	e2832004 	add	r2, r3, #4
    87ec:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    87f0:	e5933000 	ldr	r3, [r3]
    87f4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    87f8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    87fc:	e6ef3073 	uxtb	r3, r3
    8800:	e1a00003 	mov	r0, r3
    8804:	eb000047 	bl	8928 <uart_put_byte>
    8808:	ea000004 	b	8820 <printk+0x21c>
    880c:	e3a00025 	mov	r0, #37	; 0x25
    8810:	eb000044 	bl	8928 <uart_put_byte>
    8814:	ea000001 	b	8820 <printk+0x21c>
    8818:	e3e03000 	mvn	r3, #0
    881c:	ea000007 	b	8840 <printk+0x23c>
    8820:	e59b3004 	ldr	r3, [fp, #4]
    8824:	e2833001 	add	r3, r3, #1
    8828:	e58b3004 	str	r3, [fp, #4]
    882c:	e59b3004 	ldr	r3, [fp, #4]
    8830:	e5d33000 	ldrb	r3, [r3]
    8834:	e3530000 	cmp	r3, #0
    8838:	1affff78 	bne	8620 <printk+0x1c>
    883c:	e3a03000 	mov	r3, #0
    8840:	e1a00003 	mov	r0, r3
    8844:	e24bd004 	sub	sp, fp, #4
    8848:	e8bd4800 	pop	{fp, lr}
    884c:	e28dd010 	add	sp, sp, #16
    8850:	e12fff1e 	bx	lr

00008854 <uart_init>:
    8854:	e92d4800 	push	{fp, lr}
    8858:	e28db004 	add	fp, sp, #4
    885c:	e3a0000f 	mov	r0, #15
    8860:	e3a01000 	mov	r1, #0
    8864:	ebfffe84 	bl	827c <gpio_set_pull>
    8868:	e3a0000e 	mov	r0, #14
    886c:	e3a01000 	mov	r1, #0
    8870:	ebfffe81 	bl	827c <gpio_set_pull>
    8874:	e3a0000f 	mov	r0, #15
    8878:	e3a01002 	mov	r1, #2
    887c:	ebfffdf4 	bl	8054 <gpio_config>
    8880:	e3a0000e 	mov	r0, #14
    8884:	e3a01002 	mov	r1, #2
    8888:	ebfffdf1 	bl	8054 <gpio_config>
    888c:	e3053004 	movw	r3, #20484	; 0x5004
    8890:	e3433f21 	movt	r3, #16161	; 0x3f21
    8894:	e3052004 	movw	r2, #20484	; 0x5004
    8898:	e3432f21 	movt	r2, #16161	; 0x3f21
    889c:	e5922000 	ldr	r2, [r2]
    88a0:	e3822001 	orr	r2, r2, #1
    88a4:	e5832000 	str	r2, [r3]
    88a8:	e305304c 	movw	r3, #20556	; 0x504c
    88ac:	e3433f21 	movt	r3, #16161	; 0x3f21
    88b0:	e3a02003 	mov	r2, #3
    88b4:	e5832000 	str	r2, [r3]
    88b8:	e3053044 	movw	r3, #20548	; 0x5044
    88bc:	e3433f21 	movt	r3, #16161	; 0x3f21
    88c0:	e3a02000 	mov	r2, #0
    88c4:	e5832000 	str	r2, [r3]
    88c8:	e3053068 	movw	r3, #20584	; 0x5068
    88cc:	e3433f21 	movt	r3, #16161	; 0x3f21
    88d0:	e300210e 	movw	r2, #270	; 0x10e
    88d4:	e5832000 	str	r2, [r3]
    88d8:	e8bd8800 	pop	{fp, pc}

000088dc <uart_close>:
    88dc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    88e0:	e28db000 	add	fp, sp, #0
    88e4:	e3053048 	movw	r3, #20552	; 0x5048
    88e8:	e3433f21 	movt	r3, #16161	; 0x3f21
    88ec:	e3052048 	movw	r2, #20552	; 0x5048
    88f0:	e3432f21 	movt	r2, #16161	; 0x3f21
    88f4:	e5922000 	ldr	r2, [r2]
    88f8:	e3822006 	orr	r2, r2, #6
    88fc:	e5832000 	str	r2, [r3]
    8900:	e3053004 	movw	r3, #20484	; 0x5004
    8904:	e3433f21 	movt	r3, #16161	; 0x3f21
    8908:	e3052004 	movw	r2, #20484	; 0x5004
    890c:	e3432f21 	movt	r2, #16161	; 0x3f21
    8910:	e5922000 	ldr	r2, [r2]
    8914:	e3c22001 	bic	r2, r2, #1
    8918:	e5832000 	str	r2, [r3]
    891c:	e24bd000 	sub	sp, fp, #0
    8920:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8924:	e12fff1e 	bx	lr

00008928 <uart_put_byte>:
    8928:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    892c:	e28db000 	add	fp, sp, #0
    8930:	e24dd00c 	sub	sp, sp, #12
    8934:	e1a03000 	mov	r3, r0
    8938:	e54b3005 	strb	r3, [fp, #-5]
    893c:	e1a00000 	nop			; (mov r0, r0)
    8940:	e3053054 	movw	r3, #20564	; 0x5054
    8944:	e3433f21 	movt	r3, #16161	; 0x3f21
    8948:	e5933000 	ldr	r3, [r3]
    894c:	e2033020 	and	r3, r3, #32
    8950:	e3530000 	cmp	r3, #0
    8954:	0afffff9 	beq	8940 <uart_put_byte+0x18>
    8958:	e3053040 	movw	r3, #20544	; 0x5040
    895c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8960:	e55b2005 	ldrb	r2, [fp, #-5]
    8964:	e5c32000 	strb	r2, [r3]
    8968:	e24bd000 	sub	sp, fp, #0
    896c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8970:	e12fff1e 	bx	lr

00008974 <uart_get_byte>:
    8974:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8978:	e28db000 	add	fp, sp, #0
    897c:	e1a00000 	nop			; (mov r0, r0)
    8980:	e3053054 	movw	r3, #20564	; 0x5054
    8984:	e3433f21 	movt	r3, #16161	; 0x3f21
    8988:	e5933000 	ldr	r3, [r3]
    898c:	e2033001 	and	r3, r3, #1
    8990:	e3530000 	cmp	r3, #0
    8994:	0afffff9 	beq	8980 <uart_get_byte+0xc>
    8998:	e3053040 	movw	r3, #20544	; 0x5040
    899c:	e3433f21 	movt	r3, #16161	; 0x3f21
    89a0:	e5d33000 	ldrb	r3, [r3]
    89a4:	e6ef3073 	uxtb	r3, r3
    89a8:	e1a00003 	mov	r0, r3
    89ac:	e24bd000 	sub	sp, fp, #0
    89b0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    89b4:	e12fff1e 	bx	lr

000089b8 <timer_start>:
    89b8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    89bc:	e28db000 	add	fp, sp, #0
    89c0:	e24dd00c 	sub	sp, sp, #12
    89c4:	e50b0008 	str	r0, [fp, #-8]
    89c8:	e1a00000 	nop			; (mov r0, r0)
    89cc:	e24bd000 	sub	sp, fp, #0
    89d0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    89d4:	e12fff1e 	bx	lr

000089d8 <timer_stop>:
    89d8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    89dc:	e28db000 	add	fp, sp, #0
    89e0:	e1a00000 	nop			; (mov r0, r0)
    89e4:	e24bd000 	sub	sp, fp, #0
    89e8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    89ec:	e12fff1e 	bx	lr

000089f0 <timer_read>:
    89f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    89f4:	e28db000 	add	fp, sp, #0
    89f8:	e3a03000 	mov	r3, #0
    89fc:	e1a00003 	mov	r0, r3
    8a00:	e24bd000 	sub	sp, fp, #0
    8a04:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a08:	e12fff1e 	bx	lr

00008a0c <timer_is_pending>:
    8a0c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a10:	e28db000 	add	fp, sp, #0
    8a14:	e3a03000 	mov	r3, #0
    8a18:	e1a00003 	mov	r0, r3
    8a1c:	e24bd000 	sub	sp, fp, #0
    8a20:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a24:	e12fff1e 	bx	lr

00008a28 <timer_clear_pending>:
    8a28:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a2c:	e28db000 	add	fp, sp, #0
    8a30:	e1a00000 	nop			; (mov r0, r0)
    8a34:	e24bd000 	sub	sp, fp, #0
    8a38:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a3c:	e12fff1e 	bx	lr

00008a40 <tic>:
    8a40:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a44:	e28db000 	add	fp, sp, #0
    8a48:	e30b3408 	movw	r3, #46088	; 0xb408
    8a4c:	e3433f00 	movt	r3, #16128	; 0x3f00
    8a50:	e3a02082 	mov	r2, #130	; 0x82
    8a54:	e5832000 	str	r2, [r3]
    8a58:	e3a03b2d 	mov	r3, #46080	; 0xb400
    8a5c:	e3433f00 	movt	r3, #16128	; 0x3f00
    8a60:	e3e02000 	mvn	r2, #0
    8a64:	e5832000 	str	r2, [r3]
    8a68:	e1a00000 	nop			; (mov r0, r0)
    8a6c:	e24bd000 	sub	sp, fp, #0
    8a70:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a74:	e12fff1e 	bx	lr

00008a78 <toc>:
    8a78:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a7c:	e28db000 	add	fp, sp, #0
    8a80:	e24dd00c 	sub	sp, sp, #12
    8a84:	e30b3404 	movw	r3, #46084	; 0xb404
    8a88:	e3433f00 	movt	r3, #16128	; 0x3f00
    8a8c:	e5933000 	ldr	r3, [r3]
    8a90:	e50b3008 	str	r3, [fp, #-8]
    8a94:	e51b3008 	ldr	r3, [fp, #-8]
    8a98:	e1e03003 	mvn	r3, r3
    8a9c:	e1a00003 	mov	r0, r3
    8aa0:	e24bd000 	sub	sp, fp, #0
    8aa4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8aa8:	e12fff1e 	bx	lr

00008aac <delay_cycles>:
    8aac:	e2500001 	subs	r0, r0, #1
    8ab0:	1afffffd 	bne	8aac <delay_cycles>
    8ab4:	e1a0f00e 	mov	pc, lr

00008ab8 <read_cpsr>:
    8ab8:	e10f0000 	mrs	r0, CPSR
    8abc:	e1a0f00e 	mov	pc, lr

00008ac0 <write_cpsr>:
    8ac0:	e129f000 	msr	CPSR_fc, r0
    8ac4:	e1a0f00e 	mov	pc, lr

00008ac8 <disable_interrupts>:
    8ac8:	e10f0000 	mrs	r0, CPSR
    8acc:	e3a01d07 	mov	r1, #448	; 0x1c0
    8ad0:	e1800001 	orr	r0, r0, r1
    8ad4:	e129f000 	msr	CPSR_fc, r0
    8ad8:	e1a0f00e 	mov	pc, lr

00008adc <enable_interrupts>:
    8adc:	e10f0000 	mrs	r0, CPSR
    8ae0:	e3a01d07 	mov	r1, #448	; 0x1c0
    8ae4:	e1c00001 	bic	r0, r0, r1
    8ae8:	e129f000 	msr	CPSR_fc, r0
    8aec:	e1a0f00e 	mov	pc, lr

00008af0 <func2>:
    8af0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8af4:	e28db000 	add	fp, sp, #0
    8af8:	e24dd00c 	sub	sp, sp, #12
    8afc:	e50b0008 	str	r0, [fp, #-8]
    8b00:	e50b100c 	str	r1, [fp, #-12]
    8b04:	e51b200c 	ldr	r2, [fp, #-12]
    8b08:	e1a03002 	mov	r3, r2
    8b0c:	e1a03103 	lsl	r3, r3, #2
    8b10:	e0833002 	add	r3, r3, r2
    8b14:	e1a02103 	lsl	r2, r3, #2
    8b18:	e0832002 	add	r2, r3, r2
    8b1c:	e51b3008 	ldr	r3, [fp, #-8]
    8b20:	e0823003 	add	r3, r2, r3
    8b24:	e1a00003 	mov	r0, r3
    8b28:	e24bd000 	sub	sp, fp, #0
    8b2c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8b30:	e12fff1e 	bx	lr

00008b34 <unoptimized>:
    8b34:	e92d4870 	push	{r4, r5, r6, fp, lr}
    8b38:	e28db010 	add	fp, sp, #16
    8b3c:	e24dd01c 	sub	sp, sp, #28
    8b40:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
    8b44:	e3a03000 	mov	r3, #0
    8b48:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8b4c:	ea000037 	b	8c30 <unoptimized+0xfc>
    8b50:	e3a03011 	mov	r3, #17
    8b54:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    8b58:	e3a03000 	mov	r3, #0
    8b5c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8b60:	ea00002c 	b	8c18 <unoptimized+0xe4>
    8b64:	e3a03002 	mov	r3, #2
    8b68:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8b6c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8b70:	e2833001 	add	r3, r3, #1
    8b74:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8b78:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8b7c:	e2432002 	sub	r2, r3, #2
    8b80:	e1a03002 	mov	r3, r2
    8b84:	e1a03083 	lsl	r3, r3, #1
    8b88:	e0833002 	add	r3, r3, r2
    8b8c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8b90:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8b94:	e1a03103 	lsl	r3, r3, #2
    8b98:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8b9c:	e0824003 	add	r4, r2, r3
    8ba0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8ba4:	e1a03103 	lsl	r3, r3, #2
    8ba8:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8bac:	e0823003 	add	r3, r2, r3
    8bb0:	e5933000 	ldr	r3, [r3]
    8bb4:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    8bb8:	e0030392 	mul	r3, r2, r3
    8bbc:	e2835010 	add	r5, r3, #16
    8bc0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8bc4:	e1a03103 	lsl	r3, r3, #2
    8bc8:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8bcc:	e0823003 	add	r3, r2, r3
    8bd0:	e5936000 	ldr	r6, [r3]
    8bd4:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    8bd8:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
    8bdc:	ebffffc3 	bl	8af0 <func2>
    8be0:	e1a03000 	mov	r3, r0
    8be4:	e0030396 	mul	r3, r6, r3
    8be8:	e0852003 	add	r2, r5, r3
    8bec:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8bf0:	e0823003 	add	r3, r2, r3
    8bf4:	e283200f 	add	r2, r3, #15
    8bf8:	e3530000 	cmp	r3, #0
    8bfc:	b1a03002 	movlt	r3, r2
    8c00:	a1a03003 	movge	r3, r3
    8c04:	e1a03243 	asr	r3, r3, #4
    8c08:	e5843000 	str	r3, [r4]
    8c0c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8c10:	e2833001 	add	r3, r3, #1
    8c14:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8c18:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8c1c:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8c20:	baffffcf 	blt	8b64 <unoptimized+0x30>
    8c24:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8c28:	e2833001 	add	r3, r3, #1
    8c2c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8c30:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8c34:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8c38:	baffffc4 	blt	8b50 <unoptimized+0x1c>
    8c3c:	e24bd010 	sub	sp, fp, #16
    8c40:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    8c44:	e12fff1e 	bx	lr

00008c48 <func>:
    8c48:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8c4c:	e28db000 	add	fp, sp, #0
    8c50:	e24dd00c 	sub	sp, sp, #12
    8c54:	e0812181 	add	r2, r1, r1, lsl #3
    8c58:	e0822201 	add	r2, r2, r1, lsl #4
    8c5c:	e0823000 	add	r3, r2, r0
    8c60:	e1a00003 	mov	r0, r3
    8c64:	e1a0d00b 	mov	sp, fp
    8c68:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8c6c:	e12fff1e 	bx	lr

00008c70 <optimize_me>:
    8c70:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
    8c74:	e28db010 	add	fp, sp, #16
    8c78:	e24dd01c 	sub	sp, sp, #28
    8c7c:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
    8c80:	e3a07000 	mov	r7, #0
    8c84:	ea00001f 	b	8d08 <optimize_me+0x98>
    8c88:	e3a08000 	mov	r8, #0
    8c8c:	ea00001a 	b	8cfc <optimize_me+0x8c>
    8c90:	e3a03003 	mov	r3, #3
    8c94:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8c98:	e1a03008 	mov	r3, r8
    8c9c:	e1a03103 	lsl	r3, r3, #2
    8ca0:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8ca4:	e0823003 	add	r3, r2, r3
    8ca8:	e1a04003 	mov	r4, r3
    8cac:	e5933000 	ldr	r3, [r3]
    8cb0:	e0833203 	add	r3, r3, r3, lsl #4
    8cb4:	e2835010 	add	r5, r3, #16
    8cb8:	e1a03107 	lsl	r3, r7, #2
    8cbc:	e0823003 	add	r3, r2, r3
    8cc0:	e5936000 	ldr	r6, [r3]
    8cc4:	e0882188 	add	r2, r8, r8, lsl #3
    8cc8:	e0822208 	add	r2, r2, r8, lsl #4
    8ccc:	e0820007 	add	r0, r2, r7
    8cd0:	e0030096 	mul	r3, r6, r0
    8cd4:	e0852003 	add	r2, r5, r3
    8cd8:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8cdc:	e0823003 	add	r3, r2, r3
    8ce0:	e283200f 	add	r2, r3, #15
    8ce4:	e3530000 	cmp	r3, #0
    8ce8:	b1a03002 	movlt	r3, r2
    8cec:	a1a03003 	movge	r3, r3
    8cf0:	e1a03243 	asr	r3, r3, #4
    8cf4:	e5843000 	str	r3, [r4]
    8cf8:	e2888001 	add	r8, r8, #1
    8cfc:	e3580f7d 	cmp	r8, #500	; 0x1f4
    8d00:	baffffe2 	blt	8c90 <optimize_me+0x20>
    8d04:	e2877001 	add	r7, r7, #1
    8d08:	e3570f7d 	cmp	r7, #500	; 0x1f4
    8d0c:	baffffdd 	blt	8c88 <optimize_me+0x18>
    8d10:	e24bd010 	sub	sp, fp, #16
    8d14:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
    8d18:	e12fff1e 	bx	lr

00008d1c <__aeabi_uldivmod>:
    8d1c:	e3530000 	cmp	r3, #0
    8d20:	03520000 	cmpeq	r2, #0
    8d24:	1a000004 	bne	8d3c <__aeabi_uldivmod+0x20>
    8d28:	e3510000 	cmp	r1, #0
    8d2c:	03500000 	cmpeq	r0, #0
    8d30:	13e01000 	mvnne	r1, #0
    8d34:	13e00000 	mvnne	r0, #0
    8d38:	ea000027 	b	8ddc <__aeabi_idiv0>
    8d3c:	e24dd008 	sub	sp, sp, #8
    8d40:	e92d6000 	push	{sp, lr}
    8d44:	eb000014 	bl	8d9c <__gnu_uldivmod_helper>
    8d48:	e59de004 	ldr	lr, [sp, #4]
    8d4c:	e28dd008 	add	sp, sp, #8
    8d50:	e8bd000c 	pop	{r2, r3}
    8d54:	e12fff1e 	bx	lr

00008d58 <__gnu_ldivmod_helper>:
    8d58:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8d5c:	e59d6020 	ldr	r6, [sp, #32]
    8d60:	e1a07002 	mov	r7, r2
    8d64:	e1a0a003 	mov	sl, r3
    8d68:	e1a04000 	mov	r4, r0
    8d6c:	e1a05001 	mov	r5, r1
    8d70:	eb00001a 	bl	8de0 <__divdi3>
    8d74:	e1a03000 	mov	r3, r0
    8d78:	e0020197 	mul	r2, r7, r1
    8d7c:	e0898097 	umull	r8, r9, r7, r0
    8d80:	e023239a 	mla	r3, sl, r3, r2
    8d84:	e0544008 	subs	r4, r4, r8
    8d88:	e0839009 	add	r9, r3, r9
    8d8c:	e0c55009 	sbc	r5, r5, r9
    8d90:	e8860030 	stm	r6, {r4, r5}
    8d94:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8d98:	e12fff1e 	bx	lr

00008d9c <__gnu_uldivmod_helper>:
    8d9c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8da0:	e59d5018 	ldr	r5, [sp, #24]
    8da4:	e1a04002 	mov	r4, r2
    8da8:	e1a08003 	mov	r8, r3
    8dac:	e1a06000 	mov	r6, r0
    8db0:	e1a07001 	mov	r7, r1
    8db4:	eb000067 	bl	8f58 <__udivdi3>
    8db8:	e0080890 	mul	r8, r0, r8
    8dbc:	e0832490 	umull	r2, r3, r0, r4
    8dc0:	e0248491 	mla	r4, r1, r4, r8
    8dc4:	e0566002 	subs	r6, r6, r2
    8dc8:	e0843003 	add	r3, r4, r3
    8dcc:	e0c77003 	sbc	r7, r7, r3
    8dd0:	e88500c0 	stm	r5, {r6, r7}
    8dd4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8dd8:	e12fff1e 	bx	lr

00008ddc <__aeabi_idiv0>:
    8ddc:	e12fff1e 	bx	lr

00008de0 <__divdi3>:
    8de0:	e3510000 	cmp	r1, #0
    8de4:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8de8:	a1a04000 	movge	r4, r0
    8dec:	a1a05001 	movge	r5, r1
    8df0:	a3a0a000 	movge	sl, #0
    8df4:	ba000053 	blt	8f48 <__divdi3+0x168>
    8df8:	e3530000 	cmp	r3, #0
    8dfc:	a1a08002 	movge	r8, r2
    8e00:	a1a09003 	movge	r9, r3
    8e04:	ba00004b 	blt	8f38 <__divdi3+0x158>
    8e08:	e1550009 	cmp	r5, r9
    8e0c:	01540008 	cmpeq	r4, r8
    8e10:	33a02000 	movcc	r2, #0
    8e14:	33a03000 	movcc	r3, #0
    8e18:	3a00003b 	bcc	8f0c <__divdi3+0x12c>
    8e1c:	e1a01009 	mov	r1, r9
    8e20:	e1a00008 	mov	r0, r8
    8e24:	eb000093 	bl	9078 <__clzdi2>
    8e28:	e1a01005 	mov	r1, r5
    8e2c:	e1a0b000 	mov	fp, r0
    8e30:	e1a00004 	mov	r0, r4
    8e34:	eb00008f 	bl	9078 <__clzdi2>
    8e38:	e060000b 	rsb	r0, r0, fp
    8e3c:	e240e020 	sub	lr, r0, #32
    8e40:	e1a07019 	lsl	r7, r9, r0
    8e44:	e1877e18 	orr	r7, r7, r8, lsl lr
    8e48:	e260c020 	rsb	ip, r0, #32
    8e4c:	e1877c38 	orr	r7, r7, r8, lsr ip
    8e50:	e1550007 	cmp	r5, r7
    8e54:	e1a06018 	lsl	r6, r8, r0
    8e58:	01540006 	cmpeq	r4, r6
    8e5c:	e1a01000 	mov	r1, r0
    8e60:	33a02000 	movcc	r2, #0
    8e64:	33a03000 	movcc	r3, #0
    8e68:	3a000005 	bcc	8e84 <__divdi3+0xa4>
    8e6c:	e3a08001 	mov	r8, #1
    8e70:	e0544006 	subs	r4, r4, r6
    8e74:	e1a03e18 	lsl	r3, r8, lr
    8e78:	e1833c38 	orr	r3, r3, r8, lsr ip
    8e7c:	e0c55007 	sbc	r5, r5, r7
    8e80:	e1a02018 	lsl	r2, r8, r0
    8e84:	e3500000 	cmp	r0, #0
    8e88:	0a00001f 	beq	8f0c <__divdi3+0x12c>
    8e8c:	e1b070a7 	lsrs	r7, r7, #1
    8e90:	e1a06066 	rrx	r6, r6
    8e94:	ea000007 	b	8eb8 <__divdi3+0xd8>
    8e98:	e0544006 	subs	r4, r4, r6
    8e9c:	e0c55007 	sbc	r5, r5, r7
    8ea0:	e0944004 	adds	r4, r4, r4
    8ea4:	e0a55005 	adc	r5, r5, r5
    8ea8:	e2944001 	adds	r4, r4, #1
    8eac:	e2a55000 	adc	r5, r5, #0
    8eb0:	e2500001 	subs	r0, r0, #1
    8eb4:	0a000006 	beq	8ed4 <__divdi3+0xf4>
    8eb8:	e1570005 	cmp	r7, r5
    8ebc:	01560004 	cmpeq	r6, r4
    8ec0:	9afffff4 	bls	8e98 <__divdi3+0xb8>
    8ec4:	e0944004 	adds	r4, r4, r4
    8ec8:	e0a55005 	adc	r5, r5, r5
    8ecc:	e2500001 	subs	r0, r0, #1
    8ed0:	1afffff8 	bne	8eb8 <__divdi3+0xd8>
    8ed4:	e261c020 	rsb	ip, r1, #32
    8ed8:	e1a00134 	lsr	r0, r4, r1
    8edc:	e0922004 	adds	r2, r2, r4
    8ee0:	e241e020 	sub	lr, r1, #32
    8ee4:	e1800c15 	orr	r0, r0, r5, lsl ip
    8ee8:	e1a04135 	lsr	r4, r5, r1
    8eec:	e1800e35 	orr	r0, r0, r5, lsr lr
    8ef0:	e1a07114 	lsl	r7, r4, r1
    8ef4:	e1877e10 	orr	r7, r7, r0, lsl lr
    8ef8:	e1a06110 	lsl	r6, r0, r1
    8efc:	e0a33005 	adc	r3, r3, r5
    8f00:	e1877c30 	orr	r7, r7, r0, lsr ip
    8f04:	e0522006 	subs	r2, r2, r6
    8f08:	e0c33007 	sbc	r3, r3, r7
    8f0c:	e29a0000 	adds	r0, sl, #0
    8f10:	13a00001 	movne	r0, #1
    8f14:	e3a01000 	mov	r1, #0
    8f18:	e2704000 	rsbs	r4, r0, #0
    8f1c:	e2e15000 	rsc	r5, r1, #0
    8f20:	e0222004 	eor	r2, r2, r4
    8f24:	e0233005 	eor	r3, r3, r5
    8f28:	e0900002 	adds	r0, r0, r2
    8f2c:	e0a11003 	adc	r1, r1, r3
    8f30:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8f34:	e12fff1e 	bx	lr
    8f38:	e2728000 	rsbs	r8, r2, #0
    8f3c:	e1e0a00a 	mvn	sl, sl
    8f40:	e2e39000 	rsc	r9, r3, #0
    8f44:	eaffffaf 	b	8e08 <__divdi3+0x28>
    8f48:	e2704000 	rsbs	r4, r0, #0
    8f4c:	e2e15000 	rsc	r5, r1, #0
    8f50:	e3e0a000 	mvn	sl, #0
    8f54:	eaffffa7 	b	8df8 <__divdi3+0x18>

00008f58 <__udivdi3>:
    8f58:	e1510003 	cmp	r1, r3
    8f5c:	01500002 	cmpeq	r0, r2
    8f60:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8f64:	e1a04000 	mov	r4, r0
    8f68:	e1a05001 	mov	r5, r1
    8f6c:	e1a08002 	mov	r8, r2
    8f70:	e1a09003 	mov	r9, r3
    8f74:	33a00000 	movcc	r0, #0
    8f78:	33a01000 	movcc	r1, #0
    8f7c:	3a00003b 	bcc	9070 <__udivdi3+0x118>
    8f80:	e1a01003 	mov	r1, r3
    8f84:	e1a00002 	mov	r0, r2
    8f88:	eb00003a 	bl	9078 <__clzdi2>
    8f8c:	e1a01005 	mov	r1, r5
    8f90:	e1a0a000 	mov	sl, r0
    8f94:	e1a00004 	mov	r0, r4
    8f98:	eb000036 	bl	9078 <__clzdi2>
    8f9c:	e060300a 	rsb	r3, r0, sl
    8fa0:	e243e020 	sub	lr, r3, #32
    8fa4:	e1a07319 	lsl	r7, r9, r3
    8fa8:	e1877e18 	orr	r7, r7, r8, lsl lr
    8fac:	e263c020 	rsb	ip, r3, #32
    8fb0:	e1877c38 	orr	r7, r7, r8, lsr ip
    8fb4:	e1550007 	cmp	r5, r7
    8fb8:	e1a06318 	lsl	r6, r8, r3
    8fbc:	01540006 	cmpeq	r4, r6
    8fc0:	e1a02003 	mov	r2, r3
    8fc4:	33a00000 	movcc	r0, #0
    8fc8:	33a01000 	movcc	r1, #0
    8fcc:	3a000005 	bcc	8fe8 <__udivdi3+0x90>
    8fd0:	e3a08001 	mov	r8, #1
    8fd4:	e0544006 	subs	r4, r4, r6
    8fd8:	e1a01e18 	lsl	r1, r8, lr
    8fdc:	e1811c38 	orr	r1, r1, r8, lsr ip
    8fe0:	e0c55007 	sbc	r5, r5, r7
    8fe4:	e1a00318 	lsl	r0, r8, r3
    8fe8:	e3530000 	cmp	r3, #0
    8fec:	0a00001f 	beq	9070 <__udivdi3+0x118>
    8ff0:	e1b070a7 	lsrs	r7, r7, #1
    8ff4:	e1a06066 	rrx	r6, r6
    8ff8:	ea000007 	b	901c <__udivdi3+0xc4>
    8ffc:	e0544006 	subs	r4, r4, r6
    9000:	e0c55007 	sbc	r5, r5, r7
    9004:	e0944004 	adds	r4, r4, r4
    9008:	e0a55005 	adc	r5, r5, r5
    900c:	e2944001 	adds	r4, r4, #1
    9010:	e2a55000 	adc	r5, r5, #0
    9014:	e2533001 	subs	r3, r3, #1
    9018:	0a000006 	beq	9038 <__udivdi3+0xe0>
    901c:	e1570005 	cmp	r7, r5
    9020:	01560004 	cmpeq	r6, r4
    9024:	9afffff4 	bls	8ffc <__udivdi3+0xa4>
    9028:	e0944004 	adds	r4, r4, r4
    902c:	e0a55005 	adc	r5, r5, r5
    9030:	e2533001 	subs	r3, r3, #1
    9034:	1afffff8 	bne	901c <__udivdi3+0xc4>
    9038:	e0948000 	adds	r8, r4, r0
    903c:	e0a59001 	adc	r9, r5, r1
    9040:	e1a03234 	lsr	r3, r4, r2
    9044:	e2621020 	rsb	r1, r2, #32
    9048:	e2420020 	sub	r0, r2, #32
    904c:	e1833115 	orr	r3, r3, r5, lsl r1
    9050:	e1a0c235 	lsr	ip, r5, r2
    9054:	e1833035 	orr	r3, r3, r5, lsr r0
    9058:	e1a0721c 	lsl	r7, ip, r2
    905c:	e1877013 	orr	r7, r7, r3, lsl r0
    9060:	e1a06213 	lsl	r6, r3, r2
    9064:	e1877133 	orr	r7, r7, r3, lsr r1
    9068:	e0580006 	subs	r0, r8, r6
    906c:	e0c91007 	sbc	r1, r9, r7
    9070:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    9074:	e12fff1e 	bx	lr

00009078 <__clzdi2>:
    9078:	e92d4010 	push	{r4, lr}
    907c:	e3510000 	cmp	r1, #0
    9080:	1a000002 	bne	9090 <__clzdi2+0x18>
    9084:	eb000005 	bl	90a0 <__clzsi2>
    9088:	e2800020 	add	r0, r0, #32
    908c:	ea000001 	b	9098 <__clzdi2+0x20>
    9090:	e1a00001 	mov	r0, r1
    9094:	eb000001 	bl	90a0 <__clzsi2>
    9098:	e8bd4010 	pop	{r4, lr}
    909c:	e12fff1e 	bx	lr

000090a0 <__clzsi2>:
    90a0:	e3a0101c 	mov	r1, #28
    90a4:	e3500801 	cmp	r0, #65536	; 0x10000
    90a8:	21a00820 	lsrcs	r0, r0, #16
    90ac:	22411010 	subcs	r1, r1, #16
    90b0:	e3500c01 	cmp	r0, #256	; 0x100
    90b4:	21a00420 	lsrcs	r0, r0, #8
    90b8:	22411008 	subcs	r1, r1, #8
    90bc:	e3500010 	cmp	r0, #16
    90c0:	21a00220 	lsrcs	r0, r0, #4
    90c4:	22411004 	subcs	r1, r1, #4
    90c8:	e28f2008 	add	r2, pc, #8
    90cc:	e7d20000 	ldrb	r0, [r2, r0]
    90d0:	e0800001 	add	r0, r0, r1
    90d4:	e12fff1e 	bx	lr
    90d8:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    90dc:	01010101 	tsteq	r1, r1, lsl #2
	...

Disassembly of section .rodata:

0000a000 <__rodata_start>:
    a000:	2b2b2b2b 	blcs	ad4cb4 <__user_program+0x7d4cb4>
    a004:	4f2b2b2b 	svcmi	0x002b2b2b
    a008:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
    a00c:	64657a69 	strbtvs	r7, [r5], #-2665	; 0xfffff597
    a010:	6e754620 	cdpvs	6, 7, cr4, cr5, cr0, {1}
    a014:	6f697463 	svcvs	0x00697463
    a018:	2b2b2b6e 	blcs	ad4dd8 <__user_program+0x7d4dd8>
    a01c:	2b2b2b2b 	blcs	ad4cd0 <__user_program+0x7d4cd0>
    a020:	0000000a 	andeq	r0, r0, sl

0000a024 <.LC1>:
    a024:	000a6425 	andeq	r6, sl, r5, lsr #8

0000a028 <.LC2>:
    a028:	2b2b2b2b 	blcs	ad4cdc <__user_program+0x7d4cdc>
    a02c:	552b2b2b 	strpl	r2, [fp, #-2859]!	; 0xfffff4d5
    a030:	74706f6e 	ldrbtvc	r6, [r0], #-3950	; 0xfffff092
    a034:	7a696d69 	bvc	1a655e0 <__user_program+0x17655e0>
    a038:	46206465 	strtmi	r6, [r0], -r5, ror #8
    a03c:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xfffff18b
    a040:	2b6e6f69 	blcs	1ba5dec <__user_program+0x18a5dec>
    a044:	2b2b2b2b 	blcs	ad4cf8 <__user_program+0x7d4cf8>
    a048:	000a2b2b 	andeq	r2, sl, fp, lsr #22

0000a04c <.LC3>:
    a04c:	2b2b2b2b 	blcs	ad4d00 <__user_program+0x7d4d00>
    a050:	542b2b2b 	strtpl	r2, [fp], #-2859	; 0xfffff4d5
    a054:	20747365 	rsbscs	r7, r4, r5, ror #6
    a058:	6c696146 	stfvse	f6, [r9], #-280	; 0xfffffee8
    a05c:	2b2b6465 	blcs	ae31f8 <__user_program+0x7e31f8>
    a060:	2b2b2b2b 	blcs	ad4d14 <__user_program+0x7d4d14>
    a064:	00000a2b 	andeq	r0, r0, fp, lsr #20

0000a068 <.LC4>:
    a068:	2b2b2b2b 	blcs	ad4d1c <__user_program+0x7d4d1c>
    a06c:	542b2b2b 	strtpl	r2, [fp], #-2859	; 0xfffff4d5
    a070:	20747365 	rsbscs	r7, r4, r5, ror #6
    a074:	73736150 	cmnvc	r3, #80, 2
    a078:	2b2b6465 	blcs	ae3214 <__user_program+0x7e3214>
    a07c:	2b2b2b2b 	blcs	ad4d30 <__user_program+0x7d4d30>
    a080:	00000a2b 	andeq	r0, r0, fp, lsr #20

0000a084 <.LC0>:
    a084:	00000030 	andeq	r0, r0, r0, lsr r0

0000a088 <.LC1>:
    a088:	Address 0x000000000000a088 is out of bounds.


Disassembly of section .ARM.exidx:

0000a08c <.ARM.exidx>:
    a08c:	7fffed54 	svcvc	0x00ffed54
    a090:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

0000b000 <__data_start>:
    b000:	3f200000 	svccc	0x00200000

0000b004 <digits>:
    b004:	33323130 	teqcc	r2, #48, 2
    b008:	37363534 			; <UNDEFINED> instruction: 0x37363534
    b00c:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
    b010:	66656463 	strbtvs	r6, [r5], -r3, ror #8
	...

Disassembly of section .bss:

0000c000 <__bss_start>:
	...

0000c7d0 <array1>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000162 	andeq	r0, r0, r2, ror #2
       4:	00000004 	andeq	r0, r0, r4
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	000000a2 	andeq	r0, r0, r2, lsr #1
      10:	00012d01 	andeq	r2, r1, r1, lsl #26
      14:	00007000 	andeq	r7, r0, r0
      18:	00805400 	addeq	r5, r0, r0, lsl #8
      1c:	00032000 	andeq	r2, r3, r0
      20:	00000000 	andeq	r0, r0, r0
      24:	08010200 	stmdaeq	r1, {r9}
      28:	00000062 	andeq	r0, r0, r2, rrx
      2c:	23050202 	movwcs	r0, #20994	; 0x5202
      30:	03000001 	movweq	r0, #1
      34:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
      38:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
      3c:	00000005 	andeq	r0, r0, r5
      40:	00510400 	subseq	r0, r1, r0, lsl #8
      44:	16020000 	strne	r0, [r2], -r0
      48:	0000004c 	andeq	r0, r0, ip, asr #32
      4c:	59080102 	stmdbpl	r8, {r1, r8}
      50:	02000000 	andeq	r0, r0, #0
      54:	00fe0702 	rscseq	r0, lr, r2, lsl #14
      58:	67040000 	strvs	r0, [r4, -r0]
      5c:	02000000 	andeq	r0, r0, #0
      60:	0000651a 	andeq	r6, r0, sl, lsl r5
      64:	07040200 	streq	r0, [r4, -r0, lsl #4]
      68:	00000034 	andeq	r0, r0, r4, lsr r0
      6c:	2a070802 	bcs	1c207c <__end+0x9407c>
      70:	05000000 	streq	r0, [r0, #-0]
      74:	00000117 	andeq	r0, r0, r7, lsl r1
      78:	80545401 	subshi	r5, r4, r1, lsl #8
      7c:	01200000 			; <UNDEFINED> instruction: 0x01200000
      80:	9c010000 	stcls	0, cr0, [r1], {-0}
      84:	000000cf 	andeq	r0, r0, pc, asr #1
      88:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
      8c:	41540100 	cmpmi	r4, r0, lsl #2
      90:	02000000 	andeq	r0, r0, #0
      94:	66066791 			; <UNDEFINED> instruction: 0x66066791
      98:	01006e75 	tsteq	r0, r5, ror lr
      9c:	00004154 	andeq	r4, r0, r4, asr r1
      a0:	66910200 	ldrvs	r0, [r1], r0, lsl #4
      a4:	67657207 	strbvs	r7, [r5, -r7, lsl #4]!
      a8:	5a590100 	bpl	16404b0 <__user_program+0x13404b0>
      ac:	02000000 	andeq	r0, r0, #0
      b0:	1c087491 	cfstrsne	mvf7, [r8], {145}	; 0x91
      b4:	01000001 	tsteq	r0, r1
      b8:	00005a5b 	andeq	r5, r0, fp, asr sl
      bc:	70910200 	addsvc	r0, r1, r0, lsl #4
      c0:	00004a08 	andeq	r4, r0, r8, lsl #20
      c4:	5a5d0100 	bpl	17404cc <__user_program+0x14404cc>
      c8:	02000000 	andeq	r0, r0, #0
      cc:	05006c91 	streq	r6, [r0, #-3217]	; 0xfffff36f
      d0:	00000021 	andeq	r0, r0, r1, lsr #32
      d4:	81746401 	cmnhi	r4, r1, lsl #8
      d8:	00840000 	addeq	r0, r4, r0
      dc:	9c010000 	stcls	0, cr0, [r1], {-0}
      e0:	000000f3 	strdeq	r0, [r0], -r3
      e4:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
      e8:	41640100 	cmnmi	r4, r0, lsl #2
      ec:	02000000 	andeq	r0, r0, #0
      f0:	05007791 	streq	r7, [r0, #-1937]	; 0xfffff86f
      f4:	00000041 	andeq	r0, r0, r1, asr #32
      f8:	81f87001 	mvnshi	r7, r1
      fc:	00840000 	addeq	r0, r4, r0
     100:	9c010000 	stcls	0, cr0, [r1], {-0}
     104:	00000117 	andeq	r0, r0, r7, lsl r1
     108:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
     10c:	41700100 	cmnmi	r0, r0, lsl #2
     110:	02000000 	andeq	r0, r0, #0
     114:	09007791 	stmdbeq	r0, {r0, r4, r7, r8, r9, sl, ip, sp, lr}
     118:	0000000e 	andeq	r0, r0, lr
     11c:	827c7c01 	rsbshi	r7, ip, #256	; 0x100
     120:	00f80000 	rscseq	r0, r8, r0
     124:	9c010000 	stcls	0, cr0, [r1], {-0}
     128:	00000149 	andeq	r0, r0, r9, asr #2
     12c:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
     130:	417c0100 	cmnmi	ip, r0, lsl #2
     134:	02000000 	andeq	r0, r0, #0
     138:	110a7791 			; <UNDEFINED> instruction: 0x110a7791
     13c:	01000001 	tsteq	r0, r1
     140:	0000417c 	andeq	r4, r0, ip, ror r1
     144:	76910200 	ldrvc	r0, [r1], r0, lsl #4
     148:	001c0800 	andseq	r0, ip, r0, lsl #16
     14c:	51010000 	mrspl	r0, (UNDEF: 1)
     150:	0000015a 	andeq	r0, r0, sl, asr r1
     154:	b0000305 	andlt	r0, r0, r5, lsl #6
     158:	040b0000 	streq	r0, [fp], #-0
     15c:	00000160 	andeq	r0, r0, r0, ror #2
     160:	00005a0c 	andeq	r5, r0, ip, lsl #20
     164:	00dd0000 	sbcseq	r0, sp, r0
     168:	00040000 	andeq	r0, r4, r0
     16c:	000000b7 	strheq	r0, [r0], -r7
     170:	00a20104 	adceq	r0, r2, r4, lsl #2
     174:	47010000 	strmi	r0, [r1, -r0]
     178:	70000001 	andvc	r0, r0, r1
     17c:	74000000 	strvc	r0, [r0], #-0
     180:	58000083 	stmdapl	r0, {r0, r1, r7}
     184:	96000001 	strls	r0, [r0], -r1
     188:	02000000 	andeq	r0, r0, #0
     18c:	00620801 	rsbeq	r0, r2, r1, lsl #16
     190:	02020000 	andeq	r0, r2, #0
     194:	00012305 	andeq	r2, r1, r5, lsl #6
     198:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     19c:	00746e69 	rsbseq	r6, r4, r9, ror #28
     1a0:	00050802 	andeq	r0, r5, r2, lsl #16
     1a4:	02000000 	andeq	r0, r0, #0
     1a8:	00590801 	subseq	r0, r9, r1, lsl #16
     1ac:	02020000 	andeq	r0, r2, #0
     1b0:	0000fe07 	andeq	pc, r0, r7, lsl #28
     1b4:	00670400 	rsbeq	r0, r7, r0, lsl #8
     1b8:	1a020000 	bne	801c0 <__bss_end+0x731c0>
     1bc:	0000005a 	andeq	r0, r0, sl, asr r0
     1c0:	34070402 	strcc	r0, [r7], #-1026	; 0xfffffbfe
     1c4:	02000000 	andeq	r0, r0, #0
     1c8:	002a0708 	eoreq	r0, sl, r8, lsl #14
     1cc:	6f050000 	svcvs	0x00050000
     1d0:	01000001 	tsteq	r0, r1
     1d4:	00837417 	addeq	r7, r3, r7, lsl r4
     1d8:	00015800 	andeq	r5, r1, r0, lsl #16
     1dc:	a69c0100 	ldrge	r0, [ip], r0, lsl #2
     1e0:	06000000 	streq	r0, [r0], -r0
     1e4:	19010069 	stmdbne	r1, {r0, r3, r5, r6}
     1e8:	00000033 	andeq	r0, r0, r3, lsr r0
     1ec:	07749102 	ldrbeq	r9, [r4, -r2, lsl #2]!
     1f0:	00000186 	andeq	r0, r0, r6, lsl #3
     1f4:	00331a01 	eorseq	r1, r3, r1, lsl #20
     1f8:	91020000 	mrsls	r0, (UNDEF: 2)
     1fc:	017b0770 	cmneq	fp, r0, ror r7
     200:	1b010000 	blne	40208 <__bss_end+0x33208>
     204:	0000004f 	andeq	r0, r0, pc, asr #32
     208:	006c9102 	rsbeq	r9, ip, r2, lsl #2
     20c:	00003308 	andeq	r3, r0, r8, lsl #6
     210:	0000b700 	andeq	fp, r0, r0, lsl #14
     214:	00b70900 	adcseq	r0, r7, r0, lsl #18
     218:	01f30000 	mvnseq	r0, r0
     21c:	07040200 	streq	r0, [r4, -r0, lsl #4]
     220:	0000018b 	andeq	r0, r0, fp, lsl #3
     224:	0001400a 	andeq	r4, r1, sl
     228:	a6120100 	ldrge	r0, [r2], -r0, lsl #2
     22c:	05000000 	streq	r0, [r0, #-0]
     230:	00c7d003 	sbceq	sp, r7, r3
     234:	01680a00 	cmneq	r8, r0, lsl #20
     238:	12010000 	andne	r0, r1, #0
     23c:	000000a6 	andeq	r0, r0, r6, lsr #1
     240:	c0000305 	andgt	r0, r0, r5, lsl #6
     244:	35000000 	strcc	r0, [r0, #-0]
     248:	04000002 	streq	r0, [r0], #-2
     24c:	00014900 	andeq	r4, r1, r0, lsl #18
     250:	a2010400 	andge	r0, r1, #0, 8
     254:	01000000 	mrseq	r0, (UNDEF: 0)
     258:	000001cd 	andeq	r0, r0, sp, asr #3
     25c:	00000070 	andeq	r0, r0, r0, ror r0
     260:	000084cc 	andeq	r8, r0, ip, asr #9
     264:	00000388 	andeq	r0, r0, r8, lsl #7
     268:	00000148 	andeq	r0, r0, r8, asr #2
     26c:	00005202 	andeq	r5, r0, r2, lsl #4
     270:	300e0200 	andcc	r0, lr, r0, lsl #4
     274:	03000000 	movweq	r0, #0
     278:	00620801 	rsbeq	r0, r2, r1, lsl #16
     27c:	02030000 	andeq	r0, r3, #0
     280:	00012305 	andeq	r2, r1, r5, lsl #6
     284:	00680200 	rsbeq	r0, r8, r0, lsl #4
     288:	12020000 	andne	r0, r2, #0
     28c:	00000049 	andeq	r0, r0, r9, asr #32
     290:	69050404 	stmdbvs	r5, {r2, sl}
     294:	0300746e 	movweq	r7, #1134	; 0x46e
     298:	00000508 	andeq	r0, r0, r8, lsl #10
     29c:	51020000 	mrspl	r0, (UNDEF: 2)
     2a0:	02000000 	andeq	r0, r0, #0
     2a4:	00006216 	andeq	r6, r0, r6, lsl r2
     2a8:	08010300 	stmdaeq	r1, {r8, r9}
     2ac:	00000059 	andeq	r0, r0, r9, asr r0
     2b0:	fe070203 	cdp2	2, 0, cr0, cr7, cr3, {0}
     2b4:	02000000 	andeq	r0, r0, #0
     2b8:	00000067 	andeq	r0, r0, r7, rrx
     2bc:	007b1a02 	rsbseq	r1, fp, r2, lsl #20
     2c0:	04030000 	streq	r0, [r3], #-0
     2c4:	00003407 	andeq	r3, r0, r7, lsl #8
     2c8:	01a40200 			; <UNDEFINED> instruction: 0x01a40200
     2cc:	1c020000 	stcne	0, cr0, [r2], {-0}
     2d0:	0000008d 	andeq	r0, r0, sp, lsl #1
     2d4:	2a070803 	bcs	1c22e8 <__end+0x942e8>
     2d8:	02000000 	andeq	r0, r0, #0
     2dc:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
     2e0:	009f1303 	addseq	r1, pc, r3, lsl #6
     2e4:	b2050000 	andlt	r0, r5, #0
     2e8:	04000001 	streq	r0, [r0], #-1
     2ec:	00b60004 	adcseq	r0, r6, r4
     2f0:	fa060000 	blx	1802f8 <__end+0x522f8>
     2f4:	b6000001 	strlt	r0, [r0], -r1
     2f8:	00000000 	andeq	r0, r0, r0
     2fc:	08040700 	stmdaeq	r4, {r8, r9, sl}
     300:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
     304:	84cc2101 	strbhi	r2, [ip], #257	; 0x101
     308:	01380000 	teqeq	r8, r0
     30c:	9c010000 	stcls	0, cr0, [r1], {-0}
     310:	00000114 	andeq	r0, r0, r4, lsl r1
     314:	0001ad09 	andeq	sl, r1, r9, lsl #26
     318:	57210100 	strpl	r0, [r1, -r0, lsl #2]!
     31c:	02000000 	andeq	r0, r0, #0
     320:	6e0a5f91 	mcrvs	15, 0, r5, cr10, cr1, {4}
     324:	01006d75 	tsteq	r0, r5, ror sp
     328:	00008221 	andeq	r8, r0, r1, lsr #4
     32c:	50910200 	addspl	r0, r1, r0, lsl #4
     330:	00019d0b 	andeq	r9, r1, fp, lsl #26
     334:	14220100 	strtne	r0, [r2], #-256	; 0xffffff00
     338:	02000001 	andeq	r0, r0, #1
     33c:	620c6c91 	andvs	r6, ip, #37120	; 0x9100
     340:	01006675 	tsteq	r0, r5, ror r6
     344:	00011a23 	andeq	r1, r1, r3, lsr #20
     348:	60910200 	addsvs	r0, r1, r0, lsl #4
     34c:	7274700c 	rsbsvc	r7, r4, #12
     350:	14240100 	strtne	r0, [r4], #-256	; 0xffffff00
     354:	02000001 	andeq	r0, r0, #1
     358:	0d006891 	stceq	8, cr6, [r0, #-580]	; 0xfffffdbc
     35c:	00002504 	andeq	r2, r0, r4, lsl #10
     360:	00250e00 	eoreq	r0, r5, r0, lsl #28
     364:	012a0000 			; <UNDEFINED> instruction: 0x012a0000
     368:	2a0f0000 	bcs	3c0370 <__user_program+0xc0370>
     36c:	07000001 	streq	r0, [r0, -r1]
     370:	07040300 	streq	r0, [r4, -r0, lsl #6]
     374:	0000018b 	andeq	r0, r0, fp, lsl #3
     378:	0001ee10 	andeq	lr, r1, r0, lsl lr
     37c:	493f0100 	ldmdbmi	pc!, {r8}	; <UNPREDICTABLE>
     380:	04000000 	streq	r0, [r0], #-0
     384:	50000086 	andpl	r0, r0, r6, lsl #1
     388:	01000002 	tsteq	r0, r2
     38c:	00020c9c 	muleq	r2, ip, ip
     390:	6d660a00 	vstmdbvs	r6!, {s1-s0}
     394:	3f010074 	svccc	0x00010074
     398:	0000020c 	andeq	r0, r0, ip, lsl #4
     39c:	11709102 	cmnne	r0, r2, lsl #2
     3a0:	0001f50b 	andeq	pc, r1, fp, lsl #10
     3a4:	94400100 	strbls	r0, [r0], #-256	; 0xffffff00
     3a8:	02000000 	andeq	r0, r0, #0
     3ac:	bc124c91 	ldclt	12, cr4, [r2], {145}	; 0x91
     3b0:	5c000086 	stcpl	0, cr0, [r0], {134}	; 0x86
     3b4:	83000000 	movwhi	r0, #0
     3b8:	0c000001 	stceq	0, cr0, [r0], {1}
     3bc:	006d756e 	rsbeq	r7, sp, lr, ror #10
     3c0:	003e5001 	eorseq	r5, lr, r1
     3c4:	91020000 	mrsls	r0, (UNDEF: 2)
     3c8:	18120060 	ldmdane	r2, {r5, r6}
     3cc:	2c000087 	stccs	0, cr0, [r0], {135}	; 0x87
     3d0:	9f000000 	svcls	0x00000000
     3d4:	0c000001 	stceq	0, cr0, [r0], {1}
     3d8:	006d756e 	rsbeq	r7, sp, lr, ror #10
     3dc:	00705b01 	rsbseq	r5, r0, r1, lsl #22
     3e0:	91020000 	mrsls	r0, (UNDEF: 2)
     3e4:	4412005c 	ldrmi	r0, [r2], #-92	; 0xffffffa4
     3e8:	2c000087 	stccs	0, cr0, [r0], {135}	; 0x87
     3ec:	bb000000 	bllt	3f4 <__start-0x7c0c>
     3f0:	0c000001 	stceq	0, cr0, [r0], {1}
     3f4:	006d756e 	rsbeq	r7, sp, lr, ror #10
     3f8:	00706101 	rsbseq	r6, r0, r1, lsl #2
     3fc:	91020000 	mrsls	r0, (UNDEF: 2)
     400:	70120058 	andsvc	r0, r2, r8, asr r0
     404:	2c000087 	stccs	0, cr0, [r0], {135}	; 0x87
     408:	d7000000 	strle	r0, [r0, -r0]
     40c:	0c000001 	stceq	0, cr0, [r0], {1}
     410:	006d756e 	rsbeq	r7, sp, lr, ror #10
     414:	00706801 	rsbseq	r6, r0, r1, lsl #16
     418:	91020000 	mrsls	r0, (UNDEF: 2)
     41c:	9c120054 	ldcls	0, cr0, [r2], {84}	; 0x54
     420:	48000087 	stmdami	r0, {r0, r1, r2, r7}
     424:	f3000000 	vhadd.u8	d0, d0, d0
     428:	0b000001 	bleq	434 <__start-0x7bcc>
     42c:	00000194 	muleq	r0, r4, r1
     430:	01146e01 	tsteq	r4, r1, lsl #28
     434:	91020000 	mrsls	r0, (UNDEF: 2)
     438:	e4130064 	ldr	r0, [r3], #-100	; 0xffffff9c
     43c:	28000087 	stmdacs	r0, {r0, r1, r2, r7}
     440:	0b000000 	bleq	448 <__start-0x7bb8>
     444:	00000208 	andeq	r0, r0, r8, lsl #4
     448:	003e7701 	eorseq	r7, lr, r1, lsl #14
     44c:	91020000 	mrsls	r0, (UNDEF: 2)
     450:	0d000050 	stceq	0, cr0, [r0, #-320]	; 0xfffffec0
     454:	00021204 	andeq	r1, r2, r4, lsl #4
     458:	00301400 	eorseq	r1, r0, r0, lsl #8
     45c:	300e0000 	andcc	r0, lr, r0
     460:	27000000 	strcs	r0, [r0, -r0]
     464:	0f000002 	svceq	0x00000002
     468:	0000012a 	andeq	r0, r0, sl, lsr #2
     46c:	c60b0010 			; <UNDEFINED> instruction: 0xc60b0010
     470:	01000001 	tsteq	r0, r1
     474:	00021718 	andeq	r1, r2, r8, lsl r7
     478:	04030500 	streq	r0, [r3], #-1280	; 0xfffffb00
     47c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
     480:	000000cb 	andeq	r0, r0, fp, asr #1
     484:	024e0004 	subeq	r0, lr, #4
     488:	01040000 	mrseq	r0, (UNDEF: 4)
     48c:	000000a2 	andeq	r0, r0, r2, lsr #1
     490:	00020d01 	andeq	r0, r2, r1, lsl #26
     494:	00007000 	andeq	r7, r0, r0
     498:	00885400 	addeq	r5, r8, r0, lsl #8
     49c:	00016400 	andeq	r6, r1, r0, lsl #8
     4a0:	00022200 	andeq	r2, r2, r0, lsl #4
     4a4:	08010200 	stmdaeq	r1, {r9}
     4a8:	00000062 	andeq	r0, r0, r2, rrx
     4ac:	23050202 	movwcs	r0, #20994	; 0x5202
     4b0:	03000001 	movweq	r0, #1
     4b4:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     4b8:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
     4bc:	00000005 	andeq	r0, r0, r5
     4c0:	00510400 	subseq	r0, r1, r0, lsl #8
     4c4:	16020000 	strne	r0, [r2], -r0
     4c8:	0000004c 	andeq	r0, r0, ip, asr #32
     4cc:	59080102 	stmdbpl	r8, {r1, r8}
     4d0:	02000000 	andeq	r0, r0, #0
     4d4:	00fe0702 	rscseq	r0, lr, r2, lsl #14
     4d8:	67040000 	strvs	r0, [r4, -r0]
     4dc:	02000000 	andeq	r0, r0, #0
     4e0:	0000651a 	andeq	r6, r0, sl, lsl r5
     4e4:	07040200 	streq	r0, [r4, -r0, lsl #4]
     4e8:	00000034 	andeq	r0, r0, r4, lsr r0
     4ec:	2a070802 	bcs	1c24fc <__end+0x944fc>
     4f0:	05000000 	streq	r0, [r0, #-0]
     4f4:	0000022c 	andeq	r0, r0, ip, lsr #4
     4f8:	88542601 	ldmdahi	r4, {r0, r9, sl, sp}^
     4fc:	00880000 	addeq	r0, r8, r0
     500:	9c010000 	stcls	0, cr0, [r1], {-0}
     504:	00024406 	andeq	r4, r2, r6, lsl #8
     508:	dc3c0100 	ldfles	f0, [ip], #-0
     50c:	4c000088 	stcmi	0, cr0, [r0], {136}	; 0x88
     510:	01000000 	mrseq	r0, (UNDEF: 0)
     514:	0236079c 	eorseq	r0, r6, #156, 14	; 0x2700000
     518:	46010000 	strmi	r0, [r1], -r0
     51c:	00008928 	andeq	r8, r0, r8, lsr #18
     520:	0000004c 	andeq	r0, r0, ip, asr #32
     524:	00b99c01 	adcseq	r9, r9, r1, lsl #24
     528:	08080000 	stmdaeq	r8, {}	; <UNPREDICTABLE>
     52c:	01000002 	tsteq	r0, r2
     530:	00004146 	andeq	r4, r0, r6, asr #2
     534:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
     538:	01ff0900 	mvnseq	r0, r0, lsl #18
     53c:	52010000 	andpl	r0, r1, #0
     540:	00000041 	andeq	r0, r0, r1, asr #32
     544:	00008974 	andeq	r8, r0, r4, ror r9
     548:	00000044 	andeq	r0, r0, r4, asr #32
     54c:	d5009c01 	strle	r9, [r0, #-3073]	; 0xfffff3ff
     550:	04000000 	streq	r0, [r0], #-0
     554:	0002f800 	andeq	pc, r2, r0, lsl #16
     558:	a2010400 	andge	r0, r1, #0, 8
     55c:	01000000 	mrseq	r0, (UNDEF: 0)
     560:	00000263 	andeq	r0, r0, r3, ror #4
     564:	00000070 	andeq	r0, r0, r0, ror r0
     568:	000089b8 			; <UNDEFINED> instruction: 0x000089b8
     56c:	00000088 	andeq	r0, r0, r8, lsl #1
     570:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
     574:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
     578:	02000000 	andeq	r0, r0, #0
     57c:	01230502 			; <UNDEFINED> instruction: 0x01230502
     580:	04030000 	streq	r0, [r3], #-0
     584:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     588:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     58c:	00000000 	andeq	r0, r0, r0
     590:	59080102 	stmdbpl	r8, {r1, r8}
     594:	02000000 	andeq	r0, r0, #0
     598:	00fe0702 	rscseq	r0, lr, r2, lsl #14
     59c:	67040000 	strvs	r0, [r4, -r0]
     5a0:	02000000 	andeq	r0, r0, #0
     5a4:	00005a1a 	andeq	r5, r0, sl, lsl sl
     5a8:	07040200 	streq	r0, [r4, -r0, lsl #4]
     5ac:	00000034 	andeq	r0, r0, r4, lsr r0
     5b0:	2a070802 	bcs	1c25c0 <__end+0x945c0>
     5b4:	05000000 	streq	r0, [r0, #-0]
     5b8:	00000288 	andeq	r0, r0, r8, lsl #5
     5bc:	89b80c01 	ldmibhi	r8!, {r0, sl, fp}
     5c0:	00200000 	eoreq	r0, r0, r0
     5c4:	9c010000 	stcls	0, cr0, [r1], {-0}
     5c8:	0000008c 	andeq	r0, r0, ip, lsl #1
     5cc:	00028306 	andeq	r8, r2, r6, lsl #6
     5d0:	330c0100 	movwcc	r0, #49408	; 0xc100
     5d4:	02000000 	andeq	r0, r0, #0
     5d8:	07007491 			; <UNDEFINED> instruction: 0x07007491
     5dc:	000002a5 	andeq	r0, r0, r5, lsr #5
     5e0:	89d81001 	ldmibhi	r8, {r0, ip}^
     5e4:	00180000 	andseq	r0, r8, r0
     5e8:	9c010000 	stcls	0, cr0, [r1], {-0}
     5ec:	0002b008 	andeq	fp, r2, r8
     5f0:	4f140100 	svcmi	0x00140100
     5f4:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
     5f8:	1c000089 	stcne	0, cr0, [r0], {137}	; 0x89
     5fc:	01000000 	mrseq	r0, (UNDEF: 0)
     600:	0294089c 	addseq	r0, r4, #156, 16	; 0x9c0000
     604:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
     608:	00000033 	andeq	r0, r0, r3, lsr r0
     60c:	00008a0c 	andeq	r8, r0, ip, lsl #20
     610:	0000001c 	andeq	r0, r0, ip, lsl r0
     614:	4f079c01 	svcmi	0x00079c01
     618:	01000002 	tsteq	r0, r2
     61c:	008a281d 	addeq	r2, sl, sp, lsl r8
     620:	00001800 	andeq	r1, r0, r0, lsl #16
     624:	009c0100 	addseq	r0, ip, r0, lsl #2
     628:	0000009a 	muleq	r0, sl, r0
     62c:	038a0004 	orreq	r0, sl, #4
     630:	01040000 	mrseq	r0, (UNDEF: 4)
     634:	000000a2 	andeq	r0, r0, r2, lsr #1
     638:	0002bb01 	andeq	fp, r2, r1, lsl #22
     63c:	00007000 	andeq	r7, r0, r0
     640:	008a4000 	addeq	r4, sl, r0
     644:	00006c00 	andeq	r6, r0, r0, lsl #24
     648:	00032a00 	andeq	r2, r3, r0, lsl #20
     64c:	08010200 	stmdaeq	r1, {r9}
     650:	00000062 	andeq	r0, r0, r2, rrx
     654:	23050202 	movwcs	r0, #20994	; 0x5202
     658:	03000001 	movweq	r0, #1
     65c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     660:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
     664:	00000005 	andeq	r0, r0, r5
     668:	08010200 	stmdaeq	r1, {r9}
     66c:	00000059 	andeq	r0, r0, r9, asr r0
     670:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     674:	04000000 	streq	r0, [r0], #-0
     678:	00000067 	andeq	r0, r0, r7, rrx
     67c:	005a1a02 	subseq	r1, sl, r2, lsl #20
     680:	04020000 	streq	r0, [r2], #-0
     684:	00003407 	andeq	r3, r0, r7, lsl #8
     688:	07080200 	streq	r0, [r8, -r0, lsl #4]
     68c:	0000002a 	andeq	r0, r0, sl, lsr #32
     690:	63697405 	cmnvs	r9, #83886080	; 0x5000000
     694:	40170100 	andsmi	r0, r7, r0, lsl #2
     698:	3800008a 	stmdacc	r0, {r1, r3, r7}
     69c:	01000000 	mrseq	r0, (UNDEF: 0)
     6a0:	6f74069c 	svcvs	0x0074069c
     6a4:	21010063 	tstcs	r1, r3, rrx
     6a8:	0000004f 	andeq	r0, r0, pc, asr #32
     6ac:	00008a78 	andeq	r8, r0, r8, ror sl
     6b0:	00000034 	andeq	r0, r0, r4, lsr r0
     6b4:	dd079c01 	stcle	12, cr9, [r7, #-4]
     6b8:	01000002 	tsteq	r0, r2
     6bc:	00004f24 	andeq	r4, r0, r4, lsr #30
     6c0:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     6c4:	00670000 	rsbeq	r0, r7, r0
     6c8:	00020000 	andeq	r0, r2, r0
     6cc:	00000402 	andeq	r0, r0, r2, lsl #8
     6d0:	03a00104 	moveq	r0, #4, 2
     6d4:	80000000 	andhi	r0, r0, r0
     6d8:	80540000 	subshi	r0, r4, r0
     6dc:	34330000 	ldrtcc	r0, [r3], #-0
     6e0:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
     6e4:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
     6e8:	6f622f63 	svcvs	0x00622f63
     6ec:	532e746f 			; <UNDEFINED> instruction: 0x532e746f
     6f0:	6f682f00 	svcvs	0x00682f00
     6f4:	7a2f656d 	bvc	bd9cb0 <__user_program+0x8d9cb0>
     6f8:	72502f7a 	subsvc	r2, r0, #488	; 0x1e8
     6fc:	63656a6f 	cmnvs	r5, #454656	; 0x6f000
     700:	652f7374 	strvs	r7, [pc, #-884]!	; 394 <__start-0x7c6c>
     704:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
     708:	62616c5f 	rsbvs	r6, r1, #24320	; 0x5f00
     70c:	616c2f31 	cmnvs	ip, r1, lsr pc
     710:	6a2d3162 	bvs	b4cca0 <__user_program+0x84cca0>
     714:	616e686f 	cmnvs	lr, pc, ror #16
     718:	61657372 	smcvs	22322	; 0x5732
     71c:	6f632f6c 	svcvs	0x00632f6c
     720:	47006564 	strmi	r6, [r0, -r4, ror #10]
     724:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
     728:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
     72c:	01003632 	tsteq	r0, r2, lsr r6
     730:	00006680 	andeq	r6, r0, r0, lsl #13
     734:	16000200 	strne	r0, [r0], -r0, lsl #4
     738:	04000004 	streq	r0, [r0], #-4
     73c:	0003f801 	andeq	pc, r3, r1, lsl #16
     740:	008aac00 	addeq	sl, sl, r0, lsl #24
     744:	008af000 	addeq	pc, sl, r0
     748:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
     74c:	6b62696c 	blvs	189ad04 <__user_program+0x159ad04>
     750:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
     754:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     758:	2f00532e 	svccs	0x0000532e
     75c:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xfffff098
     760:	2f7a7a2f 	svccs	0x007a7a2f
     764:	6a6f7250 	bvs	1bdd0ac <__user_program+0x18dd0ac>
     768:	73746365 	cmnvc	r4, #-1811939327	; 0x94000001
     76c:	626d652f 	rsbvs	r6, sp, #197132288	; 0xbc00000
     770:	6c5f6465 	cfldrdvs	mvd6, [pc], {101}	; 0x65
     774:	2f316261 	svccs	0x00316261
     778:	3162616c 	cmncc	r2, ip, ror #2
     77c:	686f6a2d 	stmdavs	pc!, {r0, r2, r3, r5, r9, fp, sp, lr}^	; <UNPREDICTABLE>
     780:	7372616e 	cmnvc	r2, #-2147483621	; 0x8000001b
     784:	2f6c6165 	svccs	0x006c6165
     788:	65646f63 	strbvs	r6, [r4, #-3939]!	; 0xfffff09d
     78c:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
     790:	20534120 	subscs	r4, r3, r0, lsr #2
     794:	36322e32 			; <UNDEFINED> instruction: 0x36322e32
     798:	62800100 	addvs	r0, r0, #0, 2
     79c:	02000000 	andeq	r0, r0, #0
     7a0:	00042a00 	andeq	r2, r4, r0, lsl #20
     7a4:	49010400 	stmdbmi	r1, {sl}
     7a8:	f0000004 			; <UNDEFINED> instruction: 0xf0000004
     7ac:	4800008a 	stmdami	r0, {r1, r3, r7}
     7b0:	7500008c 	strvc	r0, [r0, #-140]	; 0xffffff74
     7b4:	74706f6e 	ldrbtvc	r6, [r0], #-3950	; 0xfffff092
     7b8:	7a696d69 	bvc	1a5bd64 <__user_program+0x175bd64>
     7bc:	632e6465 			; <UNDEFINED> instruction: 0x632e6465
     7c0:	6f682f00 	svcvs	0x00682f00
     7c4:	7a2f656d 	bvc	bd9d80 <__user_program+0x8d9d80>
     7c8:	72502f7a 	subsvc	r2, r0, #488	; 0x1e8
     7cc:	63656a6f 	cmnvs	r5, #454656	; 0x6f000
     7d0:	652f7374 	strvs	r7, [pc, #-884]!	; 464 <__start-0x7b9c>
     7d4:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
     7d8:	62616c5f 	rsbvs	r6, r1, #24320	; 0x5f00
     7dc:	616c2f31 	cmnvs	ip, r1, lsr pc
     7e0:	6a2d3162 	bvs	b4cd70 <__user_program+0x84cd70>
     7e4:	616e686f 	cmnvs	lr, pc, ror #16
     7e8:	61657372 	smcvs	22322	; 0x5732
     7ec:	6f632f6c 	svcvs	0x00632f6c
     7f0:	47006564 	strmi	r6, [r0, -r4, ror #10]
     7f4:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
     7f8:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
     7fc:	01003632 	tsteq	r0, r2, lsr r6
     800:	00006280 	andeq	r6, r0, r0, lsl #5
     804:	3e000200 	cdpcc	2, 0, cr0, cr0, cr0, {0}
     808:	04000004 	streq	r0, [r0], #-4
     80c:	0004dd01 	andeq	sp, r4, r1, lsl #26
     810:	008c4800 	addeq	r4, ip, r0, lsl #16
     814:	008d1c00 	addeq	r1, sp, r0, lsl #24
     818:	74706f00 	ldrbtvc	r6, [r0], #-3840	; 0xfffff100
     81c:	7a696d69 	bvc	1a5bdc8 <__user_program+0x175bdc8>
     820:	656d5f65 	strbvs	r5, [sp, #-3941]!	; 0xfffff09b
     824:	2f00632e 	svccs	0x0000632e
     828:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xfffff098
     82c:	2f7a7a2f 	svccs	0x007a7a2f
     830:	6a6f7250 	bvs	1bdd178 <__user_program+0x18dd178>
     834:	73746365 	cmnvc	r4, #-1811939327	; 0x94000001
     838:	626d652f 	rsbvs	r6, sp, #197132288	; 0xbc00000
     83c:	6c5f6465 	cfldrdvs	mvd6, [pc], {101}	; 0x65
     840:	2f316261 	svccs	0x00316261
     844:	3162616c 	cmncc	r2, ip, ror #2
     848:	686f6a2d 	stmdavs	pc!, {r0, r2, r3, r5, r9, fp, sp, lr}^	; <UNPREDICTABLE>
     84c:	7372616e 	cmnvc	r2, #-2147483621	; 0x8000001b
     850:	2f6c6165 	svccs	0x006c6165
     854:	65646f63 	strbvs	r6, [r4, #-3939]!	; 0xfffff09d
     858:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
     85c:	20534120 	subscs	r4, r3, r0, lsr #2
     860:	36322e32 			; <UNDEFINED> instruction: 0x36322e32
     864:	a6800100 	strge	r0, [r0], r0, lsl #2
     868:	02000000 	andeq	r0, r0, #0
     86c:	00045200 	andeq	r5, r4, r0, lsl #4
     870:	50010400 	andpl	r0, r1, r0, lsl #8
     874:	1c000005 	stcne	0, cr0, [r0], {5}
     878:	5800008d 	stmdapl	r0, {r0, r2, r3, r7}
     87c:	2e00008d 	cdpcs	0, 0, cr0, cr0, cr13, {4}
     880:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     884:	2f2e2e2f 	svccs	0x002e2e2f
     888:	2f637273 	svccs	0x00637273
     88c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
     890:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
     894:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
     898:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
     89c:	70622f6d 	rsbvc	r2, r2, sp, ror #30
     8a0:	2e696261 	cdpcs	2, 6, cr6, cr9, cr1, {3}
     8a4:	622f0053 	eorvs	r0, pc, #83	; 0x53
     8a8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
     8ac:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
     8b0:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
     8b4:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     8b8:	61652d65 	cmnvs	r5, r5, ror #26
     8bc:	442d6962 	strtmi	r6, [sp], #-2402	; 0xfffff69e
     8c0:	4c6e5252 	sfmmi	f5, 2, [lr], #-328	; 0xfffffeb8
     8c4:	63672f41 	cmnvs	r7, #260	; 0x104
     8c8:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
     8cc:	6f6e2d6d 	svcvs	0x006e2d6d
     8d0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     8d4:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
     8d8:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
     8dc:	76732b33 			; <UNDEFINED> instruction: 0x76732b33
     8e0:	3133326e 	teqcc	r3, lr, ror #4
     8e4:	2f373731 	svccs	0x00373731
     8e8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     8ec:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
     8f0:	6f6e2d6d 	svcvs	0x006e2d6d
     8f4:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     8f8:	2f696261 	svccs	0x00696261
     8fc:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
     900:	47006363 	strmi	r6, [r0, -r3, ror #6]
     904:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
     908:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
     90c:	01003532 	tsteq	r0, r2, lsr r5
     910:	00016080 	andeq	r6, r1, r0, lsl #1
     914:	66000400 	strvs	r0, [r0], -r0, lsl #8
     918:	04000004 	streq	r0, [r0], #-4
     91c:	00038801 	andeq	r8, r3, r1, lsl #16
     920:	03610100 	cmneq	r1, #0, 2
     924:	02ee0000 	rsceq	r0, lr, #0
     928:	8d580000 	ldclhi	0, cr0, [r8, #-0]
     92c:	00840000 	addeq	r0, r4, r0
     930:	05ae0000 	streq	r0, [lr, #0]!
     934:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     938:	00002a07 	andeq	r2, r0, r7, lsl #20
     93c:	04420300 	strbeq	r0, [r2], #-768	; 0xfffffd00
     940:	23010000 	movwcs	r0, #4096	; 0x1000
     944:	000000a6 	andeq	r0, r0, r6, lsr #1
     948:	00008d58 	andeq	r8, r0, r8, asr sp
     94c:	00000044 	andeq	r0, r0, r4, asr #32
     950:	00a69c01 	adceq	r9, r6, r1, lsl #24
     954:	61040000 	mrsvs	r0, (UNDEF: 4)
     958:	a6230100 	strtge	r0, [r3], -r0, lsl #2
     95c:	00000000 	andeq	r0, r0, r0
     960:	04000000 	streq	r0, [r0], #-0
     964:	24010062 	strcs	r0, [r1], #-98	; 0xffffff9e
     968:	000000a6 	andeq	r0, r0, r6, lsr #1
     96c:	00000028 	andeq	r0, r0, r8, lsr #32
     970:	00043805 	andeq	r3, r4, r5, lsl #16
     974:	ad250100 	stfges	f0, [r5, #-0]
     978:	02000000 	andeq	r0, r0, #0
     97c:	61060091 	swpvs	r0, r1, [r6]
     980:	01000004 	tsteq	r0, r4
     984:	0000a627 	andeq	sl, r0, r7, lsr #12
     988:	93500600 	cmpls	r0, #0, 12
     98c:	04935104 	ldreq	r5, [r3], #260	; 0x104
     990:	008d7407 	addeq	r7, sp, r7, lsl #8
     994:	00013300 	andeq	r3, r1, r0, lsl #6
     998:	52060800 	andpl	r0, r6, #0, 16
     99c:	93530493 	cmpls	r3, #-1828716544	; 0x93000000
     9a0:	03f30504 	mvnseq	r0, #4, 10	; 0x1000000
     9a4:	082502f5 	stmdaeq	r5!, {r0, r2, r4, r5, r6, r7, r9}
     9a8:	04935006 	ldreq	r5, [r3], #6
     9ac:	05049351 	streq	r9, [r4, #-849]	; 0xfffffcaf
     9b0:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
     9b4:	02000025 	andeq	r0, r0, #37	; 0x25
     9b8:	00000508 	andeq	r0, r0, r8, lsl #10
     9bc:	04090000 	streq	r0, [r9], #-0
     9c0:	000000a6 	andeq	r0, r0, r6, lsr #1
     9c4:	00034b03 	andeq	r4, r3, r3, lsl #22
     9c8:	252f0100 	strcs	r0, [pc, #-256]!	; 8d0 <__start-0x7730>
     9cc:	9c000000 	stcls	0, cr0, [r0], {-0}
     9d0:	4000008d 	andmi	r0, r0, sp, lsl #1
     9d4:	01000000 	mrseq	r0, (UNDEF: 0)
     9d8:	00012d9c 	muleq	r1, ip, sp
     9dc:	00610400 	rsbeq	r0, r1, r0, lsl #8
     9e0:	00252f01 	eoreq	r2, r5, r1, lsl #30
     9e4:	00500000 	subseq	r0, r0, r0
     9e8:	62040000 	andvs	r0, r4, #0
     9ec:	25300100 	ldrcs	r0, [r0, #-256]!	; 0xffffff00
     9f0:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
     9f4:	05000000 	streq	r0, [r0, #-0]
     9f8:	00000438 	andeq	r0, r0, r8, lsr r4
     9fc:	012d3101 			; <UNDEFINED> instruction: 0x012d3101
     a00:	91020000 	mrsls	r0, (UNDEF: 2)
     a04:	04610600 	strbteq	r0, [r1], #-1536	; 0xfffffa00
     a08:	33010000 	movwcc	r0, #4096	; 0x1000
     a0c:	00000025 	andeq	r0, r0, r5, lsr #32
     a10:	04935006 	ldreq	r5, [r3], #6
     a14:	07049351 	smlsdeq	r4, r1, r3, r9
     a18:	00008db8 			; <UNDEFINED> instruction: 0x00008db8
     a1c:	0000014d 	andeq	r0, r0, sp, asr #2
     a20:	93520608 	cmpls	r2, #8, 12	; 0x800000
     a24:	04935304 	ldreq	r5, [r3], #772	; 0x304
     a28:	f503f305 			; <UNDEFINED> instruction: 0xf503f305
     a2c:	06082502 	streq	r2, [r8], -r2, lsl #10
     a30:	51049350 	tstpl	r4, r0, asr r3
     a34:	f3050493 	vqshl.u8	d0, d3, d21
     a38:	2500f503 	strcs	pc, [r0, #-1283]	; 0xfffffafd
     a3c:	04090000 	streq	r0, [r9], #-0
     a40:	00000025 	andeq	r0, r0, r5, lsr #32
     a44:	0002e50a 	andeq	lr, r2, sl, lsl #10
     a48:	a6190100 	ldrge	r0, [r9], -r0, lsl #2
     a4c:	4d000000 	stcmi	0, cr0, [r0, #-0]
     a50:	0b000001 	bleq	a5c <__start-0x75a4>
     a54:	000000a6 	andeq	r0, r0, r6, lsr #1
     a58:	0000a60b 	andeq	sl, r0, fp, lsl #12
     a5c:	570c0000 	strpl	r0, [ip, -r0]
     a60:	01000004 	tsteq	r0, r4
     a64:	0000251a 	andeq	r2, r0, sl, lsl r5
     a68:	00250b00 	eoreq	r0, r5, r0, lsl #22
     a6c:	250b0000 	strcs	r0, [fp, #-0]
     a70:	00000000 	andeq	r0, r0, r0
     a74:	0000aa00 	andeq	sl, r0, r0, lsl #20
     a78:	1d000200 	sfmne	f0, 4, [r0, #-0]
     a7c:	04000005 	streq	r0, [r0], #-5
     a80:	00060d01 	andeq	r0, r6, r1, lsl #26
     a84:	008ddc00 	addeq	sp, sp, r0, lsl #24
     a88:	008de000 	addeq	lr, sp, r0
     a8c:	2f2e2e00 	svccs	0x002e2e00
     a90:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     a94:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
     a98:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
     a9c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
     aa0:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
     aa4:	2f676966 	svccs	0x00676966
     aa8:	2f6d7261 	svccs	0x006d7261
     aac:	3162696c 	cmncc	r2, ip, ror #18
     ab0:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
     ab4:	00532e73 	subseq	r2, r3, r3, ror lr
     ab8:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     abc:	672f646c 	strvs	r6, [pc, -ip, ror #8]!
     ac0:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
     ac4:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     ac8:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     acc:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     ad0:	5252442d 	subspl	r4, r2, #754974720	; 0x2d000000
     ad4:	2f414c6e 	svccs	0x00414c6e
     ad8:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
     adc:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     ae0:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     ae4:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     ae8:	2e342d69 	cdpcs	13, 3, cr2, cr4, cr9, {3}
     aec:	2b332e39 	blcs	ccc3d8 <__user_program+0x9cc3d8>
     af0:	326e7673 	rsbcc	r7, lr, #120586240	; 0x7300000
     af4:	37313133 			; <UNDEFINED> instruction: 0x37313133
     af8:	75622f37 	strbvc	r2, [r2, #-3895]!	; 0xfffff0c9
     afc:	2f646c69 	svccs	0x00646c69
     b00:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     b04:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     b08:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     b0c:	696c2f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, sp}^
     b10:	63636762 	cmnvs	r3, #25690112	; 0x1880000
     b14:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
     b18:	20534120 	subscs	r4, r3, r0, lsr #2
     b1c:	35322e32 	ldrcc	r2, [r2, #-3634]!	; 0xfffff1ce
     b20:	65800100 	strvs	r0, [r0, #256]	; 0x100
     b24:	04000002 	streq	r0, [r0], #-2
     b28:	00053100 	andeq	r3, r5, r0, lsl #2
     b2c:	c0010400 	andgt	r0, r1, r0, lsl #8
     b30:	01000004 	tsteq	r0, r4
     b34:	00000484 	andeq	r0, r0, r4, lsl #9
     b38:	000002ee 	andeq	r0, r0, lr, ror #5
     b3c:	00008de0 	andeq	r8, r0, r0, ror #27
     b40:	00000178 	andeq	r0, r0, r8, ror r1
     b44:	00000668 	andeq	r0, r0, r8, ror #12
     b48:	2a070802 	bcs	1c2b58 <__end+0x94b58>
     b4c:	03000000 	movweq	r0, #0
     b50:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     b54:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
     b58:	00003407 	andeq	r3, r0, r7, lsl #8
     b5c:	08010200 	stmdaeq	r1, {r9}
     b60:	00000059 	andeq	r0, r0, r9, asr r0
     b64:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
     b68:	02000000 	andeq	r0, r0, #0
     b6c:	002f0704 	eoreq	r0, pc, r4, lsl #14
     b70:	04020000 	streq	r0, [r2], #-0
     b74:	00018b07 	andeq	r8, r1, r7, lsl #22
     b78:	06010200 	streq	r0, [r1], -r0, lsl #4
     b7c:	0000005b 	andeq	r0, r0, fp, asr r0
     b80:	23050202 	movwcs	r0, #20994	; 0x5202
     b84:	02000001 	andeq	r0, r0, #1
     b88:	00fe0702 	rscseq	r0, lr, r2, lsl #14
     b8c:	7d040000 	stcvc	0, cr0, [r4, #-0]
     b90:	02000004 	andeq	r0, r0, #4
     b94:	00002c81 	andeq	r2, r0, r1, lsl #25
     b98:	047c0400 	ldrbteq	r0, [ip], #-1024	; 0xfffffc00
     b9c:	82020000 	andhi	r0, r2, #0
     ba0:	00000033 	andeq	r0, r0, r3, lsr r0
     ba4:	0004ab04 	andeq	sl, r4, r4, lsl #22
     ba8:	8c850200 	sfmhi	f0, 4, [r5], {0}
     bac:	02000000 	andeq	r0, r0, #0
     bb0:	00000508 	andeq	r0, r0, r8, lsl #10
     bb4:	aa040000 	bge	100bbc <__bss_end+0xf3bbc>
     bb8:	02000004 	andeq	r0, r0, #4
     bbc:	00002586 	andeq	r2, r0, r6, lsl #11
     bc0:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
     bc4:	000004ba 			; <UNDEFINED> instruction: 0x000004ba
     bc8:	b2030802 	andlt	r0, r3, #131072	; 0x20000
     bcc:	02000004 	andeq	r0, r0, #4
     bd0:	05850408 	streq	r0, [r5, #1032]	; 0x408
     bd4:	10020000 	andne	r0, r2, r0
     bd8:	00057d03 	andeq	r7, r5, r3, lsl #26
     bdc:	058c0500 	streq	r0, [ip, #1280]	; 0x500
     be0:	02080000 	andeq	r0, r8, #0
     be4:	00e201e3 	rsceq	r0, r2, r3, ror #3
     be8:	6c060000 	stcvs	0, cr0, [r6], {-0}
     bec:	0200776f 	andeq	r7, r0, #29097984	; 0x1bc0000
     bf0:	006b01e3 	rsbeq	r0, fp, r3, ror #3
     bf4:	07000000 	streq	r0, [r0, -r0]
     bf8:	0000046a 	andeq	r0, r0, sl, ror #8
     bfc:	6b01e302 	blvs	7980c <__bss_end+0x6c80c>
     c00:	04000000 	streq	r0, [r0], #-0
     c04:	02080800 	andeq	r0, r8, #0, 16
     c08:	010101ea 	smlatteq	r1, sl, r1, r0
     c0c:	73090000 	movwvc	r0, #36864	; 0x9000
     c10:	01ec0200 	mvneq	r0, r0, lsl #4
     c14:	000000ba 	strheq	r0, [r0], -sl
     c18:	006c6c09 	rsbeq	r6, ip, r9, lsl #24
     c1c:	8101ed02 	tsthi	r1, r2, lsl #26
     c20:	00000000 	andeq	r0, r0, r0
     c24:	0004a20a 	andeq	sl, r4, sl, lsl #4
     c28:	01ee0200 	mvneq	r0, r0, lsl #4
     c2c:	000000e2 	andeq	r0, r0, r2, ror #1
     c30:	00046f0b 	andeq	r6, r4, fp, lsl #30
     c34:	03b00100 	movseq	r0, #0, 2
     c38:	00000093 	muleq	r0, r3, r0
     c3c:	00018803 	andeq	r8, r1, r3, lsl #16
     c40:	006e0c00 	rsbeq	r0, lr, r0, lsl #24
     c44:	9303b001 	movwls	fp, #12289	; 0x3001
     c48:	0c000000 	stceq	0, cr0, [r0], {-0}
     c4c:	b0010064 	andlt	r0, r1, r4, rrx
     c50:	00009303 	andeq	r9, r0, r3, lsl #6
     c54:	70720c00 	rsbsvc	r0, r2, r0, lsl #24
     c58:	03b00100 	movseq	r0, #0, 2
     c5c:	00000188 	andeq	r0, r0, r8, lsl #3
     c60:	0100710d 	tsteq	r0, sp, lsl #2
     c64:	009303b2 			; <UNDEFINED> instruction: 0x009303b2
     c68:	720d0000 	andvc	r0, sp, #0
     c6c:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
     c70:	00000093 	muleq	r0, r3, r0
     c74:	0100790d 	tsteq	r0, sp, lsl #18
     c78:	009303b2 			; <UNDEFINED> instruction: 0x009303b2
     c7c:	6c0d0000 	stcvs	0, cr0, [sp], {-0}
     c80:	0100317a 	tsteq	r0, sl, ror r1
     c84:	007603b3 	ldrhteq	r0, [r6], #-51	; 0xffffffcd
     c88:	6c0d0000 	stcvs	0, cr0, [sp], {-0}
     c8c:	0100327a 	tsteq	r0, sl, ror r2
     c90:	007603b3 	ldrhteq	r0, [r6], #-51	; 0xffffffcd
     c94:	690d0000 	stmdbvs	sp, {}	; <UNPREDICTABLE>
     c98:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
     c9c:	00000076 	andeq	r0, r0, r6, ror r0
     ca0:	01006b0d 	tsteq	r0, sp, lsl #22
     ca4:	007603b3 	ldrhteq	r0, [r6], #-51	; 0xffffffcd
     ca8:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     cac:	00009304 	andeq	r9, r0, r4, lsl #6
     cb0:	02e50f00 	rsceq	r0, r5, #0, 30
     cb4:	cb010000 	blgt	40cbc <__bss_end+0x33cbc>
     cb8:	00008104 	andeq	r8, r0, r4, lsl #2
     cbc:	008de000 	addeq	lr, sp, r0
     cc0:	00017800 	andeq	r7, r1, r0, lsl #16
     cc4:	109c0100 	addsne	r0, ip, r0, lsl #2
     cc8:	cb010075 	blgt	40ea4 <__bss_end+0x33ea4>
     ccc:	00008104 	andeq	r8, r0, r4, lsl #2
     cd0:	0000a000 	andeq	sl, r0, r0
     cd4:	00761000 	rsbseq	r1, r6, r0
     cd8:	8104cb01 	tsthi	r4, r1, lsl #22
     cdc:	d8000000 	stmdale	r0, {}	; <UNPREDICTABLE>
     ce0:	11000000 	mrsne	r0, (UNDEF: 0)
     ce4:	cd010063 	stcgt	0, cr0, [r1, #-396]	; 0xfffffe74
     ce8:	00006b04 	andeq	r6, r0, r4, lsl #22
     cec:	00011000 	andeq	r1, r1, r0
     cf0:	75750d00 	ldrbvc	r0, [r5, #-3328]!	; 0xfffff300
     cf4:	04ce0100 	strbeq	r0, [lr], #256	; 0x100
     cf8:	00000101 	andeq	r0, r0, r1, lsl #2
     cfc:	0076760d 	rsbseq	r7, r6, sp, lsl #12
     d00:	0104cf01 	tsteq	r4, r1, lsl #30
     d04:	11000001 	tstne	r0, r1
     d08:	d0010077 	andle	r0, r1, r7, ror r0
     d0c:	00008104 	andeq	r8, r0, r4, lsl #2
     d10:	00014700 	andeq	r4, r1, r0, lsl #14
     d14:	010d1200 	mrseq	r1, SP_fiq
     d18:	8e080000 	cdphi	0, 0, cr0, cr8, cr0, {0}
     d1c:	01200000 			; <UNDEFINED> instruction: 0x01200000
     d20:	d9010000 	stmdble	r1, {}	; <UNPREDICTABLE>
     d24:	01321304 	teqeq	r2, r4, lsl #6
     d28:	01760000 	cmneq	r6, r0
     d2c:	28130000 	ldmdacs	r3, {}	; <UNPREDICTABLE>
     d30:	8a000001 	bhi	d3c <__start-0x72c4>
     d34:	13000001 	movwne	r0, #1
     d38:	0000011e 	andeq	r0, r0, lr, lsl r1
     d3c:	000001a2 	andeq	r0, r0, r2, lsr #3
     d40:	008e0814 	addeq	r0, lr, r4, lsl r8
     d44:	00012000 	andeq	r2, r1, r0
     d48:	013d1500 	teqeq	sp, r0, lsl #10
     d4c:	01ba0000 			; <UNDEFINED> instruction: 0x01ba0000
     d50:	47150000 	ldrmi	r0, [r5, -r0]
     d54:	e6000001 	str	r0, [r0], -r1
     d58:	15000001 	strne	r0, [r0, #-1]
     d5c:	00000151 	andeq	r0, r0, r1, asr r1
     d60:	0000022e 	andeq	r0, r0, lr, lsr #4
     d64:	00015b15 	andeq	r5, r1, r5, lsl fp
     d68:	00025600 	andeq	r5, r2, r0, lsl #12
     d6c:	01671500 	cmneq	r7, r0, lsl #10
     d70:	02740000 	rsbseq	r0, r4, #0
     d74:	73150000 	tstvc	r5, #0
     d78:	87000001 	strhi	r0, [r0, -r1]
     d7c:	15000002 	strne	r0, [r0, #-2]
     d80:	0000017d 	andeq	r0, r0, sp, ror r1
     d84:	000002ca 	andeq	r0, r0, sl, asr #5
     d88:	00000000 	andeq	r0, r0, r0
     d8c:	000001c3 	andeq	r0, r0, r3, asr #3
     d90:	06540004 	ldrbeq	r0, [r4], -r4
     d94:	01040000 	mrseq	r0, (UNDEF: 4)
     d98:	000004c0 	andeq	r0, r0, r0, asr #9
     d9c:	00048401 	andeq	r8, r4, r1, lsl #8
     da0:	0002ee00 	andeq	lr, r2, r0, lsl #28
     da4:	008f5800 	addeq	r5, pc, r0, lsl #16
     da8:	00012000 	andeq	r2, r1, r0
     dac:	00070000 	andeq	r0, r7, r0
     db0:	07080200 	streq	r0, [r8, -r0, lsl #4]
     db4:	0000002a 	andeq	r0, r0, sl, lsr #32
     db8:	34070402 	strcc	r0, [r7], #-1026	; 0xfffffbfe
     dbc:	03000000 	movweq	r0, #0
     dc0:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     dc4:	01020074 	tsteq	r2, r4, ror r0
     dc8:	00005908 	andeq	r5, r0, r8, lsl #18
     dcc:	08010200 	stmdaeq	r1, {r9}
     dd0:	00000062 	andeq	r0, r0, r2, rrx
     dd4:	2f070402 	svccs	0x00070402
     dd8:	02000000 	andeq	r0, r0, #0
     ddc:	018b0704 	orreq	r0, fp, r4, lsl #14
     de0:	01020000 	mrseq	r0, (UNDEF: 2)
     de4:	00005b06 	andeq	r5, r0, r6, lsl #22
     de8:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
     dec:	00000123 	andeq	r0, r0, r3, lsr #2
     df0:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     df4:	04000000 	streq	r0, [r0], #-0
     df8:	0000047c 	andeq	r0, r0, ip, ror r4
     dfc:	002c8202 	eoreq	r8, ip, r2, lsl #4
     e00:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     e04:	00000005 	andeq	r0, r0, r5
     e08:	04aa0400 	strteq	r0, [sl], #1024	; 0x400
     e0c:	86020000 	strhi	r0, [r2], -r0
     e10:	00000025 	andeq	r0, r0, r5, lsr #32
     e14:	ba040402 	blt	101e24 <__bss_end+0xf4e24>
     e18:	02000004 	andeq	r0, r0, #4
     e1c:	04b20308 	ldrteq	r0, [r2], #776	; 0x308
     e20:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     e24:	00058504 	andeq	r8, r5, r4, lsl #10
     e28:	03100200 	tsteq	r0, #0, 4
     e2c:	0000057d 	andeq	r0, r0, sp, ror r5
     e30:	00046f05 	andeq	r6, r4, r5, lsl #30
     e34:	03b00100 	movseq	r0, #0, 2
     e38:	0000007d 	andeq	r0, r0, sp, ror r0
     e3c:	00011f03 	andeq	r1, r1, r3, lsl #30
     e40:	006e0600 	rsbeq	r0, lr, r0, lsl #12
     e44:	7d03b001 	stcvc	0, cr11, [r3, #-4]
     e48:	06000000 	streq	r0, [r0], -r0
     e4c:	b0010064 	andlt	r0, r1, r4, rrx
     e50:	00007d03 	andeq	r7, r0, r3, lsl #26
     e54:	70720600 	rsbsvc	r0, r2, r0, lsl #12
     e58:	03b00100 	movseq	r0, #0, 2
     e5c:	0000011f 	andeq	r0, r0, pc, lsl r1
     e60:	01007107 	tsteq	r0, r7, lsl #2
     e64:	007d03b2 	ldrhteq	r0, [sp], #-50	; 0xffffffce
     e68:	72070000 	andvc	r0, r7, #0
     e6c:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
     e70:	0000007d 	andeq	r0, r0, sp, ror r0
     e74:	01007907 	tsteq	r0, r7, lsl #18
     e78:	007d03b2 	ldrhteq	r0, [sp], #-50	; 0xffffffce
     e7c:	6c070000 	stcvs	0, cr0, [r7], {-0}
     e80:	0100317a 	tsteq	r0, sl, ror r1
     e84:	006b03b3 	strhteq	r0, [fp], #-51	; 0xffffffcd
     e88:	6c070000 	stcvs	0, cr0, [r7], {-0}
     e8c:	0100327a 	tsteq	r0, sl, ror r2
     e90:	006b03b3 	strhteq	r0, [fp], #-51	; 0xffffffcd
     e94:	69070000 	stmdbvs	r7, {}	; <UNPREDICTABLE>
     e98:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
     e9c:	0000006b 	andeq	r0, r0, fp, rrx
     ea0:	01006b07 	tsteq	r0, r7, lsl #22
     ea4:	006b03b3 	strhteq	r0, [fp], #-51	; 0xffffffcd
     ea8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     eac:	00007d04 	andeq	r7, r0, r4, lsl #26
     eb0:	04570900 	ldrbeq	r0, [r7], #-2304	; 0xfffff700
     eb4:	06010000 	streq	r0, [r1], -r0
     eb8:	00007d05 	andeq	r7, r0, r5, lsl #26
     ebc:	008f5800 	addeq	r5, pc, r0, lsl #16
     ec0:	00012000 	andeq	r2, r1, r0
     ec4:	0a9c0100 	beq	fe7012cc <__user_program+0xfe4012cc>
     ec8:	0601006e 	streq	r0, [r1], -lr, rrx
     ecc:	00007d05 	andeq	r7, r0, r5, lsl #26
     ed0:	0002e800 	andeq	lr, r2, r0, lsl #16
     ed4:	00640a00 	rsbeq	r0, r4, r0, lsl #20
     ed8:	7d050601 	stcvc	6, cr0, [r5, #-4]
     edc:	10000000 	andne	r0, r0, r0
     ee0:	0b000003 	bleq	ef4 <__start-0x710c>
     ee4:	000000a4 	andeq	r0, r0, r4, lsr #1
     ee8:	00008f58 	andeq	r8, r0, r8, asr pc
     eec:	00000000 	andeq	r0, r0, r0
     ef0:	0c050801 	stceq	8, cr0, [r5], {1}
     ef4:	000000c9 	andeq	r0, r0, r9, asr #1
     ef8:	00bf0d00 	adcseq	r0, pc, r0, lsl #26
     efc:	03380000 	teqeq	r8, #0
     f00:	b50d0000 	strlt	r0, [sp, #-0]
     f04:	50000000 	andpl	r0, r0, r0
     f08:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
     f0c:	00000000 	andeq	r0, r0, r0
     f10:	0000d40f 	andeq	sp, r0, pc, lsl #8
     f14:	00036800 	andeq	r6, r3, r0, lsl #16
     f18:	00de0f00 	sbcseq	r0, lr, r0, lsl #30
     f1c:	03b40000 			; <UNDEFINED> instruction: 0x03b40000
     f20:	e80f0000 	stmda	pc, {}	; <UNPREDICTABLE>
     f24:	11000000 	mrsne	r0, (UNDEF: 0)
     f28:	0f000004 	svceq	0x00000004
     f2c:	000000f2 	strdeq	r0, [r0], -r2
     f30:	00000439 	andeq	r0, r0, r9, lsr r4
     f34:	0000fe0f 	andeq	pc, r0, pc, lsl #28
     f38:	00045700 	andeq	r5, r4, r0, lsl #14
     f3c:	010a0f00 	tsteq	sl, r0, lsl #30
     f40:	046a0000 	strbteq	r0, [sl], #-0
     f44:	140f0000 	strne	r0, [pc], #-0	; f4c <__start-0x70b4>
     f48:	ad000001 	stcge	0, cr0, [r0, #-4]
     f4c:	00000004 	andeq	r0, r0, r4
     f50:	aa000000 	bge	f58 <__start-0x70a8>
     f54:	02000000 	andeq	r0, r0, #0
     f58:	00071b00 	andeq	r1, r7, r0, lsl #22
     f5c:	92010400 	andls	r0, r1, #0, 8
     f60:	78000007 	stmdavc	r0, {r0, r1, r2}
     f64:	a0000090 	mulge	r0, r0, r0
     f68:	2e000090 	mcrcs	0, 0, r0, cr0, cr0, {4}
     f6c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     f70:	2f2e2e2f 	svccs	0x002e2e2f
     f74:	2f637273 	svccs	0x00637273
     f78:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
     f7c:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
     f80:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
     f84:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
     f88:	696c2f6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp}^
     f8c:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
     f90:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
     f94:	622f0053 	eorvs	r0, pc, #83	; 0x53
     f98:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
     f9c:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
     fa0:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
     fa4:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     fa8:	61652d65 	cmnvs	r5, r5, ror #26
     fac:	442d6962 	strtmi	r6, [sp], #-2402	; 0xfffff69e
     fb0:	4c6e5252 	sfmmi	f5, 2, [lr], #-328	; 0xfffffeb8
     fb4:	63672f41 	cmnvs	r7, #260	; 0x104
     fb8:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
     fbc:	6f6e2d6d 	svcvs	0x006e2d6d
     fc0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     fc4:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
     fc8:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
     fcc:	76732b33 			; <UNDEFINED> instruction: 0x76732b33
     fd0:	3133326e 	teqcc	r3, lr, ror #4
     fd4:	2f373731 	svccs	0x00373731
     fd8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     fdc:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
     fe0:	6f6e2d6d 	svcvs	0x006e2d6d
     fe4:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     fe8:	2f696261 	svccs	0x00696261
     fec:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
     ff0:	47006363 	strmi	r6, [r0, -r3, ror #6]
     ff4:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
     ff8:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
     ffc:	01003532 	tsteq	r0, r2, lsr r5
    1000:	0000aa80 	andeq	sl, r0, r0, lsl #21
    1004:	2f000200 	svccs	0x00000200
    1008:	04000007 	streq	r0, [r0], #-7
    100c:	0007f701 	andeq	pc, r7, r1, lsl #14
    1010:	0090a000 	addseq	sl, r0, r0
    1014:	0090e800 	addseq	lr, r0, r0, lsl #16
    1018:	2f2e2e00 	svccs	0x002e2e00
    101c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1020:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
    1024:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
    1028:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    102c:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
    1030:	2f676966 	svccs	0x00676966
    1034:	2f6d7261 	svccs	0x006d7261
    1038:	3162696c 	cmncc	r2, ip, ror #18
    103c:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
    1040:	00532e73 	subseq	r2, r3, r3, ror lr
    1044:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1048:	672f646c 	strvs	r6, [pc, -ip, ror #8]!
    104c:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    1050:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1054:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1058:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    105c:	5252442d 	subspl	r4, r2, #754974720	; 0x2d000000
    1060:	2f414c6e 	svccs	0x00414c6e
    1064:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    1068:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    106c:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1070:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    1074:	2e342d69 	cdpcs	13, 3, cr2, cr4, cr9, {3}
    1078:	2b332e39 	blcs	ccc964 <__user_program+0x9cc964>
    107c:	326e7673 	rsbcc	r7, lr, #120586240	; 0x7300000
    1080:	37313133 			; <UNDEFINED> instruction: 0x37313133
    1084:	75622f37 	strbvc	r2, [r2, #-3895]!	; 0xfffff0c9
    1088:	2f646c69 	svccs	0x00646c69
    108c:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    1090:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1094:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    1098:	696c2f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, sp}^
    109c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    10a0:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    10a4:	20534120 	subscs	r4, r3, r0, lsr #2
    10a8:	35322e32 	ldrcc	r2, [r2, #-3634]!	; 0xfffff1ce
    10ac:	Address 0x00000000000010ac is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <__end+0x1920ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	00160400 	andseq	r0, r6, r0, lsl #8
  2c:	0b3a0e03 	bleq	e83840 <__user_program+0xb83840>
  30:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  34:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
  38:	03193f01 	tsteq	r9, #1, 30
  3c:	3b0b3a0e 	blcc	2ce87c <__end+0x1a087c>
  40:	1119270b 	tstne	r9, fp, lsl #14
  44:	40061201 	andmi	r1, r6, r1, lsl #4
  48:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
  4c:	00001301 	andeq	r1, r0, r1, lsl #6
  50:	03000506 	movweq	r0, #1286	; 0x506
  54:	3b0b3a08 	blcc	2ce87c <__end+0x1a087c>
  58:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  5c:	07000018 	smladeq	r0, r8, r0, r0
  60:	08030034 	stmdaeq	r3, {r2, r4, r5}
  64:	0b3b0b3a 	bleq	ec2d54 <__user_program+0xbc2d54>
  68:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  6c:	34080000 	strcc	r0, [r8], #-0
  70:	3a0e0300 	bcc	380c78 <__user_program+0x80c78>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	00180213 	andseq	r0, r8, r3, lsl r2
  7c:	012e0900 			; <UNDEFINED> instruction: 0x012e0900
  80:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
  84:	0b3b0b3a 	bleq	ec2d74 <__user_program+0xbc2d74>
  88:	01111927 	tsteq	r1, r7, lsr #18
  8c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
  90:	01194296 			; <UNDEFINED> instruction: 0x01194296
  94:	0a000013 	beq	e8 <__start-0x7f18>
  98:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
  9c:	0b3b0b3a 	bleq	ec2d8c <__user_program+0xbc2d8c>
  a0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  a4:	0f0b0000 	svceq	0x000b0000
  a8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  ac:	0c000013 	stceq	0, cr0, [r0], {19}
  b0:	13490035 	movtne	r0, #36917	; 0x9035
  b4:	01000000 	mrseq	r0, (UNDEF: 0)
  b8:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  bc:	0e030b13 	vmoveq.32	d3[0], r0
  c0:	01110e1b 	tsteq	r1, fp, lsl lr
  c4:	17100612 			; <UNDEFINED> instruction: 0x17100612
  c8:	24020000 	strcs	r0, [r2], #-0
  cc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d0:	000e030b 	andeq	r0, lr, fp, lsl #6
  d4:	00240300 	eoreq	r0, r4, r0, lsl #6
  d8:	0b3e0b0b 	bleq	f82d0c <__user_program+0xc82d0c>
  dc:	00000803 	andeq	r0, r0, r3, lsl #16
  e0:	03001604 	movweq	r1, #1540	; 0x604
  e4:	3b0b3a0e 	blcc	2ce924 <__end+0x1a0924>
  e8:	0013490b 	andseq	r4, r3, fp, lsl #18
  ec:	012e0500 			; <UNDEFINED> instruction: 0x012e0500
  f0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
  f4:	0b3b0b3a 	bleq	ec2de4 <__user_program+0xbc2de4>
  f8:	01111927 	tsteq	r1, r7, lsr #18
  fc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 100:	01194296 			; <UNDEFINED> instruction: 0x01194296
 104:	06000013 			; <UNDEFINED> instruction: 0x06000013
 108:	08030034 	stmdaeq	r3, {r2, r4, r5}
 10c:	0b3b0b3a 	bleq	ec2dfc <__user_program+0xbc2dfc>
 110:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 114:	34070000 	strcc	r0, [r7], #-0
 118:	3a0e0300 	bcc	380d20 <__user_program+0x80d20>
 11c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 120:	00180213 	andseq	r0, r8, r3, lsl r2
 124:	01010800 	tsteq	r1, r0, lsl #16
 128:	13011349 	movwne	r1, #4937	; 0x1349
 12c:	21090000 	mrscs	r0, (UNDEF: 9)
 130:	2f134900 	svccs	0x00134900
 134:	0a000005 	beq	150 <__start-0x7eb0>
 138:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 13c:	0b3b0b3a 	bleq	ec2e2c <__user_program+0xbc2e2c>
 140:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
 144:	00001802 	andeq	r1, r0, r2, lsl #16
 148:	01110100 	tsteq	r1, r0, lsl #2
 14c:	0b130e25 	bleq	4c39e8 <__user_program+0x1c39e8>
 150:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 154:	06120111 			; <UNDEFINED> instruction: 0x06120111
 158:	00001710 	andeq	r1, r0, r0, lsl r7
 15c:	03001602 	movweq	r1, #1538	; 0x602
 160:	3b0b3a0e 	blcc	2ce9a0 <__end+0x1a09a0>
 164:	0013490b 	andseq	r4, r3, fp, lsl #18
 168:	00240300 	eoreq	r0, r4, r0, lsl #6
 16c:	0b3e0b0b 	bleq	f82da0 <__user_program+0xc82da0>
 170:	00000e03 	andeq	r0, r0, r3, lsl #28
 174:	0b002404 	bleq	918c <__clzsi2+0xec>
 178:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 17c:	05000008 	streq	r0, [r0, #-8]
 180:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 184:	0b3a0b0b 	bleq	e82db8 <__user_program+0xb82db8>
 188:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 18c:	0d060000 	stceq	0, cr0, [r6, #-0]
 190:	490e0300 	stmdbmi	lr, {r8, r9}
 194:	340b3813 	strcc	r3, [fp], #-2067	; 0xfffff7ed
 198:	07000019 	smladeq	r0, r9, r0, r0
 19c:	0b0b000f 	bleq	2c01e0 <__end+0x1921e0>
 1a0:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
 1a4:	3a0e0301 	bcc	380db0 <__user_program+0x80db0>
 1a8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 1ac:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 1b0:	96184006 	ldrls	r4, [r8], -r6
 1b4:	13011942 	movwne	r1, #6466	; 0x1942
 1b8:	05090000 	streq	r0, [r9, #-0]
 1bc:	3a0e0300 	bcc	380dc4 <__user_program+0x80dc4>
 1c0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 1c4:	00180213 	andseq	r0, r8, r3, lsl r2
 1c8:	00050a00 	andeq	r0, r5, r0, lsl #20
 1cc:	0b3a0803 	bleq	e821e0 <__user_program+0xb821e0>
 1d0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 1d4:	00001802 	andeq	r1, r0, r2, lsl #16
 1d8:	0300340b 	movweq	r3, #1035	; 0x40b
 1dc:	3b0b3a0e 	blcc	2cea1c <__end+0x1a0a1c>
 1e0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 1e4:	0c000018 	stceq	0, cr0, [r0], {24}
 1e8:	08030034 	stmdaeq	r3, {r2, r4, r5}
 1ec:	0b3b0b3a 	bleq	ec2edc <__user_program+0xbc2edc>
 1f0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 1f4:	0f0d0000 	svceq	0x000d0000
 1f8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 1fc:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 200:	13490101 	movtne	r0, #37121	; 0x9101
 204:	00001301 	andeq	r1, r0, r1, lsl #6
 208:	4900210f 	stmdbmi	r0, {r0, r1, r2, r3, r8, sp}
 20c:	000b2f13 	andeq	r2, fp, r3, lsl pc
 210:	012e1000 			; <UNDEFINED> instruction: 0x012e1000
 214:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 218:	0b3b0b3a 	bleq	ec2f08 <__user_program+0xbc2f08>
 21c:	13491927 	movtne	r1, #39207	; 0x9927
 220:	06120111 			; <UNDEFINED> instruction: 0x06120111
 224:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 228:	00130119 	andseq	r0, r3, r9, lsl r1
 22c:	00181100 	andseq	r1, r8, r0, lsl #2
 230:	0b120000 	bleq	480238 <__user_program+0x180238>
 234:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 238:	00130106 	andseq	r0, r3, r6, lsl #2
 23c:	010b1300 	mrseq	r1, (UNDEF: 59)
 240:	06120111 			; <UNDEFINED> instruction: 0x06120111
 244:	26140000 	ldrcs	r0, [r4], -r0
 248:	00134900 	andseq	r4, r3, r0, lsl #18
 24c:	11010000 	mrsne	r0, (UNDEF: 1)
 250:	130e2501 	movwne	r2, #58625	; 0xe501
 254:	1b0e030b 	blne	380e88 <__user_program+0x80e88>
 258:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 25c:	00171006 	andseq	r1, r7, r6
 260:	00240200 	eoreq	r0, r4, r0, lsl #4
 264:	0b3e0b0b 	bleq	f82e98 <__user_program+0xc82e98>
 268:	00000e03 	andeq	r0, r0, r3, lsl #28
 26c:	0b002403 	bleq	9280 <__clzsi2+0x1e0>
 270:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 274:	04000008 	streq	r0, [r0], #-8
 278:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 27c:	0b3b0b3a 	bleq	ec2f6c <__user_program+0xbc2f6c>
 280:	00001349 	andeq	r1, r0, r9, asr #6
 284:	3f002e05 	svccc	0x00002e05
 288:	3a0e0319 	bcc	380ef4 <__user_program+0x80ef4>
 28c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 290:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 294:	96184006 	ldrls	r4, [r8], -r6
 298:	00001942 	andeq	r1, r0, r2, asr #18
 29c:	3f002e06 	svccc	0x00002e06
 2a0:	3a0e0319 	bcc	380f0c <__user_program+0x80f0c>
 2a4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 2a8:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 2ac:	97184006 	ldrls	r4, [r8, -r6]
 2b0:	00001942 	andeq	r1, r0, r2, asr #18
 2b4:	3f012e07 	svccc	0x00012e07
 2b8:	3a0e0319 	bcc	380f24 <__user_program+0x80f24>
 2bc:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 2c0:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 2c4:	97184006 	ldrls	r4, [r8, -r6]
 2c8:	13011942 	movwne	r1, #6466	; 0x1942
 2cc:	05080000 	streq	r0, [r8, #-0]
 2d0:	3a0e0300 	bcc	380ed8 <__user_program+0x80ed8>
 2d4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 2d8:	00180213 	andseq	r0, r8, r3, lsl r2
 2dc:	002e0900 	eoreq	r0, lr, r0, lsl #18
 2e0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 2e4:	0b3b0b3a 	bleq	ec2fd4 <__user_program+0xbc2fd4>
 2e8:	13491927 	movtne	r1, #39207	; 0x9927
 2ec:	06120111 			; <UNDEFINED> instruction: 0x06120111
 2f0:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 2f4:	00000019 	andeq	r0, r0, r9, lsl r0
 2f8:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 2fc:	030b130e 	movweq	r1, #45838	; 0xb30e
 300:	110e1b0e 	tstne	lr, lr, lsl #22
 304:	10061201 	andne	r1, r6, r1, lsl #4
 308:	02000017 	andeq	r0, r0, #23
 30c:	0b0b0024 	bleq	2c03a4 <__end+0x1923a4>
 310:	0e030b3e 	vmoveq.16	d3[0], r0
 314:	24030000 	strcs	r0, [r3], #-0
 318:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 31c:	0008030b 	andeq	r0, r8, fp, lsl #6
 320:	00160400 	andseq	r0, r6, r0, lsl #8
 324:	0b3a0e03 	bleq	e83b38 <__user_program+0xb83b38>
 328:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 32c:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 330:	03193f01 	tsteq	r9, #1, 30
 334:	3b0b3a0e 	blcc	2ceb74 <__end+0x1a0b74>
 338:	1119270b 	tstne	r9, fp, lsl #14
 33c:	40061201 	andmi	r1, r6, r1, lsl #4
 340:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 344:	00001301 	andeq	r1, r0, r1, lsl #6
 348:	03000506 	movweq	r0, #1286	; 0x506
 34c:	3b0b3a0e 	blcc	2ceb8c <__end+0x1a0b8c>
 350:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 354:	07000018 	smladeq	r0, r8, r0, r0
 358:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 35c:	0b3a0e03 	bleq	e83b70 <__user_program+0xb83b70>
 360:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 364:	06120111 			; <UNDEFINED> instruction: 0x06120111
 368:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 36c:	08000019 	stmdaeq	r0, {r0, r3, r4}
 370:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 374:	0b3a0e03 	bleq	e83b88 <__user_program+0xb83b88>
 378:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 37c:	01111349 	tsteq	r1, r9, asr #6
 380:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 384:	00194297 	mulseq	r9, r7, r2
 388:	11010000 	mrsne	r0, (UNDEF: 1)
 38c:	130e2501 	movwne	r2, #58625	; 0xe501
 390:	1b0e030b 	blne	380fc4 <__user_program+0x80fc4>
 394:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 398:	00171006 	andseq	r1, r7, r6
 39c:	00240200 	eoreq	r0, r4, r0, lsl #4
 3a0:	0b3e0b0b 	bleq	f82fd4 <__user_program+0xc82fd4>
 3a4:	00000e03 	andeq	r0, r0, r3, lsl #28
 3a8:	0b002403 	bleq	93bc <__clzsi2+0x31c>
 3ac:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 3b0:	04000008 	streq	r0, [r0], #-8
 3b4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 3b8:	0b3b0b3a 	bleq	ec30a8 <__user_program+0xbc30a8>
 3bc:	00001349 	andeq	r1, r0, r9, asr #6
 3c0:	3f002e05 	svccc	0x00002e05
 3c4:	3a080319 	bcc	201030 <__end+0xd3030>
 3c8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3cc:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 3d0:	97184006 	ldrls	r4, [r8, -r6]
 3d4:	00001942 	andeq	r1, r0, r2, asr #18
 3d8:	3f012e06 	svccc	0x00012e06
 3dc:	3a080319 	bcc	201048 <__end+0xd3048>
 3e0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3e4:	11134919 	tstne	r3, r9, lsl r9
 3e8:	40061201 	andmi	r1, r6, r1, lsl #4
 3ec:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 3f0:	34070000 	strcc	r0, [r7], #-0
 3f4:	3a0e0300 	bcc	380ffc <__user_program+0x80ffc>
 3f8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3fc:	00180213 	andseq	r0, r8, r3, lsl r2
 400:	11010000 	mrsne	r0, (UNDEF: 1)
 404:	11061000 	mrsne	r1, (UNDEF: 6)
 408:	03011201 	movweq	r1, #4609	; 0x1201
 40c:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 410:	00051308 	andeq	r1, r5, r8, lsl #6
 414:	11010000 	mrsne	r0, (UNDEF: 1)
 418:	11061000 	mrsne	r1, (UNDEF: 6)
 41c:	03011201 	movweq	r1, #4609	; 0x1201
 420:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 424:	00051308 	andeq	r1, r5, r8, lsl #6
 428:	11010000 	mrsne	r0, (UNDEF: 1)
 42c:	11061000 	mrsne	r1, (UNDEF: 6)
 430:	03011201 	movweq	r1, #4609	; 0x1201
 434:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 438:	00051308 	andeq	r1, r5, r8, lsl #6
 43c:	11010000 	mrsne	r0, (UNDEF: 1)
 440:	11061000 	mrsne	r1, (UNDEF: 6)
 444:	03011201 	movweq	r1, #4609	; 0x1201
 448:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 44c:	00051308 	andeq	r1, r5, r8, lsl #6
 450:	11010000 	mrsne	r0, (UNDEF: 1)
 454:	11061000 	mrsne	r1, (UNDEF: 6)
 458:	03011201 	movweq	r1, #4609	; 0x1201
 45c:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 460:	00051308 	andeq	r1, r5, r8, lsl #6
 464:	11010000 	mrsne	r0, (UNDEF: 1)
 468:	130e2501 	movwne	r2, #58625	; 0xe501
 46c:	1b0e030b 	blne	3810a0 <__user_program+0x810a0>
 470:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 474:	00171006 	andseq	r1, r7, r6
 478:	00240200 	eoreq	r0, r4, r0, lsl #4
 47c:	0b3e0b0b 	bleq	f830b0 <__user_program+0xc830b0>
 480:	00000e03 	andeq	r0, r0, r3, lsl #28
 484:	3f012e03 	svccc	0x00012e03
 488:	3a0e0319 	bcc	3810f4 <__user_program+0x810f4>
 48c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 490:	11134919 	tstne	r3, r9, lsl r9
 494:	40061201 	andmi	r1, r6, r1, lsl #4
 498:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 49c:	00001301 	andeq	r1, r0, r1, lsl #6
 4a0:	03000504 	movweq	r0, #1284	; 0x504
 4a4:	3b0b3a08 	blcc	2ceccc <__end+0x1a0ccc>
 4a8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 4ac:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
 4b0:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 4b4:	0b3b0b3a 	bleq	ec31a4 <__user_program+0xbc31a4>
 4b8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 4bc:	34060000 	strcc	r0, [r6], #-0
 4c0:	3a0e0300 	bcc	3810c8 <__user_program+0x810c8>
 4c4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 4c8:	00180213 	andseq	r0, r8, r3, lsl r2
 4cc:	82890700 	addhi	r0, r9, #0, 14
 4d0:	01110101 	tsteq	r1, r1, lsl #2
 4d4:	00001331 	andeq	r1, r0, r1, lsr r3
 4d8:	01828a08 	orreq	r8, r2, r8, lsl #20
 4dc:	91180200 	tstls	r8, r0, lsl #4
 4e0:	00001842 	andeq	r1, r0, r2, asr #16
 4e4:	0b000f09 	bleq	4110 <__start-0x3ef0>
 4e8:	0013490b 	andseq	r4, r3, fp, lsl #18
 4ec:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
 4f0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 4f4:	0b3b0b3a 	bleq	ec31e4 <__user_program+0xbc31e4>
 4f8:	13491927 	movtne	r1, #39207	; 0x9927
 4fc:	1301193c 	movwne	r1, #6460	; 0x193c
 500:	050b0000 	streq	r0, [fp, #-0]
 504:	00134900 	andseq	r4, r3, r0, lsl #18
 508:	012e0c00 			; <UNDEFINED> instruction: 0x012e0c00
 50c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 510:	0b3b0b3a 	bleq	ec3200 <__user_program+0xbc3200>
 514:	13491927 	movtne	r1, #39207	; 0x9927
 518:	0000193c 	andeq	r1, r0, ip, lsr r9
 51c:	00110100 	andseq	r0, r1, r0, lsl #2
 520:	01110610 	tsteq	r1, r0, lsl r6
 524:	08030112 	stmdaeq	r3, {r1, r4, r8}
 528:	0825081b 	stmdaeq	r5!, {r0, r1, r3, r4, fp}
 52c:	00000513 	andeq	r0, r0, r3, lsl r5
 530:	01110100 	tsteq	r1, r0, lsl #2
 534:	0b130e25 	bleq	4c3dd0 <__user_program+0x1c3dd0>
 538:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 53c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 540:	00001710 	andeq	r1, r0, r0, lsl r7
 544:	0b002402 	bleq	9554 <__clzsi2+0x4b4>
 548:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 54c:	0300000e 	movweq	r0, #14
 550:	0b0b0024 	bleq	2c05e8 <__end+0x1925e8>
 554:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 558:	16040000 	strne	r0, [r4], -r0
 55c:	3a0e0300 	bcc	381164 <__user_program+0x81164>
 560:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 564:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 568:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 56c:	0b3a0b0b 	bleq	e831a0 <__user_program+0xb831a0>
 570:	1301053b 	movwne	r0, #5435	; 0x153b
 574:	0d060000 	stceq	0, cr0, [r6, #-0]
 578:	3a080300 	bcc	201180 <__end+0xd3180>
 57c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 580:	000b3813 	andeq	r3, fp, r3, lsl r8
 584:	000d0700 	andeq	r0, sp, r0, lsl #14
 588:	0b3a0e03 	bleq	e83d9c <__user_program+0xb83d9c>
 58c:	1349053b 	movtne	r0, #38203	; 0x953b
 590:	00000b38 	andeq	r0, r0, r8, lsr fp
 594:	0b011708 	bleq	461bc <__bss_end+0x391bc>
 598:	3b0b3a0b 	blcc	2cedcc <__end+0x1a0dcc>
 59c:	00130105 	andseq	r0, r3, r5, lsl #2
 5a0:	000d0900 	andeq	r0, sp, r0, lsl #18
 5a4:	0b3a0803 	bleq	e825b8 <__user_program+0xb825b8>
 5a8:	1349053b 	movtne	r0, #38203	; 0x953b
 5ac:	160a0000 	strne	r0, [sl], -r0
 5b0:	3a0e0300 	bcc	3811b8 <__user_program+0x811b8>
 5b4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 5b8:	0b000013 	bleq	60c <__start-0x79f4>
 5bc:	0e03012e 	adfeqsp	f0, f3, #0.5
 5c0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 5c4:	13491927 	movtne	r1, #39207	; 0x9927
 5c8:	13010b20 	movwne	r0, #6944	; 0x1b20
 5cc:	050c0000 	streq	r0, [ip, #-0]
 5d0:	3a080300 	bcc	2011d8 <__end+0xd31d8>
 5d4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 5d8:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 5dc:	08030034 	stmdaeq	r3, {r2, r4, r5}
 5e0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 5e4:	00001349 	andeq	r1, r0, r9, asr #6
 5e8:	0b000f0e 	bleq	4228 <__start-0x3dd8>
 5ec:	0013490b 	andseq	r4, r3, fp, lsl #18
 5f0:	012e0f00 			; <UNDEFINED> instruction: 0x012e0f00
 5f4:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 5f8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 5fc:	13491927 	movtne	r1, #39207	; 0x9927
 600:	06120111 			; <UNDEFINED> instruction: 0x06120111
 604:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 608:	10000019 	andne	r0, r0, r9, lsl r0
 60c:	08030005 	stmdaeq	r3, {r0, r2}
 610:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 614:	17021349 	strne	r1, [r2, -r9, asr #6]
 618:	34110000 	ldrcc	r0, [r1], #-0
 61c:	3a080300 	bcc	201224 <__end+0xd3224>
 620:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 624:	00170213 	andseq	r0, r7, r3, lsl r2
 628:	011d1200 	tsteq	sp, r0, lsl #4
 62c:	01111331 	tsteq	r1, r1, lsr r3
 630:	0b580612 	bleq	1601e80 <__user_program+0x1301e80>
 634:	00000559 	andeq	r0, r0, r9, asr r5
 638:	31000513 	tstcc	r0, r3, lsl r5
 63c:	00170213 	andseq	r0, r7, r3, lsl r2
 640:	010b1400 	tsteq	fp, r0, lsl #8
 644:	06120111 			; <UNDEFINED> instruction: 0x06120111
 648:	34150000 	ldrcc	r0, [r5], #-0
 64c:	02133100 	andseq	r3, r3, #0, 2
 650:	00000017 	andeq	r0, r0, r7, lsl r0
 654:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 658:	030b130e 	movweq	r1, #45838	; 0xb30e
 65c:	110e1b0e 	tstne	lr, lr, lsl #22
 660:	10061201 	andne	r1, r6, r1, lsl #4
 664:	02000017 	andeq	r0, r0, #23
 668:	0b0b0024 	bleq	2c0700 <__end+0x192700>
 66c:	0e030b3e 	vmoveq.16	d3[0], r0
 670:	24030000 	strcs	r0, [r3], #-0
 674:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 678:	0008030b 	andeq	r0, r8, fp, lsl #6
 67c:	00160400 	andseq	r0, r6, r0, lsl #8
 680:	0b3a0e03 	bleq	e83e94 <__user_program+0xb83e94>
 684:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 688:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 68c:	3a0e0301 	bcc	381298 <__user_program+0x81298>
 690:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 694:	20134919 	andscs	r4, r3, r9, lsl r9
 698:	0013010b 	andseq	r0, r3, fp, lsl #2
 69c:	00050600 	andeq	r0, r5, r0, lsl #12
 6a0:	0b3a0803 	bleq	e826b4 <__user_program+0xb826b4>
 6a4:	1349053b 	movtne	r0, #38203	; 0x953b
 6a8:	34070000 	strcc	r0, [r7], #-0
 6ac:	3a080300 	bcc	2012b4 <__end+0xd32b4>
 6b0:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 6b4:	08000013 	stmdaeq	r0, {r0, r1, r4}
 6b8:	0b0b000f 	bleq	2c06fc <__end+0x1926fc>
 6bc:	00001349 	andeq	r1, r0, r9, asr #6
 6c0:	3f012e09 	svccc	0x00012e09
 6c4:	3a0e0319 	bcc	381330 <__user_program+0x81330>
 6c8:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 6cc:	11134919 	tstne	r3, r9, lsl r9
 6d0:	40061201 	andmi	r1, r6, r1, lsl #4
 6d4:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 6d8:	050a0000 	streq	r0, [sl, #-0]
 6dc:	3a080300 	bcc	2012e4 <__end+0xd32e4>
 6e0:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 6e4:	00170213 	andseq	r0, r7, r3, lsl r2
 6e8:	011d0b00 	tsteq	sp, r0, lsl #22
 6ec:	01521331 	cmpeq	r2, r1, lsr r3
 6f0:	0b581755 	bleq	160644c <__user_program+0x130644c>
 6f4:	00000559 	andeq	r0, r0, r9, asr r5
 6f8:	3100050c 	tstcc	r0, ip, lsl #10
 6fc:	000b1c13 	andeq	r1, fp, r3, lsl ip
 700:	00050d00 	andeq	r0, r5, r0, lsl #26
 704:	17021331 	smladxne	r2, r1, r3, r1
 708:	0b0e0000 	bleq	380710 <__user_program+0x80710>
 70c:	00175501 	andseq	r5, r7, r1, lsl #10
 710:	00340f00 	eorseq	r0, r4, r0, lsl #30
 714:	17021331 	smladxne	r2, r1, r3, r1
 718:	01000000 	mrseq	r0, (UNDEF: 0)
 71c:	06100011 			; <UNDEFINED> instruction: 0x06100011
 720:	01120111 	tsteq	r2, r1, lsl r1
 724:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 728:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 72c:	01000000 	mrseq	r0, (UNDEF: 0)
 730:	06100011 			; <UNDEFINED> instruction: 0x06100011
 734:	01120111 	tsteq	r2, r1, lsl r1
 738:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 73c:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 740:	Address 0x0000000000000740 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00008054 	andeq	r8, r0, r4, asr r0
  14:	00000320 	andeq	r0, r0, r0, lsr #6
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01660002 	cmneq	r6, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00008374 	andeq	r8, r0, r4, ror r3
  34:	00000158 	andeq	r0, r0, r8, asr r1
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02470002 	subeq	r0, r7, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	000084cc 	andeq	r8, r0, ip, asr #9
  54:	00000388 	andeq	r0, r0, r8, lsl #7
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	04800002 	streq	r0, [r0], #2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	00008854 	andeq	r8, r0, r4, asr r8
  74:	00000164 	andeq	r0, r0, r4, ror #2
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	054f0002 	strbeq	r0, [pc, #-2]	; 8a <__start-0x7f76>
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	000089b8 			; <UNDEFINED> instruction: 0x000089b8
  94:	00000088 	andeq	r0, r0, r8, lsl #1
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	06280002 	strteq	r0, [r8], -r2
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008a40 	andeq	r8, r0, r0, asr #20
  b4:	0000006c 	andeq	r0, r0, ip, rrx
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	06c60002 	strbeq	r0, [r6], r2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008000 	andeq	r8, r0, r0
  d4:	00000054 	andeq	r0, r0, r4, asr r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	07310002 	ldreq	r0, [r1, -r2]!
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008aac 	andeq	r8, r0, ip, lsr #21
  f4:	00000044 	andeq	r0, r0, r4, asr #32
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	079b0002 	ldreq	r0, [fp, r2]
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008af0 	strdeq	r8, [r0], -r0
 114:	00000158 	andeq	r0, r0, r8, asr r1
	...
 120:	0000001c 	andeq	r0, r0, ip, lsl r0
 124:	08010002 	stmdaeq	r1, {r1}
 128:	00040000 	andeq	r0, r4, r0
 12c:	00000000 	andeq	r0, r0, r0
 130:	00008c48 	andeq	r8, r0, r8, asr #24
 134:	000000d4 	ldrdeq	r0, [r0], -r4
	...
 140:	0000001c 	andeq	r0, r0, ip, lsl r0
 144:	08670002 	stmdaeq	r7!, {r1}^
 148:	00040000 	andeq	r0, r4, r0
 14c:	00000000 	andeq	r0, r0, r0
 150:	00008d1c 	andeq	r8, r0, ip, lsl sp
 154:	0000003c 	andeq	r0, r0, ip, lsr r0
	...
 160:	0000001c 	andeq	r0, r0, ip, lsl r0
 164:	09110002 	ldmdbeq	r1, {r1}
 168:	00040000 	andeq	r0, r4, r0
 16c:	00000000 	andeq	r0, r0, r0
 170:	00008d58 	andeq	r8, r0, r8, asr sp
 174:	00000084 	andeq	r0, r0, r4, lsl #1
	...
 180:	0000001c 	andeq	r0, r0, ip, lsl r0
 184:	0a750002 	beq	1d40194 <__user_program+0x1a40194>
 188:	00040000 	andeq	r0, r4, r0
 18c:	00000000 	andeq	r0, r0, r0
 190:	00008ddc 	ldrdeq	r8, [r0], -ip
 194:	00000004 	andeq	r0, r0, r4
	...
 1a0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1a4:	0b230002 	bleq	8c01b4 <__user_program+0x5c01b4>
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	00008de0 	andeq	r8, r0, r0, ror #27
 1b4:	00000178 	andeq	r0, r0, r8, ror r1
	...
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	0d8c0002 	stceq	0, cr0, [ip, #8]
 1c8:	00040000 	andeq	r0, r4, r0
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	00008f58 	andeq	r8, r0, r8, asr pc
 1d4:	00000120 	andeq	r0, r0, r0, lsr #2
	...
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	0f530002 	svceq	0x00530002
 1e8:	00040000 	andeq	r0, r4, r0
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	00009078 	andeq	r9, r0, r8, ror r0
 1f4:	00000028 	andeq	r0, r0, r8, lsr #32
	...
 200:	0000001c 	andeq	r0, r0, ip, lsl r0
 204:	10010002 	andne	r0, r1, r2
 208:	00040000 	andeq	r0, r4, r0
 20c:	00000000 	andeq	r0, r0, r0
 210:	000090a0 	andeq	r9, r0, r0, lsr #1
 214:	00000048 	andeq	r0, r0, r8, asr #32
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000092 	muleq	r0, r2, r0
   4:	00460002 	subeq	r0, r6, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	33010000 	movwcc	r0, #4096	; 0x1000
  1c:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
  20:	732f6b62 			; <UNDEFINED> instruction: 0x732f6b62
  24:	33006372 	movwcc	r6, #882	; 0x372
  28:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
  2c:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
  30:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
  34:	00006564 	andeq	r6, r0, r4, ror #10
  38:	6f697067 	svcvs	0x00697067
  3c:	0100632e 	tsteq	r0, lr, lsr #6
  40:	736b0000 	cmnvc	fp, #0
  44:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  48:	00682e74 	rsbeq	r2, r8, r4, ror lr
  4c:	00000002 	andeq	r0, r0, r2
  50:	54020500 	strpl	r0, [r2], #-1280	; 0xfffffb00
  54:	03000080 	movweq	r0, #128	; 0x80
  58:	f30100d3 	vqadd.u8	q0, <illegal reg q8.5>, <illegal reg q1.5>
  5c:	01040200 	mrseq	r0, R12_usr
  60:	67066606 	strvs	r6, [r6, -r6, lsl #12]
  64:	08f4d831 	ldmeq	r4!, {r0, r4, r5, fp, ip, lr, pc}^
  68:	f3d7f3e5 			; <UNDEFINED> instruction: 0xf3d7f3e5
  6c:	30679f69 	rsbcc	r9, r7, r9, ror #30
  70:	f43e0867 			; <UNDEFINED> instruction: 0xf43e0867
  74:	30679f69 	rsbcc	r9, r7, r9, ror #30
  78:	f43e0867 			; <UNDEFINED> instruction: 0xf43e0867
  7c:	0200f369 	andeq	pc, r0, #-1543503871	; 0xa4000001
  80:	66060104 	strvs	r0, [r6], -r4, lsl #2
  84:	bb316706 	bllt	c59ca4 <__user_program+0x959ca4>
  88:	2108674b 	tstcs	r8, fp, asr #14
  8c:	4bf3d84b 	blmi	ffcf61c0 <__user_program+0xff9f61c0>
  90:	000402bc 			; <UNDEFINED> instruction: 0x000402bc
  94:	00ae0101 	adceq	r0, lr, r1, lsl #2
  98:	00020000 	andeq	r0, r2, r0
  9c:	00000054 	andeq	r0, r0, r4, asr r0
  a0:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
  a4:	0101000d 	tsteq	r1, sp
  a8:	00000101 	andeq	r0, r0, r1, lsl #2
  ac:	00000100 	andeq	r0, r0, r0, lsl #2
  b0:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
  b4:	5f6c656e 	svcpl	0x006c656e
  b8:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
  bc:	617a696d 	cmnvs	sl, sp, ror #18
  c0:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
  c4:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
  c8:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
  cc:	6b62696c 	blvs	189a684 <__user_program+0x159a684>
  d0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  d4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  d8:	656b0000 	strbvs	r0, [fp, #-0]!
  dc:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
  e0:	0100632e 	tsteq	r0, lr, lsr #6
  e4:	736b0000 	cmnvc	fp, #0
  e8:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  ec:	00682e74 	rsbeq	r2, r8, r4, ror lr
  f0:	00000002 	andeq	r0, r0, r2
  f4:	74020500 	strvc	r0, [r2], #-1280	; 0xfffffb00
  f8:	03000083 	movweq	r0, #131	; 0x83
  fc:	4d680117 	stfmie	f0, [r8, #-92]!	; 0xffffffa4
 100:	04020031 	streq	r0, [r2], #-49	; 0xffffffcf
 104:	02006803 	andeq	r6, r0, #196608	; 0x30000
 108:	009f0304 	addseq	r0, pc, r4, lsl #6
 10c:	9b030402 	blls	c111c <__bss_end+0xb411c>
 110:	01040200 	mrseq	r0, R12_usr
 114:	6d066606 	stcvs	6, cr6, [r6, #-24]	; 0xffffffe8
 118:	4b672f67 	blmi	19cbebc <__user_program+0x16cbebc>
 11c:	672f6785 	strvs	r6, [pc, -r5, lsl #15]!
 120:	0868854b 	stmdaeq	r8!, {r0, r1, r3, r6, r8, sl, pc}^
 124:	004b673f 	subeq	r6, fp, pc, lsr r7
 128:	03020402 	movweq	r0, #9218	; 0x2402
 12c:	02002e79 	andeq	r2, r0, #1936	; 0x790
 130:	66060104 	strvs	r0, [r6], -r4, lsl #2
 134:	660a0306 	strvs	r0, [sl], -r6, lsl #6
 138:	04020069 	streq	r0, [r2], #-105	; 0xffffff97
 13c:	02006a01 	andeq	r6, r0, #4096	; 0x1000
 140:	02670104 	rsbeq	r0, r7, #4, 2
 144:	01010002 	tsteq	r1, r2
 148:	000000d6 	ldrdeq	r0, [r0], -r6
 14c:	006f0002 	rsbeq	r0, pc, r2
 150:	01020000 	mrseq	r0, (UNDEF: 2)
 154:	000d0efb 	strdeq	r0, [sp], -fp
 158:	01010101 	tsteq	r1, r1, lsl #2
 15c:	01000000 	mrseq	r0, (UNDEF: 0)
 160:	6b010000 	blvs	40168 <__bss_end+0x33168>
 164:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 168:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 16c:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 170:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 174:	732f6e6f 			; <UNDEFINED> instruction: 0x732f6e6f
 178:	33006372 	movwcc	r6, #882	; 0x372
 17c:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 180:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 184:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 188:	00006564 	andeq	r6, r0, r4, ror #10
 18c:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 190:	632e6b74 			; <UNDEFINED> instruction: 0x632e6b74
 194:	00000100 	andeq	r0, r0, r0, lsl #2
 198:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0xfffffc95
 19c:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 1a0:	00020068 	andeq	r0, r2, r8, rrx
 1a4:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xfffff500
 1a8:	67726164 	ldrbvs	r6, [r2, -r4, ror #2]!
 1ac:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 1b0:	623c0000 	eorsvs	r0, ip, #0
 1b4:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
 1b8:	3e6e692d 	cdpcc	9, 6, cr6, cr14, cr13, {1}
 1bc:	00000000 	andeq	r0, r0, r0
 1c0:	02050000 	andeq	r0, r5, #0
 1c4:	000084cc 	andeq	r8, r0, ip, asr #9
 1c8:	d7012003 	strle	r2, [r1, -r3]
 1cc:	8367694c 	cmnhi	r7, #76, 18	; 0x130000
 1d0:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
 1d4:	02006b01 	andeq	r6, r0, #1024	; 0x400
 1d8:	ad080104 	stfges	f0, [r8, #-16]
 1dc:	01040200 	mrseq	r0, R12_usr
 1e0:	2f6769d7 	svccs	0x006769d7
 1e4:	812f86b9 			; <UNDEFINED> instruction: 0x812f86b9
 1e8:	4d854df5 	stcmi	13, cr4, [r5, #980]	; 0x3d4
 1ec:	30bb8330 	adcscc	r8, fp, r0, lsr r3
 1f0:	15320268 	ldrne	r0, [r2, #-616]!	; 0xfffffd98
 1f4:	be4b679f 	mcrlt	7, 2, r6, cr11, cr15, {4}
 1f8:	9f32a02c 	svcls	0x0032a02c
 1fc:	9f9f329f 	svcls	0x009f329f
 200:	329f9f33 	addscc	r9, pc, #51, 30	; 0xcc
 204:	64832f9f 	strvs	r2, [r3], #3999	; 0xf9f
 208:	839f3286 	orrshi	r3, pc, #1610612744	; 0x60000008
 20c:	4d334b32 	vldmdbmi	r3!, {d4-d28}
 210:	667fbf03 	ldrbtvs	fp, [pc], -r3, lsl #30
 214:	8200c503 	andhi	ip, r0, #12582912	; 0xc00000
 218:	01040200 	mrseq	r0, R12_usr
 21c:	000a022f 	andeq	r0, sl, pc, lsr #4
 220:	008a0101 	addeq	r0, sl, r1, lsl #2
 224:	00020000 	andeq	r0, r2, r0
 228:	00000052 	andeq	r0, r0, r2, asr r0
 22c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 230:	0101000d 	tsteq	r1, sp
 234:	00000101 	andeq	r0, r0, r1, lsl #2
 238:	00000100 	andeq	r0, r0, r0, lsl #2
 23c:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 240:	5f6c656e 	svcpl	0x006c656e
 244:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 248:	617a696d 	cmnvs	sl, sp, ror #18
 24c:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
 250:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 254:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 258:	6b62696c 	blvs	189a810 <__user_program+0x159a810>
 25c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 260:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 264:	61750000 	cmnvs	r5, r0
 268:	632e7472 			; <UNDEFINED> instruction: 0x632e7472
 26c:	00000100 	andeq	r0, r0, r0, lsl #2
 270:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0xfffffc95
 274:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 278:	00020068 	andeq	r0, r2, r8, rrx
 27c:	05000000 	streq	r0, [r0, #-0]
 280:	00885402 	addeq	r5, r8, r2, lsl #8
 284:	01250300 			; <UNDEFINED> instruction: 0x01250300
 288:	6769674d 	strbvs	r6, [r9, -sp, asr #14]!
 28c:	8484d869 	strhi	sp, [r4], #2153	; 0x869
 290:	d84d3184 	stmdale	sp, {r2, r7, r8, ip, sp}^
 294:	00a169d8 	ldrdeq	r6, [r1], r8	; <UNPREDICTABLE>
 298:	06010402 	streq	r0, [r1], -r2, lsl #8
 29c:	84be062e 	ldrthi	r0, [lr], #1582	; 0x62e
 2a0:	02004b69 	andeq	r4, r0, #107520	; 0x1a400
 2a4:	2e060104 	adfcss	f0, f6, f4
 2a8:	0283bd06 	addeq	fp, r3, #384	; 0x180
 2ac:	01010008 	tsteq	r1, r8
 2b0:	00000076 	andeq	r0, r0, r6, ror r0
 2b4:	00530002 	subseq	r0, r3, r2
 2b8:	01020000 	mrseq	r0, (UNDEF: 2)
 2bc:	000d0efb 	strdeq	r0, [sp], -fp
 2c0:	01010101 	tsteq	r1, r1, lsl #2
 2c4:	01000000 	mrseq	r0, (UNDEF: 0)
 2c8:	6b010000 	blvs	402d0 <__bss_end+0x332d0>
 2cc:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 2d0:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 2d4:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 2d8:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 2dc:	732f6e6f 			; <UNDEFINED> instruction: 0x732f6e6f
 2e0:	33006372 	movwcc	r6, #882	; 0x372
 2e4:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 2e8:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 2ec:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 2f0:	00006564 	andeq	r6, r0, r4, ror #10
 2f4:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 2f8:	00632e72 	rsbeq	r2, r3, r2, ror lr
 2fc:	6b000001 	blvs	308 <__start-0x7cf8>
 300:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 304:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 308:	00000200 	andeq	r0, r0, r0, lsl #4
 30c:	02050000 	andeq	r0, r5, #0
 310:	000089b8 			; <UNDEFINED> instruction: 0x000089b8
 314:	83010b03 	movwhi	r0, #6915	; 0x1b03
 318:	2f4b682f 	svccs	0x004b682f
 31c:	842f4b68 	strthi	r4, [pc], #-2920	; 324 <__start-0x7cdc>
 320:	4b852f4b 	blmi	fe14c054 <__user_program+0xfde4c054>
 324:	0006022f 	andeq	r0, r6, pc, lsr #4
 328:	00720101 	rsbseq	r0, r2, r1, lsl #2
 32c:	00020000 	andeq	r0, r2, r0
 330:	00000055 	andeq	r0, r0, r5, asr r0
 334:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 338:	0101000d 	tsteq	r1, sp
 33c:	00000101 	andeq	r0, r0, r1, lsl #2
 340:	00000100 	andeq	r0, r0, r0, lsl #2
 344:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 348:	5f6c656e 	svcpl	0x006c656e
 34c:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 350:	617a696d 	cmnvs	sl, sp, ror #18
 354:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
 358:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 35c:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 360:	6b62696c 	blvs	189a918 <__user_program+0x159a918>
 364:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 368:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 36c:	69740000 	ldmdbvs	r4!, {}^	; <UNPREDICTABLE>
 370:	6f745f63 	svcvs	0x00745f63
 374:	00632e63 	rsbeq	r2, r3, r3, ror #28
 378:	6b000001 	blvs	384 <__start-0x7c7c>
 37c:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 380:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 384:	00000200 	andeq	r0, r0, r0, lsl #4
 388:	02050000 	andeq	r0, r5, #0
 38c:	00008a40 	andeq	r8, r0, r0, asr #20
 390:	4d011603 	stcmi	6, cr1, [r1, #-12]
 394:	682f8484 	stmdavs	pc!, {r2, r7, sl, pc}	; <UNPREDICTABLE>
 398:	024c8369 	subeq	r8, ip, #-1543503871	; 0xa4000001
 39c:	01010008 	tsteq	r1, r8
 3a0:	00000054 	andeq	r0, r0, r4, asr r0
 3a4:	00290002 	eoreq	r0, r9, r2
 3a8:	01020000 	mrseq	r0, (UNDEF: 2)
 3ac:	000d0efb 	strdeq	r0, [sp], -fp
 3b0:	01010101 	tsteq	r1, r1, lsl #2
 3b4:	01000000 	mrseq	r0, (UNDEF: 0)
 3b8:	33010000 	movwcc	r0, #4096	; 0x1000
 3bc:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 3c0:	732f6b62 			; <UNDEFINED> instruction: 0x732f6b62
 3c4:	00006372 	andeq	r6, r0, r2, ror r3
 3c8:	746f6f62 	strbtvc	r6, [pc], #-3938	; 3d0 <__start-0x7c30>
 3cc:	0100532e 	tsteq	r0, lr, lsr #6
 3d0:	00000000 	andeq	r0, r0, r0
 3d4:	80000205 	andhi	r0, r0, r5, lsl #4
 3d8:	1b030000 	blne	c03e0 <__bss_end+0xb33e0>
 3dc:	2f2f2f01 	svccs	0x002f2f01
 3e0:	2f2f2f30 	svccs	0x002f2f30
 3e4:	312f2f2f 			; <UNDEFINED> instruction: 0x312f2f2f
 3e8:	33312f2f 	teqcc	r1, #47, 30	; 0xbc
 3ec:	2e69032f 	cdpcs	3, 6, cr0, cr9, cr15, {1}
 3f0:	022f2f31 	eoreq	r2, pc, #49, 30	; 0xc4
 3f4:	01010002 	tsteq	r1, r2
 3f8:	0000004d 	andeq	r0, r0, sp, asr #32
 3fc:	00280002 	eoreq	r0, r8, r2
 400:	01020000 	mrseq	r0, (UNDEF: 2)
 404:	000d0efb 	strdeq	r0, [sp], -fp
 408:	01010101 	tsteq	r1, r1, lsl #2
 40c:	01000000 	mrseq	r0, (UNDEF: 0)
 410:	33010000 	movwcc	r0, #4096	; 0x1000
 414:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 418:	732f6b62 			; <UNDEFINED> instruction: 0x732f6b62
 41c:	00006372 	andeq	r6, r0, r2, ror r3
 420:	2e6d7261 	cdpcs	2, 6, cr7, cr13, cr1, {3}
 424:	00010053 	andeq	r0, r1, r3, asr r0
 428:	05000000 	streq	r0, [r0, #-0]
 42c:	008aac02 	addeq	sl, sl, r2, lsl #24
 430:	01100300 	tsteq	r0, r0, lsl #6
 434:	2f332f2f 	svccs	0x00332f2f
 438:	2f332f33 	svccs	0x00332f33
 43c:	332f2f2f 			; <UNDEFINED> instruction: 0x332f2f2f
 440:	2f2f2f2f 	svccs	0x002f2f2f
 444:	01000202 	tsteq	r0, r2, lsl #4
 448:	00009001 	andeq	r9, r0, r1
 44c:	24000200 	strcs	r0, [r0], #-512	; 0xfffffe00
 450:	02000000 	andeq	r0, r0, #0
 454:	0d0efb01 	vstreq	d15, [lr, #-4]
 458:	01010100 	mrseq	r0, (UNDEF: 17)
 45c:	00000001 	andeq	r0, r0, r1
 460:	01000001 	tsteq	r0, r1
 464:	6f6e7500 	svcvs	0x006e7500
 468:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
 46c:	64657a69 	strbtvs	r7, [r5], #-2665	; 0xfffff597
 470:	0000632e 	andeq	r6, r0, lr, lsr #6
 474:	00000000 	andeq	r0, r0, r0
 478:	8af00205 	bhi	ffc00c94 <__user_program+0xff900c94>
 47c:	15030000 	strne	r0, [r3, #-0]
 480:	2f2f2f01 	svccs	0x002f2f01
 484:	2f2f2f2f 	svccs	0x002f2f2f
 488:	2f2f2f2f 	svccs	0x002f2f2f
 48c:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 490:	2e09032f 	cdpcs	3, 0, cr0, cr9, cr15, {1}
 494:	2f2f2f2f 	svccs	0x002f2f2f
 498:	2f302f2f 	svccs	0x00302f2f
 49c:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 4a0:	2f2f2f2f 	svccs	0x002f2f2f
 4a4:	2f2f2f2f 	svccs	0x002f2f2f
 4a8:	2f2f2f2f 	svccs	0x002f2f2f
 4ac:	2f2f2f2f 	svccs	0x002f2f2f
 4b0:	2f2f2f2f 	svccs	0x002f2f2f
 4b4:	2f2f2f2f 	svccs	0x002f2f2f
 4b8:	2f2f2f2f 	svccs	0x002f2f2f
 4bc:	2f2f2f2f 	svccs	0x002f2f2f
 4c0:	2f2f2f2f 	svccs	0x002f2f2f
 4c4:	2f2f2f2f 	svccs	0x002f2f2f
 4c8:	2f2f2f2f 	svccs	0x002f2f2f
 4cc:	2f2f2f30 	svccs	0x002f2f30
 4d0:	2f302f2f 	svccs	0x00302f2f
 4d4:	2f302f2f 	svccs	0x00302f2f
 4d8:	01000202 	tsteq	r0, r2, lsl #4
 4dc:	00006f01 	andeq	r6, r0, r1, lsl #30
 4e0:	24000200 	strcs	r0, [r0], #-512	; 0xfffffe00
 4e4:	02000000 	andeq	r0, r0, #0
 4e8:	0d0efb01 	vstreq	d15, [lr, #-4]
 4ec:	01010100 	mrseq	r0, (UNDEF: 17)
 4f0:	00000001 	andeq	r0, r0, r1
 4f4:	01000001 	tsteq	r0, r1
 4f8:	74706f00 	ldrbtvc	r6, [r0], #-3840	; 0xfffff100
 4fc:	7a696d69 	bvc	1a5baa8 <__user_program+0x175baa8>
 500:	656d5f65 	strbvs	r5, [sp, #-3941]!	; 0xfffff09b
 504:	0000632e 	andeq	r6, r0, lr, lsr #6
 508:	00000000 	andeq	r0, r0, r0
 50c:	8c480205 	sfmhi	f0, 2, [r8], {5}
 510:	18030000 	stmdane	r3, {}	; <UNPREDICTABLE>
 514:	322f2f01 	eorcc	r2, pc, #1, 30
 518:	2f2f312f 	svccs	0x002f312f
 51c:	0d032f30 	stceq	15, cr2, [r3, #-192]	; 0xffffff40
 520:	2f2f2f2e 	svccs	0x002f2f2e
 524:	2f312f2f 	svccs	0x00312f2f
 528:	2f302f31 	svccs	0x00302f31
 52c:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 530:	2f312f2f 	svccs	0x00312f2f
 534:	312f362f 			; <UNDEFINED> instruction: 0x312f362f
 538:	2f2f2f31 	svccs	0x002f2f31
 53c:	2f2f2f2f 	svccs	0x002f2f2f
 540:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 544:	2f30302f 	svccs	0x0030302f
 548:	022f3030 	eoreq	r3, pc, #48	; 0x30
 54c:	01010002 	tsteq	r1, r2
 550:	0000005a 	andeq	r0, r0, sl, asr r0
 554:	003d0002 	eorseq	r0, sp, r2
 558:	01020000 	mrseq	r0, (UNDEF: 2)
 55c:	000d0efb 	strdeq	r0, [sp], -fp
 560:	01010101 	tsteq	r1, r1, lsl #2
 564:	01000000 	mrseq	r0, (UNDEF: 0)
 568:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 56c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 570:	2f2e2e2f 	svccs	0x002e2e2f
 574:	2f637273 	svccs	0x00637273
 578:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 57c:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 580:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 584:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 588:	6200006d 	andvs	r0, r0, #109	; 0x6d
 58c:	69626170 	stmdbvs	r2!, {r4, r5, r6, r8, sp, lr}^
 590:	0100532e 	tsteq	r0, lr, lsr #6
 594:	00000000 	andeq	r0, r0, r0
 598:	8d1c0205 	lfmhi	f0, 4, [ip, #-20]	; 0xffffffec
 59c:	9b030000 	blls	c05a4 <__bss_end+0xb35a4>
 5a0:	33f40101 	mvnscc	r0, #1073741824	; 0x40000000
 5a4:	2f2f2f31 	svccs	0x002f2f31
 5a8:	0002022f 	andeq	r0, r2, pc, lsr #4
 5ac:	005b0101 	subseq	r0, fp, r1, lsl #2
 5b0:	00020000 	andeq	r0, r2, r0
 5b4:	0000003d 	andeq	r0, r0, sp, lsr r0
 5b8:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 5bc:	0101000d 	tsteq	r1, sp
 5c0:	00000101 	andeq	r0, r0, r1, lsl #2
 5c4:	00000100 	andeq	r0, r0, r0, lsl #2
 5c8:	2f2e2e01 	svccs	0x002e2e01
 5cc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 5d0:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 5d4:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 5d8:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 5dc:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 5e0:	2f676966 	svccs	0x00676966
 5e4:	006d7261 	rsbeq	r7, sp, r1, ror #4
 5e8:	61706200 	cmnvs	r0, r0, lsl #4
 5ec:	632e6962 			; <UNDEFINED> instruction: 0x632e6962
 5f0:	00000100 	andeq	r0, r0, r0, lsl #2
 5f4:	02050000 	andeq	r0, r5, #0
 5f8:	00008d58 	andeq	r8, r0, r8, asr sp
 5fc:	2e012503 	cfsh32cs	mvfx2, mvfx1, #3
 600:	50d84ba1 	sbcspl	r4, r8, r1, lsr #23
 604:	d82fa12e 	stmdale	pc!, {r1, r2, r3, r5, r8, sp, pc}	; <UNPREDICTABLE>
 608:	01000402 	tsteq	r0, r2, lsl #8
 60c:	00005701 	andeq	r5, r0, r1, lsl #14
 610:	41000200 	mrsmi	r0, R8_usr
 614:	02000000 	andeq	r0, r0, #0
 618:	0d0efb01 	vstreq	d15, [lr, #-4]
 61c:	01010100 	mrseq	r0, (UNDEF: 17)
 620:	00000001 	andeq	r0, r0, r1
 624:	01000001 	tsteq	r0, r1
 628:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 62c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 630:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 634:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 638:	2f636367 	svccs	0x00636367
 63c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 640:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 644:	00006d72 	andeq	r6, r0, r2, ror sp
 648:	3162696c 	cmncc	r2, ip, ror #18
 64c:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 650:	00532e73 	subseq	r2, r3, r3, ror lr
 654:	00000001 	andeq	r0, r0, r1
 658:	dc020500 	cfstr32le	mvfx0, [r2], {-0}
 65c:	0300008d 	movweq	r0, #141	; 0x8d
 660:	02010bae 	andeq	r0, r1, #178176	; 0x2b800
 664:	01010002 	tsteq	r1, r2
 668:	00000094 	muleq	r0, r4, r0
 66c:	00410002 	subeq	r0, r1, r2
 670:	01020000 	mrseq	r0, (UNDEF: 2)
 674:	000d0efb 	strdeq	r0, [sp], -fp
 678:	01010101 	tsteq	r1, r1, lsl #2
 67c:	01000000 	mrseq	r0, (UNDEF: 0)
 680:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 684:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 688:	2f2e2e2f 	svccs	0x002e2e2f
 68c:	2f637273 	svccs	0x00637273
 690:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 694:	00006363 	andeq	r6, r0, r3, ror #6
 698:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 69c:	2e326363 	cdpcs	3, 3, cr6, cr2, cr3, {3}
 6a0:	00010063 	andeq	r0, r1, r3, rrx
 6a4:	62696c00 	rsbvs	r6, r9, #0, 24
 6a8:	32636367 	rsbcc	r6, r3, #-1677721599	; 0x9c000001
 6ac:	0100682e 	tsteq	r0, lr, lsr #16
 6b0:	00000000 	andeq	r0, r0, r0
 6b4:	8de00205 	sfmhi	f0, 2, [r0, #20]!
 6b8:	cb030000 	blgt	c06c0 <__bss_end+0xb36c0>
 6bc:	03180109 	tsteq	r8, #1073741826	; 0x40000002
 6c0:	33672e7a 	cmncc	r7, #1952	; 0x7a0
 6c4:	7de80331 	stclvc	3, cr0, [r8, #196]!	; 0xc4
 6c8:	2d67a082 	stclcs	0, cr10, [r7, #-520]!	; 0xfffffdf8
 6cc:	a52f4c2f 	strge	r4, [pc, #-3119]!	; fffffaa5 <__user_program+0xffcffaa5>
 6d0:	352e7903 	strcc	r7, [lr, #-2307]!	; 0xfffff6fd
 6d4:	032e7903 			; <UNDEFINED> instruction: 0x032e7903
 6d8:	18032e6f 	stmdane	r3, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp}
 6dc:	2f2d314a 	svccs	0x002d314a
 6e0:	4c312f49 	ldcmi	15, cr2, [r1], #-292	; 0xfffffedc
 6e4:	6945be6e 	stmdbvs	r5, {r1, r2, r3, r5, r6, r9, sl, fp, ip, sp, pc}^
 6e8:	2f494f4c 	svccs	0x00494f4c
 6ec:	03306483 	teqeq	r0, #-2097152000	; 0x83000000
 6f0:	3c0801fa 	stfccs	f0, [r8], {250}	; 0xfa
 6f4:	2d827903 	stccs	9, cr7, [r2, #12]
 6f8:	0249472f 	subeq	r4, r9, #12320768	; 0xbc0000
 6fc:	01010004 	tsteq	r1, r4
 700:	0000008e 	andeq	r0, r0, lr, lsl #1
 704:	00410002 	subeq	r0, r1, r2
 708:	01020000 	mrseq	r0, (UNDEF: 2)
 70c:	000d0efb 	strdeq	r0, [sp], -fp
 710:	01010101 	tsteq	r1, r1, lsl #2
 714:	01000000 	mrseq	r0, (UNDEF: 0)
 718:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 71c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 720:	2f2e2e2f 	svccs	0x002e2e2f
 724:	2f637273 	svccs	0x00637273
 728:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 72c:	00006363 	andeq	r6, r0, r3, ror #6
 730:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 734:	2e326363 	cdpcs	3, 3, cr6, cr2, cr3, {3}
 738:	00010063 	andeq	r0, r1, r3, rrx
 73c:	62696c00 	rsbvs	r6, r9, #0, 24
 740:	32636367 	rsbcc	r6, r3, #-1677721599	; 0x9c000001
 744:	0100682e 	tsteq	r0, lr, lsr #16
 748:	00000000 	andeq	r0, r0, r0
 74c:	8f580205 	svchi	0x00580205
 750:	86030000 	strhi	r0, [r3], -r0
 754:	b603010a 	strlt	r0, [r3], -sl, lsl #2
 758:	ca03017d 	bgt	c0d54 <__bss_end+0xb3d54>
 75c:	032e4a02 			; <UNDEFINED> instruction: 0x032e4a02
 760:	03827dab 	orreq	r7, r2, #10944	; 0x2ac0
 764:	67304a0b 	ldrvs	r4, [r0, -fp, lsl #20]!
 768:	2f4c2f2d 	svccs	0x004c2f2d
 76c:	2e7903a5 	cdpcs	3, 7, cr0, cr9, cr5, {5}
 770:	2e790335 	mrccs	3, 3, r0, cr9, cr5, {1}
 774:	032e6f03 			; <UNDEFINED> instruction: 0x032e6f03
 778:	2d314a18 	vldmdbcs	r1!, {s8-s31}
 77c:	312f492f 			; <UNDEFINED> instruction: 0x312f492f
 780:	45be6e4c 	ldrmi	r6, [lr, #3660]!	; 0xe4c
 784:	4b4e4c69 	blmi	1393930 <__user_program+0x1093930>
 788:	02a503bb 	adceq	r0, r5, #-335544318	; 0xec000002
 78c:	000402ba 			; <UNDEFINED> instruction: 0x000402ba
 790:	00610101 	rsbeq	r0, r1, r1, lsl #2
 794:	00020000 	andeq	r0, r2, r0
 798:	00000041 	andeq	r0, r0, r1, asr #32
 79c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 7a0:	0101000d 	tsteq	r1, sp
 7a4:	00000101 	andeq	r0, r0, r1, lsl #2
 7a8:	00000100 	andeq	r0, r0, r0, lsl #2
 7ac:	2f2e2e01 	svccs	0x002e2e01
 7b0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 7b4:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 7b8:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 7bc:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 7c0:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 7c4:	2f676966 	svccs	0x00676966
 7c8:	006d7261 	rsbeq	r7, sp, r1, ror #4
 7cc:	62696c00 	rsbvs	r6, r9, #0, 24
 7d0:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
 7d4:	532e7363 			; <UNDEFINED> instruction: 0x532e7363
 7d8:	00000100 	andeq	r0, r0, r0, lsl #2
 7dc:	02050000 	andeq	r0, r5, #0
 7e0:	00009078 	andeq	r9, r0, r8, ror r0
 7e4:	010dae03 	tsteq	sp, r3, lsl #28
 7e8:	09032f30 	stmdbeq	r3, {r4, r5, r8, r9, sl, fp, sp}
 7ec:	302f2f2e 	eorcc	r2, pc, lr, lsr #30
 7f0:	0402342f 	streq	r3, [r2], #-1071	; 0xfffffbd1
 7f4:	64010100 	strvs	r0, [r1], #-256	; 0xffffff00
 7f8:	02000000 	andeq	r0, r0, #0
 7fc:	00004100 	andeq	r4, r0, r0, lsl #2
 800:	fb010200 	blx	4100a <__bss_end+0x3400a>
 804:	01000d0e 	tsteq	r0, lr, lsl #26
 808:	00010101 	andeq	r0, r1, r1, lsl #2
 80c:	00010000 	andeq	r0, r1, r0
 810:	2e2e0100 	sufcse	f0, f6, f0
 814:	2f2e2e2f 	svccs	0x002e2e2f
 818:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 81c:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 65c <__start-0x79a4>
 820:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 824:	6f632f63 	svcvs	0x00632f63
 828:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 82c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 830:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 834:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
 838:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 83c:	00010053 	andeq	r0, r1, r3, asr r0
 840:	05000000 	streq	r0, [r0, #-0]
 844:	0090a002 	addseq	sl, r0, r2
 848:	0d8d0300 	stceq	3, cr0, [sp]
 84c:	2f302f01 	svccs	0x00302f01
 850:	2f2f302f 	svccs	0x002f302f
 854:	2f2f2f30 	svccs	0x002f2f30
 858:	0a022f2f 	beq	8c51c <__bss_end+0x7f51c>
 85c:	Address 0x000000000000085c is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	70670074 	rsbvc	r0, r7, r4, ror r0
  10:	735f6f69 	cmpvc	pc, #420	; 0x1a4
  14:	705f7465 	subsvc	r7, pc, r5, ror #8
  18:	006c6c75 	rsbeq	r6, ip, r5, ror ip
  1c:	6f697067 	svcvs	0x00697067
  20:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
  24:	65735f6f 	ldrbvs	r5, [r3, #-3951]!	; 0xfffff091
  28:	6f6c0074 	svcvs	0x006c0074
  2c:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  30:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  34:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  38:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  3c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  40:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
  44:	6c635f6f 	stclvs	15, cr5, [r3], #-444	; 0xfffffe44
  48:	666f0072 			; <UNDEFINED> instruction: 0x666f0072
  4c:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
  50:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
  54:	745f3874 	ldrbvc	r3, [pc], #-2164	; 5c <__start-0x7fa4>
  58:	736e7500 	cmnvc	lr, #0, 10
  5c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  60:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
  64:	75007261 	strvc	r7, [r0, #-609]	; 0xfffffd9f
  68:	33746e69 	cmncc	r4, #1680	; 0x690
  6c:	00745f32 	rsbseq	r5, r4, r2, lsr pc
  70:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; ffffffbc <__user_program+0xffcfffbc>
  74:	7a7a2f65 	bvc	1e8be10 <__user_program+0x1b8be10>
  78:	6f72502f 	svcvs	0x0072502f
  7c:	7463656a 	strbtvc	r6, [r3], #-1386	; 0xfffffa96
  80:	6d652f73 	stclvs	15, cr2, [r5, #-460]!	; 0xfffffe34
  84:	5f646562 	svcpl	0x00646562
  88:	3162616c 	cmncc	r2, ip, ror #2
  8c:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
  90:	6f6a2d31 	svcvs	0x006a2d31
  94:	72616e68 	rsbvc	r6, r1, #104, 28	; 0x680
  98:	6c616573 	cfstr64vs	mvdx6, [r1], #-460	; 0xfffffe34
  9c:	646f632f 	strbtvs	r6, [pc], #-815	; a4 <__start-0x7f5c>
  a0:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
  a4:	20432055 	subcs	r2, r3, r5, asr r0
  a8:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
  ac:	30322033 	eorscc	r2, r2, r3, lsr r0
  b0:	35303531 	ldrcc	r3, [r0, #-1329]!	; 0xfffffacf
  b4:	28203932 	stmdacs	r0!, {r1, r4, r5, r8, fp, ip, sp}
  b8:	72657270 	rsbvc	r7, r5, #112, 4
  bc:	61656c65 	cmnvs	r5, r5, ror #24
  c0:	20296573 	eorcs	r6, r9, r3, ror r5
  c4:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
  c8:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
  cc:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
  d0:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
  d4:	616d2d20 	cmnvs	sp, r0, lsr #26
  d8:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
  dc:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
  e0:	20612d37 	rsbcs	r2, r1, r7, lsr sp
  e4:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
  e8:	2d20314f 	stfcss	f3, [r0, #-316]!	; 0xfffffec4
  ec:	2d20304f 	stccs	0, cr3, [r0, #-316]!	; 0xfffffec4
  f0:	65726666 	ldrbvs	r6, [r2, #-1638]!	; 0xfffff99a
  f4:	61747365 	cmnvs	r4, r5, ror #6
  f8:	6e69646e 	cdpvs	4, 6, cr6, cr9, cr14, {3}
  fc:	68730067 	ldmdavs	r3!, {r0, r1, r2, r5, r6}^
 100:	2074726f 	rsbscs	r7, r4, pc, ror #4
 104:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 108:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 10c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 110:	61747300 	cmnvs	r4, r0, lsl #6
 114:	67006574 	smlsdxvs	r0, r4, r5, r6
 118:	5f6f6970 	svcpl	0x006f6970
 11c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 120:	73006769 	movwvc	r6, #1897	; 0x769
 124:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 128:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 12c:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 130:	6b62696c 	blvs	189a6e8 <__user_program+0x159a6e8>
 134:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 138:	6970672f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r8, r9, sl, sp, lr}^
 13c:	00632e6f 	rsbeq	r2, r3, pc, ror #28
 140:	61727261 	cmnvs	r2, r1, ror #4
 144:	6b003179 	blvs	c730 <__bss_start+0x730>
 148:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 14c:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 150:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 154:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 158:	732f6e6f 			; <UNDEFINED> instruction: 0x732f6e6f
 15c:	6b2f6372 	blvs	bd8f2c <__user_program+0x8d8f2c>
 160:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 164:	00632e6c 	rsbeq	r2, r3, ip, ror #28
 168:	61727261 	cmnvs	r2, r1, ror #4
 16c:	6b003279 	blvs	cb58 <array1+0x388>
 170:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 174:	616d5f6c 	cmnvs	sp, ip, ror #30
 178:	74006e69 	strvc	r6, [r0], #-3689	; 0xfffff197
 17c:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
 180:	756c6156 	strbvc	r6, [ip, #-342]!	; 0xfffffeaa
 184:	6f670065 	svcvs	0x00670065
 188:	7300646f 	movwvc	r6, #1135	; 0x46f
 18c:	74657a69 	strbtvc	r7, [r5], #-2665	; 0xfffff597
 190:	00657079 	rsbeq	r7, r5, r9, ror r0
 194:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0xfffff69e
 198:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
 19c:	65727000 	ldrbvs	r7, [r2, #-0]!
 1a0:	00786966 	rsbseq	r6, r8, r6, ror #18
 1a4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
 1a8:	745f3436 	ldrbvc	r3, [pc], #-1078	; 1b0 <__start-0x7e50>
 1ac:	73616200 	cmnvc	r1, #0, 4
 1b0:	5f5f0065 	svcpl	0x005f0065
 1b4:	6c5f6176 	ldfvse	f6, [pc], {118}	; 0x76
 1b8:	00747369 	rsbseq	r7, r4, r9, ror #6
 1bc:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 1c0:	6d756e74 	ldclvs	14, cr6, [r5, #-464]!	; 0xfffffe30
 1c4:	6964006b 	stmdbvs	r4!, {r0, r1, r3, r5, r6}^
 1c8:	73746967 	cmnvc	r4, #1687552	; 0x19c000
 1cc:	72656b00 	rsbvc	r6, r5, #0, 22
 1d0:	5f6c656e 	svcpl	0x006c656e
 1d4:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 1d8:	617a696d 	cmnvs	sl, sp, ror #18
 1dc:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
 1e0:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 1e4:	6972702f 	ldmdbvs	r2!, {r0, r1, r2, r3, r5, ip, sp, lr}^
 1e8:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 1ec:	72700063 	rsbsvc	r0, r0, #99	; 0x63
 1f0:	6b746e69 	blvs	1d1bb9c <__user_program+0x1a1bb9c>
 1f4:	67726100 	ldrbvs	r6, [r2, -r0, lsl #2]!
 1f8:	5f5f0073 	svcpl	0x005f0073
 1fc:	75007061 	strvc	r7, [r0, #-97]	; 0xffffff9f
 200:	5f747261 	svcpl	0x00747261
 204:	5f746567 	svcpl	0x00746567
 208:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0xfffff69e
 20c:	72656b00 	rsbvc	r6, r5, #0, 22
 210:	5f6c656e 	svcpl	0x006c656e
 214:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 218:	617a696d 	cmnvs	sl, sp, ror #18
 21c:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
 220:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 224:	7261752f 	rsbvc	r7, r1, #197132288	; 0xbc00000
 228:	00632e74 	rsbeq	r2, r3, r4, ror lr
 22c:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 230:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
 234:	61750074 	cmnvs	r5, r4, ror r0
 238:	705f7472 	subsvc	r7, pc, r2, ror r4	; <UNPREDICTABLE>
 23c:	625f7475 	subsvs	r7, pc, #1962934272	; 0x75000000
 240:	00657479 	rsbeq	r7, r5, r9, ror r4
 244:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 248:	6f6c635f 	svcvs	0x006c635f
 24c:	74006573 	strvc	r6, [r0], #-1395	; 0xfffffa8d
 250:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
 254:	656c635f 	strbvs	r6, [ip, #-863]!	; 0xfffffca1
 258:	705f7261 	subsvc	r7, pc, r1, ror #4
 25c:	69646e65 	stmdbvs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
 260:	6b00676e 	blvs	1a020 <__bss_end+0xd020>
 264:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 268:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 26c:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 270:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 274:	732f6e6f 			; <UNDEFINED> instruction: 0x732f6e6f
 278:	742f6372 	strtvc	r6, [pc], #-882	; 280 <__start-0x7d80>
 27c:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
 280:	6600632e 	strvs	r6, [r0], -lr, lsr #6
 284:	00716572 	rsbseq	r6, r1, r2, ror r5
 288:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 28c:	74735f72 	ldrbtvc	r5, [r3], #-3954	; 0xfffff08e
 290:	00747261 	rsbseq	r7, r4, r1, ror #4
 294:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 298:	73695f72 	cmnvc	r9, #456	; 0x1c8
 29c:	6e65705f 	mcrvs	0, 3, r7, cr5, cr15, {2}
 2a0:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
 2a4:	6d697400 	cfstrdvs	mvd7, [r9, #-0]
 2a8:	735f7265 	cmpvc	pc, #1342177286	; 0x50000006
 2ac:	00706f74 	rsbseq	r6, r0, r4, ror pc
 2b0:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 2b4:	65725f72 	ldrbvs	r5, [r2, #-3954]!	; 0xfffff08e
 2b8:	6b006461 	blvs	19444 <__bss_end+0xc444>
 2bc:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 2c0:	706f5f6c 	rsbvc	r5, pc, ip, ror #30
 2c4:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 2c8:	6974617a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r8, sp, lr}^
 2cc:	732f6e6f 			; <UNDEFINED> instruction: 0x732f6e6f
 2d0:	742f6372 	strtvc	r6, [pc], #-882	; 2d8 <__start-0x7d28>
 2d4:	745f6369 	ldrbvc	r6, [pc], #-873	; 2dc <__start-0x7d24>
 2d8:	632e636f 			; <UNDEFINED> instruction: 0x632e636f
 2dc:	72756300 	rsbsvc	r6, r5, #0, 6
 2e0:	6c61765f 	stclvs	6, cr7, [r1], #-380	; 0xfffffe84
 2e4:	645f5f00 	ldrbvs	r5, [pc], #-3840	; 2ec <__start-0x7d14>
 2e8:	69647669 	stmdbvs	r4!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
 2ec:	622f0033 	eorvs	r0, pc, #51	; 0x33
 2f0:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 2f4:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 2f8:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
 2fc:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 300:	61652d65 	cmnvs	r5, r5, ror #26
 304:	442d6962 	strtmi	r6, [sp], #-2402	; 0xfffff69e
 308:	4c6e5252 	sfmmi	f5, 2, [lr], #-328	; 0xfffffeb8
 30c:	63672f41 	cmnvs	r7, #260	; 0x104
 310:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
 314:	6f6e2d6d 	svcvs	0x006e2d6d
 318:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 31c:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
 320:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
 324:	76732b33 			; <UNDEFINED> instruction: 0x76732b33
 328:	3133326e 	teqcc	r3, lr, ror #4
 32c:	2f373731 	svccs	0x00373731
 330:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 334:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
 338:	6f6e2d6d 	svcvs	0x006e2d6d
 33c:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 340:	2f696261 	svccs	0x00696261
 344:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 348:	5f006363 	svcpl	0x00006363
 34c:	756e675f 	strbvc	r6, [lr, #-1887]!	; 0xfffff8a1
 350:	646c755f 	strbtvs	r7, [ip], #-1375	; 0xfffffaa1
 354:	6f6d7669 	svcvs	0x006d7669
 358:	65685f64 	strbvs	r5, [r8, #-3940]!	; 0xfffff09c
 35c:	7265706c 	rsbvc	r7, r5, #108	; 0x6c
 360:	2f2e2e00 	svccs	0x002e2e00
 364:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 368:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 36c:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 370:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 374:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 378:	2f676966 	svccs	0x00676966
 37c:	2f6d7261 	svccs	0x006d7261
 380:	62617062 	rsbvs	r7, r1, #98	; 0x62
 384:	00632e69 	rsbeq	r2, r3, r9, ror #28
 388:	20554e47 	subscs	r4, r5, r7, asr #28
 38c:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
 390:	20332e39 	eorscs	r2, r3, r9, lsr lr
 394:	35313032 	ldrcc	r3, [r1, #-50]!	; 0xffffffce
 398:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
 39c:	72702820 	rsbsvc	r2, r0, #32, 16	; 0x200000
 3a0:	6c657265 	sfmvs	f7, 2, [r5], #-404	; 0xfffffe6c
 3a4:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 3a8:	672d2029 	strvs	r2, [sp, -r9, lsr #32]!
 3ac:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 3b0:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 3b4:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 3b8:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 3bc:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 3c0:	61747366 	cmnvs	r4, r6, ror #6
 3c4:	702d6b63 	eorvc	r6, sp, r3, ror #22
 3c8:	65746f72 	ldrbvs	r6, [r4, #-3954]!	; 0xfffff08e
 3cc:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 3d0:	7274732d 	rsbsvc	r7, r4, #-1275068416	; 0xb4000000
 3d4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 3d8:	7473662d 	ldrbtvc	r6, [r3], #-1581	; 0xfffff9d3
 3dc:	2d6b6361 	stclcs	3, cr6, [fp, #-388]!	; 0xfffffe7c
 3e0:	746f7270 	strbtvc	r7, [pc], #-624	; 3e8 <__start-0x7c18>
 3e4:	6f746365 	svcvs	0x00746365
 3e8:	74732d72 	ldrbtvc	r2, [r3], #-3442	; 0xfffff28e
 3ec:	676e6f72 			; <UNDEFINED> instruction: 0x676e6f72
 3f0:	62662d20 	rsbvs	r2, r6, #32, 26	; 0x800
 3f4:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 3f8:	2d676e69 	stclcs	14, cr6, [r7, #-420]!	; 0xfffffe5c
 3fc:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 400:	2d206363 	stccs	3, cr6, [r0, #-396]!	; 0xfffffe74
 404:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 274 <__start-0x7d8c>
 408:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 40c:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 410:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 414:	20726f74 	rsbscs	r6, r2, r4, ror pc
 418:	6f6e662d 	svcvs	0x006e662d
 41c:	6c6e692d 	stclvs	9, cr6, [lr], #-180	; 0xffffff4c
 420:	20656e69 	rsbcs	r6, r5, r9, ror #28
 424:	6976662d 	ldmdbvs	r6!, {r0, r2, r3, r5, r9, sl, sp, lr}^
 428:	69626973 	stmdbvs	r2!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
 42c:	7974696c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, fp, sp, lr}^
 430:	6469683d 	strbtvs	r6, [r9], #-2109	; 0xfffff7c3
 434:	006e6564 	rsbeq	r6, lr, r4, ror #10
 438:	616d6572 	smcvs	54866	; 0xd652
 43c:	65646e69 	strbvs	r6, [r4, #-3689]!	; 0xfffff197
 440:	5f5f0072 	svcpl	0x005f0072
 444:	5f756e67 	svcpl	0x00756e67
 448:	7669646c 	strbtvc	r6, [r9], -ip, ror #8
 44c:	5f646f6d 	svcpl	0x00646f6d
 450:	706c6568 	rsbvc	r6, ip, r8, ror #10
 454:	5f007265 	svcpl	0x00007265
 458:	6964755f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp, lr}^
 45c:	33696476 	cmncc	r9, #1979711488	; 0x76000000
 460:	6f757100 	svcvs	0x00757100
 464:	6e656974 	mcrvs	9, 3, r6, cr5, cr4, {3}
 468:	69680074 	stmdbvs	r8!, {r2, r4, r5, r6}^
 46c:	5f006867 	svcpl	0x00006867
 470:	6964755f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp, lr}^
 474:	646f6d76 	strbtvs	r6, [pc], #-3446	; 47c <__start-0x7b84>
 478:	00346964 	eorseq	r6, r4, r4, ror #18
 47c:	74495355 	strbvc	r5, [r9], #-853	; 0xfffffcab
 480:	00657079 	rsbeq	r7, r5, r9, ror r0
 484:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 488:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 48c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 490:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 494:	2f636367 	svccs	0x00636367
 498:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 49c:	2e326363 	cdpcs	3, 3, cr6, cr2, cr3, {3}
 4a0:	57440063 	strbpl	r0, [r4, -r3, rrx]
 4a4:	6f696e75 	svcvs	0x00696e75
 4a8:	4455006e 	ldrbmi	r0, [r5], #-110	; 0xffffff92
 4ac:	70797449 	rsbsvc	r7, r9, r9, asr #8
 4b0:	6f630065 	svcvs	0x00630065
 4b4:	656c706d 	strbvs	r7, [ip, #-109]!	; 0xffffff93
 4b8:	6c662078 	stclvs	0, cr2, [r6], #-480	; 0xfffffe20
 4bc:	0074616f 	rsbseq	r6, r4, pc, ror #2
 4c0:	20554e47 	subscs	r4, r5, r7, asr #28
 4c4:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
 4c8:	20332e39 	eorscs	r2, r3, r9, lsr lr
 4cc:	35313032 	ldrcc	r3, [r1, #-50]!	; 0xffffffce
 4d0:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
 4d4:	72702820 	rsbsvc	r2, r0, #32, 16	; 0x200000
 4d8:	6c657265 	sfmvs	f7, 2, [r5], #-404	; 0xfffffe6c
 4dc:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 4e0:	672d2029 	strvs	r2, [sp, -r9, lsr #32]!
 4e4:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 4e8:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 4ec:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 4f0:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 4f4:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 4f8:	61747366 	cmnvs	r4, r6, ror #6
 4fc:	702d6b63 	eorvc	r6, sp, r3, ror #22
 500:	65746f72 	ldrbvs	r6, [r4, #-3954]!	; 0xfffff08e
 504:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 508:	7274732d 	rsbsvc	r7, r4, #-1275068416	; 0xb4000000
 50c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 510:	7473662d 	ldrbtvc	r6, [r3], #-1581	; 0xfffff9d3
 514:	2d6b6361 	stclcs	3, cr6, [fp, #-388]!	; 0xfffffe7c
 518:	746f7270 	strbtvc	r7, [pc], #-624	; 520 <__start-0x7ae0>
 51c:	6f746365 	svcvs	0x00746365
 520:	74732d72 	ldrbtvc	r2, [r3], #-3442	; 0xfffff28e
 524:	676e6f72 			; <UNDEFINED> instruction: 0x676e6f72
 528:	62662d20 	rsbvs	r2, r6, #32, 26	; 0x800
 52c:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 530:	2d676e69 	stclcs	14, cr6, [r7, #-420]!	; 0xfffffe5c
 534:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 538:	2d206363 	stccs	3, cr6, [r0, #-396]!	; 0xfffffe74
 53c:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 3ac <__start-0x7c54>
 540:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 544:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 548:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 54c:	20726f74 	rsbscs	r6, r2, r4, ror pc
 550:	6f6e662d 	svcvs	0x006e662d
 554:	6c6e692d 	stclvs	9, cr6, [lr], #-180	; 0xffffff4c
 558:	20656e69 	rsbcs	r6, r5, r9, ror #28
 55c:	7865662d 	stmdavc	r5!, {r0, r2, r3, r5, r9, sl, sp, lr}^
 560:	74706563 	ldrbtvc	r6, [r0], #-1379	; 0xfffffa9d
 564:	736e6f69 	cmnvc	lr, #420	; 0x1a4
 568:	76662d20 	strbtvc	r2, [r6], -r0, lsr #26
 56c:	62697369 	rsbvs	r7, r9, #-1543503871	; 0xa4000001
 570:	74696c69 	strbtvc	r6, [r9], #-3177	; 0xfffff397
 574:	69683d79 	stmdbvs	r8!, {r0, r3, r4, r5, r6, r8, sl, fp, ip, sp}^
 578:	6e656464 	cdpvs	4, 6, cr6, cr5, cr4, {3}
 57c:	6d6f6300 	stclvs	3, cr6, [pc, #-0]	; 584 <__start-0x7a7c>
 580:	78656c70 	stmdavc	r5!, {r4, r5, r6, sl, fp, sp, lr}^
 584:	756f6420 	strbvc	r6, [pc, #-1056]!	; 16c <__start-0x7e94>
 588:	00656c62 	rsbeq	r6, r5, r2, ror #24
 58c:	74735744 	ldrbtvc	r5, [r3], #-1860	; 0xfffff8bc
 590:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__user_program+0xdd0d24>
   4:	35312820 	ldrcc	r2, [r1, #-2080]!	; 0xfffff7e0
   8:	392e343a 	stmdbcc	lr!, {r1, r3, r4, r5, sl, ip, sp}
   c:	732b332e 			; <UNDEFINED> instruction: 0x732b332e
  10:	33326e76 	teqcc	r2, #1888	; 0x760
  14:	37373131 			; <UNDEFINED> instruction: 0x37373131
  18:	2029312d 	eorcs	r3, r9, sp, lsr #2
  1c:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
  20:	30322033 	eorscc	r2, r2, r3, lsr r0
  24:	35303531 	ldrcc	r3, [r0, #-1329]!	; 0xfffffacf
  28:	28203932 	stmdacs	r0!, {r1, r4, r5, r8, fp, ip, sp}
  2c:	72657270 	rsbvc	r7, r5, #112, 4
  30:	61656c65 	cmnvs	r5, r5, ror #24
  34:	00296573 	eoreq	r6, r9, r3, ror r5
  38:	3a434347 	bcc	10d0d5c <__user_program+0xdd0d5c>
  3c:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
  40:	6f542055 	svcvs	0x00542055
  44:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  48:	20726f66 	rsbscs	r6, r2, r6, ror #30
  4c:	204d5241 	subcs	r5, sp, r1, asr #4
  50:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  54:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  58:	6f725020 	svcvs	0x00725020
  5c:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
  60:	2973726f 	ldmdbcs	r3!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}^
  64:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
  68:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
  6c:	30353130 	eorscc	r3, r5, r0, lsr r1
  70:	20393235 	eorscs	r3, r9, r5, lsr r2
  74:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  78:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  7c:	415b2029 	cmpmi	fp, r9, lsr #32
  80:	652f4d52 	strvs	r4, [pc, #-3410]!	; fffff336 <__user_program+0xffcff336>
  84:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  88:	2d646564 	cfstr64cs	mvdx6, [r4, #-400]!	; 0xfffffe70
  8c:	2d395f34 	ldccs	15, cr5, [r9, #-208]!	; 0xffffff30
  90:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
  94:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
  98:	73697665 	cmnvc	r9, #105906176	; 0x6500000
  9c:	206e6f69 	rsbcs	r6, lr, r9, ror #30
  a0:	32343232 	eorscc	r3, r4, #536870915	; 0x20000003
  a4:	005d3838 	subseq	r3, sp, r8, lsr r8

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002c41 	andeq	r2, r0, r1, asr #24
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000022 	andeq	r0, r0, r2, lsr #32
  10:	412d3705 			; <UNDEFINED> instruction: 0x412d3705
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	09010841 	stmdbeq	r1, {r0, r6, fp}
  1c:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  20:	17011501 	strne	r1, [r1, -r1, lsl #10]
  24:	1a011803 	bne	46038 <__bss_end+0x39038>
  28:	22061e01 	andcs	r1, r6, #1, 28
  2c:	Address 0x000000000000002c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00008054 	andeq	r8, r0, r4, asr r0
  1c:	00000120 	andeq	r0, r0, r0, lsr #2
  20:	8b040e42 	blhi	103930 <__bss_end+0xf6930>
  24:	0b0d4201 	bleq	350830 <__user_program+0x50830>
  28:	0d0d8802 	stceq	8, cr8, [sp, #-8]
  2c:	000ecb42 	andeq	ip, lr, r2, asr #22
  30:	0000001c 	andeq	r0, r0, ip, lsl r0
  34:	00000000 	andeq	r0, r0, r0
  38:	00008174 	andeq	r8, r0, r4, ror r1
  3c:	00000084 	andeq	r0, r0, r4, lsl #1
  40:	8b040e42 	blhi	103950 <__bss_end+0xf6950>
  44:	0b0d4201 	bleq	350850 <__user_program+0x50850>
  48:	420d0d7a 	andmi	r0, sp, #7808	; 0x1e80
  4c:	00000ecb 	andeq	r0, r0, fp, asr #29
  50:	0000001c 	andeq	r0, r0, ip, lsl r0
  54:	00000000 	andeq	r0, r0, r0
  58:	000081f8 	strdeq	r8, [r0], -r8	; <UNPREDICTABLE>
  5c:	00000084 	andeq	r0, r0, r4, lsl #1
  60:	8b040e42 	blhi	103970 <__bss_end+0xf6970>
  64:	0b0d4201 	bleq	350870 <__user_program+0x50870>
  68:	420d0d7a 	andmi	r0, sp, #7808	; 0x1e80
  6c:	00000ecb 	andeq	r0, r0, fp, asr #29
  70:	0000001c 	andeq	r0, r0, ip, lsl r0
  74:	00000000 	andeq	r0, r0, r0
  78:	0000827c 	andeq	r8, r0, ip, ror r2
  7c:	000000f8 	strdeq	r0, [r0], -r8
  80:	8b080e42 	blhi	203990 <__end+0xd5990>
  84:	42018e02 	andmi	r8, r1, #2, 28
  88:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
  8c:	080d0c76 	stmdaeq	sp, {r1, r2, r4, r5, r6, sl, fp}
  90:	0000000c 	andeq	r0, r0, ip
  94:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  98:	7c020001 	stcvc	0, cr0, [r2], {1}
  9c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  a0:	00000018 	andeq	r0, r0, r8, lsl r0
  a4:	00000090 	muleq	r0, r0, r0
  a8:	00008374 	andeq	r8, r0, r4, ror r3
  ac:	00000158 	andeq	r0, r0, r8, asr r1
  b0:	8b080e42 	blhi	2039c0 <__end+0xd59c0>
  b4:	42018e02 	andmi	r8, r1, #2, 28
  b8:	00040b0c 	andeq	r0, r4, ip, lsl #22
  bc:	0000000c 	andeq	r0, r0, ip
  c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c4:	7c020001 	stcvc	0, cr0, [r2], {1}
  c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  cc:	00000020 	andeq	r0, r0, r0, lsr #32
  d0:	000000bc 	strheq	r0, [r0], -ip
  d4:	000084cc 	andeq	r8, r0, ip, asr #9
  d8:	00000138 	andeq	r0, r0, r8, lsr r1
  dc:	840c0e42 	strhi	r0, [ip], #-3650	; 0xfffff1be
  e0:	8e028b03 	vmlahi.f64	d8, d2, d3
  e4:	0b0c4201 	bleq	3108f0 <__user_program+0x108f0>
  e8:	0c960204 	lfmeq	f0, 4, [r6], {4}
  ec:	00000c0d 	andeq	r0, r0, sp, lsl #24
  f0:	00000034 	andeq	r0, r0, r4, lsr r0
  f4:	000000bc 	strheq	r0, [r0], -ip
  f8:	00008604 	andeq	r8, r0, r4, lsl #12
  fc:	00000250 	andeq	r0, r0, r0, asr r2
 100:	80100e42 	andshi	r0, r0, r2, asr #28
 104:	82038104 	andhi	r8, r3, #4, 2
 108:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 10c:	068b180e 	streq	r1, [fp], lr, lsl #16
 110:	0c42058e 	cfstr64eq	mvdx0, [r2], {142}	; 0x8e
 114:	1c03140b 	cfstrsne	mvf1, [r3], {11}
 118:	180d0c01 	stmdane	sp, {r0, sl, fp}
 11c:	0ecbce42 	cdpeq	14, 12, cr12, cr11, cr2, {2}
 120:	c2c34210 	sbcgt	r4, r3, #16, 4
 124:	000ec0c1 	andeq	ip, lr, r1, asr #1
 128:	0000000c 	andeq	r0, r0, ip
 12c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 130:	7c020001 	stcvc	0, cr0, [r2], {1}
 134:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 138:	00000018 	andeq	r0, r0, r8, lsl r0
 13c:	00000128 	andeq	r0, r0, r8, lsr #2
 140:	00008854 	andeq	r8, r0, r4, asr r8
 144:	00000088 	andeq	r0, r0, r8, lsl #1
 148:	8b080e42 	blhi	203a58 <__end+0xd5a58>
 14c:	42018e02 	andmi	r8, r1, #2, 28
 150:	00040b0c 	andeq	r0, r4, ip, lsl #22
 154:	0000001c 	andeq	r0, r0, ip, lsl r0
 158:	00000128 	andeq	r0, r0, r8, lsr #2
 15c:	000088dc 	ldrdeq	r8, [r0], -ip
 160:	0000004c 	andeq	r0, r0, ip, asr #32
 164:	8b040e42 	blhi	103a74 <__bss_end+0xf6a74>
 168:	0b0d4201 	bleq	350974 <__user_program+0x50974>
 16c:	420d0d5e 	andmi	r0, sp, #6016	; 0x1780
 170:	00000ecb 	andeq	r0, r0, fp, asr #29
 174:	0000001c 	andeq	r0, r0, ip, lsl r0
 178:	00000128 	andeq	r0, r0, r8, lsr #2
 17c:	00008928 	andeq	r8, r0, r8, lsr #18
 180:	0000004c 	andeq	r0, r0, ip, asr #32
 184:	8b040e42 	blhi	103a94 <__bss_end+0xf6a94>
 188:	0b0d4201 	bleq	350994 <__user_program+0x50994>
 18c:	420d0d5e 	andmi	r0, sp, #6016	; 0x1780
 190:	00000ecb 	andeq	r0, r0, fp, asr #29
 194:	0000001c 	andeq	r0, r0, ip, lsl r0
 198:	00000128 	andeq	r0, r0, r8, lsr #2
 19c:	00008974 	andeq	r8, r0, r4, ror r9
 1a0:	00000044 	andeq	r0, r0, r4, asr #32
 1a4:	8b040e42 	blhi	103ab4 <__bss_end+0xf6ab4>
 1a8:	0b0d4201 	bleq	3509b4 <__user_program+0x509b4>
 1ac:	420d0d5a 	andmi	r0, sp, #5760	; 0x1680
 1b0:	00000ecb 	andeq	r0, r0, fp, asr #29
 1b4:	0000000c 	andeq	r0, r0, ip
 1b8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1bc:	7c020001 	stcvc	0, cr0, [r2], {1}
 1c0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1c4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c8:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 1cc:	000089b8 			; <UNDEFINED> instruction: 0x000089b8
 1d0:	00000020 	andeq	r0, r0, r0, lsr #32
 1d4:	8b040e42 	blhi	103ae4 <__bss_end+0xf6ae4>
 1d8:	0b0d4201 	bleq	3509e4 <__user_program+0x509e4>
 1dc:	420d0d48 	andmi	r0, sp, #72, 26	; 0x1200
 1e0:	00000ecb 	andeq	r0, r0, fp, asr #29
 1e4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e8:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 1ec:	000089d8 	ldrdeq	r8, [r0], -r8	; <UNPREDICTABLE>
 1f0:	00000018 	andeq	r0, r0, r8, lsl r0
 1f4:	8b040e42 	blhi	103b04 <__bss_end+0xf6b04>
 1f8:	0b0d4201 	bleq	350a04 <__user_program+0x50a04>
 1fc:	420d0d44 	andmi	r0, sp, #68, 26	; 0x1100
 200:	00000ecb 	andeq	r0, r0, fp, asr #29
 204:	0000001c 	andeq	r0, r0, ip, lsl r0
 208:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 20c:	000089f0 	strdeq	r8, [r0], -r0
 210:	0000001c 	andeq	r0, r0, ip, lsl r0
 214:	8b040e42 	blhi	103b24 <__bss_end+0xf6b24>
 218:	0b0d4201 	bleq	350a24 <__user_program+0x50a24>
 21c:	420d0d46 	andmi	r0, sp, #4480	; 0x1180
 220:	00000ecb 	andeq	r0, r0, fp, asr #29
 224:	0000001c 	andeq	r0, r0, ip, lsl r0
 228:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 22c:	00008a0c 	andeq	r8, r0, ip, lsl #20
 230:	0000001c 	andeq	r0, r0, ip, lsl r0
 234:	8b040e42 	blhi	103b44 <__bss_end+0xf6b44>
 238:	0b0d4201 	bleq	350a44 <__user_program+0x50a44>
 23c:	420d0d46 	andmi	r0, sp, #4480	; 0x1180
 240:	00000ecb 	andeq	r0, r0, fp, asr #29
 244:	0000001c 	andeq	r0, r0, ip, lsl r0
 248:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 24c:	00008a28 	andeq	r8, r0, r8, lsr #20
 250:	00000018 	andeq	r0, r0, r8, lsl r0
 254:	8b040e42 	blhi	103b64 <__bss_end+0xf6b64>
 258:	0b0d4201 	bleq	350a64 <__user_program+0x50a64>
 25c:	420d0d44 	andmi	r0, sp, #68, 26	; 0x1100
 260:	00000ecb 	andeq	r0, r0, fp, asr #29
 264:	0000000c 	andeq	r0, r0, ip
 268:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 26c:	7c020001 	stcvc	0, cr0, [r2], {1}
 270:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 274:	0000001c 	andeq	r0, r0, ip, lsl r0
 278:	00000264 	andeq	r0, r0, r4, ror #4
 27c:	00008a40 	andeq	r8, r0, r0, asr #20
 280:	00000038 	andeq	r0, r0, r8, lsr r0
 284:	8b040e42 	blhi	103b94 <__bss_end+0xf6b94>
 288:	0b0d4201 	bleq	350a94 <__user_program+0x50a94>
 28c:	420d0d54 	andmi	r0, sp, #84, 26	; 0x1500
 290:	00000ecb 	andeq	r0, r0, fp, asr #29
 294:	0000001c 	andeq	r0, r0, ip, lsl r0
 298:	00000264 	andeq	r0, r0, r4, ror #4
 29c:	00008a78 	andeq	r8, r0, r8, ror sl
 2a0:	00000034 	andeq	r0, r0, r4, lsr r0
 2a4:	8b040e42 	blhi	103bb4 <__bss_end+0xf6bb4>
 2a8:	0b0d4201 	bleq	350ab4 <__user_program+0x50ab4>
 2ac:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
 2b0:	00000ecb 	andeq	r0, r0, fp, asr #29
 2b4:	0000000c 	andeq	r0, r0, ip
 2b8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2bc:	7c010001 	stcvc	0, cr0, [r1], {1}
 2c0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2c4:	00000014 	andeq	r0, r0, r4, lsl r0
 2c8:	000002b4 			; <UNDEFINED> instruction: 0x000002b4
 2cc:	00008d1c 	andeq	r8, r0, ip, lsl sp
 2d0:	0000003c 	andeq	r0, r0, ip, lsr r0
 2d4:	0e038e68 	cdpeq	14, 0, cr8, cr3, cr8, {3}
 2d8:	00000010 	andeq	r0, r0, r0, lsl r0
 2dc:	0000000c 	andeq	r0, r0, ip
 2e0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2e4:	7c020001 	stcvc	0, cr0, [r2], {1}
 2e8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2ec:	0000002c 	andeq	r0, r0, ip, lsr #32
 2f0:	000002dc 	ldrdeq	r0, [r0], -ip
 2f4:	00008d58 	andeq	r8, r0, r8, asr sp
 2f8:	00000044 	andeq	r0, r0, r4, asr #32
 2fc:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 300:	86078508 	strhi	r8, [r7], -r8, lsl #10
 304:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 308:	8a038904 	bhi	e2720 <__bss_end+0xd5720>
 30c:	5e018e02 	cdppl	14, 0, cr8, cr1, cr2, {0}
 310:	c8c9cace 	stmiagt	r9, {r1, r2, r3, r6, r7, r9, fp, lr, pc}^
 314:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 318:	0000000e 	andeq	r0, r0, lr
 31c:	00000024 	andeq	r0, r0, r4, lsr #32
 320:	000002dc 	ldrdeq	r0, [r0], -ip
 324:	00008d9c 	muleq	r0, ip, sp
 328:	00000040 	andeq	r0, r0, r0, asr #32
 32c:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 330:	86058506 	strhi	r8, [r5], -r6, lsl #10
 334:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 338:	5c018e02 	stcpl	14, cr8, [r1], {2}
 33c:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 340:	000ec4c5 	andeq	ip, lr, r5, asr #9
 344:	0000000c 	andeq	r0, r0, ip
 348:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 34c:	7c020001 	stcvc	0, cr0, [r2], {1}
 350:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 354:	00000034 	andeq	r0, r0, r4, lsr r0
 358:	00000344 	andeq	r0, r0, r4, asr #6
 35c:	00008de0 	andeq	r8, r0, r0, ror #27
 360:	00000178 	andeq	r0, r0, r8, ror r1
 364:	83280e44 			; <UNDEFINED> instruction: 0x83280e44
 368:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
 36c:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 370:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 374:	8b038a04 	blhi	e2b8c <__bss_end+0xd5b8c>
 378:	02018e02 	andeq	r8, r1, #2, 28
 37c:	cbce0aa6 	blgt	ff382e1c <__user_program+0xff082e1c>
 380:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 384:	c3c4c5c6 	bicgt	ip, r4, #830472192	; 0x31800000
 388:	0b42000e 	bleq	10803c8 <__user_program+0xd803c8>
 38c:	0000000c 	andeq	r0, r0, ip
 390:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 394:	7c020001 	stcvc	0, cr0, [r2], {1}
 398:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 39c:	0000002c 	andeq	r0, r0, ip, lsr #32
 3a0:	0000038c 	andeq	r0, r0, ip, lsl #7
 3a4:	00008f58 	andeq	r8, r0, r8, asr pc
 3a8:	00000120 	andeq	r0, r0, r0, lsr #2
 3ac:	84200e46 	strthi	r0, [r0], #-3654	; 0xfffff1ba
 3b0:	86078508 	strhi	r8, [r7], -r8, lsl #10
 3b4:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 3b8:	8a038904 	bhi	e27d0 <__bss_end+0xd57d0>
 3bc:	02018e02 	andeq	r8, r1, #2, 28
 3c0:	c9cace88 	stmibgt	sl, {r3, r7, r9, sl, fp, lr, pc}^
 3c4:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 3c8:	00000ec4 	andeq	r0, r0, r4, asr #29

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	0000001b 	andeq	r0, r0, fp, lsl r0
   8:	93500006 	cmpls	r0, #6
   c:	04935104 	ldreq	r5, [r3], #260	; 0x104
  10:	0000001b 	andeq	r0, r0, fp, lsl r0
  14:	00000044 	andeq	r0, r0, r4, asr #32
  18:	03f30006 	mvnseq	r0, #6
  1c:	9f2500f5 	svcls	0x002500f5
	...
  2c:	0000001b 	andeq	r0, r0, fp, lsl r0
  30:	93520006 	cmpls	r2, #6
  34:	04935304 	ldreq	r5, [r3], #772	; 0x304
  38:	0000001b 	andeq	r0, r0, fp, lsl r0
  3c:	00000044 	andeq	r0, r0, r4, asr #32
  40:	03f30006 	mvnseq	r0, #6
  44:	9f2502f5 	svcls	0x002502f5
	...
  50:	00000044 	andeq	r0, r0, r4, asr #32
  54:	0000005f 	andeq	r0, r0, pc, asr r0
  58:	93500006 	cmpls	r0, #6
  5c:	04935104 	ldreq	r5, [r3], #260	; 0x104
  60:	0000005f 	andeq	r0, r0, pc, asr r0
  64:	00000084 	andeq	r0, r0, r4, lsl #1
  68:	03f30006 	mvnseq	r0, #6
  6c:	9f2500f5 	svcls	0x002500f5
	...
  78:	00000044 	andeq	r0, r0, r4, asr #32
  7c:	0000005f 	andeq	r0, r0, pc, asr r0
  80:	93520006 	cmpls	r2, #6
  84:	04935304 	ldreq	r5, [r3], #772	; 0x304
  88:	0000005f 	andeq	r0, r0, pc, asr r0
  8c:	00000084 	andeq	r0, r0, r4, lsl #1
  90:	03f30006 	mvnseq	r0, #6
  94:	9f2502f5 	svcls	0x002502f5
	...
  a4:	00000044 	andeq	r0, r0, r4, asr #32
  a8:	93500006 	cmpls	r0, #6
  ac:	04935104 	ldreq	r5, [r3], #260	; 0x104
  b0:	00000044 	andeq	r0, r0, r4, asr #32
  b4:	00000158 	andeq	r0, r0, r8, asr r1
  b8:	03f30006 	mvnseq	r0, #6
  bc:	9f2500f5 	svcls	0x002500f5
  c0:	00000158 	andeq	r0, r0, r8, asr r1
  c4:	00000178 	andeq	r0, r0, r8, ror r1
  c8:	93500006 	cmpls	r0, #6
  cc:	04935104 	ldreq	r5, [r3], #260	; 0x104
	...
  dc:	00000034 	andeq	r0, r0, r4, lsr r0
  e0:	93520006 	cmpls	r2, #6
  e4:	04935304 	ldreq	r5, [r3], #772	; 0x304
  e8:	00000034 	andeq	r0, r0, r4, lsr r0
  ec:	00000158 	andeq	r0, r0, r8, asr r1
  f0:	03f30006 	mvnseq	r0, #6
  f4:	9f2502f5 	svcls	0x002502f5
  f8:	00000158 	andeq	r0, r0, r8, asr r1
  fc:	00000178 	andeq	r0, r0, r8, ror r1
 100:	93520006 	cmpls	r2, #6
 104:	04935304 	ldreq	r5, [r3], #772	; 0x304
	...
 114:	00000018 	andeq	r0, r0, r8, lsl r0
 118:	9f300002 	svcls	0x00300002
 11c:	00000018 	andeq	r0, r0, r8, lsl r0
 120:	00000154 	andeq	r0, r0, r4, asr r1
 124:	585a0001 	ldmdapl	sl, {r0}^
 128:	68000001 	stmdavs	r0, {r0}
 12c:	01000001 	tsteq	r0, r1
 130:	01685a00 	cmneq	r8, r0, lsl #20
 134:	01780000 	cmneq	r8, r0
 138:	00030000 	andeq	r0, r3, r0
 13c:	009fff09 	addseq	pc, pc, r9, lsl #30
 140:	00000000 	andeq	r0, r0, r0
 144:	2c000000 	stccs	0, cr0, [r0], {-0}
 148:	38000001 	stmdacc	r0, {r0}
 14c:	06000001 	streq	r0, [r0], -r1
 150:	04935200 	ldreq	r5, [r3], #512	; 0x200
 154:	38049353 	stmdacc	r4, {r0, r1, r4, r6, r8, r9, ip, pc}
 158:	44000001 	strmi	r0, [r0], #-1
 15c:	0d000001 	stceq	0, cr0, [r0, #-4]
 160:	2500f500 	strcs	pc, [r0, #-1280]	; 0xfffffb00
 164:	2502f51f 	strcs	pc, [r2, #-1311]	; 0xfffffae1
 168:	2500f527 	strcs	pc, [r0, #-1319]	; 0xfffffad9
 16c:	00009f22 	andeq	r9, r0, r2, lsr #30
 170:	00000000 	andeq	r0, r0, r0
 174:	00280000 	eoreq	r0, r8, r0
 178:	01580000 	cmpeq	r8, r0
 17c:	00020000 	andeq	r0, r2, r0
 180:	00009f30 	andeq	r9, r0, r0, lsr pc
 184:	00000000 	andeq	r0, r0, r0
 188:	00280000 	eoreq	r0, r8, r0
 18c:	00900000 	addseq	r0, r0, r0
 190:	00060000 	andeq	r0, r6, r0
 194:	59049358 	stmdbpl	r4, {r3, r4, r6, r8, r9, ip, pc}
 198:	00000493 	muleq	r0, r3, r4
 19c:	00000000 	andeq	r0, r0, r0
 1a0:	00280000 	eoreq	r0, r8, r0
 1a4:	00940000 	addseq	r0, r4, r0
 1a8:	00060000 	andeq	r0, r6, r0
 1ac:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 1b0:	00000493 	muleq	r0, r3, r4
 1b4:	00000000 	andeq	r0, r0, r0
 1b8:	00280000 	eoreq	r0, r8, r0
 1bc:	00a40000 	adceq	r0, r4, r0
 1c0:	000a0000 	andeq	r0, sl, r0
 1c4:	0000089e 	muleq	r0, lr, r8
 1c8:	00000000 	andeq	r0, r0, r0
 1cc:	00a40000 	adceq	r0, r4, r0
 1d0:	01000000 	mrseq	r0, (UNDEF: 0)
 1d4:	00060000 	andeq	r0, r6, r0
 1d8:	53049352 	movwpl	r9, #17234	; 0x4352
 1dc:	00000493 	muleq	r0, r3, r4
 1e0:	00000000 	andeq	r0, r0, r0
 1e4:	00280000 	eoreq	r0, r8, r0
 1e8:	00940000 	addseq	r0, r4, r0
 1ec:	00060000 	andeq	r0, r6, r0
 1f0:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 1f4:	00a00493 	umlaleq	r0, r0, r3, r4	; <UNPREDICTABLE>
 1f8:	00bc0000 	adcseq	r0, ip, r0
 1fc:	00060000 	andeq	r0, r6, r0
 200:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 204:	00d00493 	smullseq	r0, r0, r3, r4	; <UNPREDICTABLE>
 208:	00e80000 	rsceq	r0, r8, r0
 20c:	00060000 	andeq	r0, r6, r0
 210:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 214:	00ec0493 	smlaleq	r0, ip, r3, r4
 218:	010c0000 	mrseq	r0, (UNDEF: 12)
 21c:	00060000 	andeq	r0, r6, r0
 220:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 224:	00000493 	muleq	r0, r3, r4
 228:	00000000 	andeq	r0, r0, r0
 22c:	00280000 	eoreq	r0, r8, r0
 230:	00780000 	rsbseq	r0, r8, r0
 234:	00060000 	andeq	r0, r6, r0
 238:	59049358 	stmdbpl	r4, {r3, r4, r6, r8, r9, ip, pc}
 23c:	00780493 			; <UNDEFINED> instruction: 0x00780493
 240:	011c0000 	tsteq	ip, r0
 244:	00060000 	andeq	r0, r6, r0
 248:	57049356 	smlsdpl	r4, r6, r3, r9
 24c:	00000493 	muleq	r0, r3, r4
 250:	00000000 	andeq	r0, r0, r0
 254:	00500000 	subseq	r0, r0, r0
 258:	00540000 	subseq	r0, r4, r0
 25c:	00010000 	andeq	r0, r1, r0
 260:	00005450 	andeq	r5, r0, r0, asr r4
 264:	00012c00 	andeq	r2, r1, r0, lsl #24
 268:	5b000100 	blpl	670 <__start-0x7990>
	...
 274:	00000058 	andeq	r0, r0, r8, asr r0
 278:	0000005c 	andeq	r0, r0, ip, asr r0
 27c:	00500001 	subseq	r0, r0, r1
 280:	00000000 	andeq	r0, r0, r0
 284:	b4000000 	strlt	r0, [r0], #-0
 288:	d0000000 	andle	r0, r0, r0
 28c:	01000000 	mrseq	r0, (UNDEF: 0)
 290:	00d05000 	sbcseq	r5, r0, r0
 294:	00d40000 	sbcseq	r0, r4, r0
 298:	00030000 	andeq	r0, r3, r0
 29c:	d49f7f70 	ldrle	r7, [pc], #3952	; 2a4 <__start-0x7d5c>
 2a0:	ec000000 	stc	0, cr0, [r0], {-0}
 2a4:	01000000 	mrseq	r0, (UNDEF: 0)
 2a8:	00ec5000 	rsceq	r5, ip, r0
 2ac:	00f00000 	rscseq	r0, r0, r0
 2b0:	00030000 	andeq	r0, r3, r0
 2b4:	f09f7f70 			; <UNDEFINED> instruction: 0xf09f7f70
 2b8:	fc000000 	stc2	0, cr0, [r0], {-0}
 2bc:	01000000 	mrseq	r0, (UNDEF: 0)
 2c0:	00005000 	andeq	r5, r0, r0
 2c4:	00000000 	andeq	r0, r0, r0
 2c8:	005c0000 	subseq	r0, ip, r0
 2cc:	00b80000 	adcseq	r0, r8, r0
 2d0:	00010000 	andeq	r0, r1, r0
 2d4:	0000b850 	andeq	fp, r0, r0, asr r8
 2d8:	00012c00 	andeq	r2, r1, r0, lsl #24
 2dc:	51000100 	mrspl	r0, (UNDEF: 16)
	...
 2ec:	00000020 	andeq	r0, r0, r0, lsr #32
 2f0:	93500006 	cmpls	r0, #6
 2f4:	04935104 	ldreq	r5, [r3], #260	; 0x104
 2f8:	00000020 	andeq	r0, r0, r0, lsr #32
 2fc:	00000120 	andeq	r0, r0, r0, lsr #2
 300:	03f30006 	mvnseq	r0, #6
 304:	9f2500f5 	svcls	0x002500f5
	...
 314:	00000033 	andeq	r0, r0, r3, lsr r0
 318:	93520006 	cmpls	r2, #6
 31c:	04935304 	ldreq	r5, [r3], #772	; 0x304
 320:	00000033 	andeq	r0, r0, r3, lsr r0
 324:	00000120 	andeq	r0, r0, r0, lsr #2
 328:	03f30006 	mvnseq	r0, #6
 32c:	9f2502f5 	svcls	0x002502f5
	...
 338:	0000001c 	andeq	r0, r0, ip, lsl r0
 33c:	0000007c 	andeq	r0, r0, ip, ror r0
 340:	93580006 	cmpls	r8, #6
 344:	04935904 	ldreq	r5, [r3], #2308	; 0x904
	...
 350:	00000014 	andeq	r0, r0, r4, lsl r0
 354:	00000080 	andeq	r0, r0, r0, lsl #1
 358:	93540006 	cmpls	r4, #6
 35c:	04935504 	ldreq	r5, [r3], #1284	; 0x504
	...
 368:	0000001c 	andeq	r0, r0, ip, lsl r0
 36c:	00000090 	muleq	r0, r0, r0
 370:	089e000a 	ldmeq	lr, {r1, r3}
	...
 37c:	00000090 	muleq	r0, r0, r0
 380:	000000e8 	andeq	r0, r0, r8, ror #1
 384:	93500006 	cmpls	r0, #6
 388:	04935104 	ldreq	r5, [r3], #260	; 0x104
 38c:	000000e8 	andeq	r0, r0, r8, ror #1
 390:	00000118 	andeq	r0, r0, r8, lsl r1
 394:	93580006 	cmpls	r8, #6
 398:	04935904 	ldreq	r5, [r3], #2308	; 0x904
 39c:	00000118 	andeq	r0, r0, r8, lsl r1
 3a0:	00000120 	andeq	r0, r0, r0, lsr #2
 3a4:	93500006 	cmpls	r0, #6
 3a8:	04935104 	ldreq	r5, [r3], #260	; 0x104
	...
 3b4:	0000001c 	andeq	r0, r0, ip, lsl r0
 3b8:	00000080 	andeq	r0, r0, r0, lsl #1
 3bc:	93540006 	cmpls	r4, #6
 3c0:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 3c4:	0000008c 	andeq	r0, r0, ip, lsl #1
 3c8:	000000a8 	andeq	r0, r0, r8, lsr #1
 3cc:	93540006 	cmpls	r4, #6
 3d0:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 3d4:	000000bc 	strheq	r0, [r0], -ip
 3d8:	000000d4 	ldrdeq	r0, [r0], -r4
 3dc:	93540006 	cmpls	r4, #6
 3e0:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 3e4:	000000d8 	ldrdeq	r0, [r0], -r8
 3e8:	000000e8 	andeq	r0, r0, r8, ror #1
 3ec:	93540006 	cmpls	r4, #6
 3f0:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 3f4:	000000e8 	andeq	r0, r0, r8, ror #1
 3f8:	00000118 	andeq	r0, r0, r8, lsl r1
 3fc:	04f5000b 	ldrbteq	r0, [r5], #11
 400:	f7007225 			; <UNDEFINED> instruction: 0xf7007225
 404:	2525f72c 	strcs	pc, [r5, #-1836]!	; 0xfffff8d4
 408:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 40c:	00000000 	andeq	r0, r0, r0
 410:	00001c00 	andeq	r1, r0, r0, lsl #24
 414:	00006400 	andeq	r6, r0, r0, lsl #8
 418:	58000600 	stmdapl	r0, {r9, sl}
 41c:	93590493 	cmpls	r9, #-1828716544	; 0x93000000
 420:	00006404 	andeq	r6, r0, r4, lsl #8
 424:	00010c00 	andeq	r0, r1, r0, lsl #24
 428:	56000600 	strpl	r0, [r0], -r0, lsl #12
 42c:	93570493 	cmpls	r7, #-1828716544	; 0x93000000
 430:	00000004 	andeq	r0, r0, r4
 434:	00000000 	andeq	r0, r0, r0
 438:	00003c00 	andeq	r3, r0, r0, lsl #24
 43c:	00004000 	andeq	r4, r0, r0
 440:	50000100 	andpl	r0, r0, r0, lsl #2
 444:	00000040 	andeq	r0, r0, r0, asr #32
 448:	00000118 	andeq	r0, r0, r8, lsl r1
 44c:	005a0001 	subseq	r0, sl, r1
 450:	00000000 	andeq	r0, r0, r0
 454:	44000000 	strmi	r0, [r0], #-0
 458:	70000000 	andvc	r0, r0, r0
 45c:	01000000 	mrseq	r0, (UNDEF: 0)
 460:	00005000 	andeq	r5, r0, r0
 464:	00000000 	andeq	r0, r0, r0
 468:	00a00000 	adceq	r0, r0, r0
 46c:	00bc0000 	adcseq	r0, ip, r0
 470:	00010000 	andeq	r0, r1, r0
 474:	0000bc53 	andeq	fp, r0, r3, asr ip
 478:	0000c000 	andeq	ip, r0, r0
 47c:	73000300 	movwvc	r0, #768	; 0x300
 480:	00c09f7f 	sbceq	r9, r0, pc, ror pc
 484:	00d80000 	sbcseq	r0, r8, r0
 488:	00010000 	andeq	r0, r1, r0
 48c:	0000d853 	andeq	sp, r0, r3, asr r8
 490:	0000dc00 	andeq	sp, r0, r0, lsl #24
 494:	73000300 	movwvc	r0, #768	; 0x300
 498:	00dc9f7f 	sbcseq	r9, ip, pc, ror pc
 49c:	00ec0000 	rsceq	r0, ip, r0
 4a0:	00010000 	andeq	r0, r1, r0
 4a4:	00000053 	andeq	r0, r0, r3, asr r0
 4a8:	00000000 	andeq	r0, r0, r0
 4ac:	00004800 	andeq	r4, r0, r0, lsl #16
 4b0:	0000a400 	andeq	sl, r0, r0, lsl #8
 4b4:	53000100 	movwpl	r0, #256	; 0x100
 4b8:	000000a4 	andeq	r0, r0, r4, lsr #1
 4bc:	00000118 	andeq	r0, r0, r8, lsl r1
 4c0:	00520001 	subseq	r0, r2, r1
 4c4:	00000000 	andeq	r0, r0, r0
 4c8:	Address 0x00000000000004c8 is out of bounds.


Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000008 	andeq	r0, r0, r8
   8:	0000001c 	andeq	r0, r0, ip, lsl r0
   c:	00000118 	andeq	r0, r0, r8, lsl r1
	...
