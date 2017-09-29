
kernel_clapdetector/kernel.elf:     file format elf32-littlearm


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
    8044:	0012d000 	andseq	sp, r2, r0
    8048:	0011c000 	andseq	ip, r1, r0
    804c:	0000c000 	andeq	ip, r0, r0
    8050:	0000c000 	andeq	ip, r0, r0

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
    82d4:	eb00028e 	bl	8d14 <delay_cycles>
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
    830c:	eb000280 	bl	8d14 <delay_cycles>
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
    8350:	eb00026f 	bl	8d14 <delay_cycles>
    8354:	e30b3000 	movw	r3, #45056	; 0xb000
    8358:	e3403000 	movt	r3, #0
    835c:	e5933000 	ldr	r3, [r3]
    8360:	e2833098 	add	r3, r3, #152	; 0x98
    8364:	e3a02000 	mov	r2, #0
    8368:	e5832000 	str	r2, [r3]
    836c:	e24bd004 	sub	sp, fp, #4
    8370:	e8bd8800 	pop	{fp, pc}

00008374 <kernel_main>:
    8374:	e92d4070 	push	{r4, r5, r6, lr}
    8378:	eb0000b8 	bl	8660 <uart_init>
    837c:	e30005dc 	movw	r0, #1500	; 0x5dc
    8380:	eb0000f4 	bl	8758 <i2c_master_init>
    8384:	eb000204 	bl	8b9c <adc_init>
    8388:	e30a5014 	movw	r5, #40980	; 0xa014
    838c:	e3405000 	movt	r5, #0
    8390:	e3a06003 	mov	r6, #3
    8394:	e30a401c 	movw	r4, #40988	; 0xa01c
    8398:	e3404000 	movt	r4, #0
    839c:	eb0000da 	bl	870c <uart_get_byte>
    83a0:	e3500030 	cmp	r0, #48	; 0x30
    83a4:	1afffffc 	bne	839c <kernel_main+0x28>
    83a8:	e1a00005 	mov	r0, r5
    83ac:	eb00003d 	bl	84a8 <printk>
    83b0:	e1a00006 	mov	r0, r6
    83b4:	eb000234 	bl	8c8c <adc_read>
    83b8:	e1a01000 	mov	r1, r0
    83bc:	e1a00004 	mov	r0, r4
    83c0:	eb000038 	bl	84a8 <printk>
    83c4:	eafffff4 	b	839c <kernel_main+0x28>

000083c8 <printnumk>:
    83c8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    83cc:	e24dd008 	sub	sp, sp, #8
    83d0:	e1a06002 	mov	r6, r2
    83d4:	e1a07003 	mov	r7, r3
    83d8:	e3500008 	cmp	r0, #8
    83dc:	0a000004 	beq	83f4 <printnumk+0x2c>
    83e0:	e30a8024 	movw	r8, #40996	; 0xa024
    83e4:	e3408000 	movt	r8, #0
    83e8:	e3500010 	cmp	r0, #16
    83ec:	13a08000 	movne	r8, #0
    83f0:	ea000001 	b	83fc <printnumk+0x34>
    83f4:	e30a8020 	movw	r8, #40992	; 0xa020
    83f8:	e3408000 	movt	r8, #0
    83fc:	e28d4007 	add	r4, sp, #7
    8400:	e1a05000 	mov	r5, r0
    8404:	e3a09000 	mov	r9, #0
    8408:	e30aa000 	movw	sl, #40960	; 0xa000
    840c:	e340a000 	movt	sl, #0
    8410:	e1a00006 	mov	r0, r6
    8414:	e1a01007 	mov	r1, r7
    8418:	e1a02005 	mov	r2, r5
    841c:	e1a03009 	mov	r3, r9
    8420:	eb00024c 	bl	8d58 <__aeabi_uldivmod>
    8424:	e7da3002 	ldrb	r3, [sl, r2]
    8428:	e4443001 	strb	r3, [r4], #-1
    842c:	e1a00006 	mov	r0, r6
    8430:	e1a01007 	mov	r1, r7
    8434:	e1a02005 	mov	r2, r5
    8438:	e1a03009 	mov	r3, r9
    843c:	eb000245 	bl	8d58 <__aeabi_uldivmod>
    8440:	e1a06000 	mov	r6, r0
    8444:	e1a07001 	mov	r7, r1
    8448:	e1963007 	orrs	r3, r6, r7
    844c:	1affffef 	bne	8410 <printnumk+0x48>
    8450:	e3580000 	cmp	r8, #0
    8454:	0a000002 	beq	8464 <printnumk+0x9c>
    8458:	e5d80000 	ldrb	r0, [r8]
    845c:	e3500000 	cmp	r0, #0
    8460:	1a000004 	bne	8478 <printnumk+0xb0>
    8464:	e2844001 	add	r4, r4, #1
    8468:	e28d3008 	add	r3, sp, #8
    846c:	e1540003 	cmp	r4, r3
    8470:	1a000005 	bne	848c <printnumk+0xc4>
    8474:	ea000009 	b	84a0 <printnumk+0xd8>
    8478:	eb00009a 	bl	86e8 <uart_put_byte>
    847c:	e5f80001 	ldrb	r0, [r8, #1]!
    8480:	e3500000 	cmp	r0, #0
    8484:	1afffffb 	bne	8478 <printnumk+0xb0>
    8488:	eafffff5 	b	8464 <printnumk+0x9c>
    848c:	e4d40001 	ldrb	r0, [r4], #1
    8490:	eb000094 	bl	86e8 <uart_put_byte>
    8494:	e28d3008 	add	r3, sp, #8
    8498:	e1540003 	cmp	r4, r3
    849c:	1afffffa 	bne	848c <printnumk+0xc4>
    84a0:	e28dd008 	add	sp, sp, #8
    84a4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

000084a8 <printk>:
    84a8:	e92d000f 	push	{r0, r1, r2, r3}
    84ac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    84b0:	e24dd008 	sub	sp, sp, #8
    84b4:	e59d4020 	ldr	r4, [sp, #32]
    84b8:	e28d3024 	add	r3, sp, #36	; 0x24
    84bc:	e58d3004 	str	r3, [sp, #4]
    84c0:	e3a06000 	mov	r6, #0
    84c4:	e3a08008 	mov	r8, #8
    84c8:	e3a07010 	mov	r7, #16
    84cc:	ea00005c 	b	8644 <printk+0x19c>
    84d0:	e3500025 	cmp	r0, #37	; 0x25
    84d4:	0a000002 	beq	84e4 <printk+0x3c>
    84d8:	e2844001 	add	r4, r4, #1
    84dc:	eb000081 	bl	86e8 <uart_put_byte>
    84e0:	ea000057 	b	8644 <printk+0x19c>
    84e4:	e5d43001 	ldrb	r3, [r4, #1]
    84e8:	e353006f 	cmp	r3, #111	; 0x6f
    84ec:	0a00002c 	beq	85a4 <printk+0xfc>
    84f0:	8a000006 	bhi	8510 <printk+0x68>
    84f4:	e3530063 	cmp	r3, #99	; 0x63
    84f8:	0a000045 	beq	8614 <printk+0x16c>
    84fc:	e3530064 	cmp	r3, #100	; 0x64
    8500:	0a00000d 	beq	853c <printk+0x94>
    8504:	e3530025 	cmp	r3, #37	; 0x25
    8508:	1a00004a 	bne	8638 <printk+0x190>
    850c:	ea000046 	b	862c <printk+0x184>
    8510:	e3530073 	cmp	r3, #115	; 0x73
    8514:	0a000032 	beq	85e4 <printk+0x13c>
    8518:	8a000002 	bhi	8528 <printk+0x80>
    851c:	e3530070 	cmp	r3, #112	; 0x70
    8520:	0a000027 	beq	85c4 <printk+0x11c>
    8524:	ea000043 	b	8638 <printk+0x190>
    8528:	e3530075 	cmp	r3, #117	; 0x75
    852c:	0a000014 	beq	8584 <printk+0xdc>
    8530:	e3530078 	cmp	r3, #120	; 0x78
    8534:	0a000022 	beq	85c4 <printk+0x11c>
    8538:	ea00003e 	b	8638 <printk+0x190>
    853c:	e59d3004 	ldr	r3, [sp, #4]
    8540:	e2832004 	add	r2, r3, #4
    8544:	e58d2004 	str	r2, [sp, #4]
    8548:	e5935000 	ldr	r5, [r3]
    854c:	e3550000 	cmp	r5, #0
    8550:	aa000006 	bge	8570 <printk+0xc8>
    8554:	e3a0002d 	mov	r0, #45	; 0x2d
    8558:	eb000062 	bl	86e8 <uart_put_byte>
    855c:	e2652000 	rsb	r2, r5, #0
    8560:	e3a0000a 	mov	r0, #10
    8564:	e1a03fc2 	asr	r3, r2, #31
    8568:	ebffff96 	bl	83c8 <printnumk>
    856c:	ea000033 	b	8640 <printk+0x198>
    8570:	e3a0000a 	mov	r0, #10
    8574:	e1a02005 	mov	r2, r5
    8578:	e1a03fc5 	asr	r3, r5, #31
    857c:	ebffff91 	bl	83c8 <printnumk>
    8580:	ea00002e 	b	8640 <printk+0x198>
    8584:	e59d3004 	ldr	r3, [sp, #4]
    8588:	e2832004 	add	r2, r3, #4
    858c:	e58d2004 	str	r2, [sp, #4]
    8590:	e3a0000a 	mov	r0, #10
    8594:	e5932000 	ldr	r2, [r3]
    8598:	e1a03006 	mov	r3, r6
    859c:	ebffff89 	bl	83c8 <printnumk>
    85a0:	ea000026 	b	8640 <printk+0x198>
    85a4:	e59d3004 	ldr	r3, [sp, #4]
    85a8:	e2832004 	add	r2, r3, #4
    85ac:	e58d2004 	str	r2, [sp, #4]
    85b0:	e1a00008 	mov	r0, r8
    85b4:	e5932000 	ldr	r2, [r3]
    85b8:	e1a03006 	mov	r3, r6
    85bc:	ebffff81 	bl	83c8 <printnumk>
    85c0:	ea00001e 	b	8640 <printk+0x198>
    85c4:	e59d3004 	ldr	r3, [sp, #4]
    85c8:	e2832004 	add	r2, r3, #4
    85cc:	e58d2004 	str	r2, [sp, #4]
    85d0:	e1a00007 	mov	r0, r7
    85d4:	e5932000 	ldr	r2, [r3]
    85d8:	e1a03006 	mov	r3, r6
    85dc:	ebffff79 	bl	83c8 <printnumk>
    85e0:	ea000016 	b	8640 <printk+0x198>
    85e4:	e59d3004 	ldr	r3, [sp, #4]
    85e8:	e2832004 	add	r2, r3, #4
    85ec:	e58d2004 	str	r2, [sp, #4]
    85f0:	e5935000 	ldr	r5, [r3]
    85f4:	e5d50000 	ldrb	r0, [r5]
    85f8:	e3500000 	cmp	r0, #0
    85fc:	0a00000f 	beq	8640 <printk+0x198>
    8600:	eb000038 	bl	86e8 <uart_put_byte>
    8604:	e5f50001 	ldrb	r0, [r5, #1]!
    8608:	e3500000 	cmp	r0, #0
    860c:	1afffffb 	bne	8600 <printk+0x158>
    8610:	ea00000a 	b	8640 <printk+0x198>
    8614:	e59d3004 	ldr	r3, [sp, #4]
    8618:	e2832004 	add	r2, r3, #4
    861c:	e58d2004 	str	r2, [sp, #4]
    8620:	e5d30000 	ldrb	r0, [r3]
    8624:	eb00002f 	bl	86e8 <uart_put_byte>
    8628:	ea000004 	b	8640 <printk+0x198>
    862c:	e3a00025 	mov	r0, #37	; 0x25
    8630:	eb00002c 	bl	86e8 <uart_put_byte>
    8634:	ea000001 	b	8640 <printk+0x198>
    8638:	e3e00000 	mvn	r0, #0
    863c:	ea000003 	b	8650 <printk+0x1a8>
    8640:	e2844002 	add	r4, r4, #2
    8644:	e5d40000 	ldrb	r0, [r4]
    8648:	e3500000 	cmp	r0, #0
    864c:	1affff9f 	bne	84d0 <printk+0x28>
    8650:	e28dd008 	add	sp, sp, #8
    8654:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8658:	e28dd010 	add	sp, sp, #16
    865c:	e12fff1e 	bx	lr

00008660 <uart_init>:
    8660:	e92d4008 	push	{r3, lr}
    8664:	e3a0000f 	mov	r0, #15
    8668:	e3a01000 	mov	r1, #0
    866c:	ebffff02 	bl	827c <gpio_set_pull>
    8670:	e3a0000e 	mov	r0, #14
    8674:	e3a01000 	mov	r1, #0
    8678:	ebfffeff 	bl	827c <gpio_set_pull>
    867c:	e3a0000f 	mov	r0, #15
    8680:	e3a01002 	mov	r1, #2
    8684:	ebfffe72 	bl	8054 <gpio_config>
    8688:	e3a0000e 	mov	r0, #14
    868c:	e3a01002 	mov	r1, #2
    8690:	ebfffe6f 	bl	8054 <gpio_config>
    8694:	e3a03a05 	mov	r3, #20480	; 0x5000
    8698:	e3433f21 	movt	r3, #16161	; 0x3f21
    869c:	e5932004 	ldr	r2, [r3, #4]
    86a0:	e3822001 	orr	r2, r2, #1
    86a4:	e5832004 	str	r2, [r3, #4]
    86a8:	e3a02003 	mov	r2, #3
    86ac:	e583204c 	str	r2, [r3, #76]	; 0x4c
    86b0:	e3a02000 	mov	r2, #0
    86b4:	e5832044 	str	r2, [r3, #68]	; 0x44
    86b8:	e300210e 	movw	r2, #270	; 0x10e
    86bc:	e5832068 	str	r2, [r3, #104]	; 0x68
    86c0:	e8bd8008 	pop	{r3, pc}

000086c4 <uart_close>:
    86c4:	e3a03a05 	mov	r3, #20480	; 0x5000
    86c8:	e3433f21 	movt	r3, #16161	; 0x3f21
    86cc:	e5932048 	ldr	r2, [r3, #72]	; 0x48
    86d0:	e3822006 	orr	r2, r2, #6
    86d4:	e5832048 	str	r2, [r3, #72]	; 0x48
    86d8:	e5932004 	ldr	r2, [r3, #4]
    86dc:	e3c22001 	bic	r2, r2, #1
    86e0:	e5832004 	str	r2, [r3, #4]
    86e4:	e12fff1e 	bx	lr

000086e8 <uart_put_byte>:
    86e8:	e3a02a05 	mov	r2, #20480	; 0x5000
    86ec:	e3432f21 	movt	r2, #16161	; 0x3f21
    86f0:	e5923054 	ldr	r3, [r2, #84]	; 0x54
    86f4:	e3130020 	tst	r3, #32
    86f8:	0afffffc 	beq	86f0 <uart_put_byte+0x8>
    86fc:	e3a03a05 	mov	r3, #20480	; 0x5000
    8700:	e3433f21 	movt	r3, #16161	; 0x3f21
    8704:	e5c30040 	strb	r0, [r3, #64]	; 0x40
    8708:	e12fff1e 	bx	lr

0000870c <uart_get_byte>:
    870c:	e92d4038 	push	{r3, r4, r5, lr}
    8710:	e3a02000 	mov	r2, #0
    8714:	e3a04a05 	mov	r4, #20480	; 0x5000
    8718:	e3434f21 	movt	r4, #16161	; 0x3f21
    871c:	e30a5028 	movw	r5, #41000	; 0xa028
    8720:	e3405000 	movt	r5, #0
    8724:	ea000004 	b	873c <uart_get_byte+0x30>
    8728:	e3520000 	cmp	r2, #0
    872c:	1a000002 	bne	873c <uart_get_byte+0x30>
    8730:	e1a00005 	mov	r0, r5
    8734:	ebffff5b 	bl	84a8 <printk>
    8738:	e3a02001 	mov	r2, #1
    873c:	e5943054 	ldr	r3, [r4, #84]	; 0x54
    8740:	e3130001 	tst	r3, #1
    8744:	0afffff7 	beq	8728 <uart_get_byte+0x1c>
    8748:	e3a03a05 	mov	r3, #20480	; 0x5000
    874c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8750:	e5d30040 	ldrb	r0, [r3, #64]	; 0x40
    8754:	e8bd8038 	pop	{r3, r4, r5, pc}

00008758 <i2c_master_init>:
    8758:	e92d4008 	push	{r3, lr}
    875c:	e3a00002 	mov	r0, #2
    8760:	e3a01004 	mov	r1, #4
    8764:	ebfffe3a 	bl	8054 <gpio_config>
    8768:	e3a00003 	mov	r0, #3
    876c:	e3a01004 	mov	r1, #4
    8770:	ebfffe37 	bl	8054 <gpio_config>
    8774:	e8bd8008 	pop	{r3, pc}

00008778 <i2c_master_write>:
    8778:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    877c:	e1a05000 	mov	r5, r0
    8780:	e1a04001 	mov	r4, r1
    8784:	e1a06002 	mov	r6, r2
    8788:	e30a0038 	movw	r0, #41016	; 0xa038
    878c:	e3400000 	movt	r0, #0
    8790:	ebffff44 	bl	84a8 <printk>
    8794:	e3a00901 	mov	r0, #16384	; 0x4000
    8798:	e3430f80 	movt	r0, #16256	; 0x3f80
    879c:	e3a01010 	mov	r1, #16
    87a0:	e1a02001 	mov	r2, r1
    87a4:	eb000150 	bl	8cec <peri_set_bits>
    87a8:	e3040004 	movw	r0, #16388	; 0x4004
    87ac:	e3430f80 	movt	r0, #16256	; 0x3f80
    87b0:	e3001302 	movw	r1, #770	; 0x302
    87b4:	eb00014a 	bl	8ce4 <peri_write>
    87b8:	e304000c 	movw	r0, #16396	; 0x400c
    87bc:	e3430f80 	movt	r0, #16256	; 0x3f80
    87c0:	e1a01006 	mov	r1, r6
    87c4:	eb000146 	bl	8ce4 <peri_write>
    87c8:	e3040008 	movw	r0, #16392	; 0x4008
    87cc:	e3430f80 	movt	r0, #16256	; 0x3f80
    87d0:	e1a01004 	mov	r1, r4
    87d4:	eb000142 	bl	8ce4 <peri_write>
    87d8:	e3540000 	cmp	r4, #0
    87dc:	0a000013 	beq	8830 <i2c_master_write+0xb8>
    87e0:	e1a08004 	mov	r8, r4
    87e4:	e2455001 	sub	r5, r5, #1
    87e8:	e3a04000 	mov	r4, #0
    87ec:	e3047010 	movw	r7, #16400	; 0x4010
    87f0:	e3437f80 	movt	r7, #16256	; 0x3f80
    87f4:	e30a6054 	movw	r6, #41044	; 0xa054
    87f8:	e3406000 	movt	r6, #0
    87fc:	e1a00007 	mov	r0, r7
    8800:	e5f51001 	ldrb	r1, [r5, #1]!
    8804:	eb000136 	bl	8ce4 <peri_write>
    8808:	e1a00006 	mov	r0, r6
    880c:	e5d51000 	ldrb	r1, [r5]
    8810:	ebffff24 	bl	84a8 <printk>
    8814:	e2844001 	add	r4, r4, #1
    8818:	e0583004 	subs	r3, r8, r4
    881c:	13a03001 	movne	r3, #1
    8820:	e354000f 	cmp	r4, #15
    8824:	83a03000 	movhi	r3, #0
    8828:	e3530000 	cmp	r3, #0
    882c:	1afffff2 	bne	87fc <i2c_master_write+0x84>
    8830:	e3a00901 	mov	r0, #16384	; 0x4000
    8834:	e3430f80 	movt	r0, #16256	; 0x3f80
    8838:	e3081080 	movw	r1, #32896	; 0x8080
    883c:	eb000128 	bl	8ce4 <peri_write>
    8840:	e3040004 	movw	r0, #16388	; 0x4004
    8844:	e3430f80 	movt	r0, #16256	; 0x3f80
    8848:	eb000123 	bl	8cdc <peri_read>
    884c:	e3100c01 	tst	r0, #256	; 0x100
    8850:	13a05001 	movne	r5, #1
    8854:	1a000007 	bne	8878 <i2c_master_write+0x100>
    8858:	e3040004 	movw	r0, #16388	; 0x4004
    885c:	e3430f80 	movt	r0, #16256	; 0x3f80
    8860:	eb00011d 	bl	8cdc <peri_read>
    8864:	e2000c02 	and	r0, r0, #512	; 0x200
    8868:	e3500000 	cmp	r0, #0
    886c:	03a05000 	moveq	r5, #0
    8870:	13a05002 	movne	r5, #2
    8874:	eaffffff 	b	8878 <i2c_master_write+0x100>
    8878:	e3044004 	movw	r4, #16388	; 0x4004
    887c:	e3434f80 	movt	r4, #16256	; 0x3f80
    8880:	e1a00004 	mov	r0, r4
    8884:	eb000114 	bl	8cdc <peri_read>
    8888:	e3100002 	tst	r0, #2
    888c:	0afffffb 	beq	8880 <i2c_master_write+0x108>
    8890:	e3a00901 	mov	r0, #16384	; 0x4000
    8894:	e3430f80 	movt	r0, #16256	; 0x3f80
    8898:	e3a01002 	mov	r1, #2
    889c:	e1a02001 	mov	r2, r1
    88a0:	eb000111 	bl	8cec <peri_set_bits>
    88a4:	e1a00005 	mov	r0, r5
    88a8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

000088ac <i2c_master_read>:
    88ac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    88b0:	e1a0a000 	mov	sl, r0
    88b4:	e1a06001 	mov	r6, r1
    88b8:	e1a07002 	mov	r7, r2
    88bc:	e1a04001 	mov	r4, r1
    88c0:	e3a05901 	mov	r5, #16384	; 0x4000
    88c4:	e3435f80 	movt	r5, #16256	; 0x3f80
    88c8:	e1a00005 	mov	r0, r5
    88cc:	e3a01020 	mov	r1, #32
    88d0:	e1a02001 	mov	r2, r1
    88d4:	eb000104 	bl	8cec <peri_set_bits>
    88d8:	e3040004 	movw	r0, #16388	; 0x4004
    88dc:	e3430f80 	movt	r0, #16256	; 0x3f80
    88e0:	e3001302 	movw	r1, #770	; 0x302
    88e4:	eb0000fe 	bl	8ce4 <peri_write>
    88e8:	e3040008 	movw	r0, #16392	; 0x4008
    88ec:	e3430f80 	movt	r0, #16256	; 0x3f80
    88f0:	e1a01006 	mov	r1, r6
    88f4:	eb0000fa 	bl	8ce4 <peri_write>
    88f8:	e304000c 	movw	r0, #16396	; 0x400c
    88fc:	e3430f80 	movt	r0, #16256	; 0x3f80
    8900:	e1a01007 	mov	r1, r7
    8904:	eb0000f6 	bl	8ce4 <peri_write>
    8908:	e1a00005 	mov	r0, r5
    890c:	e3081081 	movw	r1, #32897	; 0x8081
    8910:	eb0000f3 	bl	8ce4 <peri_write>
    8914:	e3a05000 	mov	r5, #0
    8918:	e3048004 	movw	r8, #16388	; 0x4004
    891c:	e3438f80 	movt	r8, #16256	; 0x3f80
    8920:	e3047010 	movw	r7, #16400	; 0x4010
    8924:	e3437f80 	movt	r7, #16256	; 0x3f80
    8928:	e30a9070 	movw	r9, #41072	; 0xa070
    892c:	e3409000 	movt	r9, #0
    8930:	ea00000e 	b	8970 <i2c_master_read+0xc4>
    8934:	e1a00007 	mov	r0, r7
    8938:	eb0000e7 	bl	8cdc <peri_read>
    893c:	e1a02000 	mov	r2, r0
    8940:	e4c60001 	strb	r0, [r6], #1
    8944:	e1a00009 	mov	r0, r9
    8948:	e1a01007 	mov	r1, r7
    894c:	e6ef2072 	uxtb	r2, r2
    8950:	ebfffed4 	bl	84a8 <printk>
    8954:	e2855001 	add	r5, r5, #1
    8958:	e2544001 	subs	r4, r4, #1
    895c:	0a000003 	beq	8970 <i2c_master_read+0xc4>
    8960:	e1a00008 	mov	r0, r8
    8964:	eb0000dc 	bl	8cdc <peri_read>
    8968:	e3100020 	tst	r0, #32
    896c:	1afffff0 	bne	8934 <i2c_master_read+0x88>
    8970:	e1a00008 	mov	r0, r8
    8974:	eb0000d8 	bl	8cdc <peri_read>
    8978:	e3100002 	tst	r0, #2
    897c:	1a000003 	bne	8990 <i2c_master_read+0xe4>
    8980:	e3540000 	cmp	r4, #0
    8984:	0afffff9 	beq	8970 <i2c_master_read+0xc4>
    8988:	e08a6005 	add	r6, sl, r5
    898c:	eafffff3 	b	8960 <i2c_master_read+0xb4>
    8990:	e1a06004 	mov	r6, r4
    8994:	e3040004 	movw	r0, #16388	; 0x4004
    8998:	e3430f80 	movt	r0, #16256	; 0x3f80
    899c:	eb0000ce 	bl	8cdc <peri_read>
    89a0:	e3100020 	tst	r0, #32
    89a4:	0a000002 	beq	89b4 <i2c_master_read+0x108>
    89a8:	e30a0090 	movw	r0, #41104	; 0xa090
    89ac:	e3400000 	movt	r0, #0
    89b0:	ebfffebc 	bl	84a8 <printk>
    89b4:	e3560000 	cmp	r6, #0
    89b8:	0a000012 	beq	8a08 <i2c_master_read+0x15c>
    89bc:	e08a5005 	add	r5, sl, r5
    89c0:	e3047004 	movw	r7, #16388	; 0x4004
    89c4:	e3437f80 	movt	r7, #16256	; 0x3f80
    89c8:	e30a60b0 	movw	r6, #41136	; 0xa0b0
    89cc:	e3406000 	movt	r6, #0
    89d0:	e3048010 	movw	r8, #16400	; 0x4010
    89d4:	e3438f80 	movt	r8, #16256	; 0x3f80
    89d8:	ea000006 	b	89f8 <i2c_master_read+0x14c>
    89dc:	e1a00006 	mov	r0, r6
    89e0:	ebfffeb0 	bl	84a8 <printk>
    89e4:	e1a00008 	mov	r0, r8
    89e8:	eb0000bb 	bl	8cdc <peri_read>
    89ec:	e4c50001 	strb	r0, [r5], #1
    89f0:	e2544001 	subs	r4, r4, #1
    89f4:	0a000003 	beq	8a08 <i2c_master_read+0x15c>
    89f8:	e1a00007 	mov	r0, r7
    89fc:	eb0000b6 	bl	8cdc <peri_read>
    8a00:	e3100020 	tst	r0, #32
    8a04:	1afffff4 	bne	89dc <i2c_master_read+0x130>
    8a08:	e3040004 	movw	r0, #16388	; 0x4004
    8a0c:	e3430f80 	movt	r0, #16256	; 0x3f80
    8a10:	eb0000b1 	bl	8cdc <peri_read>
    8a14:	e3100c01 	tst	r0, #256	; 0x100
    8a18:	13a05001 	movne	r5, #1
    8a1c:	1a000007 	bne	8a40 <i2c_master_read+0x194>
    8a20:	e3040004 	movw	r0, #16388	; 0x4004
    8a24:	e3430f80 	movt	r0, #16256	; 0x3f80
    8a28:	eb0000ab 	bl	8cdc <peri_read>
    8a2c:	e2000c02 	and	r0, r0, #512	; 0x200
    8a30:	e3500000 	cmp	r0, #0
    8a34:	03a05000 	moveq	r5, #0
    8a38:	13a05002 	movne	r5, #2
    8a3c:	eaffffff 	b	8a40 <i2c_master_read+0x194>
    8a40:	e3044004 	movw	r4, #16388	; 0x4004
    8a44:	e3434f80 	movt	r4, #16256	; 0x3f80
    8a48:	e1a00004 	mov	r0, r4
    8a4c:	eb0000a2 	bl	8cdc <peri_read>
    8a50:	e3100002 	tst	r0, #2
    8a54:	0afffffb 	beq	8a48 <i2c_master_read+0x19c>
    8a58:	e3a00901 	mov	r0, #16384	; 0x4000
    8a5c:	e3430f80 	movt	r0, #16256	; 0x3f80
    8a60:	e3a01002 	mov	r1, #2
    8a64:	e1a02001 	mov	r2, r1
    8a68:	eb00009f 	bl	8cec <peri_set_bits>
    8a6c:	e1a00005 	mov	r0, r5
    8a70:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

00008a74 <adc_write_config>:
    8a74:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8a78:	e24dd00c 	sub	sp, sp, #12
    8a7c:	e1a01000 	mov	r1, r0
    8a80:	e3a03001 	mov	r3, #1
    8a84:	e5cd3004 	strb	r3, [sp, #4]
    8a88:	e1a03420 	lsr	r3, r0, #8
    8a8c:	e5cd3005 	strb	r3, [sp, #5]
    8a90:	e5cd0006 	strb	r0, [sp, #6]
    8a94:	e30a00d8 	movw	r0, #41176	; 0xa0d8
    8a98:	e3400000 	movt	r0, #0
    8a9c:	ebfffe81 	bl	84a8 <printk>
    8aa0:	e28d0004 	add	r0, sp, #4
    8aa4:	e3a01003 	mov	r1, #3
    8aa8:	e3a02049 	mov	r2, #73	; 0x49
    8aac:	ebffff31 	bl	8778 <i2c_master_write>
    8ab0:	e2501000 	subs	r1, r0, #0
    8ab4:	0a000003 	beq	8ac8 <adc_write_config+0x54>
    8ab8:	e30a00f0 	movw	r0, #41200	; 0xa0f0
    8abc:	e3400000 	movt	r0, #0
    8ac0:	ebfffe78 	bl	84a8 <printk>
    8ac4:	ea000002 	b	8ad4 <adc_write_config+0x60>
    8ac8:	e30a0104 	movw	r0, #41220	; 0xa104
    8acc:	e3400000 	movt	r0, #0
    8ad0:	ebfffe74 	bl	84a8 <printk>
    8ad4:	e3a01001 	mov	r1, #1
    8ad8:	e28d0008 	add	r0, sp, #8
    8adc:	e5601004 	strb	r1, [r0, #-4]!
    8ae0:	e3a02049 	mov	r2, #73	; 0x49
    8ae4:	ebffff23 	bl	8778 <i2c_master_write>
    8ae8:	e1a0000d 	mov	r0, sp
    8aec:	e3a01002 	mov	r1, #2
    8af0:	e3a02049 	mov	r2, #73	; 0x49
    8af4:	ebffff6c 	bl	88ac <i2c_master_read>
    8af8:	e2501000 	subs	r1, r0, #0
    8afc:	0a000002 	beq	8b0c <adc_write_config+0x98>
    8b00:	e30a0114 	movw	r0, #41236	; 0xa114
    8b04:	e3400000 	movt	r0, #0
    8b08:	ebfffe66 	bl	84a8 <printk>
    8b0c:	e5dd1000 	ldrb	r1, [sp]
    8b10:	e5dd3001 	ldrb	r3, [sp, #1]
    8b14:	e30a0138 	movw	r0, #41272	; 0xa138
    8b18:	e3400000 	movt	r0, #0
    8b1c:	e0831401 	add	r1, r3, r1, lsl #8
    8b20:	ebfffe60 	bl	84a8 <printk>
    8b24:	e28dd00c 	add	sp, sp, #12
    8b28:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008b2c <adc_read_conversion>:
    8b2c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8b30:	e24dd00c 	sub	sp, sp, #12
    8b34:	e28d0008 	add	r0, sp, #8
    8b38:	e3a03000 	mov	r3, #0
    8b3c:	e5603004 	strb	r3, [r0, #-4]!
    8b40:	e3a01001 	mov	r1, #1
    8b44:	e3a02049 	mov	r2, #73	; 0x49
    8b48:	ebffff0a 	bl	8778 <i2c_master_write>
    8b4c:	e2501000 	subs	r1, r0, #0
    8b50:	0a000002 	beq	8b60 <adc_read_conversion+0x34>
    8b54:	e30a0150 	movw	r0, #41296	; 0xa150
    8b58:	e3400000 	movt	r0, #0
    8b5c:	ebfffe51 	bl	84a8 <printk>
    8b60:	e1a0000d 	mov	r0, sp
    8b64:	e3a01002 	mov	r1, #2
    8b68:	e3a02049 	mov	r2, #73	; 0x49
    8b6c:	ebffff4e 	bl	88ac <i2c_master_read>
    8b70:	e2501000 	subs	r1, r0, #0
    8b74:	0a000002 	beq	8b84 <adc_read_conversion+0x58>
    8b78:	e30a0190 	movw	r0, #41360	; 0xa190
    8b7c:	e3400000 	movt	r0, #0
    8b80:	ebfffe48 	bl	84a8 <printk>
    8b84:	e5dd0000 	ldrb	r0, [sp]
    8b88:	e5dd3001 	ldrb	r3, [sp, #1]
    8b8c:	e0830400 	add	r0, r3, r0, lsl #8
    8b90:	e6ff0070 	uxth	r0, r0
    8b94:	e28dd00c 	add	sp, sp, #12
    8b98:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008b9c <adc_init>:
    8b9c:	e92d4030 	push	{r4, r5, lr}
    8ba0:	e24dd00c 	sub	sp, sp, #12
    8ba4:	e3a01001 	mov	r1, #1
    8ba8:	e28d0008 	add	r0, sp, #8
    8bac:	e5601004 	strb	r1, [r0, #-4]!
    8bb0:	e3a02049 	mov	r2, #73	; 0x49
    8bb4:	ebfffeef 	bl	8778 <i2c_master_write>
    8bb8:	e1a0000d 	mov	r0, sp
    8bbc:	e3a01002 	mov	r1, #2
    8bc0:	e3a02049 	mov	r2, #73	; 0x49
    8bc4:	ebffff38 	bl	88ac <i2c_master_read>
    8bc8:	e2501000 	subs	r1, r0, #0
    8bcc:	0a000002 	beq	8bdc <adc_init+0x40>
    8bd0:	e30a0114 	movw	r0, #41236	; 0xa114
    8bd4:	e3400000 	movt	r0, #0
    8bd8:	ebfffe32 	bl	84a8 <printk>
    8bdc:	e5dd1000 	ldrb	r1, [sp]
    8be0:	e5dd3001 	ldrb	r3, [sp, #1]
    8be4:	e0831401 	add	r1, r3, r1, lsl #8
    8be8:	e30a0138 	movw	r0, #41272	; 0xa138
    8bec:	e3400000 	movt	r0, #0
    8bf0:	e6ff1071 	uxth	r1, r1
    8bf4:	ebfffe2b 	bl	84a8 <printk>
    8bf8:	e28d4008 	add	r4, sp, #8
    8bfc:	e3a03003 	mov	r3, #3
    8c00:	e5643004 	strb	r3, [r4, #-4]!
    8c04:	e1a00004 	mov	r0, r4
    8c08:	e3a01001 	mov	r1, #1
    8c0c:	e3a02049 	mov	r2, #73	; 0x49
    8c10:	ebfffed8 	bl	8778 <i2c_master_write>
    8c14:	e1a0000d 	mov	r0, sp
    8c18:	e3a01002 	mov	r1, #2
    8c1c:	e3a02049 	mov	r2, #73	; 0x49
    8c20:	ebffff21 	bl	88ac <i2c_master_read>
    8c24:	e5dd1000 	ldrb	r1, [sp]
    8c28:	e5dd3001 	ldrb	r3, [sp, #1]
    8c2c:	e0831401 	add	r1, r3, r1, lsl #8
    8c30:	e30a01bc 	movw	r0, #41404	; 0xa1bc
    8c34:	e3400000 	movt	r0, #0
    8c38:	e6ff1071 	uxth	r1, r1
    8c3c:	ebfffe19 	bl	84a8 <printk>
    8c40:	e3a05002 	mov	r5, #2
    8c44:	e5cd5004 	strb	r5, [sp, #4]
    8c48:	e1a00004 	mov	r0, r4
    8c4c:	e3a01001 	mov	r1, #1
    8c50:	e3a02049 	mov	r2, #73	; 0x49
    8c54:	ebfffec7 	bl	8778 <i2c_master_write>
    8c58:	e1a0000d 	mov	r0, sp
    8c5c:	e1a01005 	mov	r1, r5
    8c60:	e3a02049 	mov	r2, #73	; 0x49
    8c64:	ebffff10 	bl	88ac <i2c_master_read>
    8c68:	e5dd1000 	ldrb	r1, [sp]
    8c6c:	e5dd3001 	ldrb	r3, [sp, #1]
    8c70:	e0831401 	add	r1, r3, r1, lsl #8
    8c74:	e30a01cc 	movw	r0, #41420	; 0xa1cc
    8c78:	e3400000 	movt	r0, #0
    8c7c:	e6ff1071 	uxth	r1, r1
    8c80:	ebfffe08 	bl	84a8 <printk>
    8c84:	e28dd00c 	add	sp, sp, #12
    8c88:	e8bd8030 	pop	{r4, r5, pc}

00008c8c <adc_read>:
    8c8c:	e92d4008 	push	{r3, lr}
    8c90:	e3500003 	cmp	r0, #3
    8c94:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
    8c98:	ea00000d 	b	8cd4 <adc_read+0x48>
    8c9c:	00008cc4 	andeq	r8, r0, r4, asr #25
    8ca0:	00008cac 	andeq	r8, r0, ip, lsr #25
    8ca4:	00008cb4 			; <UNDEFINED> instruction: 0x00008cb4
    8ca8:	00008cbc 			; <UNDEFINED> instruction: 0x00008cbc
    8cac:	e3050083 	movw	r0, #20611	; 0x5083
    8cb0:	ea000004 	b	8cc8 <adc_read+0x3c>
    8cb4:	e3060083 	movw	r0, #24707	; 0x6083
    8cb8:	ea000002 	b	8cc8 <adc_read+0x3c>
    8cbc:	e3070083 	movw	r0, #28803	; 0x7083
    8cc0:	ea000000 	b	8cc8 <adc_read+0x3c>
    8cc4:	e3040083 	movw	r0, #16515	; 0x4083
    8cc8:	ebffff69 	bl	8a74 <adc_write_config>
    8ccc:	ebffff96 	bl	8b2c <adc_read_conversion>
    8cd0:	e8bd8008 	pop	{r3, pc}
    8cd4:	e3a00000 	mov	r0, #0
    8cd8:	e8bd8008 	pop	{r3, pc}

00008cdc <peri_read>:
    8cdc:	e5900000 	ldr	r0, [r0]
    8ce0:	e12fff1e 	bx	lr

00008ce4 <peri_write>:
    8ce4:	e5801000 	str	r1, [r0]
    8ce8:	e12fff1e 	bx	lr

00008cec <peri_set_bits>:
    8cec:	e5903000 	ldr	r3, [r0]
    8cf0:	e1c33002 	bic	r3, r3, r2
    8cf4:	e0011002 	and	r1, r1, r2
    8cf8:	e1832001 	orr	r2, r3, r1
    8cfc:	e5802000 	str	r2, [r0]
    8d00:	e12fff1e 	bx	lr

00008d04 <set_bits>:
    8d04:	e1c00002 	bic	r0, r0, r2
    8d08:	e0011002 	and	r1, r1, r2
    8d0c:	e1800001 	orr	r0, r0, r1
    8d10:	e12fff1e 	bx	lr

00008d14 <delay_cycles>:
    8d14:	e2500001 	subs	r0, r0, #1
    8d18:	1afffffd 	bne	8d14 <delay_cycles>
    8d1c:	e1a0f00e 	mov	pc, lr

00008d20 <read_cpsr>:
    8d20:	e10f0000 	mrs	r0, CPSR
    8d24:	e1a0f00e 	mov	pc, lr

00008d28 <write_cpsr>:
    8d28:	e129f000 	msr	CPSR_fc, r0
    8d2c:	e1a0f00e 	mov	pc, lr

00008d30 <disable_interrupts>:
    8d30:	e10f0000 	mrs	r0, CPSR
    8d34:	e3a01d07 	mov	r1, #448	; 0x1c0
    8d38:	e1800001 	orr	r0, r0, r1
    8d3c:	e129f000 	msr	CPSR_fc, r0
    8d40:	e1a0f00e 	mov	pc, lr

00008d44 <enable_interrupts>:
    8d44:	e10f0000 	mrs	r0, CPSR
    8d48:	e3a01d07 	mov	r1, #448	; 0x1c0
    8d4c:	e1c00001 	bic	r0, r0, r1
    8d50:	e129f000 	msr	CPSR_fc, r0
    8d54:	e1a0f00e 	mov	pc, lr

00008d58 <__aeabi_uldivmod>:
    8d58:	e3530000 	cmp	r3, #0
    8d5c:	03520000 	cmpeq	r2, #0
    8d60:	1a000004 	bne	8d78 <__aeabi_uldivmod+0x20>
    8d64:	e3510000 	cmp	r1, #0
    8d68:	03500000 	cmpeq	r0, #0
    8d6c:	13e01000 	mvnne	r1, #0
    8d70:	13e00000 	mvnne	r0, #0
    8d74:	ea000027 	b	8e18 <__aeabi_idiv0>
    8d78:	e24dd008 	sub	sp, sp, #8
    8d7c:	e92d6000 	push	{sp, lr}
    8d80:	eb000014 	bl	8dd8 <__gnu_uldivmod_helper>
    8d84:	e59de004 	ldr	lr, [sp, #4]
    8d88:	e28dd008 	add	sp, sp, #8
    8d8c:	e8bd000c 	pop	{r2, r3}
    8d90:	e12fff1e 	bx	lr

00008d94 <__gnu_ldivmod_helper>:
    8d94:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8d98:	e59d6020 	ldr	r6, [sp, #32]
    8d9c:	e1a07002 	mov	r7, r2
    8da0:	e1a0a003 	mov	sl, r3
    8da4:	e1a04000 	mov	r4, r0
    8da8:	e1a05001 	mov	r5, r1
    8dac:	eb00001a 	bl	8e1c <__divdi3>
    8db0:	e1a03000 	mov	r3, r0
    8db4:	e0020197 	mul	r2, r7, r1
    8db8:	e0898097 	umull	r8, r9, r7, r0
    8dbc:	e023239a 	mla	r3, sl, r3, r2
    8dc0:	e0544008 	subs	r4, r4, r8
    8dc4:	e0839009 	add	r9, r3, r9
    8dc8:	e0c55009 	sbc	r5, r5, r9
    8dcc:	e8860030 	stm	r6, {r4, r5}
    8dd0:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8dd4:	e12fff1e 	bx	lr

00008dd8 <__gnu_uldivmod_helper>:
    8dd8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8ddc:	e59d5018 	ldr	r5, [sp, #24]
    8de0:	e1a04002 	mov	r4, r2
    8de4:	e1a08003 	mov	r8, r3
    8de8:	e1a06000 	mov	r6, r0
    8dec:	e1a07001 	mov	r7, r1
    8df0:	eb000067 	bl	8f94 <__udivdi3>
    8df4:	e0080890 	mul	r8, r0, r8
    8df8:	e0832490 	umull	r2, r3, r0, r4
    8dfc:	e0248491 	mla	r4, r1, r4, r8
    8e00:	e0566002 	subs	r6, r6, r2
    8e04:	e0843003 	add	r3, r4, r3
    8e08:	e0c77003 	sbc	r7, r7, r3
    8e0c:	e88500c0 	stm	r5, {r6, r7}
    8e10:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8e14:	e12fff1e 	bx	lr

00008e18 <__aeabi_idiv0>:
    8e18:	e12fff1e 	bx	lr

00008e1c <__divdi3>:
    8e1c:	e3510000 	cmp	r1, #0
    8e20:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8e24:	a1a04000 	movge	r4, r0
    8e28:	a1a05001 	movge	r5, r1
    8e2c:	a3a0a000 	movge	sl, #0
    8e30:	ba000053 	blt	8f84 <__divdi3+0x168>
    8e34:	e3530000 	cmp	r3, #0
    8e38:	a1a08002 	movge	r8, r2
    8e3c:	a1a09003 	movge	r9, r3
    8e40:	ba00004b 	blt	8f74 <__divdi3+0x158>
    8e44:	e1550009 	cmp	r5, r9
    8e48:	01540008 	cmpeq	r4, r8
    8e4c:	33a02000 	movcc	r2, #0
    8e50:	33a03000 	movcc	r3, #0
    8e54:	3a00003b 	bcc	8f48 <__divdi3+0x12c>
    8e58:	e1a01009 	mov	r1, r9
    8e5c:	e1a00008 	mov	r0, r8
    8e60:	eb000093 	bl	90b4 <__clzdi2>
    8e64:	e1a01005 	mov	r1, r5
    8e68:	e1a0b000 	mov	fp, r0
    8e6c:	e1a00004 	mov	r0, r4
    8e70:	eb00008f 	bl	90b4 <__clzdi2>
    8e74:	e060000b 	rsb	r0, r0, fp
    8e78:	e240e020 	sub	lr, r0, #32
    8e7c:	e1a07019 	lsl	r7, r9, r0
    8e80:	e1877e18 	orr	r7, r7, r8, lsl lr
    8e84:	e260c020 	rsb	ip, r0, #32
    8e88:	e1877c38 	orr	r7, r7, r8, lsr ip
    8e8c:	e1550007 	cmp	r5, r7
    8e90:	e1a06018 	lsl	r6, r8, r0
    8e94:	01540006 	cmpeq	r4, r6
    8e98:	e1a01000 	mov	r1, r0
    8e9c:	33a02000 	movcc	r2, #0
    8ea0:	33a03000 	movcc	r3, #0
    8ea4:	3a000005 	bcc	8ec0 <__divdi3+0xa4>
    8ea8:	e3a08001 	mov	r8, #1
    8eac:	e0544006 	subs	r4, r4, r6
    8eb0:	e1a03e18 	lsl	r3, r8, lr
    8eb4:	e1833c38 	orr	r3, r3, r8, lsr ip
    8eb8:	e0c55007 	sbc	r5, r5, r7
    8ebc:	e1a02018 	lsl	r2, r8, r0
    8ec0:	e3500000 	cmp	r0, #0
    8ec4:	0a00001f 	beq	8f48 <__divdi3+0x12c>
    8ec8:	e1b070a7 	lsrs	r7, r7, #1
    8ecc:	e1a06066 	rrx	r6, r6
    8ed0:	ea000007 	b	8ef4 <__divdi3+0xd8>
    8ed4:	e0544006 	subs	r4, r4, r6
    8ed8:	e0c55007 	sbc	r5, r5, r7
    8edc:	e0944004 	adds	r4, r4, r4
    8ee0:	e0a55005 	adc	r5, r5, r5
    8ee4:	e2944001 	adds	r4, r4, #1
    8ee8:	e2a55000 	adc	r5, r5, #0
    8eec:	e2500001 	subs	r0, r0, #1
    8ef0:	0a000006 	beq	8f10 <__divdi3+0xf4>
    8ef4:	e1570005 	cmp	r7, r5
    8ef8:	01560004 	cmpeq	r6, r4
    8efc:	9afffff4 	bls	8ed4 <__divdi3+0xb8>
    8f00:	e0944004 	adds	r4, r4, r4
    8f04:	e0a55005 	adc	r5, r5, r5
    8f08:	e2500001 	subs	r0, r0, #1
    8f0c:	1afffff8 	bne	8ef4 <__divdi3+0xd8>
    8f10:	e261c020 	rsb	ip, r1, #32
    8f14:	e1a00134 	lsr	r0, r4, r1
    8f18:	e0922004 	adds	r2, r2, r4
    8f1c:	e241e020 	sub	lr, r1, #32
    8f20:	e1800c15 	orr	r0, r0, r5, lsl ip
    8f24:	e1a04135 	lsr	r4, r5, r1
    8f28:	e1800e35 	orr	r0, r0, r5, lsr lr
    8f2c:	e1a07114 	lsl	r7, r4, r1
    8f30:	e1877e10 	orr	r7, r7, r0, lsl lr
    8f34:	e1a06110 	lsl	r6, r0, r1
    8f38:	e0a33005 	adc	r3, r3, r5
    8f3c:	e1877c30 	orr	r7, r7, r0, lsr ip
    8f40:	e0522006 	subs	r2, r2, r6
    8f44:	e0c33007 	sbc	r3, r3, r7
    8f48:	e29a0000 	adds	r0, sl, #0
    8f4c:	13a00001 	movne	r0, #1
    8f50:	e3a01000 	mov	r1, #0
    8f54:	e2704000 	rsbs	r4, r0, #0
    8f58:	e2e15000 	rsc	r5, r1, #0
    8f5c:	e0222004 	eor	r2, r2, r4
    8f60:	e0233005 	eor	r3, r3, r5
    8f64:	e0900002 	adds	r0, r0, r2
    8f68:	e0a11003 	adc	r1, r1, r3
    8f6c:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8f70:	e12fff1e 	bx	lr
    8f74:	e2728000 	rsbs	r8, r2, #0
    8f78:	e1e0a00a 	mvn	sl, sl
    8f7c:	e2e39000 	rsc	r9, r3, #0
    8f80:	eaffffaf 	b	8e44 <__divdi3+0x28>
    8f84:	e2704000 	rsbs	r4, r0, #0
    8f88:	e2e15000 	rsc	r5, r1, #0
    8f8c:	e3e0a000 	mvn	sl, #0
    8f90:	eaffffa7 	b	8e34 <__divdi3+0x18>

00008f94 <__udivdi3>:
    8f94:	e1510003 	cmp	r1, r3
    8f98:	01500002 	cmpeq	r0, r2
    8f9c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8fa0:	e1a04000 	mov	r4, r0
    8fa4:	e1a05001 	mov	r5, r1
    8fa8:	e1a08002 	mov	r8, r2
    8fac:	e1a09003 	mov	r9, r3
    8fb0:	33a00000 	movcc	r0, #0
    8fb4:	33a01000 	movcc	r1, #0
    8fb8:	3a00003b 	bcc	90ac <__udivdi3+0x118>
    8fbc:	e1a01003 	mov	r1, r3
    8fc0:	e1a00002 	mov	r0, r2
    8fc4:	eb00003a 	bl	90b4 <__clzdi2>
    8fc8:	e1a01005 	mov	r1, r5
    8fcc:	e1a0a000 	mov	sl, r0
    8fd0:	e1a00004 	mov	r0, r4
    8fd4:	eb000036 	bl	90b4 <__clzdi2>
    8fd8:	e060300a 	rsb	r3, r0, sl
    8fdc:	e243e020 	sub	lr, r3, #32
    8fe0:	e1a07319 	lsl	r7, r9, r3
    8fe4:	e1877e18 	orr	r7, r7, r8, lsl lr
    8fe8:	e263c020 	rsb	ip, r3, #32
    8fec:	e1877c38 	orr	r7, r7, r8, lsr ip
    8ff0:	e1550007 	cmp	r5, r7
    8ff4:	e1a06318 	lsl	r6, r8, r3
    8ff8:	01540006 	cmpeq	r4, r6
    8ffc:	e1a02003 	mov	r2, r3
    9000:	33a00000 	movcc	r0, #0
    9004:	33a01000 	movcc	r1, #0
    9008:	3a000005 	bcc	9024 <__udivdi3+0x90>
    900c:	e3a08001 	mov	r8, #1
    9010:	e0544006 	subs	r4, r4, r6
    9014:	e1a01e18 	lsl	r1, r8, lr
    9018:	e1811c38 	orr	r1, r1, r8, lsr ip
    901c:	e0c55007 	sbc	r5, r5, r7
    9020:	e1a00318 	lsl	r0, r8, r3
    9024:	e3530000 	cmp	r3, #0
    9028:	0a00001f 	beq	90ac <__udivdi3+0x118>
    902c:	e1b070a7 	lsrs	r7, r7, #1
    9030:	e1a06066 	rrx	r6, r6
    9034:	ea000007 	b	9058 <__udivdi3+0xc4>
    9038:	e0544006 	subs	r4, r4, r6
    903c:	e0c55007 	sbc	r5, r5, r7
    9040:	e0944004 	adds	r4, r4, r4
    9044:	e0a55005 	adc	r5, r5, r5
    9048:	e2944001 	adds	r4, r4, #1
    904c:	e2a55000 	adc	r5, r5, #0
    9050:	e2533001 	subs	r3, r3, #1
    9054:	0a000006 	beq	9074 <__udivdi3+0xe0>
    9058:	e1570005 	cmp	r7, r5
    905c:	01560004 	cmpeq	r6, r4
    9060:	9afffff4 	bls	9038 <__udivdi3+0xa4>
    9064:	e0944004 	adds	r4, r4, r4
    9068:	e0a55005 	adc	r5, r5, r5
    906c:	e2533001 	subs	r3, r3, #1
    9070:	1afffff8 	bne	9058 <__udivdi3+0xc4>
    9074:	e0948000 	adds	r8, r4, r0
    9078:	e0a59001 	adc	r9, r5, r1
    907c:	e1a03234 	lsr	r3, r4, r2
    9080:	e2621020 	rsb	r1, r2, #32
    9084:	e2420020 	sub	r0, r2, #32
    9088:	e1833115 	orr	r3, r3, r5, lsl r1
    908c:	e1a0c235 	lsr	ip, r5, r2
    9090:	e1833035 	orr	r3, r3, r5, lsr r0
    9094:	e1a0721c 	lsl	r7, ip, r2
    9098:	e1877013 	orr	r7, r7, r3, lsl r0
    909c:	e1a06213 	lsl	r6, r3, r2
    90a0:	e1877133 	orr	r7, r7, r3, lsr r1
    90a4:	e0580006 	subs	r0, r8, r6
    90a8:	e0c91007 	sbc	r1, r9, r7
    90ac:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    90b0:	e12fff1e 	bx	lr

000090b4 <__clzdi2>:
    90b4:	e92d4010 	push	{r4, lr}
    90b8:	e3510000 	cmp	r1, #0
    90bc:	1a000002 	bne	90cc <__clzdi2+0x18>
    90c0:	eb000005 	bl	90dc <__clzsi2>
    90c4:	e2800020 	add	r0, r0, #32
    90c8:	ea000001 	b	90d4 <__clzdi2+0x20>
    90cc:	e1a00001 	mov	r0, r1
    90d0:	eb000001 	bl	90dc <__clzsi2>
    90d4:	e8bd4010 	pop	{r4, lr}
    90d8:	e12fff1e 	bx	lr

000090dc <__clzsi2>:
    90dc:	e3a0101c 	mov	r1, #28
    90e0:	e3500801 	cmp	r0, #65536	; 0x10000
    90e4:	21a00820 	lsrcs	r0, r0, #16
    90e8:	22411010 	subcs	r1, r1, #16
    90ec:	e3500c01 	cmp	r0, #256	; 0x100
    90f0:	21a00420 	lsrcs	r0, r0, #8
    90f4:	22411008 	subcs	r1, r1, #8
    90f8:	e3500010 	cmp	r0, #16
    90fc:	21a00220 	lsrcs	r0, r0, #4
    9100:	22411004 	subcs	r1, r1, #4
    9104:	e28f2008 	add	r2, pc, #8
    9108:	e7d20000 	ldrb	r0, [r2, r0]
    910c:	e0800001 	add	r0, r0, r1
    9110:	e12fff1e 	bx	lr
    9114:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    9118:	01010101 	tsteq	r1, r1, lsl #2
	...

Disassembly of section .rodata:

0000a000 <__rodata_start>:
    a000:	33323130 	teqcc	r2, #48, 2
    a004:	37363534 			; <UNDEFINED> instruction: 0x37363534
    a008:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
    a00c:	66656463 	strbtvs	r6, [r5], -r3, ror #8
	...

Disassembly of section .rodata.str1.4:

0000a014 <.rodata.str1.4>:
    a014:	20746f67 	rsbscs	r6, r4, r7, ror #30
    a018:	00000a30 	andeq	r0, r0, r0, lsr sl
    a01c:	000a6425 	andeq	r6, sl, r5, lsr #8
    a020:	00000030 	andeq	r0, r0, r0, lsr r0
    a024:	00007830 	andeq	r7, r0, r0, lsr r8
    a028:	61656c70 	smcvs	22208	; 0x56c0
    a02c:	69206573 	stmdbvs	r0!, {r0, r1, r4, r5, r6, r8, sl, sp, lr}
    a030:	7475706e 	ldrbtvc	r7, [r5], #-110	; 0xffffff92
    a034:	0000000a 	andeq	r0, r0, sl
    a038:	65746e65 	ldrbvs	r6, [r4, #-3685]!	; 0xfffff19b
    a03c:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
    a040:	63326920 	teqvs	r2, #32, 18	; 0x80000
    a044:	73616d5f 	cmnvc	r1, #6080	; 0x17c0
    a048:	5f726574 	svcpl	0x00726574
    a04c:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
    a050:	00000a65 	andeq	r0, r0, r5, ror #20
    a054:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
    a058:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a05c:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0xfffff69e
    a060:	20782520 	rsbscs	r2, r8, r0, lsr #10
    a064:	66206f74 	qsub16vs	r6, r0, r4
    a068:	0a6f6669 	beq	1be3a14 <__user_program+0x18e3a14>
    a06c:	00000000 	andeq	r0, r0, r0
    a070:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
    a074:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a078:	20656e6f 	rsbcs	r6, r5, pc, ror #28
    a07c:	6d6f7266 	sfmvs	f7, 2, [pc, #-408]!	; 9eec <__clzsi2+0xe10>
    a080:	2c782520 	cfldr64cs	mvdx2, [r8], #-128	; 0xffffff80
    a084:	74796220 	ldrbtvc	r6, [r9], #-544	; 0xfffffde0
    a088:	25203a65 	strcs	r3, [r0, #-2661]!	; 0xfffff59b
    a08c:	00000a78 	andeq	r0, r0, r8, ror sl
    a090:	72656874 	rsbvc	r6, r5, #116, 16	; 0x740000
    a094:	72612065 	rsbvc	r2, r1, #101	; 0x65
    a098:	6f6d2065 	svcvs	0x006d2065
    a09c:	64206572 	strtvs	r6, [r0], #-1394	; 0xfffffa8e
    a0a0:	20617461 	rsbcs	r7, r1, r1, ror #8
    a0a4:	46206e69 	strtmi	r6, [r0], -r9, ror #28
    a0a8:	0a4f4649 	beq	13db9d4 <__user_program+0x10db9d4>
    a0ac:	00000000 	andeq	r0, r0, r0
    a0b0:	65636572 	strbvs	r6, [r3, #-1394]!	; 0xfffffa8e
    a0b4:	6e697669 	cdpvs	6, 6, cr7, cr9, cr9, {3}
    a0b8:	61642067 	cmnvs	r4, r7, rrx
    a0bc:	61206174 			; <UNDEFINED> instruction: 0x61206174
    a0c0:	72657466 	rsbvc	r7, r5, #1711276032	; 0x66000000
    a0c4:	61727420 	cmnvs	r2, r0, lsr #8
    a0c8:	6566736e 	strbvs	r7, [r6, #-878]!	; 0xfffffc92
    a0cc:	73692072 	cmnvc	r9, #114	; 0x72
    a0d0:	4e4f4420 	cdpmi	4, 4, cr4, cr15, cr0, {1}
    a0d4:	00000a45 	andeq	r0, r0, r5, asr #20
    a0d8:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0dc:	72756769 	rsbsvc	r6, r5, #27525120	; 0x1a40000
    a0e0:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a0e4:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    a0e8:	25203a65 	strcs	r3, [r0, #-2661]!	; 0xfffff59b
    a0ec:	00000a78 	andeq	r0, r0, r8, ror sl
    a0f0:	6f727265 	svcvs	0x00727265
    a0f4:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a0f8:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a0fc:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a100:	000a6769 	andeq	r6, sl, r9, ror #14
    a104:	63637573 	cmnvs	r3, #482344960	; 0x1cc00000
    a108:	20737365 	rsbscs	r7, r3, r5, ror #6
    a10c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a110:	000a6769 	andeq	r6, sl, r9, ror #14
    a114:	6f727265 	svcvs	0x00727265
    a118:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a11c:	65687720 	strbvs	r7, [r8, #-1824]!	; 0xfffff8e0
    a120:	6572206e 	ldrbvs	r2, [r2, #-110]!	; 0xffffff92
    a124:	6e696461 	cdpvs	4, 6, cr6, cr9, cr1, {3}
    a128:	6f632067 	svcvs	0x00632067
    a12c:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    a130:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a134:	0000000a 	andeq	r0, r0, sl
    a138:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a13c:	72206769 	eorvc	r6, r0, #27525120	; 0x1a40000
    a140:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    a144:	20726574 	rsbscs	r6, r2, r4, ror r5
    a148:	25207369 	strcs	r7, [r0, #-873]!	; 0xfffffc97
    a14c:	00000a78 	andeq	r0, r0, r8, ror sl
    a150:	6f727265 	svcvs	0x00727265
    a154:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a158:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a15c:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
    a160:	676e6967 	strbvs	r6, [lr, -r7, ror #18]!
    a164:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a168:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    a16c:	6f702072 	svcvs	0x00702072
    a170:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
    a174:	6f662072 	svcvs	0x00662072
    a178:	6f632072 	svcvs	0x00632072
    a17c:	7265766e 	rsbvc	r7, r5, #115343360	; 0x6e00000
    a180:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
    a184:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a188:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    a18c:	00000a72 	andeq	r0, r0, r2, ror sl
    a190:	6f727265 	svcvs	0x00727265
    a194:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a198:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a19c:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
    a1a0:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a1a4:	766e6f63 	strbtvc	r6, [lr], -r3, ror #30
    a1a8:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    a1ac:	72206e6f 	eorvc	r6, r0, #1776	; 0x6f0
    a1b0:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    a1b4:	0a726574 	beq	1ca378c <__user_program+0x19a378c>
    a1b8:	00000000 	andeq	r0, r0, r0
    a1bc:	74206948 	strtvc	r6, [r0], #-2376	; 0xfffff6b8
    a1c0:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    a1c4:	20736920 	rsbscs	r6, r3, r0, lsr #18
    a1c8:	000a7825 	andeq	r7, sl, r5, lsr #16
    a1cc:	74206f4c 	strtvc	r6, [r0], #-3916	; 0xfffff0b4
    a1d0:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    a1d4:	20736920 	rsbscs	r6, r3, r0, lsr #18
    a1d8:	000a7825 	andeq	r7, sl, r5, lsr #16

Disassembly of section .ARM.exidx:

0000a1dc <.ARM.exidx>:
    a1dc:	7fffec40 	svcvc	0x00ffec40
    a1e0:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

0000b000 <__data_start>:
    b000:	3f200000 	svccc	0x00200000

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
      6c:	2a070802 	bcs	1c207c <__end+0x9507c>
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
      b0:	0a087491 	beq	21d2fc <__end+0xf02fc>
      b4:	01000004 	tsteq	r0, r4
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
     164:	01680000 	cmneq	r8, r0
     168:	00040000 	andeq	r0, r4, r0
     16c:	000000b7 	strheq	r0, [r0], -r7
     170:	01b40104 			; <UNDEFINED> instruction: 0x01b40104
     174:	74010000 	strvc	r0, [r1], #-0
     178:	70000001 	andvc	r0, r0, r1
     17c:	74000000 	strvc	r0, [r0], #-0
     180:	54000083 	strpl	r0, [r0], #-131	; 0xffffff7d
     184:	96000000 	strls	r0, [r0], -r0
     188:	02000000 	andeq	r0, r0, #0
     18c:	00620801 	rsbeq	r0, r2, r1, lsl #16
     190:	02020000 	andeq	r0, r2, #0
     194:	00012305 	andeq	r2, r1, r5, lsl #6
     198:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     19c:	00746e69 	rsbseq	r6, r4, r9, ror #28
     1a0:	00050802 	andeq	r0, r5, r2, lsl #16
     1a4:	04000000 	streq	r0, [r0], #-0
     1a8:	00000051 	andeq	r0, r0, r1, asr r0
     1ac:	004c1602 	subeq	r1, ip, r2, lsl #12
     1b0:	01020000 	mrseq	r0, (UNDEF: 2)
     1b4:	00005908 	andeq	r5, r0, r8, lsl #18
     1b8:	01ab0400 			; <UNDEFINED> instruction: 0x01ab0400
     1bc:	18020000 	stmdane	r2, {}	; <UNPREDICTABLE>
     1c0:	0000005e 	andeq	r0, r0, lr, asr r0
     1c4:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     1c8:	02000000 	andeq	r0, r0, #0
     1cc:	00340704 	eorseq	r0, r4, r4, lsl #14
     1d0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     1d4:	00002a07 	andeq	r2, r0, r7, lsl #20
     1d8:	019f0500 	orrseq	r0, pc, r0, lsl #10
     1dc:	13010000 	movwne	r0, #4096	; 0x1000
     1e0:	00008374 	andeq	r8, r0, r4, ror r3
     1e4:	00000054 	andeq	r0, r0, r4, asr r0
     1e8:	010f9c01 	tsteq	pc, r1, lsl #24
     1ec:	76060000 	strvc	r0, [r6], -r0
     1f0:	01006c61 	tsteq	r0, r1, ror #24
     1f4:	0000531b 	andeq	r5, r0, fp, lsl r3
     1f8:	00000000 	andeq	r0, r0, r0
     1fc:	015e0700 	cmpeq	lr, r0, lsl #14
     200:	1c010000 	stcne	0, cr0, [r1], {-0}
     204:	00000041 	andeq	r0, r0, r1, asr #32
     208:	00000013 	andeq	r0, r0, r3, lsl r0
     20c:	00837c08 	addeq	r7, r3, r8, lsl #24
     210:	00010f00 	andeq	r0, r1, r0, lsl #30
     214:	83840900 	orrhi	r0, r4, #0, 18
     218:	01160000 	tsteq	r6, r0
     21c:	00c40000 	sbceq	r0, r4, r0
     220:	010a0000 	mrseq	r0, (UNDEF: 10)
     224:	dc0a0350 	stcle	3, cr0, [sl], {80}	; 0x50
     228:	88080005 	stmdahi	r8, {r0, r2}
     22c:	27000083 	strcs	r0, [r0, -r3, lsl #1]
     230:	08000001 	stmdaeq	r0, {r0}
     234:	000083a0 	andeq	r8, r0, r0, lsr #7
     238:	0000012e 	andeq	r0, r0, lr, lsr #2
     23c:	0083b009 	addeq	fp, r3, r9
     240:	00013900 	andeq	r3, r1, r0, lsl #18
     244:	0000ea00 	andeq	lr, r0, r0, lsl #20
     248:	50010a00 	andpl	r0, r1, r0, lsl #20
     24c:	00007502 	andeq	r7, r0, r2, lsl #10
     250:	0083b809 	addeq	fp, r3, r9, lsl #16
     254:	00015a00 	andeq	r5, r1, r0, lsl #20
     258:	0000fe00 	andeq	pc, r0, r0, lsl #28
     25c:	50010a00 	andpl	r0, r1, r0, lsl #20
     260:	00007602 	andeq	r7, r0, r2, lsl #12
     264:	0083c40b 	addeq	ip, r3, fp, lsl #8
     268:	00013900 	andeq	r3, r1, r0, lsl #18
     26c:	50010a00 	andpl	r0, r1, r0, lsl #20
     270:	00007402 	andeq	r7, r0, r2, lsl #8
     274:	01950c00 	orrseq	r0, r5, r0, lsl #24
     278:	17030000 	strne	r0, [r3, -r0]
     27c:	00014e0d 	andeq	r4, r1, sp, lsl #28
     280:	275a0500 	ldrbcs	r0, [sl, -r0, lsl #10]
     284:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     288:	00000053 	andeq	r0, r0, r3, asr r0
     28c:	016b0c00 	cmneq	fp, r0, lsl #24
     290:	28040000 	stmdacs	r4, {}	; <UNPREDICTABLE>
     294:	0001400f 	andeq	r4, r1, pc
     298:	412a0300 			; <UNDEFINED> instruction: 0x412a0300
     29c:	10000000 	andne	r0, r0, r0
     2a0:	00000164 	andeq	r0, r0, r4, ror #2
     2a4:	00331306 	eorseq	r1, r3, r6, lsl #6
     2a8:	014f0000 	mrseq	r0, SPSR
     2ac:	4f0e0000 	svcmi	0x000e0000
     2b0:	11000001 	tstne	r0, r1
     2b4:	55041200 	strpl	r1, [r4, #-512]	; 0xfffffe00
     2b8:	13000001 	movwne	r0, #1
     2bc:	00000025 	andeq	r0, r0, r5, lsr #32
     2c0:	00020c14 	andeq	r0, r2, r4, lsl ip
     2c4:	53300400 	teqpl	r0, #0, 8
     2c8:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     2cc:	00000041 	andeq	r0, r0, r1, asr #32
     2d0:	02f00000 	rscseq	r0, r0, #0
     2d4:	00040000 	andeq	r0, r4, r0
     2d8:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     2dc:	01b40104 			; <UNDEFINED> instruction: 0x01b40104
     2e0:	5c010000 	stcpl	0, cr0, [r1], {-0}
     2e4:	70000002 	andvc	r0, r0, r2
     2e8:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
     2ec:	98000083 	stmdals	r0, {r0, r1, r7}
     2f0:	56000002 	strpl	r0, [r0], -r2
     2f4:	02000001 	andeq	r0, r0, #1
     2f8:	00000052 	andeq	r0, r0, r2, asr r0
     2fc:	00300e02 	eorseq	r0, r0, r2, lsl #28
     300:	01030000 	mrseq	r0, (UNDEF: 3)
     304:	00006208 	andeq	r6, r0, r8, lsl #4
     308:	05020300 	streq	r0, [r2, #-768]	; 0xfffffd00
     30c:	00000123 	andeq	r0, r0, r3, lsr #2
     310:	00006802 	andeq	r6, r0, r2, lsl #16
     314:	49120200 	ldmdbmi	r2, {r9}
     318:	04000000 	streq	r0, [r0], #-0
     31c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     320:	08030074 	stmdaeq	r3, {r2, r4, r5, r6}
     324:	00000005 	andeq	r0, r0, r5
     328:	00510200 	subseq	r0, r1, r0, lsl #4
     32c:	16020000 	strne	r0, [r2], -r0
     330:	00000062 	andeq	r0, r0, r2, rrx
     334:	59080103 	stmdbpl	r8, {r0, r1, r8}
     338:	03000000 	movweq	r0, #0
     33c:	00fe0702 	rscseq	r0, lr, r2, lsl #14
     340:	67020000 	strvs	r0, [r2, -r0]
     344:	02000000 	andeq	r0, r0, #0
     348:	00007b1a 	andeq	r7, r0, sl, lsl fp
     34c:	07040300 	streq	r0, [r4, -r0, lsl #6]
     350:	00000034 	andeq	r0, r0, r4, lsr r0
     354:	00021e02 	andeq	r1, r2, r2, lsl #28
     358:	8d1c0200 	lfmhi	f0, 4, [ip, #-0]
     35c:	03000000 	movweq	r0, #0
     360:	002a0708 	eoreq	r0, sl, r8, lsl #14
     364:	2e020000 	cdpcs	0, 0, cr0, cr2, cr0, {0}
     368:	03000002 	movweq	r0, #2
     36c:	00009f13 	andeq	r9, r0, r3, lsl pc
     370:	022c0500 	eoreq	r0, ip, #0, 10
     374:	04040000 	streq	r0, [r4], #-0
     378:	0000b600 	andeq	fp, r0, r0, lsl #12
     37c:	028b0600 	addeq	r0, fp, #0, 12
     380:	00b60000 	adcseq	r0, r6, r0
     384:	00000000 	andeq	r0, r0, r0
     388:	44080407 	strmi	r0, [r8], #-1031	; 0xfffffbf9
     38c:	01000002 	tsteq	r0, r2
     390:	0083c821 	addeq	ip, r3, r1, lsr #16
     394:	0000e000 	andeq	lr, r0, r0
     398:	2a9c0100 	bcs	fe7007a0 <__user_program+0xfe4007a0>
     39c:	09000001 	stmdbeq	r0, {r0}
     3a0:	00000227 	andeq	r0, r0, r7, lsr #4
     3a4:	00572101 	subseq	r2, r7, r1, lsl #2
     3a8:	00260000 	eoreq	r0, r6, r0
     3ac:	6e0a0000 	cdpvs	0, 0, cr0, cr10, cr0, {0}
     3b0:	01006d75 	tsteq	r0, r5, ror sp
     3b4:	00008221 	andeq	r8, r0, r1, lsr #4
     3b8:	00004700 	andeq	r4, r0, r0, lsl #14
     3bc:	02550b00 	subseq	r0, r5, #0, 22
     3c0:	22010000 	andcs	r0, r1, #0
     3c4:	0000012a 	andeq	r0, r0, sl, lsr #2
     3c8:	0000007f 	andeq	r0, r0, pc, ror r0
     3cc:	6675620c 	ldrbtvs	r6, [r5], -ip, lsl #4
     3d0:	30230100 	eorcc	r0, r3, r0, lsl #2
     3d4:	02000001 	andeq	r0, r0, #1
     3d8:	700d5891 	mulvc	sp, r1, r8
     3dc:	01007274 	tsteq	r0, r4, ror r2
     3e0:	00012a24 	andeq	r2, r1, r4, lsr #20
     3e4:	0000b600 	andeq	fp, r0, r0, lsl #12
     3e8:	847c0e00 	ldrbthi	r0, [ip], #-3584	; 0xfffff200
     3ec:	02e60000 	rsceq	r0, r6, #0
     3f0:	940e0000 	strls	r0, [lr], #-0
     3f4:	e6000084 	str	r0, [r0], -r4, lsl #1
     3f8:	00000002 	andeq	r0, r0, r2
     3fc:	0025040f 	eoreq	r0, r5, pc, lsl #8
     400:	25100000 	ldrcs	r0, [r0, #-0]
     404:	40000000 	andmi	r0, r0, r0
     408:	11000001 	tstne	r0, r1
     40c:	00000140 	andeq	r0, r0, r0, asr #2
     410:	04030007 	streq	r0, [r3], #-7
     414:	00028207 	andeq	r8, r2, r7, lsl #4
     418:	01641200 	cmneq	r4, r0, lsl #4
     41c:	3f010000 	svccc	0x00010000
     420:	00000049 	andeq	r0, r0, r9, asr #32
     424:	000084a8 	andeq	r8, r0, r8, lsr #9
     428:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
     42c:	02b59c01 	adcseq	r9, r5, #256	; 0x100
     430:	660a0000 	strvs	r0, [sl], -r0
     434:	0100746d 	tsteq	r0, sp, ror #8
     438:	0002b53f 	andeq	fp, r2, pc, lsr r5
     43c:	00011e00 	andeq	r1, r1, r0, lsl #28
     440:	7d141300 	ldcvc	3, cr1, [r4, #-0]
     444:	01000002 	tsteq	r0, r2
     448:	00009440 	andeq	r9, r0, r0, asr #8
     44c:	54910200 	ldrpl	r0, [r1], #512	; 0x200
     450:	00000015 	andeq	r0, r0, r5, lsl r0
     454:	0001a700 	andeq	sl, r1, r0, lsl #14
     458:	756e0d00 	strbvc	r0, [lr, #-3328]!	; 0xfffff300
     45c:	6101006d 	tstvs	r1, sp, rrx
     460:	00000070 	andeq	r0, r0, r0, ror r0
     464:	00000155 	andeq	r0, r0, r5, asr r1
     468:	0085c016 	addeq	ip, r5, r6, lsl r0
     46c:	0000b800 	andeq	fp, r0, r0, lsl #16
     470:	50011700 	andpl	r1, r1, r0, lsl #14
     474:	00007802 	andeq	r7, r0, r2, lsl #16
     478:	00181500 	andseq	r1, r8, r0, lsl #10
     47c:	01d00000 	bicseq	r0, r0, r0
     480:	6e0d0000 	cdpvs	0, 0, cr0, cr13, cr0, {0}
     484:	01006d75 	tsteq	r0, r5, ror sp
     488:	00007068 	andeq	r7, r0, r8, rrx
     48c:	00017400 	andeq	r7, r1, r0, lsl #8
     490:	85e01600 	strbhi	r1, [r0, #1536]!	; 0x600
     494:	00b80000 	adcseq	r0, r8, r0
     498:	01170000 	tsteq	r7, r0
     49c:	00770250 	rsbseq	r0, r7, r0, asr r2
     4a0:	3c180000 	ldccc	0, cr0, [r8], {-0}
     4a4:	48000085 	stmdami	r0, {r0, r2, r7}
     4a8:	23000000 	movwcs	r0, #0
     4ac:	0d000002 	stceq	0, cr0, [r0, #-8]
     4b0:	006d756e 	rsbeq	r7, sp, lr, ror #10
     4b4:	003e5001 	eorseq	r5, lr, r1
     4b8:	01930000 	orrseq	r0, r3, r0
     4bc:	5c190000 	ldcpl	0, cr0, [r9], {-0}
     4c0:	e6000085 	str	r0, [r0], -r5, lsl #1
     4c4:	00000002 	andeq	r0, r0, r2
     4c8:	17000002 	strne	r0, [r0, -r2]
     4cc:	08025001 	stmdaeq	r2, {r0, ip, lr}
     4d0:	6c19002d 	ldcvs	0, cr0, [r9], {45}	; 0x2d
     4d4:	b8000085 	stmdalt	r0, {r0, r2, r7}
     4d8:	13000000 	movwne	r0, #0
     4dc:	17000002 	strne	r0, [r0, -r2]
     4e0:	3a015001 	bcc	544ec <__bss_end+0x484ec>
     4e4:	85801600 	strhi	r1, [r0, #1536]	; 0x600
     4e8:	00b80000 	adcseq	r0, r8, r0
     4ec:	01170000 	tsteq	r7, r0
     4f0:	003a0150 	eorseq	r0, sl, r0, asr r1
     4f4:	85841800 	strhi	r1, [r4, #2048]	; 0x800
     4f8:	00200000 	eoreq	r0, r0, r0
     4fc:	024f0000 	subeq	r0, pc, #0
     500:	6e0d0000 	cdpvs	0, 0, cr0, cr13, cr0, {0}
     504:	01006d75 	tsteq	r0, r5, ror sp
     508:	0000705b 	andeq	r7, r0, fp, asr r0
     50c:	0001a600 	andeq	sl, r1, r0, lsl #12
     510:	85a01600 	strhi	r1, [r0, #1536]!	; 0x600
     514:	00b80000 	adcseq	r0, r8, r0
     518:	01170000 	tsteq	r7, r0
     51c:	003a0150 	eorseq	r0, sl, r0, asr r1
     520:	85e41800 	strbhi	r1, [r4, #2048]!	; 0x800
     524:	00300000 	eorseq	r0, r0, r0
     528:	02750000 	rsbseq	r0, r5, #0
     52c:	150b0000 	strne	r0, [fp, #-0]
     530:	01000002 	tsteq	r0, r2
     534:	00012a6e 	andeq	r2, r1, lr, ror #20
     538:	0001c500 	andeq	ip, r1, r0, lsl #10
     53c:	86040e00 	strhi	r0, [r4], -r0, lsl #28
     540:	02e60000 	rsceq	r0, r6, #0
     544:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     548:	00008614 	andeq	r8, r0, r4, lsl r6
     54c:	00000018 	andeq	r0, r0, r8, lsl r0
     550:	0000029b 	muleq	r0, fp, r2
     554:	0001490b 	andeq	r4, r1, fp, lsl #18
     558:	3e770100 	rpwccs	f0, f7, f0
     55c:	e5000000 	str	r0, [r0, #-0]
     560:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     564:	00008628 	andeq	r8, r0, r8, lsr #12
     568:	000002e6 	andeq	r0, r0, r6, ror #5
     56c:	84e00e00 	strbthi	r0, [r0], #3584	; 0xe00
     570:	02e60000 	rsceq	r0, r6, #0
     574:	34160000 	ldrcc	r0, [r6], #-0
     578:	e6000086 	str	r0, [r0], -r6, lsl #1
     57c:	17000002 	strne	r0, [r0, -r2]
     580:	08025001 	stmdaeq	r2, {r0, ip, lr}
     584:	0f000025 	svceq	0x00000025
     588:	0002bb04 	andeq	fp, r2, r4, lsl #22
     58c:	00301a00 	eorseq	r1, r0, r0, lsl #20
     590:	30100000 	andscc	r0, r0, r0
     594:	d0000000 	andle	r0, r0, r0
     598:	11000002 	tstne	r0, r2
     59c:	00000140 	andeq	r0, r0, r0, asr #2
     5a0:	4e140010 	mrcmi	0, 0, r0, cr4, cr0, {0}
     5a4:	01000002 	tsteq	r0, r2
     5a8:	0002e118 	andeq	lr, r2, r8, lsl r1
     5ac:	00030500 	andeq	r0, r3, r0, lsl #10
     5b0:	1a0000a0 	bne	838 <__start-0x77c8>
     5b4:	000002c0 	andeq	r0, r0, r0, asr #5
     5b8:	0002361b 	andeq	r3, r2, fp, lsl r6
     5bc:	1c230500 	cfstr32ne	mvfx0, [r3], #-0
     5c0:	00000057 	andeq	r0, r0, r7, asr r0
     5c4:	019c0000 	orrseq	r0, ip, r0
     5c8:	00040000 	andeq	r0, r4, r0
     5cc:	0000033a 	andeq	r0, r0, sl, lsr r3
     5d0:	01b40104 			; <UNDEFINED> instruction: 0x01b40104
     5d4:	97010000 	strls	r0, [r1, -r0]
     5d8:	70000002 	andvc	r0, r0, r2
     5dc:	60000000 	andvs	r0, r0, r0
     5e0:	f8000086 			; <UNDEFINED> instruction: 0xf8000086
     5e4:	54000000 	strpl	r0, [r0], #-0
     5e8:	02000002 	andeq	r0, r0, #2
     5ec:	00620801 	rsbeq	r0, r2, r1, lsl #16
     5f0:	02020000 	andeq	r0, r2, #0
     5f4:	00012305 	andeq	r2, r1, r5, lsl #6
     5f8:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     5fc:	00746e69 	rsbseq	r6, r4, r9, ror #28
     600:	00050802 	andeq	r0, r5, r2, lsl #16
     604:	04000000 	streq	r0, [r0], #-0
     608:	00000051 	andeq	r0, r0, r1, asr r0
     60c:	004c1602 	subeq	r1, ip, r2, lsl #12
     610:	01020000 	mrseq	r0, (UNDEF: 2)
     614:	00005908 	andeq	r5, r0, r8, lsl #18
     618:	07020200 	streq	r0, [r2, -r0, lsl #4]
     61c:	000000fe 	strdeq	r0, [r0], -lr
     620:	00006704 	andeq	r6, r0, r4, lsl #14
     624:	651a0200 	ldrvs	r0, [sl, #-512]	; 0xfffffe00
     628:	02000000 	andeq	r0, r0, #0
     62c:	00340704 	eorseq	r0, r4, r4, lsl #14
     630:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     634:	00002a07 	andeq	r2, r0, r7, lsl #20
     638:	01950500 	orrseq	r0, r5, r0, lsl #10
     63c:	26010000 	strcs	r0, [r1], -r0
     640:	00008660 	andeq	r8, r0, r0, ror #12
     644:	00000064 	andeq	r0, r0, r4, rrx
     648:	00e59c01 	rsceq	r9, r5, r1, lsl #24
     64c:	70060000 	andvc	r0, r6, r0
     650:	52000086 	andpl	r0, r0, #134	; 0x86
     654:	a0000001 	andge	r0, r0, r1
     658:	07000000 	streq	r0, [r0, -r0]
     65c:	30015101 	andcc	r5, r1, r1, lsl #2
     660:	01500107 	cmpeq	r0, r7, lsl #2
     664:	7c06003f 	stcvc	0, cr0, [r6], {63}	; 0x3f
     668:	52000086 	andpl	r0, r0, #134	; 0x86
     66c:	b8000001 	stmdalt	r0, {r0}
     670:	07000000 	streq	r0, [r0, -r0]
     674:	30015101 	andcc	r5, r1, r1, lsl #2
     678:	01500107 	cmpeq	r0, r7, lsl #2
     67c:	8806003e 	stmdahi	r6, {r1, r2, r3, r4, r5}
     680:	68000086 	stmdavs	r0, {r1, r2, r7}
     684:	d0000001 	andle	r0, r0, r1
     688:	07000000 	streq	r0, [r0, -r0]
     68c:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     690:	01500107 	cmpeq	r0, r7, lsl #2
     694:	9408003f 	strls	r0, [r8], #-63	; 0xffffffc1
     698:	68000086 	stmdavs	r0, {r1, r2, r7}
     69c:	07000001 	streq	r0, [r0, -r1]
     6a0:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     6a4:	01500107 	cmpeq	r0, r7, lsl #2
     6a8:	0900003e 	stmdbeq	r0, {r1, r2, r3, r4, r5}
     6ac:	000002b6 			; <UNDEFINED> instruction: 0x000002b6
     6b0:	86c43c01 	strbhi	r3, [r4], r1, lsl #24
     6b4:	00240000 	eoreq	r0, r4, r0
     6b8:	9c010000 	stcls	0, cr0, [r1], {-0}
     6bc:	00023605 	andeq	r3, r2, r5, lsl #12
     6c0:	e8460100 	stmda	r6, {r8}^
     6c4:	24000086 	strcs	r0, [r0], #-134	; 0xffffff7a
     6c8:	01000000 	mrseq	r0, (UNDEF: 0)
     6cc:	0001199c 	muleq	r1, ip, r9
     6d0:	01490a00 	cmpeq	r9, r0, lsl #20
     6d4:	46010000 	strmi	r0, [r1], -r0
     6d8:	00000041 	andeq	r0, r0, r1, asr #32
     6dc:	0b005001 	bleq	146e8 <__bss_end+0x86e8>
     6e0:	00000140 	andeq	r0, r0, r0, asr #2
     6e4:	00415201 	subeq	r5, r1, r1, lsl #4
     6e8:	870c0000 	strhi	r0, [ip, -r0]
     6ec:	004c0000 	subeq	r0, ip, r0
     6f0:	9c010000 	stcls	0, cr0, [r1], {-0}
     6f4:	00000152 	andeq	r0, r0, r2, asr r1
     6f8:	0002900c 	andeq	r9, r2, ip
     6fc:	33530100 	cmpcc	r3, #0, 2
     700:	f9000000 			; <UNDEFINED> instruction: 0xf9000000
     704:	08000001 	stmdaeq	r0, {r0}
     708:	00008738 	andeq	r8, r0, r8, lsr r7
     70c:	0000017e 	andeq	r0, r0, lr, ror r1
     710:	02500107 	subseq	r0, r0, #-1073741823	; 0xc0000001
     714:	00000075 	andeq	r0, r0, r5, ror r0
     718:	00000e0d 	andeq	r0, r0, sp, lsl #28
     71c:	684b0300 	stmdavs	fp, {r8, r9}^
     720:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     724:	00000041 	andeq	r0, r0, r1, asr #32
     728:	0000410e 	andeq	r4, r0, lr, lsl #2
     72c:	170d0000 	strne	r0, [sp, -r0]
     730:	03000001 	movweq	r0, #1
     734:	00017e37 	andeq	r7, r1, r7, lsr lr
     738:	00410e00 	subeq	r0, r1, r0, lsl #28
     73c:	410e0000 	mrsmi	r0, (UNDEF: 14)
     740:	00000000 	andeq	r0, r0, r0
     744:	0001640f 	andeq	r6, r1, pc, lsl #8
     748:	33130400 	tstcc	r3, #0, 8
     74c:	94000000 	strls	r0, [r0], #-0
     750:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     754:	00000194 	muleq	r0, r4, r1
     758:	04110010 	ldreq	r0, [r1], #-16
     75c:	0000019a 	muleq	r0, sl, r1
     760:	00002512 	andeq	r2, r0, r2, lsl r5
     764:	05380000 	ldreq	r0, [r8, #-0]!
     768:	00040000 	andeq	r0, r4, r0
     76c:	00000445 	andeq	r0, r0, r5, asr #8
     770:	01b40104 			; <UNDEFINED> instruction: 0x01b40104
     774:	d7010000 	strle	r0, [r1, -r0]
     778:	70000002 	andvc	r0, r0, r2
     77c:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
     780:	1c000087 	stcne	0, cr0, [r0], {135}	; 0x87
     784:	11000003 	tstne	r0, r3
     788:	02000003 	andeq	r0, r0, #3
     78c:	00620801 	rsbeq	r0, r2, r1, lsl #16
     790:	02020000 	andeq	r0, r2, #0
     794:	00012305 	andeq	r2, r1, r5, lsl #6
     798:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     79c:	00746e69 	rsbseq	r6, r4, r9, ror #28
     7a0:	00050802 	andeq	r0, r5, r2, lsl #16
     7a4:	04000000 	streq	r0, [r0], #-0
     7a8:	00000051 	andeq	r0, r0, r1, asr r0
     7ac:	004c1602 	subeq	r1, ip, r2, lsl #12
     7b0:	01020000 	mrseq	r0, (UNDEF: 2)
     7b4:	00005908 	andeq	r5, r0, r8, lsl #18
     7b8:	01ab0400 			; <UNDEFINED> instruction: 0x01ab0400
     7bc:	18020000 	stmdane	r2, {}	; <UNPREDICTABLE>
     7c0:	0000005e 	andeq	r0, r0, lr, asr r0
     7c4:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     7c8:	04000000 	streq	r0, [r0], #-0
     7cc:	00000067 	andeq	r0, r0, r7, rrx
     7d0:	00701a02 	rsbseq	r1, r0, r2, lsl #20
     7d4:	04020000 	streq	r0, [r2], #-0
     7d8:	00003407 	andeq	r3, r0, r7, lsl #8
     7dc:	07080200 	streq	r0, [r8, -r0, lsl #4]
     7e0:	0000002a 	andeq	r0, r0, sl, lsr #32
     7e4:	3c050105 	stfccs	f0, [r5], {5}
     7e8:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     7ec:	00038306 	andeq	r8, r3, r6, lsl #6
     7f0:	06060000 	streq	r0, [r6], -r0
     7f4:	01000003 	tsteq	r0, r3
     7f8:	00036d06 	andeq	r6, r3, r6, lsl #26
     7fc:	31060200 	mrscc	r0, LR_usr
     800:	04000003 	streq	r0, [r0], #-3
     804:	014e0700 	cmpeq	lr, r0, lsl #14
     808:	11010000 	mrsne	r0, (UNDEF: 1)
     80c:	00008758 	andeq	r8, r0, r8, asr r7
     810:	00000020 	andeq	r0, r0, r0, lsr #32
     814:	00f09c01 	rscseq	r9, r0, r1, lsl #24
     818:	63080000 	movwvs	r0, #32768	; 0x8000
     81c:	01006b6c 	tsteq	r0, ip, ror #22
     820:	00005311 	andeq	r5, r0, r1, lsl r3
     824:	00022f00 	andeq	r2, r2, r0, lsl #30
     828:	87680900 	strbhi	r0, [r8, -r0, lsl #18]!
     82c:	04c20000 	strbeq	r0, [r2], #0
     830:	00db0000 	sbcseq	r0, fp, r0
     834:	010a0000 	mrseq	r0, (UNDEF: 10)
     838:	0a340151 	beq	d00d84 <__user_program+0xa00d84>
     83c:	32015001 	andcc	r5, r1, #1
     840:	87740b00 	ldrbhi	r0, [r4, -r0, lsl #22]!
     844:	04c20000 	strbeq	r0, [r2], #0
     848:	010a0000 	mrseq	r0, (UNDEF: 10)
     84c:	0a340151 	beq	d00d98 <__user_program+0xa00d98>
     850:	33015001 	movwcc	r5, #4097	; 0x1001
     854:	5c0c0000 	stcpl	0, cr0, [ip], {-0}
     858:	01000003 	tsteq	r0, r3
     85c:	0000411b 	andeq	r4, r0, fp, lsl r1
     860:	00877800 	addeq	r7, r7, r0, lsl #16
     864:	00013400 	andeq	r3, r1, r0, lsl #8
     868:	909c0100 	addsls	r0, ip, r0, lsl #2
     86c:	08000002 	stmdaeq	r0, {r1}
     870:	00667562 	rsbeq	r7, r6, r2, ror #10
     874:	02901b01 	addseq	r1, r0, #1024	; 0x400
     878:	02500000 	subseq	r0, r0, #0
     87c:	6c080000 	stcvs	0, cr0, [r8], {-0}
     880:	01006e65 	tsteq	r0, r5, ror #28
     884:	0000531b 	andeq	r5, r0, fp, lsl r3
     888:	00028900 	andeq	r8, r2, r0, lsl #18
     88c:	02c20d00 	sbceq	r0, r2, #0, 26
     890:	1b010000 	blne	40898 <__bss_end+0x34898>
     894:	00000041 	andeq	r0, r0, r1, asr #32
     898:	000002aa 	andeq	r0, r0, sl, lsr #5
     89c:	0003570e 	andeq	r5, r3, lr, lsl #14
     8a0:	961d0100 	ldrls	r0, [sp], -r0, lsl #2
     8a4:	08000002 	stmdaeq	r0, {r1}
     8a8:	0e3f8040 	cdpeq	0, 3, cr8, cr15, cr0, {2}
     8ac:	000002d2 	ldrdeq	r0, [r0], -r2
     8b0:	02961e01 	addseq	r1, r6, #1, 28
     8b4:	40100000 	andsmi	r0, r0, r0
     8b8:	ff0e3f80 			; <UNDEFINED> instruction: 0xff0e3f80
     8bc:	01000002 	tsteq	r0, r2
     8c0:	0002961f 	andeq	r9, r2, pc, lsl r6
     8c4:	80400400 	subhi	r0, r0, r0, lsl #8
     8c8:	03910e3f 	orrseq	r0, r1, #1008	; 0x3f0
     8cc:	20010000 	andcs	r0, r1, r0
     8d0:	00000296 	muleq	r0, r6, r2
     8d4:	3f804000 	svccc	0x00804000
     8d8:	0002c10e 	andeq	ip, r2, lr, lsl #2
     8dc:	96210100 	strtls	r0, [r1], -r0, lsl #2
     8e0:	0c000002 	stceq	0, cr0, [r0], {2}
     8e4:	0f3f8040 	svceq	0x003f8040
     8e8:	00000399 	muleq	r0, r9, r3
     8ec:	00652401 	rsbeq	r2, r5, r1, lsl #8
     8f0:	02cb0000 	sbceq	r0, fp, #0
     8f4:	69100000 	ldmdbvs	r0, {}	; <UNPREDICTABLE>
     8f8:	65250100 	strvs	r0, [r5, #-256]!	; 0xffffff00
     8fc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     900:	0f000003 	svceq	0x00000003
     904:	0000032a 	andeq	r0, r0, sl, lsr #6
     908:	00412601 	subeq	r2, r1, r1, lsl #12
     90c:	03270000 			; <UNDEFINED> instruction: 0x03270000
     910:	94090000 	strls	r0, [r9], #-0
     914:	d8000087 	stmdale	r0, {r0, r1, r2, r7}
     918:	c3000004 	movwgt	r0, #4
     91c:	0a000001 	beq	928 <__start-0x76d8>
     920:	03055001 	movweq	r5, #20481	; 0x5001
     924:	0000a038 	andeq	sl, r0, r8, lsr r0
     928:	87a80900 	strhi	r0, [r8, r0, lsl #18]!
     92c:	04f90000 	ldrbteq	r0, [r9], #0
     930:	01db0000 	bicseq	r0, fp, r0
     934:	010a0000 	mrseq	r0, (UNDEF: 10)
     938:	0a400152 	beq	1000e88 <__user_program+0xd00e88>
     93c:	40015101 	andmi	r5, r1, r1, lsl #2
     940:	87b80900 	ldrhi	r0, [r8, r0, lsl #18]!
     944:	05140000 	ldreq	r0, [r4, #-0]
     948:	01f00000 	mvnseq	r0, r0
     94c:	010a0000 	mrseq	r0, (UNDEF: 10)
     950:	020a0351 	andeq	r0, sl, #1140850689	; 0x44000001
     954:	c8090003 	stmdagt	r9, {r0, r1}
     958:	14000087 	strne	r0, [r0], #-135	; 0xffffff79
     95c:	04000005 	streq	r0, [r0], #-5
     960:	0a000002 	beq	970 <__start-0x7690>
     964:	76025101 	strvc	r5, [r2], -r1, lsl #2
     968:	d8090000 	stmdale	r9, {}	; <UNPREDICTABLE>
     96c:	14000087 	strne	r0, [r0], #-135	; 0xffffff79
     970:	18000005 	stmdane	r0, {r0, r2}
     974:	0a000002 	beq	984 <__start-0x767c>
     978:	74025101 	strvc	r5, [r2], #-257	; 0xfffffeff
     97c:	08090000 	stmdaeq	r9, {}	; <UNPREDICTABLE>
     980:	14000088 	strne	r0, [r0], #-136	; 0xffffff78
     984:	2c000005 	stccs	0, cr0, [r0], {5}
     988:	0a000002 	beq	998 <__start-0x7668>
     98c:	77025001 	strvc	r5, [r2, -r1]
     990:	14090000 	strne	r0, [r9], #-0
     994:	d8000088 	stmdale	r0, {r3, r7}
     998:	40000004 	andmi	r0, r0, r4
     99c:	0a000002 	beq	9ac <__start-0x7654>
     9a0:	76025001 	strvc	r5, [r2], -r1
     9a4:	40090000 	andmi	r0, r9, r0
     9a8:	14000088 	strne	r0, [r0], #-136	; 0xffffff78
     9ac:	55000005 	strpl	r0, [r0, #-5]
     9b0:	0a000002 	beq	9c0 <__start-0x7640>
     9b4:	0a035101 	beq	d4dc0 <__bss_end+0xc8dc0>
     9b8:	11008080 	smlabbne	r0, r0, r0, r8
     9bc:	0000884c 	andeq	r8, r0, ip, asr #16
     9c0:	0000052a 	andeq	r0, r0, sl, lsr #10
     9c4:	00886411 	addeq	r6, r8, r1, lsl r4
     9c8:	00052a00 	andeq	r2, r5, r0, lsl #20
     9cc:	88880900 	stmhi	r8, {r8, fp}
     9d0:	052a0000 	streq	r0, [sl, #-0]!
     9d4:	027b0000 	rsbseq	r0, fp, #0
     9d8:	010a0000 	mrseq	r0, (UNDEF: 10)
     9dc:	00740250 	rsbseq	r0, r4, r0, asr r2
     9e0:	88a40b00 	stmiahi	r4!, {r8, r9, fp}
     9e4:	04f90000 	ldrbteq	r0, [r9], #0
     9e8:	010a0000 	mrseq	r0, (UNDEF: 10)
     9ec:	0a320152 	beq	c80f3c <__user_program+0x980f3c>
     9f0:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     9f4:	04120000 	ldreq	r0, [r2], #-0
     9f8:	00000041 	andeq	r0, r0, r1, asr #32
     9fc:	029c0412 	addseq	r0, ip, #301989888	; 0x12000000
     a00:	65130000 	ldrvs	r0, [r3, #-0]
     a04:	0c000000 	stceq	0, cr0, [r0], {-0}
     a08:	00000347 	andeq	r0, r0, r7, asr #6
     a0c:	00415501 	subeq	r5, r1, r1, lsl #10
     a10:	88ac0000 	stmiahi	ip!, {}	; <UNPREDICTABLE>
     a14:	01c80000 	biceq	r0, r8, r0
     a18:	9c010000 	stcls	0, cr0, [r1], {-0}
     a1c:	000004c2 	andeq	r0, r0, r2, asr #9
     a20:	66756208 	ldrbtvs	r6, [r5], -r8, lsl #4
     a24:	90550100 	subsls	r0, r5, r0, lsl #2
     a28:	3b000002 	blcc	a38 <__start-0x75c8>
     a2c:	08000003 	stmdaeq	r0, {r0, r1}
     a30:	006e656c 	rsbeq	r6, lr, ip, ror #10
     a34:	00535501 	subseq	r5, r3, r1, lsl #10
     a38:	03590000 	cmpeq	r9, #0
     a3c:	c20d0000 	andgt	r0, sp, #0
     a40:	01000002 	tsteq	r0, r2
     a44:	00004155 	andeq	r4, r0, r5, asr r1
     a48:	00037a00 	andeq	r7, r3, r0, lsl #20
     a4c:	03570e00 	cmpeq	r7, #0, 28
     a50:	56010000 	strpl	r0, [r1], -r0
     a54:	00000296 	muleq	r0, r6, r2
     a58:	3f804008 	svccc	0x00804008
     a5c:	0002d20e 	andeq	sp, r2, lr, lsl #4
     a60:	96570100 	ldrbls	r0, [r7], -r0, lsl #2
     a64:	10000002 	andne	r0, r0, r2
     a68:	0e3f8040 	cdpeq	0, 3, cr8, cr15, cr0, {2}
     a6c:	000002ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
     a70:	02965801 	addseq	r5, r6, #65536	; 0x10000
     a74:	40040000 	andmi	r0, r4, r0
     a78:	910e3f80 	smlabbls	lr, r0, pc, r3	; <UNPREDICTABLE>
     a7c:	01000003 	tsteq	r0, r3
     a80:	00029659 	andeq	r9, r2, r9, asr r6
     a84:	80400000 	subhi	r0, r0, r0
     a88:	02c10e3f 	sbceq	r0, r1, #1008	; 0x3f0
     a8c:	5a010000 	bpl	40a94 <__bss_end+0x34a94>
     a90:	00000296 	muleq	r0, r6, r2
     a94:	3f80400c 	svccc	0x0080400c
     a98:	0003990f 	andeq	r9, r3, pc, lsl #18
     a9c:	655c0100 	ldrbvs	r0, [ip, #-256]	; 0xffffff00
     aa0:	9b000000 	blls	aa8 <__start-0x7558>
     aa4:	10000003 	andne	r0, r0, r3
     aa8:	5d010069 	stcpl	0, cr0, [r1, #-420]	; 0xfffffe5c
     aac:	00000065 	andeq	r0, r0, r5, rrx
     ab0:	000003e9 	andeq	r0, r0, r9, ror #7
     ab4:	00032a0f 	andeq	r2, r3, pc, lsl #20
     ab8:	415e0100 	cmpmi	lr, r0, lsl #2
     abc:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     ac0:	09000004 	stmdbeq	r0, {r2}
     ac4:	000088d8 	ldrdeq	r8, [r0], -r8	; <UNPREDICTABLE>
     ac8:	000004f9 	strdeq	r0, [r0], -r9
     acc:	0000037d 	andeq	r0, r0, sp, ror r3
     ad0:	0252010a 	subseq	r0, r2, #-2147483646	; 0x80000002
     ad4:	010a2008 	tsteq	sl, r8
     ad8:	20080251 	andcs	r0, r8, r1, asr r2
     adc:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     ae0:	09000075 	stmdbeq	r0, {r0, r2, r4, r5, r6}
     ae4:	000088e8 	andeq	r8, r0, r8, ror #17
     ae8:	00000514 	andeq	r0, r0, r4, lsl r5
     aec:	00000392 	muleq	r0, r2, r3
     af0:	0351010a 	cmpeq	r1, #-2147483646	; 0x80000002
     af4:	0003020a 	andeq	r0, r3, sl, lsl #4
     af8:	0088f809 	addeq	pc, r8, r9, lsl #16
     afc:	00051400 	andeq	r1, r5, r0, lsl #8
     b00:	0003a600 	andeq	sl, r3, r0, lsl #12
     b04:	51010a00 	tstpl	r1, r0, lsl #20
     b08:	00007402 	andeq	r7, r0, r2, lsl #8
     b0c:	00890809 	addeq	r0, r9, r9, lsl #16
     b10:	00051400 	andeq	r1, r5, r0, lsl #8
     b14:	0003ba00 	andeq	fp, r3, r0, lsl #20
     b18:	51010a00 	tstpl	r1, r0, lsl #20
     b1c:	00007702 	andeq	r7, r0, r2, lsl #14
     b20:	00891409 	addeq	r1, r9, r9, lsl #8
     b24:	00051400 	andeq	r1, r5, r0, lsl #8
     b28:	0003d500 	andeq	sp, r3, r0, lsl #10
     b2c:	51010a00 	tstpl	r1, r0, lsl #20
     b30:	80810a03 	addhi	r0, r1, r3, lsl #20
     b34:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     b38:	09000075 	stmdbeq	r0, {r0, r2, r4, r5, r6}
     b3c:	0000893c 	andeq	r8, r0, ip, lsr r9
     b40:	0000052a 	andeq	r0, r0, sl, lsr #10
     b44:	000003e9 	andeq	r0, r0, r9, ror #7
     b48:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     b4c:	09000077 	stmdbeq	r0, {r0, r1, r2, r4, r5, r6}
     b50:	00008954 	andeq	r8, r0, r4, asr r9
     b54:	000004d8 	ldrdeq	r0, [r0], -r8
     b58:	00000403 	andeq	r0, r0, r3, lsl #8
     b5c:	0251010a 	subseq	r0, r1, #-2147483646	; 0x80000002
     b60:	010a0077 	tsteq	sl, r7, ror r0
     b64:	00790250 	rsbseq	r0, r9, r0, asr r2
     b68:	89680900 	stmdbhi	r8!, {r8, fp}^
     b6c:	052a0000 	streq	r0, [sl, #-0]!
     b70:	04170000 	ldreq	r0, [r7], #-0
     b74:	010a0000 	mrseq	r0, (UNDEF: 10)
     b78:	00780250 	rsbseq	r0, r8, r0, asr r2
     b7c:	89780900 	ldmdbhi	r8!, {r8, fp}^
     b80:	052a0000 	streq	r0, [sl, #-0]!
     b84:	042b0000 	strteq	r0, [fp], #-0
     b88:	010a0000 	mrseq	r0, (UNDEF: 10)
     b8c:	00780250 	rsbseq	r0, r8, r0, asr r2
     b90:	89a01100 	stmibhi	r0!, {r8, ip}
     b94:	052a0000 	streq	r0, [sl, #-0]!
     b98:	b4090000 	strlt	r0, [r9], #-0
     b9c:	d8000089 	stmdale	r0, {r0, r3, r7}
     ba0:	4b000004 	blmi	bb8 <__start-0x7448>
     ba4:	0a000004 	beq	bbc <__start-0x7444>
     ba8:	03055001 	movweq	r5, #20481	; 0x5001
     bac:	0000a090 	muleq	r0, r0, r0
     bb0:	89e40900 	stmibhi	r4!, {r8, fp}^
     bb4:	04d80000 	ldrbeq	r0, [r8], #0
     bb8:	045f0000 	ldrbeq	r0, [pc], #-0	; bc0 <__start-0x7440>
     bbc:	010a0000 	mrseq	r0, (UNDEF: 10)
     bc0:	00760250 	rsbseq	r0, r6, r0, asr r2
     bc4:	89ec0900 	stmibhi	ip!, {r8, fp}^
     bc8:	052a0000 	streq	r0, [sl, #-0]!
     bcc:	04730000 	ldrbteq	r0, [r3], #-0
     bd0:	010a0000 	mrseq	r0, (UNDEF: 10)
     bd4:	00780250 	rsbseq	r0, r8, r0, asr r2
     bd8:	8a000900 	bhi	2fe0 <__start-0x5020>
     bdc:	052a0000 	streq	r0, [sl, #-0]!
     be0:	04870000 	streq	r0, [r7], #0
     be4:	010a0000 	mrseq	r0, (UNDEF: 10)
     be8:	00770250 	rsbseq	r0, r7, r0, asr r2
     bec:	8a141100 	bhi	504ff4 <__user_program+0x204ff4>
     bf0:	052a0000 	streq	r0, [sl, #-0]!
     bf4:	2c110000 	ldccs	0, cr0, [r1], {-0}
     bf8:	2a00008a 	bcs	e28 <__start-0x71d8>
     bfc:	09000005 	stmdbeq	r0, {r0, r2}
     c00:	00008a50 	andeq	r8, r0, r0, asr sl
     c04:	0000052a 	andeq	r0, r0, sl, lsr #10
     c08:	000004ad 	andeq	r0, r0, sp, lsr #9
     c0c:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     c10:	0b000074 	bleq	de8 <__start-0x7218>
     c14:	00008a6c 	andeq	r8, r0, ip, ror #20
     c18:	000004f9 	strdeq	r0, [r0], -r9
     c1c:	0152010a 	cmpeq	r2, sl, lsl #2
     c20:	51010a32 	tstpl	r1, r2, lsr sl
     c24:	00003201 	andeq	r3, r0, r1, lsl #4
     c28:	00011714 	andeq	r1, r1, r4, lsl r7
     c2c:	d8370300 	ldmdale	r7!, {r8, r9}
     c30:	15000004 	strne	r0, [r0, #-4]
     c34:	00000041 	andeq	r0, r0, r1, asr #32
     c38:	00004115 	andeq	r4, r0, r5, lsl r1
     c3c:	64160000 	ldrvs	r0, [r6], #-0
     c40:	06000001 	streq	r0, [r0], -r1
     c44:	00003313 	andeq	r3, r0, r3, lsl r3
     c48:	0004ee00 	andeq	lr, r4, r0, lsl #28
     c4c:	04ee1500 	strbteq	r1, [lr], #1280	; 0x500
     c50:	00170000 	andseq	r0, r7, r0
     c54:	04f40412 	ldrbteq	r0, [r4], #1042	; 0x412
     c58:	25180000 	ldrcs	r0, [r8, #-0]
     c5c:	14000000 	strne	r0, [r0], #-0
     c60:	0000031c 	andeq	r0, r0, ip, lsl r3
     c64:	05140b04 	ldreq	r0, [r4, #-2820]	; 0xfffff4fc
     c68:	96150000 	ldrls	r0, [r5], -r0
     c6c:	15000002 	strne	r0, [r0, #-2]
     c70:	00000065 	andeq	r0, r0, r5, rrx
     c74:	00006515 	andeq	r6, r0, r5, lsl r5
     c78:	c7140000 	ldrgt	r0, [r4, -r0]
     c7c:	04000002 	streq	r0, [r0], #-2
     c80:	00052a07 	andeq	r2, r5, r7, lsl #20
     c84:	02961500 	addseq	r1, r6, #0, 10
     c88:	65150000 	ldrvs	r0, [r5, #-0]
     c8c:	00000000 	andeq	r0, r0, r0
     c90:	0002f519 	andeq	pc, r2, r9, lsl r5	; <UNPREDICTABLE>
     c94:	65040400 	strvs	r0, [r4, #-1024]	; 0xfffffc00
     c98:	15000000 	strne	r0, [r0, #-0]
     c9c:	00000296 	muleq	r0, r6, r2
     ca0:	04a50000 	strteq	r0, [r5], #0
     ca4:	00040000 	andeq	r0, r4, r0
     ca8:	000005a0 	andeq	r0, r0, r0, lsr #11
     cac:	01b40104 			; <UNDEFINED> instruction: 0x01b40104
     cb0:	a3010000 	movwge	r0, #4096	; 0x1000
     cb4:	70000003 	andvc	r0, r0, r3
     cb8:	74000000 	strvc	r0, [r0], #-0
     cbc:	6800008a 	stmdavs	r0, {r1, r3, r7}
     cc0:	21000002 	tstcs	r0, r2
     cc4:	02000004 	andeq	r0, r0, #4
     cc8:	00620801 	rsbeq	r0, r2, r1, lsl #16
     ccc:	02020000 	andeq	r0, r2, #0
     cd0:	00012305 	andeq	r2, r1, r5, lsl #6
     cd4:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     cd8:	00746e69 	rsbseq	r6, r4, r9, ror #28
     cdc:	00050802 	andeq	r0, r5, r2, lsl #16
     ce0:	04000000 	streq	r0, [r0], #-0
     ce4:	00000051 	andeq	r0, r0, r1, asr r0
     ce8:	004c1602 	subeq	r1, ip, r2, lsl #12
     cec:	01020000 	mrseq	r0, (UNDEF: 2)
     cf0:	00005908 	andeq	r5, r0, r8, lsl #18
     cf4:	01ab0400 			; <UNDEFINED> instruction: 0x01ab0400
     cf8:	18020000 	stmdane	r2, {}	; <UNPREDICTABLE>
     cfc:	0000005e 	andeq	r0, r0, lr, asr r0
     d00:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     d04:	04000000 	streq	r0, [r0], #-0
     d08:	00000067 	andeq	r0, r0, r7, rrx
     d0c:	00701a02 	rsbseq	r1, r0, r2, lsl #20
     d10:	04020000 	streq	r0, [r2], #-0
     d14:	00003407 	andeq	r3, r0, r7, lsl #8
     d18:	07080200 	streq	r0, [r8, -r0, lsl #4]
     d1c:	0000002a 	andeq	r0, r0, sl, lsr #32
     d20:	00040005 	andeq	r0, r4, r5
     d24:	74100100 	ldrvc	r0, [r0], #-256	; 0xffffff00
     d28:	b800008a 	stmdalt	r0, {r1, r3, r7}
     d2c:	01000000 	mrseq	r0, (UNDEF: 0)
     d30:	0001a99c 	muleq	r1, ip, r9
     d34:	03ed0600 	mvneq	r0, #0, 12
     d38:	10010000 	andne	r0, r1, r0
     d3c:	00000053 	andeq	r0, r0, r3, asr r0
     d40:	0000042c 	andeq	r0, r0, ip, lsr #8
     d44:	66756207 	ldrbtvs	r6, [r5], -r7, lsl #4
     d48:	a9120100 	ldmdbge	r2, {r8}
     d4c:	02000001 	andeq	r0, r0, #1
     d50:	e6087491 			; <UNDEFINED> instruction: 0xe6087491
     d54:	01000003 	tsteq	r0, r3
     d58:	00006513 	andeq	r6, r0, r3, lsl r5
     d5c:	00044d00 	andeq	r4, r4, r0, lsl #26
     d60:	04110900 	ldreq	r0, [r1], #-2304	; 0xfffff700
     d64:	1b010000 	blne	40d6c <__bss_end+0x34d6c>
     d68:	000001c0 	andeq	r0, r0, r0, asr #3
     d6c:	08709102 	ldmdaeq	r0!, {r1, r8, ip, pc}^
     d70:	0000032a 	andeq	r0, r0, sl, lsr #6
     d74:	00411d01 	subeq	r1, r1, r1, lsl #26
     d78:	04710000 	ldrbteq	r0, [r1], #-0
     d7c:	a00a0000 	andge	r0, sl, r0
     d80:	4700008a 	strmi	r0, [r0, -sl, lsl #1]
     d84:	f3000004 	vhadd.u8	d0, d0, d4
     d88:	0b000000 	bleq	d90 <__start-0x7270>
     d8c:	03055001 	movweq	r5, #20481	; 0x5001
     d90:	0000a0d8 	ldrdeq	sl, [r0], -r8
     d94:	8ab00a00 	bhi	fec0359c <__user_program+0xfe90359c>
     d98:	04680000 	strbteq	r0, [r8], #-0
     d9c:	01120000 	tsteq	r2, r0
     da0:	010b0000 	mrseq	r0, (UNDEF: 11)
     da4:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
     da8:	0151010b 	cmpeq	r1, fp, lsl #2
     dac:	50010b33 	andpl	r0, r1, r3, lsr fp
     db0:	006c9102 	rsbeq	r9, ip, r2, lsl #2
     db4:	008ac40a 	addeq	ip, sl, sl, lsl #8
     db8:	00044700 	andeq	r4, r4, r0, lsl #14
     dbc:	00012900 	andeq	r2, r1, r0, lsl #18
     dc0:	50010b00 	andpl	r0, r1, r0, lsl #22
     dc4:	a0f00305 	rscsge	r0, r0, r5, lsl #6
     dc8:	0a000000 	beq	dd0 <__start-0x7230>
     dcc:	00008ad4 	ldrdeq	r8, [r0], -r4
     dd0:	00000447 	andeq	r0, r0, r7, asr #8
     dd4:	00000140 	andeq	r0, r0, r0, asr #2
     dd8:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     ddc:	00a10403 	adceq	r0, r1, r3, lsl #8
     de0:	e80a0000 	stmda	sl, {}	; <UNPREDICTABLE>
     de4:	6800008a 	stmdavs	r0, {r1, r3, r7}
     de8:	5f000004 	svcpl	0x00000004
     dec:	0b000001 	bleq	df8 <__start-0x7208>
     df0:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     df4:	51010b49 	tstpl	r1, r9, asr #22
     df8:	010b3101 	tsteq	fp, r1, lsl #2
     dfc:	6c910250 	lfmvs	f0, 4, [r1], {80}	; 0x50
     e00:	8af80a00 	bhi	ffe03608 <__user_program+0xffb03608>
     e04:	048d0000 	streq	r0, [sp], #0
     e08:	017e0000 	cmneq	lr, r0
     e0c:	010b0000 	mrseq	r0, (UNDEF: 11)
     e10:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
     e14:	0151010b 	cmpeq	r1, fp, lsl #2
     e18:	50010b32 	andpl	r0, r1, r2, lsr fp
     e1c:	00007d02 	andeq	r7, r0, r2, lsl #26
     e20:	008b0c0a 	addeq	r0, fp, sl, lsl #24
     e24:	00044700 	andeq	r4, r4, r0, lsl #14
     e28:	00019500 	andeq	r9, r1, r0, lsl #10
     e2c:	50010b00 	andpl	r0, r1, r0, lsl #22
     e30:	a1140305 	tstge	r4, r5, lsl #6
     e34:	0c000000 	stceq	0, cr0, [r0], {-0}
     e38:	00008b24 	andeq	r8, r0, r4, lsr #22
     e3c:	00000447 	andeq	r0, r0, r7, asr #8
     e40:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     e44:	00a13803 	adceq	r3, r1, r3, lsl #16
     e48:	0d000000 	stceq	0, cr0, [r0, #-0]
     e4c:	00000041 	andeq	r0, r0, r1, asr #32
     e50:	000001b9 			; <UNDEFINED> instruction: 0x000001b9
     e54:	0001b90e 	andeq	fp, r1, lr, lsl #18
     e58:	02000200 	andeq	r0, r0, #0, 4
     e5c:	02820704 	addeq	r0, r2, #4, 14	; 0x100000
     e60:	410d0000 	mrsmi	r0, (UNDEF: 13)
     e64:	d0000000 	andle	r0, r0, r0
     e68:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     e6c:	000001b9 			; <UNDEFINED> instruction: 0x000001b9
     e70:	d20f0001 	andle	r0, pc, #1
     e74:	01000003 	tsteq	r0, r3
     e78:	00005333 	andeq	r5, r0, r3, lsr r3
     e7c:	008b2c00 	addeq	r2, fp, r0, lsl #24
     e80:	00007000 	andeq	r7, r0, r0
     e84:	8a9c0100 	bhi	fe70128c <__user_program+0xfe40128c>
     e88:	07000002 	streq	r0, [r0, -r2]
     e8c:	00667562 	rsbeq	r7, r6, r2, ror #10
     e90:	028a3501 	addeq	r3, sl, #4194304	; 0x400000
     e94:	91020000 	mrsls	r0, (UNDEF: 2)
     e98:	032a0874 			; <UNDEFINED> instruction: 0x032a0874
     e9c:	36010000 	strcc	r0, [r1], -r0
     ea0:	00000041 	andeq	r0, r0, r1, asr #32
     ea4:	0000049a 	muleq	r0, sl, r4
     ea8:	00041109 	andeq	r1, r4, r9, lsl #2
     eac:	c0400100 	subgt	r0, r0, r0, lsl #2
     eb0:	02000001 	andeq	r0, r0, #1
     eb4:	e6097091 			; <UNDEFINED> instruction: 0xe6097091
     eb8:	01000003 	tsteq	r0, r3
     ebc:	00005347 	andeq	r5, r0, r7, asr #6
     ec0:	0a500100 	beq	14012c8 <__user_program+0x11012c8>
     ec4:	00008b4c 	andeq	r8, r0, ip, asr #22
     ec8:	00000468 	andeq	r0, r0, r8, ror #8
     ecc:	00000240 	andeq	r0, r0, r0, asr #4
     ed0:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     ed4:	010b4908 	tsteq	fp, r8, lsl #18
     ed8:	0b310151 	bleq	c41424 <__user_program+0x941424>
     edc:	91025001 	tstls	r2, r1
     ee0:	600a006c 	andvs	r0, sl, ip, rrx
     ee4:	4700008b 	strmi	r0, [r0, -fp, lsl #1]
     ee8:	57000004 	strpl	r0, [r0, -r4]
     eec:	0b000002 	bleq	efc <__start-0x7104>
     ef0:	03055001 	movweq	r5, #20481	; 0x5001
     ef4:	0000a150 	andeq	sl, r0, r0, asr r1
     ef8:	8b700a00 	blhi	1c03700 <__user_program+0x1903700>
     efc:	048d0000 	streq	r0, [sp], #0
     f00:	02760000 	rsbseq	r0, r6, #0
     f04:	010b0000 	mrseq	r0, (UNDEF: 11)
     f08:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
     f0c:	0151010b 	cmpeq	r1, fp, lsl #2
     f10:	50010b32 	andpl	r0, r1, r2, lsr fp
     f14:	00007d02 	andeq	r7, r0, r2, lsl #26
     f18:	008b840c 	addeq	r8, fp, ip, lsl #8
     f1c:	00044700 	andeq	r4, r4, r0, lsl #14
     f20:	50010b00 	andpl	r0, r1, r0, lsl #22
     f24:	a1900305 	orrsge	r0, r0, r5, lsl #6
     f28:	00000000 	andeq	r0, r0, r0
     f2c:	0000410d 	andeq	r4, r0, sp, lsl #2
     f30:	00029a00 	andeq	r9, r2, r0, lsl #20
     f34:	01b90e00 			; <UNDEFINED> instruction: 0x01b90e00
     f38:	00000000 	andeq	r0, r0, r0
     f3c:	00016b05 	andeq	r6, r1, r5, lsl #22
     f40:	9c4d0100 	stflse	f0, [sp], {-0}
     f44:	f000008b 			; <UNDEFINED> instruction: 0xf000008b
     f48:	01000000 	mrseq	r0, (UNDEF: 0)
     f4c:	0003fd9c 	muleq	r3, ip, sp
     f50:	75620700 	strbvc	r0, [r2, #-1792]!	; 0xfffff900
     f54:	50010066 	andpl	r0, r1, r6, rrx
     f58:	0000028a 	andeq	r0, r0, sl, lsl #5
     f5c:	096c9102 	stmdbeq	ip!, {r1, r8, ip, pc}^
     f60:	00000411 	andeq	r0, r0, r1, lsl r4
     f64:	01c05101 	biceq	r5, r0, r1, lsl #2
     f68:	91020000 	mrsls	r0, (UNDEF: 2)
     f6c:	03e60868 	mvneq	r0, #104, 16	; 0x680000
     f70:	52010000 	andpl	r0, r1, #0
     f74:	00000053 	andeq	r0, r0, r3, asr r0
     f78:	000004b8 			; <UNDEFINED> instruction: 0x000004b8
     f7c:	00032a08 	andeq	r2, r3, r8, lsl #20
     f80:	41530100 	cmpmi	r3, r0, lsl #2
     f84:	14000000 	strne	r0, [r0], #-0
     f88:	0a000005 	beq	fa4 <__start-0x705c>
     f8c:	00008bb8 			; <UNDEFINED> instruction: 0x00008bb8
     f90:	00000468 	andeq	r0, r0, r8, ror #8
     f94:	00000308 	andeq	r0, r0, r8, lsl #6
     f98:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     f9c:	010b4908 	tsteq	fp, r8, lsl #18
     fa0:	0b310151 	bleq	c414ec <__user_program+0x9414ec>
     fa4:	91025001 	tstls	r2, r1
     fa8:	c80a0064 	stmdagt	sl, {r2, r5, r6}
     fac:	8d00008b 	stchi	0, cr0, [r0, #-556]	; 0xfffffdd4
     fb0:	27000004 	strcs	r0, [r0, -r4]
     fb4:	0b000003 	bleq	fc8 <__start-0x7038>
     fb8:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     fbc:	51010b49 	tstpl	r1, r9, asr #22
     fc0:	010b3201 	tsteq	fp, r1, lsl #4
     fc4:	007d0250 	rsbseq	r0, sp, r0, asr r2
     fc8:	8bdc0a00 	blhi	ff7037d0 <__user_program+0xff4037d0>
     fcc:	04470000 	strbeq	r0, [r7], #-0
     fd0:	033e0000 	teqeq	lr, #0
     fd4:	010b0000 	mrseq	r0, (UNDEF: 11)
     fd8:	14030550 	strne	r0, [r3], #-1360	; 0xfffffab0
     fdc:	000000a1 	andeq	r0, r0, r1, lsr #1
     fe0:	008bf80a 	addeq	pc, fp, sl, lsl #16
     fe4:	00044700 	andeq	r4, r4, r0, lsl #14
     fe8:	00035500 	andeq	r5, r3, r0, lsl #10
     fec:	50010b00 	andpl	r0, r1, r0, lsl #22
     ff0:	a1380305 	teqge	r8, r5, lsl #6
     ff4:	0a000000 	beq	ffc <__start-0x7004>
     ff8:	00008c14 	andeq	r8, r0, r4, lsl ip
     ffc:	00000468 	andeq	r0, r0, r8, ror #8
    1000:	00000374 	andeq	r0, r0, r4, ror r3
    1004:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
    1008:	010b4908 	tsteq	fp, r8, lsl #18
    100c:	0b310151 	bleq	c41558 <__user_program+0x941558>
    1010:	74025001 	strvc	r5, [r2], #-1
    1014:	240a0000 	strcs	r0, [sl], #-0
    1018:	8d00008c 	stchi	0, cr0, [r0, #-560]	; 0xfffffdd0
    101c:	93000004 	movwls	r0, #4
    1020:	0b000003 	bleq	1034 <__start-0x6fcc>
    1024:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
    1028:	51010b49 	tstpl	r1, r9, asr #22
    102c:	010b3201 	tsteq	fp, r1, lsl #4
    1030:	007d0250 	rsbseq	r0, sp, r0, asr r2
    1034:	8c400a00 	mcrrhi	10, 0, r0, r0, cr0
    1038:	04470000 	strbeq	r0, [r7], #-0
    103c:	03aa0000 			; <UNDEFINED> instruction: 0x03aa0000
    1040:	010b0000 	mrseq	r0, (UNDEF: 11)
    1044:	bc030550 	cfstr32lt	mvfx0, [r3], {80}	; 0x50
    1048:	000000a1 	andeq	r0, r0, r1, lsr #1
    104c:	008c580a 	addeq	r5, ip, sl, lsl #16
    1050:	00046800 	andeq	r6, r4, r0, lsl #16
    1054:	0003c900 	andeq	ip, r3, r0, lsl #18
    1058:	52010b00 	andpl	r0, r1, #0, 22
    105c:	0b490802 	bleq	124306c <__user_program+0xf4306c>
    1060:	31015101 	tstcc	r1, r1, lsl #2
    1064:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
    1068:	0a000074 	beq	1240 <__start-0x6dc0>
    106c:	00008c68 	andeq	r8, r0, r8, ror #24
    1070:	0000048d 	andeq	r0, r0, sp, lsl #9
    1074:	000003e9 	andeq	r0, r0, r9, ror #7
    1078:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
    107c:	010b4908 	tsteq	fp, r8, lsl #18
    1080:	00750251 	rsbseq	r0, r5, r1, asr r2
    1084:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
    1088:	0c00007d 	stceq	0, cr0, [r0], {125}	; 0x7d
    108c:	00008c84 	andeq	r8, r0, r4, lsl #25
    1090:	00000447 	andeq	r0, r0, r7, asr #8
    1094:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
    1098:	00a1cc03 	adceq	ip, r1, r3, lsl #24
    109c:	10000000 	andne	r0, r0, r0
    10a0:	0000020c 	andeq	r0, r0, ip, lsl #4
    10a4:	00539201 	subseq	r9, r3, r1, lsl #4
    10a8:	8c8c0000 	stchi	0, cr0, [ip], {0}
    10ac:	00500000 	subseq	r0, r0, r0
    10b0:	9c010000 	stcls	0, cr0, [r1], {-0}
    10b4:	00000447 	andeq	r0, r0, r7, asr #8
    10b8:	0003f806 	andeq	pc, r3, r6, lsl #16
    10bc:	41920100 	orrsmi	r0, r2, r0, lsl #2
    10c0:	27000000 	strcs	r0, [r0, -r0]
    10c4:	08000005 	stmdaeq	r0, {r0, r2}
    10c8:	000003c5 	andeq	r0, r0, r5, asr #7
    10cc:	00539401 	subseq	r9, r3, r1, lsl #8
    10d0:	05ac0000 	streq	r0, [ip, #0]!
    10d4:	cc110000 	ldcgt	0, cr0, [r1], {-0}
    10d8:	7e00008c 	cdpvc	0, 0, cr0, cr0, cr12, {4}
    10dc:	11000000 	mrsne	r0, (UNDEF: 0)
    10e0:	00008cd0 	ldrdeq	r8, [r0], -r0
    10e4:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    10e8:	01641200 	cmneq	r4, r0, lsl #4
    10ec:	13030000 	movwne	r0, #12288	; 0x3000
    10f0:	00000033 	andeq	r0, r0, r3, lsr r0
    10f4:	0000045d 	andeq	r0, r0, sp, asr r4
    10f8:	00045d13 	andeq	r5, r4, r3, lsl sp
    10fc:	15001400 	strne	r1, [r0, #-1024]	; 0xfffffc00
    1100:	00046304 	andeq	r6, r4, r4, lsl #6
    1104:	00251600 	eoreq	r1, r5, r0, lsl #12
    1108:	5c120000 	ldcpl	0, cr0, [r2], {-0}
    110c:	04000003 	streq	r0, [r0], #-3
    1110:	00004163 	andeq	r4, r0, r3, ror #2
    1114:	00048700 	andeq	r8, r4, r0, lsl #14
    1118:	04871300 	streq	r1, [r7], #768	; 0x300
    111c:	53130000 	tstpl	r3, #0
    1120:	13000000 	movwne	r0, #0
    1124:	00000041 	andeq	r0, r0, r1, asr #32
    1128:	41041500 	tstmi	r4, r0, lsl #10
    112c:	17000000 	strne	r0, [r0, -r0]
    1130:	00000347 	andeq	r0, r0, r7, asr #6
    1134:	00416c04 	subeq	r6, r1, r4, lsl #24
    1138:	87130000 	ldrhi	r0, [r3, -r0]
    113c:	13000004 	movwne	r0, #4
    1140:	00000053 	andeq	r0, r0, r3, asr r0
    1144:	00004113 	andeq	r4, r0, r3, lsl r1
    1148:	b2000000 	andlt	r0, r0, #0
    114c:	04000001 	streq	r0, [r0], #-1
    1150:	0006e800 	andeq	lr, r6, r0, lsl #16
    1154:	b4010400 	strlt	r0, [r1], #-1024	; 0xfffffc00
    1158:	01000001 	tsteq	r0, r1
    115c:	0000041b 	andeq	r0, r0, fp, lsl r4
    1160:	00000070 	andeq	r0, r0, r0, ror r0
    1164:	00008cdc 	ldrdeq	r8, [r0], -ip
    1168:	00000038 	andeq	r0, r0, r8, lsr r0
    116c:	000004fe 	strdeq	r0, [r0], -lr
    1170:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
    1174:	02000000 	andeq	r0, r0, #0
    1178:	01230502 			; <UNDEFINED> instruction: 0x01230502
    117c:	04030000 	streq	r0, [r3], #-0
    1180:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    1184:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    1188:	00000000 	andeq	r0, r0, r0
    118c:	59080102 	stmdbpl	r8, {r1, r8}
    1190:	02000000 	andeq	r0, r0, #0
    1194:	00fe0702 	rscseq	r0, lr, r2, lsl #14
    1198:	67040000 	strvs	r0, [r4, -r0]
    119c:	02000000 	andeq	r0, r0, #0
    11a0:	00005a1a 	andeq	r5, r0, sl, lsl sl
    11a4:	07040200 	streq	r0, [r4, -r0, lsl #4]
    11a8:	00000034 	andeq	r0, r0, r4, lsr r0
    11ac:	2a070802 	bcs	1c31bc <__end+0x961bc>
    11b0:	05000000 	streq	r0, [r0, #-0]
    11b4:	000002f5 	strdeq	r0, [r0], -r5
    11b8:	004f0401 	subeq	r0, pc, r1, lsl #8
    11bc:	84010000 	strhi	r0, [r1], #-0
    11c0:	06000000 	streq	r0, [r0], -r0
    11c4:	000002c1 	andeq	r0, r0, r1, asr #5
    11c8:	00840401 	addeq	r0, r4, r1, lsl #8
    11cc:	07000000 	streq	r0, [r0, -r0]
    11d0:	00008a04 	andeq	r8, r0, r4, lsl #20
    11d4:	004f0800 	subeq	r0, pc, r0, lsl #16
    11d8:	68090000 	stmdavs	r9, {}	; <UNPREDICTABLE>
    11dc:	dc000000 	stcle	0, cr0, [r0], {-0}
    11e0:	0800008c 	stmdaeq	r0, {r2, r3, r7}
    11e4:	01000000 	mrseq	r0, (UNDEF: 0)
    11e8:	0000ac9c 	muleq	r0, ip, ip
    11ec:	00780a00 	rsbseq	r0, r8, r0, lsl #20
    11f0:	06050000 	streq	r0, [r5], -r0
    11f4:	0b000000 	bleq	11fc <__start-0x6e04>
    11f8:	000002c7 	andeq	r0, r0, r7, asr #5
    11fc:	cf010801 	svcgt	0x00010801
    1200:	06000000 	streq	r0, [r0], -r0
    1204:	000002c1 	andeq	r0, r0, r1, asr #5
    1208:	00840801 	addeq	r0, r4, r1, lsl #16
    120c:	cc060000 	stcgt	0, cr0, [r6], {-0}
    1210:	01000003 	tsteq	r0, r3
    1214:	00004f08 	andeq	r4, r0, r8, lsl #30
    1218:	ac090000 	stcge	0, cr0, [r9], {-0}
    121c:	e4000000 	str	r0, [r0], #-0
    1220:	0800008c 	stmdaeq	r0, {r2, r3, r7}
    1224:	01000000 	mrseq	r0, (UNDEF: 0)
    1228:	0000f19c 	muleq	r0, ip, r1
    122c:	00b80c00 	adcseq	r0, r8, r0, lsl #24
    1230:	50010000 	andpl	r0, r1, r0
    1234:	0000c30c 	andeq	ip, r0, ip, lsl #6
    1238:	00510100 	subseq	r0, r1, r0, lsl #2
    123c:	00031c0d 	andeq	r1, r3, sp, lsl #24
    1240:	ec0c0100 	stfs	f0, [ip], {-0}
    1244:	1800008c 	stmdane	r0, {r2, r3, r7}
    1248:	01000000 	mrseq	r0, (UNDEF: 0)
    124c:	0001769c 	muleq	r1, ip, r6
    1250:	02c10e00 	sbceq	r0, r1, #0, 28
    1254:	0c010000 	stceq	0, cr0, [r1], {-0}
    1258:	00000084 	andeq	r0, r0, r4, lsl #1
    125c:	cc0f5001 	stcgt	0, cr5, [pc], {1}
    1260:	01000003 	tsteq	r0, r3
    1264:	00004f0c 	andeq	r4, r0, ip, lsl #30
    1268:	00062600 	andeq	r2, r6, r0, lsl #12
    126c:	04160f00 	ldreq	r0, [r6], #-3840	; 0xfffff100
    1270:	0c010000 	stceq	0, cr0, [r1], {-0}
    1274:	0000004f 	andeq	r0, r0, pc, asr #32
    1278:	00000647 	andeq	r0, r0, r7, asr #12
    127c:	01007610 	tsteq	r0, r0, lsl r6
    1280:	00004f0e 	andeq	r4, r0, lr, lsl #30
    1284:	11520100 	cmpne	r2, r0, lsl #2
    1288:	00000068 	andeq	r0, r0, r8, rrx
    128c:	00008cec 	andeq	r8, r0, ip, ror #25
    1290:	00000004 	andeq	r0, r0, r4
    1294:	01570e01 	cmpeq	r7, r1, lsl #28
    1298:	780c0000 	stmdavc	ip, {}	; <UNPREDICTABLE>
    129c:	01000000 	mrseq	r0, (UNDEF: 0)
    12a0:	ac120050 	ldcge	0, cr0, [r2], {80}	; 0x50
    12a4:	fc000000 	stc2	0, cr0, [r0], {-0}
    12a8:	0800008c 	stmdaeq	r0, {r2, r3, r7}
    12ac:	01000000 	mrseq	r0, (UNDEF: 0)
    12b0:	00c30c10 	sbceq	r0, r3, r0, lsl ip
    12b4:	52010000 	andpl	r0, r1, #0
    12b8:	0000b80c 	andeq	fp, r0, ip, lsl #16
    12bc:	00500100 	subseq	r0, r0, r0, lsl #2
    12c0:	03211300 			; <UNDEFINED> instruction: 0x03211300
    12c4:	13010000 	movwne	r0, #4096	; 0x1000
    12c8:	0000004f 	andeq	r0, r0, pc, asr #32
    12cc:	00008d04 	andeq	r8, r0, r4, lsl #26
    12d0:	00000010 	andeq	r0, r0, r0, lsl r0
    12d4:	76149c01 	ldrvc	r9, [r4], -r1, lsl #24
    12d8:	4f130100 	svcmi	0x00130100
    12dc:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    12e0:	0f000006 	svceq	0x00000006
    12e4:	000003cc 	andeq	r0, r0, ip, asr #7
    12e8:	004f1301 	subeq	r1, pc, r1, lsl #6
    12ec:	06890000 	streq	r0, [r9], r0
    12f0:	160e0000 	strne	r0, [lr], -r0
    12f4:	01000004 	tsteq	r0, r4
    12f8:	00004f13 	andeq	r4, r0, r3, lsl pc
    12fc:	00520100 	subseq	r0, r2, r0, lsl #2
    1300:	00006700 	andeq	r6, r0, r0, lsl #14
    1304:	18000200 	stmdane	r0, {r9}
    1308:	04000008 	streq	r0, [r0], #-8
    130c:	00057b01 	andeq	r7, r5, r1, lsl #22
    1310:	00800000 	addeq	r0, r0, r0
    1314:	00805400 	addeq	r5, r0, r0, lsl #8
    1318:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
    131c:	6b62696c 	blvs	189b8d4 <__user_program+0x159b8d4>
    1320:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    1324:	6f6f622f 	svcvs	0x006f622f
    1328:	00532e74 	subseq	r2, r3, r4, ror lr
    132c:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; 1278 <__start-0x6d88>
    1330:	7a7a2f65 	bvc	1e8d0cc <__user_program+0x1b8d0cc>
    1334:	6f72502f 	svcvs	0x0072502f
    1338:	7463656a 	strbtvc	r6, [r3], #-1386	; 0xfffffa96
    133c:	6d652f73 	stclvs	15, cr2, [r5, #-460]!	; 0xfffffe34
    1340:	5f646562 	svcpl	0x00646562
    1344:	3162616c 	cmncc	r2, ip, ror #2
    1348:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
    134c:	6f6a2d31 	svcvs	0x006a2d31
    1350:	72616e68 	rsbvc	r6, r1, #104, 28	; 0x680
    1354:	6c616573 	cfstr64vs	mvdx6, [r1], #-460	; 0xfffffe34
    1358:	646f632f 	strbtvs	r6, [pc], #-815	; 1360 <__start-0x6ca0>
    135c:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
    1360:	53412055 	movtpl	r2, #4181	; 0x1055
    1364:	322e3220 	eorcc	r3, lr, #32, 4
    1368:	80010036 	andhi	r0, r1, r6, lsr r0
    136c:	00000066 	andeq	r0, r0, r6, rrx
    1370:	082c0002 	stmdaeq	ip!, {r1}
    1374:	01040000 	mrseq	r0, (UNDEF: 4)
    1378:	000005d3 	ldrdeq	r0, [r0], -r3
    137c:	00008d14 	andeq	r8, r0, r4, lsl sp
    1380:	00008d58 	andeq	r8, r0, r8, asr sp
    1384:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
    1388:	2f6b6269 	svccs	0x006b6269
    138c:	2f637273 	svccs	0x00637273
    1390:	2e6d7261 	cdpcs	2, 6, cr7, cr13, cr1, {3}
    1394:	682f0053 	stmdavs	pc!, {r0, r1, r4, r6}	; <UNPREDICTABLE>
    1398:	2f656d6f 	svccs	0x00656d6f
    139c:	502f7a7a 	eorpl	r7, pc, sl, ror sl	; <UNPREDICTABLE>
    13a0:	656a6f72 	strbvs	r6, [sl, #-3954]!	; 0xfffff08e
    13a4:	2f737463 	svccs	0x00737463
    13a8:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
    13ac:	616c5f64 	cmnvs	ip, r4, ror #30
    13b0:	6c2f3162 	stfvss	f3, [pc], #-392	; 1230 <__start-0x6dd0>
    13b4:	2d316261 	lfmcs	f6, 4, [r1, #-388]!	; 0xfffffe7c
    13b8:	6e686f6a 	cdpvs	15, 6, cr6, cr8, cr10, {3}
    13bc:	65737261 	ldrbvs	r7, [r3, #-609]!	; 0xfffffd9f
    13c0:	632f6c61 			; <UNDEFINED> instruction: 0x632f6c61
    13c4:	0065646f 	rsbeq	r6, r5, pc, ror #8
    13c8:	20554e47 	subscs	r4, r5, r7, asr #28
    13cc:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    13d0:	0036322e 	eorseq	r3, r6, lr, lsr #4
    13d4:	00a68001 	adceq	r8, r6, r1
    13d8:	00020000 	andeq	r0, r2, r0
    13dc:	00000840 	andeq	r0, r0, r0, asr #16
    13e0:	06240104 	strteq	r0, [r4], -r4, lsl #2
    13e4:	8d580000 	ldclhi	0, cr0, [r8, #-0]
    13e8:	8d940000 	ldchi	0, cr0, [r4]
    13ec:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
    13f0:	2f2e2e2f 	svccs	0x002e2e2f
    13f4:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
    13f8:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 1238 <__start-0x6dc8>
    13fc:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1400:	6f632f63 	svcvs	0x00632f63
    1404:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    1408:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    140c:	6170622f 	cmnvs	r0, pc, lsr #4
    1410:	532e6962 			; <UNDEFINED> instruction: 0x532e6962
    1414:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    1418:	2f646c69 	svccs	0x00646c69
    141c:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    1420:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    1424:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1428:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    142c:	52442d69 	subpl	r2, r4, #6720	; 0x1a40
    1430:	414c6e52 	cmpmi	ip, r2, asr lr
    1434:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    1438:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    143c:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1440:	61652d65 	cmnvs	r5, r5, ror #26
    1444:	342d6962 	strtcc	r6, [sp], #-2402	; 0xfffff69e
    1448:	332e392e 			; <UNDEFINED> instruction: 0x332e392e
    144c:	6e76732b 	cdpvs	3, 7, cr7, cr6, cr11, {1}
    1450:	31313332 	teqcc	r1, r2, lsr r3
    1454:	622f3737 	eorvs	r3, pc, #14417920	; 0xdc0000
    1458:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    145c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1460:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1464:	61652d65 	cmnvs	r5, r5, ror #26
    1468:	6c2f6962 	stcvs	9, cr6, [pc], #-392	; 12e8 <__start-0x6d18>
    146c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1470:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
    1474:	53412055 	movtpl	r2, #4181	; 0x1055
    1478:	322e3220 	eorcc	r3, lr, #32, 4
    147c:	80010035 	andhi	r0, r1, r5, lsr r0
    1480:	00000160 	andeq	r0, r0, r0, ror #2
    1484:	08540004 	ldmdaeq	r4, {r2}^
    1488:	01040000 	mrseq	r0, (UNDEF: 4)
    148c:	000004de 	ldrdeq	r0, [r0], -lr
    1490:	0004b701 	andeq	fp, r4, r1, lsl #14
    1494:	00044400 	andeq	r4, r4, r0, lsl #8
    1498:	008d9400 	addeq	r9, sp, r0, lsl #8
    149c:	00008400 	andeq	r8, r0, r0, lsl #8
    14a0:	00068200 	andeq	r8, r6, r0, lsl #4
    14a4:	07080200 	streq	r0, [r8, -r0, lsl #4]
    14a8:	0000002a 	andeq	r0, r0, sl, lsr #32
    14ac:	00059803 	andeq	r9, r5, r3, lsl #16
    14b0:	a6230100 	strtge	r0, [r3], -r0, lsl #2
    14b4:	94000000 	strls	r0, [r0], #-0
    14b8:	4400008d 	strmi	r0, [r0], #-141	; 0xffffff73
    14bc:	01000000 	mrseq	r0, (UNDEF: 0)
    14c0:	0000a69c 	muleq	r0, ip, r6
    14c4:	00610400 	rsbeq	r0, r1, r0, lsl #8
    14c8:	00a62301 	adceq	r2, r6, r1, lsl #6
    14cc:	06aa0000 	strteq	r0, [sl], r0
    14d0:	62040000 	andvs	r0, r4, #0
    14d4:	a6240100 	strtge	r0, [r4], -r0, lsl #2
    14d8:	d2000000 	andle	r0, r0, #0
    14dc:	05000006 	streq	r0, [r0, #-6]
    14e0:	0000058e 	andeq	r0, r0, lr, lsl #11
    14e4:	00ad2501 	adceq	r2, sp, r1, lsl #10
    14e8:	91020000 	mrsls	r0, (UNDEF: 2)
    14ec:	05b70600 	ldreq	r0, [r7, #1536]!	; 0x600
    14f0:	27010000 	strcs	r0, [r1, -r0]
    14f4:	000000a6 	andeq	r0, r0, r6, lsr #1
    14f8:	04935006 	ldreq	r5, [r3], #6
    14fc:	07049351 	smlsdeq	r4, r1, r3, r9
    1500:	00008db0 			; <UNDEFINED> instruction: 0x00008db0
    1504:	00000133 	andeq	r0, r0, r3, lsr r1
    1508:	93520608 	cmpls	r2, #8, 12	; 0x800000
    150c:	04935304 	ldreq	r5, [r3], #772	; 0x304
    1510:	f503f305 			; <UNDEFINED> instruction: 0xf503f305
    1514:	06082502 	streq	r2, [r8], -r2, lsl #10
    1518:	51049350 	tstpl	r4, r0, asr r3
    151c:	f3050493 	vqshl.u8	d0, d3, d21
    1520:	2500f503 	strcs	pc, [r0, #-1283]	; 0xfffffafd
    1524:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1528:	00000005 	andeq	r0, r0, r5
    152c:	a6040900 	strge	r0, [r4], -r0, lsl #18
    1530:	03000000 	movweq	r0, #0
    1534:	000004a1 	andeq	r0, r0, r1, lsr #9
    1538:	00252f01 	eoreq	r2, r5, r1, lsl #30
    153c:	8dd80000 	ldclhi	0, cr0, [r8]
    1540:	00400000 	subeq	r0, r0, r0
    1544:	9c010000 	stcls	0, cr0, [r1], {-0}
    1548:	0000012d 	andeq	r0, r0, sp, lsr #2
    154c:	01006104 	tsteq	r0, r4, lsl #2
    1550:	0000252f 	andeq	r2, r0, pc, lsr #10
    1554:	0006fa00 	andeq	pc, r6, r0, lsl #20
    1558:	00620400 	rsbeq	r0, r2, r0, lsl #8
    155c:	00253001 	eoreq	r3, r5, r1
    1560:	07220000 	streq	r0, [r2, -r0]!
    1564:	8e050000 	cdphi	0, 0, cr0, cr5, cr0, {0}
    1568:	01000005 	tsteq	r0, r5
    156c:	00012d31 	andeq	r2, r1, r1, lsr sp
    1570:	00910200 	addseq	r0, r1, r0, lsl #4
    1574:	0005b706 	andeq	fp, r5, r6, lsl #14
    1578:	25330100 	ldrcs	r0, [r3, #-256]!	; 0xffffff00
    157c:	06000000 	streq	r0, [r0], -r0
    1580:	51049350 	tstpl	r4, r0, asr r3
    1584:	f4070493 	vst3.32	{d0-d2}, [r7 :64], r3
    1588:	4d00008d 	stcmi	0, cr0, [r0, #-564]	; 0xfffffdcc
    158c:	08000001 	stmdaeq	r0, {r0}
    1590:	04935206 	ldreq	r5, [r3], #518	; 0x206
    1594:	05049353 	streq	r9, [r4, #-851]	; 0xfffffcad
    1598:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
    159c:	50060825 	andpl	r0, r6, r5, lsr #16
    15a0:	93510493 	cmpls	r1, #-1828716544	; 0x93000000
    15a4:	03f30504 	mvnseq	r0, #4, 10	; 0x1000000
    15a8:	002500f5 	strdeq	r0, [r5], -r5	; <UNPREDICTABLE>
    15ac:	25040900 	strcs	r0, [r4, #-2304]	; 0xfffff700
    15b0:	0a000000 	beq	15b8 <__start-0x6a48>
    15b4:	0000043b 	andeq	r0, r0, fp, lsr r4
    15b8:	00a61901 	adceq	r1, r6, r1, lsl #18
    15bc:	014d0000 	mrseq	r0, (UNDEF: 77)
    15c0:	a60b0000 	strge	r0, [fp], -r0
    15c4:	0b000000 	bleq	15cc <__start-0x6a34>
    15c8:	000000a6 	andeq	r0, r0, r6, lsr #1
    15cc:	05ad0c00 	streq	r0, [sp, #3072]!	; 0xc00
    15d0:	1a010000 	bne	415d8 <__bss_end+0x355d8>
    15d4:	00000025 	andeq	r0, r0, r5, lsr #32
    15d8:	0000250b 	andeq	r2, r0, fp, lsl #10
    15dc:	00250b00 	eoreq	r0, r5, r0, lsl #22
    15e0:	00000000 	andeq	r0, r0, r0
    15e4:	000000aa 	andeq	r0, r0, sl, lsr #1
    15e8:	090b0002 	stmdbeq	fp, {r1}
    15ec:	01040000 	mrseq	r0, (UNDEF: 4)
    15f0:	000006e1 	andeq	r0, r0, r1, ror #13
    15f4:	00008e18 	andeq	r8, r0, r8, lsl lr
    15f8:	00008e1c 	andeq	r8, r0, ip, lsl lr
    15fc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1600:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1604:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    1608:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    160c:	2f636367 	svccs	0x00636367
    1610:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    1614:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
    1618:	6c2f6d72 	stcvs	13, cr6, [pc], #-456	; 1458 <__start-0x6ba8>
    161c:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
    1620:	73636e75 	cmnvc	r3, #1872	; 0x750
    1624:	2f00532e 	svccs	0x0000532e
    1628:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    162c:	63672f64 	cmnvs	r7, #100, 30	; 0x190
    1630:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    1634:	6f6e2d6d 	svcvs	0x006e2d6d
    1638:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    163c:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    1640:	6e525244 	cdpvs	2, 5, cr5, cr2, cr4, {2}
    1644:	672f414c 	strvs	r4, [pc, -ip, asr #2]!
    1648:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    164c:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1650:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1654:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1658:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
    165c:	732b332e 			; <UNDEFINED> instruction: 0x732b332e
    1660:	33326e76 	teqcc	r2, #1888	; 0x760
    1664:	37373131 			; <UNDEFINED> instruction: 0x37373131
    1668:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    166c:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
    1670:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1674:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1678:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    167c:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1680:	00636367 	rsbeq	r6, r3, r7, ror #6
    1684:	20554e47 	subscs	r4, r5, r7, asr #28
    1688:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    168c:	0035322e 	eorseq	r3, r5, lr, lsr #4
    1690:	02658001 	rsbeq	r8, r5, #1
    1694:	00040000 	andeq	r0, r4, r0
    1698:	0000091f 	andeq	r0, r0, pc, lsl r9
    169c:	06160104 	ldreq	r0, [r6], -r4, lsl #2
    16a0:	da010000 	ble	416a8 <__bss_end+0x356a8>
    16a4:	44000005 	strmi	r0, [r0], #-5
    16a8:	1c000004 	stcne	0, cr0, [r0], {4}
    16ac:	7800008e 	stmdavc	r0, {r1, r2, r3, r7}
    16b0:	3c000001 	stccc	0, cr0, [r0], {1}
    16b4:	02000007 	andeq	r0, r0, #7
    16b8:	002a0708 	eoreq	r0, sl, r8, lsl #14
    16bc:	04030000 	streq	r0, [r3], #-0
    16c0:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    16c4:	07040200 	streq	r0, [r4, -r0, lsl #4]
    16c8:	00000034 	andeq	r0, r0, r4, lsr r0
    16cc:	59080102 	stmdbpl	r8, {r1, r8}
    16d0:	02000000 	andeq	r0, r0, #0
    16d4:	00620801 	rsbeq	r0, r2, r1, lsl #16
    16d8:	04020000 	streq	r0, [r2], #-0
    16dc:	00002f07 	andeq	r2, r0, r7, lsl #30
    16e0:	07040200 	streq	r0, [r4, -r0, lsl #4]
    16e4:	00000282 	andeq	r0, r0, r2, lsl #5
    16e8:	5b060102 	blpl	181af8 <__end+0x54af8>
    16ec:	02000000 	andeq	r0, r0, #0
    16f0:	01230502 			; <UNDEFINED> instruction: 0x01230502
    16f4:	02020000 	andeq	r0, r2, #0
    16f8:	0000fe07 	andeq	pc, r0, r7, lsl #28
    16fc:	05d30400 	ldrbeq	r0, [r3, #1024]	; 0x400
    1700:	81020000 	mrshi	r0, (UNDEF: 2)
    1704:	0000002c 	andeq	r0, r0, ip, lsr #32
    1708:	0005d204 	andeq	sp, r5, r4, lsl #4
    170c:	33820200 	orrcc	r0, r2, #0, 4
    1710:	04000000 	streq	r0, [r0], #-0
    1714:	00000601 	andeq	r0, r0, r1, lsl #12
    1718:	008c8502 	addeq	r8, ip, r2, lsl #10
    171c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1720:	00000005 	andeq	r0, r0, r5
    1724:	06000400 	streq	r0, [r0], -r0, lsl #8
    1728:	86020000 	strhi	r0, [r2], -r0
    172c:	00000025 	andeq	r0, r0, r5, lsr #32
    1730:	10040402 	andne	r0, r4, r2, lsl #8
    1734:	02000006 	andeq	r0, r0, #6
    1738:	06080308 	streq	r0, [r8], -r8, lsl #6
    173c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1740:	0006db04 	andeq	sp, r6, r4, lsl #22
    1744:	03100200 	tsteq	r0, #0, 4
    1748:	000006d3 	ldrdeq	r0, [r0], -r3
    174c:	0006e205 	andeq	lr, r6, r5, lsl #4
    1750:	e3020800 	movw	r0, #10240	; 0x2800
    1754:	0000e201 	andeq	lr, r0, r1, lsl #4
    1758:	6f6c0600 	svcvs	0x006c0600
    175c:	e3020077 	movw	r0, #8311	; 0x2077
    1760:	00006b01 	andeq	r6, r0, r1, lsl #22
    1764:	c0070000 	andgt	r0, r7, r0
    1768:	02000005 	andeq	r0, r0, #5
    176c:	006b01e3 	rsbeq	r0, fp, r3, ror #3
    1770:	00040000 	andeq	r0, r4, r0
    1774:	ea020808 	b	8379c <__bss_end+0x7779c>
    1778:	00010101 	andeq	r0, r1, r1, lsl #2
    177c:	00730900 	rsbseq	r0, r3, r0, lsl #18
    1780:	ba01ec02 	blt	7c790 <__bss_end+0x70790>
    1784:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    1788:	02006c6c 	andeq	r6, r0, #108, 24	; 0x6c00
    178c:	008101ed 	addeq	r0, r1, sp, ror #3
    1790:	0a000000 	beq	1798 <__start-0x6868>
    1794:	000005f8 	strdeq	r0, [r0], -r8
    1798:	e201ee02 	and	lr, r1, #2, 28
    179c:	0b000000 	bleq	17a4 <__start-0x685c>
    17a0:	000005c5 	andeq	r0, r0, r5, asr #11
    17a4:	9303b001 	movwls	fp, #12289	; 0x3001
    17a8:	03000000 	movweq	r0, #0
    17ac:	00000188 	andeq	r0, r0, r8, lsl #3
    17b0:	01006e0c 	tsteq	r0, ip, lsl #28
    17b4:	009303b0 			; <UNDEFINED> instruction: 0x009303b0
    17b8:	640c0000 	strvs	r0, [ip], #-0
    17bc:	03b00100 	movseq	r0, #0, 2
    17c0:	00000093 	muleq	r0, r3, r0
    17c4:	0070720c 	rsbseq	r7, r0, ip, lsl #4
    17c8:	8803b001 	stmdahi	r3, {r0, ip, sp, pc}
    17cc:	0d000001 	stceq	0, cr0, [r0, #-4]
    17d0:	b2010071 	andlt	r0, r1, #113	; 0x71
    17d4:	00009303 	andeq	r9, r0, r3, lsl #6
    17d8:	00720d00 	rsbseq	r0, r2, r0, lsl #26
    17dc:	9303b201 	movwls	fp, #12801	; 0x3201
    17e0:	0d000000 	stceq	0, cr0, [r0, #-0]
    17e4:	b2010079 	andlt	r0, r1, #121	; 0x79
    17e8:	00009303 	andeq	r9, r0, r3, lsl #6
    17ec:	7a6c0d00 	bvc	1b04bf4 <__user_program+0x1804bf4>
    17f0:	b3010031 	movwlt	r0, #4145	; 0x1031
    17f4:	00007603 	andeq	r7, r0, r3, lsl #12
    17f8:	7a6c0d00 	bvc	1b04c00 <__user_program+0x1804c00>
    17fc:	b3010032 	movwlt	r0, #4146	; 0x1032
    1800:	00007603 	andeq	r7, r0, r3, lsl #12
    1804:	00690d00 	rsbeq	r0, r9, r0, lsl #26
    1808:	7603b301 	strvc	fp, [r3], -r1, lsl #6
    180c:	0d000000 	stceq	0, cr0, [r0, #-0]
    1810:	b301006b 	movwlt	r0, #4203	; 0x106b
    1814:	00007603 	andeq	r7, r0, r3, lsl #12
    1818:	040e0000 	streq	r0, [lr], #-0
    181c:	00000093 	muleq	r0, r3, r0
    1820:	00043b0f 	andeq	r3, r4, pc, lsl #22
    1824:	04cb0100 	strbeq	r0, [fp], #256	; 0x100
    1828:	00000081 	andeq	r0, r0, r1, lsl #1
    182c:	00008e1c 	andeq	r8, r0, ip, lsl lr
    1830:	00000178 	andeq	r0, r0, r8, ror r1
    1834:	75109c01 	ldrvc	r9, [r0, #-3073]	; 0xfffff3ff
    1838:	04cb0100 	strbeq	r0, [fp], #256	; 0x100
    183c:	00000081 	andeq	r0, r0, r1, lsl #1
    1840:	0000074a 	andeq	r0, r0, sl, asr #14
    1844:	01007610 	tsteq	r0, r0, lsl r6
    1848:	008104cb 	addeq	r0, r1, fp, asr #9
    184c:	07820000 	streq	r0, [r2, r0]
    1850:	63110000 	tstvs	r1, #0
    1854:	04cd0100 	strbeq	r0, [sp], #256	; 0x100
    1858:	0000006b 	andeq	r0, r0, fp, rrx
    185c:	000007ba 			; <UNDEFINED> instruction: 0x000007ba
    1860:	0075750d 	rsbseq	r7, r5, sp, lsl #10
    1864:	0104ce01 	tsteq	r4, r1, lsl #28
    1868:	0d000001 	stceq	0, cr0, [r0, #-4]
    186c:	01007676 	tsteq	r0, r6, ror r6
    1870:	010104cf 	smlabteq	r1, pc, r4, r0	; <UNPREDICTABLE>
    1874:	77110000 	ldrvc	r0, [r1, -r0]
    1878:	04d00100 	ldrbeq	r0, [r0], #256	; 0x100
    187c:	00000081 	andeq	r0, r0, r1, lsl #1
    1880:	000007f1 	strdeq	r0, [r0], -r1
    1884:	00010d12 	andeq	r0, r1, r2, lsl sp
    1888:	008e4400 	addeq	r4, lr, r0, lsl #8
    188c:	00012000 	andeq	r2, r1, r0
    1890:	04d90100 	ldrbeq	r0, [r9], #256	; 0x100
    1894:	00013213 	andeq	r3, r1, r3, lsl r2
    1898:	00082000 	andeq	r2, r8, r0
    189c:	01281300 			; <UNDEFINED> instruction: 0x01281300
    18a0:	08340000 	ldmdaeq	r4!, {}	; <UNPREDICTABLE>
    18a4:	1e130000 	cdpne	0, 1, cr0, cr3, cr0, {0}
    18a8:	4c000001 	stcmi	0, cr0, [r0], {1}
    18ac:	14000008 	strne	r0, [r0], #-8
    18b0:	00008e44 	andeq	r8, r0, r4, asr #28
    18b4:	00000120 	andeq	r0, r0, r0, lsr #2
    18b8:	00013d15 	andeq	r3, r1, r5, lsl sp
    18bc:	00086400 	andeq	r6, r8, r0, lsl #8
    18c0:	01471500 	cmpeq	r7, r0, lsl #10
    18c4:	08900000 	ldmeq	r0, {}	; <UNPREDICTABLE>
    18c8:	51150000 	tstpl	r5, r0
    18cc:	d8000001 	stmdale	r0, {r0}
    18d0:	15000008 	strne	r0, [r0, #-8]
    18d4:	0000015b 	andeq	r0, r0, fp, asr r1
    18d8:	00000900 	andeq	r0, r0, r0, lsl #18
    18dc:	00016715 	andeq	r6, r1, r5, lsl r7
    18e0:	00091e00 	andeq	r1, r9, r0, lsl #28
    18e4:	01731500 	cmneq	r3, r0, lsl #10
    18e8:	09310000 	ldmdbeq	r1!, {}	; <UNPREDICTABLE>
    18ec:	7d150000 	ldcvc	0, cr0, [r5, #-0]
    18f0:	74000001 	strvc	r0, [r0], #-1
    18f4:	00000009 	andeq	r0, r0, r9
    18f8:	c3000000 	movwgt	r0, #0
    18fc:	04000001 	streq	r0, [r0], #-1
    1900:	000a4200 	andeq	r4, sl, r0, lsl #4
    1904:	16010400 	strne	r0, [r1], -r0, lsl #8
    1908:	01000006 	tsteq	r0, r6
    190c:	000005da 	ldrdeq	r0, [r0], -sl
    1910:	00000444 	andeq	r0, r0, r4, asr #8
    1914:	00008f94 	muleq	r0, r4, pc	; <UNPREDICTABLE>
    1918:	00000120 	andeq	r0, r0, r0, lsr #2
    191c:	000007d4 	ldrdeq	r0, [r0], -r4
    1920:	2a070802 	bcs	1c3930 <__end+0x96930>
    1924:	02000000 	andeq	r0, r0, #0
    1928:	00340704 	eorseq	r0, r4, r4, lsl #14
    192c:	04030000 	streq	r0, [r3], #-0
    1930:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    1934:	08010200 	stmdaeq	r1, {r9}
    1938:	00000059 	andeq	r0, r0, r9, asr r0
    193c:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
    1940:	02000000 	andeq	r0, r0, #0
    1944:	002f0704 	eoreq	r0, pc, r4, lsl #14
    1948:	04020000 	streq	r0, [r2], #-0
    194c:	00028207 	andeq	r8, r2, r7, lsl #4
    1950:	06010200 	streq	r0, [r1], -r0, lsl #4
    1954:	0000005b 	andeq	r0, r0, fp, asr r0
    1958:	23050202 	movwcs	r0, #20994	; 0x5202
    195c:	02000001 	andeq	r0, r0, #1
    1960:	00fe0702 	rscseq	r0, lr, r2, lsl #14
    1964:	d2040000 	andle	r0, r4, #0
    1968:	02000005 	andeq	r0, r0, #5
    196c:	00002c82 	andeq	r2, r0, r2, lsl #25
    1970:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    1974:	00000000 	andeq	r0, r0, r0
    1978:	00060004 	andeq	r0, r6, r4
    197c:	25860200 	strcs	r0, [r6, #512]	; 0x200
    1980:	02000000 	andeq	r0, r0, #0
    1984:	06100404 	ldreq	r0, [r0], -r4, lsl #8
    1988:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    198c:	00060803 	andeq	r0, r6, r3, lsl #16
    1990:	04080200 	streq	r0, [r8], #-512	; 0xfffffe00
    1994:	000006db 	ldrdeq	r0, [r0], -fp
    1998:	d3031002 	movwle	r1, #12290	; 0x3002
    199c:	05000006 	streq	r0, [r0, #-6]
    19a0:	000005c5 	andeq	r0, r0, r5, asr #11
    19a4:	7d03b001 	stcvc	0, cr11, [r3, #-4]
    19a8:	03000000 	movweq	r0, #0
    19ac:	0000011f 	andeq	r0, r0, pc, lsl r1
    19b0:	01006e06 	tsteq	r0, r6, lsl #28
    19b4:	007d03b0 	ldrhteq	r0, [sp], #-48	; 0xffffffd0
    19b8:	64060000 	strvs	r0, [r6], #-0
    19bc:	03b00100 	movseq	r0, #0, 2
    19c0:	0000007d 	andeq	r0, r0, sp, ror r0
    19c4:	00707206 	rsbseq	r7, r0, r6, lsl #4
    19c8:	1f03b001 	svcne	0x0003b001
    19cc:	07000001 	streq	r0, [r0, -r1]
    19d0:	b2010071 	andlt	r0, r1, #113	; 0x71
    19d4:	00007d03 	andeq	r7, r0, r3, lsl #26
    19d8:	00720700 	rsbseq	r0, r2, r0, lsl #14
    19dc:	7d03b201 	sfmvc	f3, 1, [r3, #-4]
    19e0:	07000000 	streq	r0, [r0, -r0]
    19e4:	b2010079 	andlt	r0, r1, #121	; 0x79
    19e8:	00007d03 	andeq	r7, r0, r3, lsl #26
    19ec:	7a6c0700 	bvc	1b035f4 <__user_program+0x18035f4>
    19f0:	b3010031 	movwlt	r0, #4145	; 0x1031
    19f4:	00006b03 	andeq	r6, r0, r3, lsl #22
    19f8:	7a6c0700 	bvc	1b03600 <__user_program+0x1803600>
    19fc:	b3010032 	movwlt	r0, #4146	; 0x1032
    1a00:	00006b03 	andeq	r6, r0, r3, lsl #22
    1a04:	00690700 	rsbeq	r0, r9, r0, lsl #14
    1a08:	6b03b301 	blvs	ee614 <__bss_end+0xe2614>
    1a0c:	07000000 	streq	r0, [r0, -r0]
    1a10:	b301006b 	movwlt	r0, #4203	; 0x106b
    1a14:	00006b03 	andeq	r6, r0, r3, lsl #22
    1a18:	04080000 	streq	r0, [r8], #-0
    1a1c:	0000007d 	andeq	r0, r0, sp, ror r0
    1a20:	0005ad09 	andeq	sl, r5, r9, lsl #26
    1a24:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
    1a28:	0000007d 	andeq	r0, r0, sp, ror r0
    1a2c:	00008f94 	muleq	r0, r4, pc	; <UNPREDICTABLE>
    1a30:	00000120 	andeq	r0, r0, r0, lsr #2
    1a34:	6e0a9c01 	cdpvs	12, 0, cr9, cr10, cr1, {0}
    1a38:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
    1a3c:	0000007d 	andeq	r0, r0, sp, ror r0
    1a40:	00000992 	muleq	r0, r2, r9
    1a44:	0100640a 	tsteq	r0, sl, lsl #8
    1a48:	007d0506 	rsbseq	r0, sp, r6, lsl #10
    1a4c:	09ba0000 	ldmibeq	sl!, {}	; <UNPREDICTABLE>
    1a50:	a40b0000 	strge	r0, [fp], #-0
    1a54:	94000000 	strls	r0, [r0], #-0
    1a58:	3000008f 	andcc	r0, r0, pc, lsl #1
    1a5c:	01000000 	mrseq	r0, (UNDEF: 0)
    1a60:	c90c0508 	stmdbgt	ip, {r3, r8, sl}
    1a64:	00000000 	andeq	r0, r0, r0
    1a68:	0000bf0d 	andeq	fp, r0, sp, lsl #30
    1a6c:	0009e200 	andeq	lr, r9, r0, lsl #4
    1a70:	00b50d00 	adcseq	r0, r5, r0, lsl #26
    1a74:	09fa0000 	ldmibeq	sl!, {}^	; <UNPREDICTABLE>
    1a78:	300e0000 	andcc	r0, lr, r0
    1a7c:	0f000000 	svceq	0x00000000
    1a80:	000000d4 	ldrdeq	r0, [r0], -r4
    1a84:	00000a12 	andeq	r0, r0, r2, lsl sl
    1a88:	0000de0f 	andeq	sp, r0, pc, lsl #28
    1a8c:	000a5e00 	andeq	r5, sl, r0, lsl #28
    1a90:	00e80f00 	rsceq	r0, r8, r0, lsl #30
    1a94:	0abb0000 	beq	feec1a9c <__user_program+0xfebc1a9c>
    1a98:	f20f0000 	vhadd.s8	d0, d15, d0
    1a9c:	e3000000 	movw	r0, #0
    1aa0:	0f00000a 	svceq	0x0000000a
    1aa4:	000000fe 	strdeq	r0, [r0], -lr
    1aa8:	00000b01 	andeq	r0, r0, r1, lsl #22
    1aac:	00010a0f 	andeq	r0, r1, pc, lsl #20
    1ab0:	000b1400 	andeq	r1, fp, r0, lsl #8
    1ab4:	01140f00 	tsteq	r4, r0, lsl #30
    1ab8:	0b570000 	bleq	15c1ac0 <__user_program+0x12c1ac0>
    1abc:	00000000 	andeq	r0, r0, r0
    1ac0:	00aa0000 	adceq	r0, sl, r0
    1ac4:	00020000 	andeq	r0, r2, r0
    1ac8:	00000b09 	andeq	r0, r0, r9, lsl #22
    1acc:	08660104 	stmdaeq	r6!, {r2, r8}^
    1ad0:	90b40000 	adcsls	r0, r4, r0
    1ad4:	90dc0000 	sbcsls	r0, ip, r0
    1ad8:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
    1adc:	2f2e2e2f 	svccs	0x002e2e2f
    1ae0:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
    1ae4:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 1924 <__start-0x66dc>
    1ae8:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1aec:	6f632f63 	svcvs	0x00632f63
    1af0:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    1af4:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1af8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1afc:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
    1b00:	532e7363 			; <UNDEFINED> instruction: 0x532e7363
    1b04:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    1b08:	2f646c69 	svccs	0x00646c69
    1b0c:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    1b10:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    1b14:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1b18:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    1b1c:	52442d69 	subpl	r2, r4, #6720	; 0x1a40
    1b20:	414c6e52 	cmpmi	ip, r2, asr lr
    1b24:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    1b28:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    1b2c:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1b30:	61652d65 	cmnvs	r5, r5, ror #26
    1b34:	342d6962 	strtcc	r6, [sp], #-2402	; 0xfffff69e
    1b38:	332e392e 			; <UNDEFINED> instruction: 0x332e392e
    1b3c:	6e76732b 	cdpvs	3, 7, cr7, cr6, cr11, {1}
    1b40:	31313332 	teqcc	r1, r2, lsr r3
    1b44:	622f3737 	eorvs	r3, pc, #14417920	; 0xdc0000
    1b48:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    1b4c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1b50:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1b54:	61652d65 	cmnvs	r5, r5, ror #26
    1b58:	6c2f6962 	stcvs	9, cr6, [pc], #-392	; 19d8 <__start-0x6628>
    1b5c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1b60:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
    1b64:	53412055 	movtpl	r2, #4181	; 0x1055
    1b68:	322e3220 	eorcc	r3, lr, #32, 4
    1b6c:	80010035 	andhi	r0, r1, r5, lsr r0
    1b70:	000000aa 	andeq	r0, r0, sl, lsr #1
    1b74:	0b1d0002 	bleq	741b84 <__user_program+0x441b84>
    1b78:	01040000 	mrseq	r0, (UNDEF: 4)
    1b7c:	000008cb 	andeq	r0, r0, fp, asr #17
    1b80:	000090dc 	ldrdeq	r9, [r0], -ip
    1b84:	00009124 	andeq	r9, r0, r4, lsr #2
    1b88:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1b8c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1b90:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    1b94:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1b98:	2f636367 	svccs	0x00636367
    1b9c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    1ba0:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
    1ba4:	6c2f6d72 	stcvs	13, cr6, [pc], #-456	; 19e4 <__start-0x661c>
    1ba8:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
    1bac:	73636e75 	cmnvc	r3, #1872	; 0x750
    1bb0:	2f00532e 	svccs	0x0000532e
    1bb4:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1bb8:	63672f64 	cmnvs	r7, #100, 30	; 0x190
    1bbc:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    1bc0:	6f6e2d6d 	svcvs	0x006e2d6d
    1bc4:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1bc8:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    1bcc:	6e525244 	cdpvs	2, 5, cr5, cr2, cr4, {2}
    1bd0:	672f414c 	strvs	r4, [pc, -ip, asr #2]!
    1bd4:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    1bd8:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1bdc:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1be0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1be4:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
    1be8:	732b332e 			; <UNDEFINED> instruction: 0x732b332e
    1bec:	33326e76 	teqcc	r2, #1888	; 0x760
    1bf0:	37373131 			; <UNDEFINED> instruction: 0x37373131
    1bf4:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1bf8:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
    1bfc:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1c00:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1c04:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1c08:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1c0c:	00636367 	rsbeq	r6, r3, r7, ror #6
    1c10:	20554e47 	subscs	r4, r5, r7, asr #28
    1c14:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    1c18:	0035322e 	eorseq	r3, r5, lr, lsr #4
    1c1c:	Address 0x0000000000001c1c is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <__end+0x1930ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	00160400 	andseq	r0, r6, r0, lsl #8
  2c:	0b3a0e03 	bleq	e83840 <__user_program+0xb83840>
  30:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  34:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
  38:	03193f01 	tsteq	r9, #1, 30
  3c:	3b0b3a0e 	blcc	2ce87c <__end+0x1a187c>
  40:	1119270b 	tstne	r9, fp, lsl #14
  44:	40061201 	andmi	r1, r6, r1, lsl #4
  48:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
  4c:	00001301 	andeq	r1, r0, r1, lsl #6
  50:	03000506 	movweq	r0, #1286	; 0x506
  54:	3b0b3a08 	blcc	2ce87c <__end+0x1a187c>
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
  e4:	3b0b3a0e 	blcc	2ce924 <__end+0x1a1924>
  e8:	0013490b 	andseq	r4, r3, fp, lsl #18
  ec:	012e0500 			; <UNDEFINED> instruction: 0x012e0500
  f0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
  f4:	0b3b0b3a 	bleq	ec2de4 <__user_program+0xbc2de4>
  f8:	01111927 	tsteq	r1, r7, lsr #18
  fc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 100:	01194297 			; <UNDEFINED> instruction: 0x01194297
 104:	06000013 			; <UNDEFINED> instruction: 0x06000013
 108:	08030034 	stmdaeq	r3, {r2, r4, r5}
 10c:	0b3b0b3a 	bleq	ec2dfc <__user_program+0xbc2dfc>
 110:	17021349 	strne	r1, [r2, -r9, asr #6]
 114:	34070000 	strcc	r0, [r7], #-0
 118:	3a0e0300 	bcc	380d20 <__user_program+0x80d20>
 11c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 120:	00170213 	andseq	r0, r7, r3, lsl r2
 124:	82890800 	addhi	r0, r9, #0, 16
 128:	01110001 	tsteq	r1, r1
 12c:	00001331 	andeq	r1, r0, r1, lsr r3
 130:	01828909 	orreq	r8, r2, r9, lsl #18
 134:	31011101 	tstcc	r1, r1, lsl #2
 138:	00130113 	andseq	r0, r3, r3, lsl r1
 13c:	828a0a00 	addhi	r0, sl, #0, 20
 140:	18020001 	stmdane	r2, {r0}
 144:	00184291 	mulseq	r8, r1, r2
 148:	82890b00 	addhi	r0, r9, #0, 22
 14c:	01110101 	tsteq	r1, r1, lsl #2
 150:	00001331 	andeq	r1, r0, r1, lsr r3
 154:	3f002e0c 	svccc	0x00002e0c
 158:	3a0e0319 	bcc	380dc4 <__user_program+0x80dc4>
 15c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 160:	00193c19 	andseq	r3, r9, r9, lsl ip
 164:	012e0d00 			; <UNDEFINED> instruction: 0x012e0d00
 168:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 16c:	0b3b0b3a 	bleq	ec2e5c <__user_program+0xbc2e5c>
 170:	193c1927 	ldmdbne	ip!, {r0, r1, r2, r5, r8, fp, ip}
 174:	00001301 	andeq	r1, r0, r1, lsl #6
 178:	4900050e 	stmdbmi	r0, {r1, r2, r3, r8, sl}
 17c:	0f000013 	svceq	0x00000013
 180:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 184:	0b3a0e03 	bleq	e83998 <__user_program+0xb83998>
 188:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 18c:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 190:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
 194:	03193f01 	tsteq	r9, #1, 30
 198:	3b0b3a0e 	blcc	2ce9d8 <__end+0x1a19d8>
 19c:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 1a0:	01193c13 	tsteq	r9, r3, lsl ip
 1a4:	11000013 	tstne	r0, r3, lsl r0
 1a8:	00000018 	andeq	r0, r0, r8, lsl r0
 1ac:	0b000f12 	bleq	3dfc <__start-0x4204>
 1b0:	0013490b 	andseq	r4, r3, fp, lsl #18
 1b4:	00261300 	eoreq	r1, r6, r0, lsl #6
 1b8:	00001349 	andeq	r1, r0, r9, asr #6
 1bc:	3f012e14 	svccc	0x00012e14
 1c0:	3a0e0319 	bcc	380e2c <__user_program+0x80e2c>
 1c4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 1c8:	3c134919 	ldccc	9, cr4, [r3], {25}
 1cc:	00000019 	andeq	r0, r0, r9, lsl r0
 1d0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 1d4:	030b130e 	movweq	r1, #45838	; 0xb30e
 1d8:	110e1b0e 	tstne	lr, lr, lsl #22
 1dc:	10061201 	andne	r1, r6, r1, lsl #4
 1e0:	02000017 	andeq	r0, r0, #23
 1e4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 1e8:	0b3b0b3a 	bleq	ec2ed8 <__user_program+0xbc2ed8>
 1ec:	00001349 	andeq	r1, r0, r9, asr #6
 1f0:	0b002403 	bleq	9204 <__clzsi2+0x128>
 1f4:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 1f8:	0400000e 	streq	r0, [r0], #-14
 1fc:	0b0b0024 	bleq	2c0294 <__end+0x193294>
 200:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 204:	13050000 	movwne	r0, #20480	; 0x5000
 208:	0b0e0301 	bleq	380e14 <__user_program+0x80e14>
 20c:	3b0b3a0b 	blcc	2cea40 <__end+0x1a1a40>
 210:	0013010b 	andseq	r0, r3, fp, lsl #2
 214:	000d0600 	andeq	r0, sp, r0, lsl #12
 218:	13490e03 	movtne	r0, #40451	; 0x9e03
 21c:	19340b38 	ldmdbne	r4!, {r3, r4, r5, r8, r9, fp}
 220:	0f070000 	svceq	0x00070000
 224:	000b0b00 	andeq	r0, fp, r0, lsl #22
 228:	012e0800 			; <UNDEFINED> instruction: 0x012e0800
 22c:	0b3a0e03 	bleq	e83a40 <__user_program+0xb83a40>
 230:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 234:	06120111 			; <UNDEFINED> instruction: 0x06120111
 238:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 23c:	00130119 	andseq	r0, r3, r9, lsl r1
 240:	00050900 	andeq	r0, r5, r0, lsl #18
 244:	0b3a0e03 	bleq	e83a58 <__user_program+0xb83a58>
 248:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 24c:	00001702 	andeq	r1, r0, r2, lsl #14
 250:	0300050a 	movweq	r0, #1290	; 0x50a
 254:	3b0b3a08 	blcc	2cea7c <__end+0x1a1a7c>
 258:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 25c:	0b000017 	bleq	2c0 <__start-0x7d40>
 260:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 264:	0b3b0b3a 	bleq	ec2f54 <__user_program+0xbc2f54>
 268:	17021349 	strne	r1, [r2, -r9, asr #6]
 26c:	340c0000 	strcc	r0, [ip], #-0
 270:	3a080300 	bcc	200e78 <__end+0xd3e78>
 274:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 278:	00180213 	andseq	r0, r8, r3, lsl r2
 27c:	00340d00 	eorseq	r0, r4, r0, lsl #26
 280:	0b3a0803 	bleq	e82294 <__user_program+0xb82294>
 284:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 288:	00001702 	andeq	r1, r0, r2, lsl #14
 28c:	0182890e 	orreq	r8, r2, lr, lsl #18
 290:	31011100 	mrscc	r1, (UNDEF: 17)
 294:	0f000013 	svceq	0x00000013
 298:	0b0b000f 	bleq	2c02dc <__end+0x1932dc>
 29c:	00001349 	andeq	r1, r0, r9, asr #6
 2a0:	49010110 	stmdbmi	r1, {r4, r8}
 2a4:	00130113 	andseq	r0, r3, r3, lsl r1
 2a8:	00211100 	eoreq	r1, r1, r0, lsl #2
 2ac:	0b2f1349 	bleq	bc4fd8 <__user_program+0x8c4fd8>
 2b0:	2e120000 	cdpcs	0, 1, cr0, cr2, cr0, {0}
 2b4:	03193f01 	tsteq	r9, #1, 30
 2b8:	3b0b3a0e 	blcc	2ceaf8 <__end+0x1a1af8>
 2bc:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 2c0:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 2c4:	97184006 	ldrls	r4, [r8, -r6]
 2c8:	13011942 	movwne	r1, #6466	; 0x1942
 2cc:	18130000 	ldmdane	r3, {}	; <UNPREDICTABLE>
 2d0:	14000000 	strne	r0, [r0], #-0
 2d4:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 2d8:	0b3b0b3a 	bleq	ec2fc8 <__user_program+0xbc2fc8>
 2dc:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 2e0:	0b150000 	bleq	5402e8 <__user_program+0x2402e8>
 2e4:	01175501 	tsteq	r7, r1, lsl #10
 2e8:	16000013 			; <UNDEFINED> instruction: 0x16000013
 2ec:	01018289 	smlabbeq	r1, r9, r2, r8
 2f0:	13310111 	teqne	r1, #1073741828	; 0x40000004
 2f4:	8a170000 	bhi	5c02fc <__user_program+0x2c02fc>
 2f8:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
 2fc:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
 300:	0b180000 	bleq	600308 <__user_program+0x300308>
 304:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 308:	00130106 	andseq	r0, r3, r6, lsl #2
 30c:	82891900 	addhi	r1, r9, #0, 18
 310:	01110101 	tsteq	r1, r1, lsl #2
 314:	13011331 	movwne	r1, #4913	; 0x1331
 318:	261a0000 	ldrcs	r0, [sl], -r0
 31c:	00134900 	andseq	r4, r3, r0, lsl #18
 320:	012e1b00 			; <UNDEFINED> instruction: 0x012e1b00
 324:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 328:	0b3b0b3a 	bleq	ec3018 <__user_program+0xbc3018>
 32c:	193c1927 	ldmdbne	ip!, {r0, r1, r2, r5, r8, fp, ip}
 330:	051c0000 	ldreq	r0, [ip, #-0]
 334:	00134900 	andseq	r4, r3, r0, lsl #18
 338:	11010000 	mrsne	r0, (UNDEF: 1)
 33c:	130e2501 	movwne	r2, #58625	; 0xe501
 340:	1b0e030b 	blne	380f74 <__user_program+0x80f74>
 344:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 348:	00171006 	andseq	r1, r7, r6
 34c:	00240200 	eoreq	r0, r4, r0, lsl #4
 350:	0b3e0b0b 	bleq	f82f84 <__user_program+0xc82f84>
 354:	00000e03 	andeq	r0, r0, r3, lsl #28
 358:	0b002403 	bleq	936c <__clzsi2+0x290>
 35c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 360:	04000008 	streq	r0, [r0], #-8
 364:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 368:	0b3b0b3a 	bleq	ec3058 <__user_program+0xbc3058>
 36c:	00001349 	andeq	r1, r0, r9, asr #6
 370:	3f012e05 	svccc	0x00012e05
 374:	3a0e0319 	bcc	380fe0 <__user_program+0x80fe0>
 378:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 37c:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 380:	97184006 	ldrls	r4, [r8, -r6]
 384:	13011942 	movwne	r1, #6466	; 0x1942
 388:	89060000 	stmdbhi	r6, {}	; <UNPREDICTABLE>
 38c:	11010182 	smlabbne	r1, r2, r1, r0
 390:	01133101 	tsteq	r3, r1, lsl #2
 394:	07000013 	smladeq	r0, r3, r0, r0
 398:	0001828a 	andeq	r8, r1, sl, lsl #5
 39c:	42911802 	addsmi	r1, r1, #131072	; 0x20000
 3a0:	08000018 	stmdaeq	r0, {r3, r4}
 3a4:	01018289 	smlabbeq	r1, r9, r2, r8
 3a8:	13310111 	teqne	r1, #1073741828	; 0x40000004
 3ac:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 3b0:	03193f00 	tsteq	r9, #0, 30
 3b4:	3b0b3a0e 	blcc	2cebf4 <__end+0x1a1bf4>
 3b8:	1119270b 	tstne	r9, fp, lsl #14
 3bc:	40061201 	andmi	r1, r6, r1, lsl #4
 3c0:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 3c4:	050a0000 	streq	r0, [sl, #-0]
 3c8:	3a0e0300 	bcc	380fd0 <__user_program+0x80fd0>
 3cc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3d0:	00180213 	andseq	r0, r8, r3, lsl r2
 3d4:	012e0b00 			; <UNDEFINED> instruction: 0x012e0b00
 3d8:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 3dc:	0b3b0b3a 	bleq	ec30cc <__user_program+0xbc30cc>
 3e0:	13491927 	movtne	r1, #39207	; 0x9927
 3e4:	06120111 			; <UNDEFINED> instruction: 0x06120111
 3e8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 3ec:	00130119 	andseq	r0, r3, r9, lsl r1
 3f0:	00340c00 	eorseq	r0, r4, r0, lsl #24
 3f4:	0b3a0e03 	bleq	e83c08 <__user_program+0xb83c08>
 3f8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 3fc:	00001702 	andeq	r1, r0, r2, lsl #14
 400:	3f012e0d 	svccc	0x00012e0d
 404:	3a0e0319 	bcc	381070 <__user_program+0x81070>
 408:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 40c:	01193c19 	tsteq	r9, r9, lsl ip
 410:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 414:	13490005 	movtne	r0, #36869	; 0x9005
 418:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
 41c:	03193f01 	tsteq	r9, #1, 30
 420:	3b0b3a0e 	blcc	2cec60 <__end+0x1a1c60>
 424:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 428:	01193c13 	tsteq	r9, r3, lsl ip
 42c:	10000013 	andne	r0, r0, r3, lsl r0
 430:	00000018 	andeq	r0, r0, r8, lsl r0
 434:	0b000f11 	bleq	4080 <__start-0x3f80>
 438:	0013490b 	andseq	r4, r3, fp, lsl #18
 43c:	00261200 	eoreq	r1, r6, r0, lsl #4
 440:	00001349 	andeq	r1, r0, r9, asr #6
 444:	01110100 	tsteq	r1, r0, lsl #2
 448:	0b130e25 	bleq	4c3ce4 <__user_program+0x1c3ce4>
 44c:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 450:	06120111 			; <UNDEFINED> instruction: 0x06120111
 454:	00001710 	andeq	r1, r0, r0, lsl r7
 458:	0b002402 	bleq	9468 <__clzsi2+0x38c>
 45c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 460:	0300000e 	movweq	r0, #14
 464:	0b0b0024 	bleq	2c04fc <__end+0x1934fc>
 468:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 46c:	16040000 	strne	r0, [r4], -r0
 470:	3a0e0300 	bcc	381078 <__user_program+0x81078>
 474:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 478:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 47c:	0b0b0104 	bleq	2c0894 <__end+0x193894>
 480:	0b3b0b3a 	bleq	ec3170 <__user_program+0xbc3170>
 484:	00001301 	andeq	r1, r0, r1, lsl #6
 488:	03002806 	movweq	r2, #2054	; 0x806
 48c:	000d1c0e 	andeq	r1, sp, lr, lsl #24
 490:	012e0700 			; <UNDEFINED> instruction: 0x012e0700
 494:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 498:	0b3b0b3a 	bleq	ec3188 <__user_program+0xbc3188>
 49c:	01111927 	tsteq	r1, r7, lsr #18
 4a0:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 4a4:	01194297 			; <UNDEFINED> instruction: 0x01194297
 4a8:	08000013 	stmdaeq	r0, {r0, r1, r4}
 4ac:	08030005 	stmdaeq	r3, {r0, r2}
 4b0:	0b3b0b3a 	bleq	ec31a0 <__user_program+0xbc31a0>
 4b4:	17021349 	strne	r1, [r2, -r9, asr #6]
 4b8:	89090000 	stmdbhi	r9, {}	; <UNPREDICTABLE>
 4bc:	11010182 	smlabbne	r1, r2, r1, r0
 4c0:	01133101 	tsteq	r3, r1, lsl #2
 4c4:	0a000013 	beq	518 <__start-0x7ae8>
 4c8:	0001828a 	andeq	r8, r1, sl, lsl #5
 4cc:	42911802 	addsmi	r1, r1, #131072	; 0x20000
 4d0:	0b000018 	bleq	538 <__start-0x7ac8>
 4d4:	01018289 	smlabbeq	r1, r9, r2, r8
 4d8:	13310111 	teqne	r1, #1073741828	; 0x40000004
 4dc:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 4e0:	03193f01 	tsteq	r9, #1, 30
 4e4:	3b0b3a0e 	blcc	2ced24 <__end+0x1a1d24>
 4e8:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 4ec:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 4f0:	97184006 	ldrls	r4, [r8, -r6]
 4f4:	13011942 	movwne	r1, #6466	; 0x1942
 4f8:	050d0000 	streq	r0, [sp, #-0]
 4fc:	3a0e0300 	bcc	381104 <__user_program+0x81104>
 500:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 504:	00170213 	andseq	r0, r7, r3, lsl r2
 508:	00340e00 	eorseq	r0, r4, r0, lsl #28
 50c:	0b3a0e03 	bleq	e83d20 <__user_program+0xb83d20>
 510:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 514:	0000061c 	andeq	r0, r0, ip, lsl r6
 518:	0300340f 	movweq	r3, #1039	; 0x40f
 51c:	3b0b3a0e 	blcc	2ced5c <__end+0x1a1d5c>
 520:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 524:	10000017 	andne	r0, r0, r7, lsl r0
 528:	08030034 	stmdaeq	r3, {r2, r4, r5}
 52c:	0b3b0b3a 	bleq	ec321c <__user_program+0xbc321c>
 530:	17021349 	strne	r1, [r2, -r9, asr #6]
 534:	89110000 	ldmdbhi	r1, {}	; <UNPREDICTABLE>
 538:	11000182 	smlabbne	r0, r2, r1, r0
 53c:	00133101 	andseq	r3, r3, r1, lsl #2
 540:	000f1200 	andeq	r1, pc, r0, lsl #4
 544:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 548:	35130000 	ldrcc	r0, [r3, #-0]
 54c:	00134900 	andseq	r4, r3, r0, lsl #18
 550:	012e1400 			; <UNDEFINED> instruction: 0x012e1400
 554:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 558:	0b3b0b3a 	bleq	ec3248 <__user_program+0xbc3248>
 55c:	193c1927 	ldmdbne	ip!, {r0, r1, r2, r5, r8, fp, ip}
 560:	00001301 	andeq	r1, r0, r1, lsl #6
 564:	49000515 	stmdbmi	r0, {r0, r2, r4, r8, sl}
 568:	16000013 			; <UNDEFINED> instruction: 0x16000013
 56c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 570:	0b3a0e03 	bleq	e83d84 <__user_program+0xb83d84>
 574:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 578:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 57c:	00001301 	andeq	r1, r0, r1, lsl #6
 580:	00001817 	andeq	r1, r0, r7, lsl r8
 584:	00261800 	eoreq	r1, r6, r0, lsl #16
 588:	00001349 	andeq	r1, r0, r9, asr #6
 58c:	3f012e19 	svccc	0x00012e19
 590:	3a0e0319 	bcc	3811fc <__user_program+0x811fc>
 594:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 598:	3c134919 	ldccc	9, cr4, [r3], {25}
 59c:	00000019 	andeq	r0, r0, r9, lsl r0
 5a0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 5a4:	030b130e 	movweq	r1, #45838	; 0xb30e
 5a8:	110e1b0e 	tstne	lr, lr, lsl #22
 5ac:	10061201 	andne	r1, r6, r1, lsl #4
 5b0:	02000017 	andeq	r0, r0, #23
 5b4:	0b0b0024 	bleq	2c064c <__end+0x19364c>
 5b8:	0e030b3e 	vmoveq.16	d3[0], r0
 5bc:	24030000 	strcs	r0, [r3], #-0
 5c0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 5c4:	0008030b 	andeq	r0, r8, fp, lsl #6
 5c8:	00160400 	andseq	r0, r6, r0, lsl #8
 5cc:	0b3a0e03 	bleq	e83de0 <__user_program+0xb83de0>
 5d0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 5d4:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 5d8:	03193f01 	tsteq	r9, #1, 30
 5dc:	3b0b3a0e 	blcc	2cee1c <__end+0x1a1e1c>
 5e0:	1119270b 	tstne	r9, fp, lsl #14
 5e4:	40061201 	andmi	r1, r6, r1, lsl #4
 5e8:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 5ec:	00001301 	andeq	r1, r0, r1, lsl #6
 5f0:	03000506 	movweq	r0, #1286	; 0x506
 5f4:	3b0b3a0e 	blcc	2cee34 <__end+0x1a1e34>
 5f8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 5fc:	07000017 	smladeq	r0, r7, r0, r0
 600:	08030034 	stmdaeq	r3, {r2, r4, r5}
 604:	0b3b0b3a 	bleq	ec32f4 <__user_program+0xbc32f4>
 608:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 60c:	34080000 	strcc	r0, [r8], #-0
 610:	3a0e0300 	bcc	381218 <__user_program+0x81218>
 614:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 618:	00170213 	andseq	r0, r7, r3, lsl r2
 61c:	00340900 	eorseq	r0, r4, r0, lsl #18
 620:	0b3a0e03 	bleq	e83e34 <__user_program+0xb83e34>
 624:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 628:	00001802 	andeq	r1, r0, r2, lsl #16
 62c:	0182890a 	orreq	r8, r2, sl, lsl #18
 630:	31011101 	tstcc	r1, r1, lsl #2
 634:	00130113 	andseq	r0, r3, r3, lsl r1
 638:	828a0b00 	addhi	r0, sl, #0, 22
 63c:	18020001 	stmdane	r2, {r0}
 640:	00184291 	mulseq	r8, r1, r2
 644:	82890c00 	addhi	r0, r9, #0, 24
 648:	01110101 	tsteq	r1, r1, lsl #2
 64c:	00001331 	andeq	r1, r0, r1, lsr r3
 650:	4901010d 	stmdbmi	r1, {r0, r2, r3, r8}
 654:	00130113 	andseq	r0, r3, r3, lsl r1
 658:	00210e00 	eoreq	r0, r1, r0, lsl #28
 65c:	0b2f1349 	bleq	bc5388 <__user_program+0x8c5388>
 660:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
 664:	03193f01 	tsteq	r9, #1, 30
 668:	3b0b3a0e 	blcc	2ceea8 <__end+0x1a1ea8>
 66c:	1113490b 	tstne	r3, fp, lsl #18
 670:	40061201 	andmi	r1, r6, r1, lsl #4
 674:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 678:	00001301 	andeq	r1, r0, r1, lsl #6
 67c:	3f012e10 	svccc	0x00012e10
 680:	3a0e0319 	bcc	3812ec <__user_program+0x812ec>
 684:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 688:	11134919 	tstne	r3, r9, lsl r9
 68c:	40061201 	andmi	r1, r6, r1, lsl #4
 690:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 694:	00001301 	andeq	r1, r0, r1, lsl #6
 698:	01828911 	orreq	r8, r2, r1, lsl r9
 69c:	31011100 	mrscc	r1, (UNDEF: 17)
 6a0:	12000013 	andne	r0, r0, #19
 6a4:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 6a8:	0b3a0e03 	bleq	e83ebc <__user_program+0xb83ebc>
 6ac:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 6b0:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 6b4:	00001301 	andeq	r1, r0, r1, lsl #6
 6b8:	49000513 	stmdbmi	r0, {r0, r1, r4, r8, sl}
 6bc:	14000013 	strne	r0, [r0], #-19	; 0xffffffed
 6c0:	00000018 	andeq	r0, r0, r8, lsl r0
 6c4:	0b000f15 	bleq	4320 <__start-0x3ce0>
 6c8:	0013490b 	andseq	r4, r3, fp, lsl #18
 6cc:	00261600 	eoreq	r1, r6, r0, lsl #12
 6d0:	00001349 	andeq	r1, r0, r9, asr #6
 6d4:	3f012e17 	svccc	0x00012e17
 6d8:	3a0e0319 	bcc	381344 <__user_program+0x81344>
 6dc:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 6e0:	3c134919 	ldccc	9, cr4, [r3], {25}
 6e4:	00000019 	andeq	r0, r0, r9, lsl r0
 6e8:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 6ec:	030b130e 	movweq	r1, #45838	; 0xb30e
 6f0:	110e1b0e 	tstne	lr, lr, lsl #22
 6f4:	10061201 	andne	r1, r6, r1, lsl #4
 6f8:	02000017 	andeq	r0, r0, #23
 6fc:	0b0b0024 	bleq	2c0794 <__end+0x193794>
 700:	0e030b3e 	vmoveq.16	d3[0], r0
 704:	24030000 	strcs	r0, [r3], #-0
 708:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 70c:	0008030b 	andeq	r0, r8, fp, lsl #6
 710:	00160400 	andseq	r0, r6, r0, lsl #8
 714:	0b3a0e03 	bleq	e83f28 <__user_program+0xb83f28>
 718:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 71c:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 720:	03193f01 	tsteq	r9, #1, 30
 724:	3b0b3a0e 	blcc	2cef64 <__end+0x1a1f64>
 728:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 72c:	010b2013 	tsteq	fp, r3, lsl r0
 730:	06000013 			; <UNDEFINED> instruction: 0x06000013
 734:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 738:	0b3b0b3a 	bleq	ec3428 <__user_program+0xbc3428>
 73c:	00001349 	andeq	r1, r0, r9, asr #6
 740:	0b000f07 	bleq	4364 <__start-0x3c9c>
 744:	0013490b 	andseq	r4, r3, fp, lsl #18
 748:	00350800 	eorseq	r0, r5, r0, lsl #16
 74c:	00001349 	andeq	r1, r0, r9, asr #6
 750:	31012e09 	tstcc	r1, r9, lsl #28
 754:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 758:	97184006 	ldrls	r4, [r8, -r6]
 75c:	13011942 	movwne	r1, #6466	; 0x1942
 760:	050a0000 	streq	r0, [sl, #-0]
 764:	02133100 	andseq	r3, r3, #0, 2
 768:	0b000017 	bleq	7cc <__start-0x7834>
 76c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 770:	0b3a0e03 	bleq	e83f84 <__user_program+0xb83f84>
 774:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 778:	13010b20 	movwne	r0, #6944	; 0x1b20
 77c:	050c0000 	streq	r0, [ip, #-0]
 780:	02133100 	andseq	r3, r3, #0, 2
 784:	0d000018 	stceq	0, cr0, [r0, #-96]	; 0xffffffa0
 788:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 78c:	0b3a0e03 	bleq	e83fa0 <__user_program+0xb83fa0>
 790:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 794:	06120111 			; <UNDEFINED> instruction: 0x06120111
 798:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 79c:	00130119 	andseq	r0, r3, r9, lsl r1
 7a0:	00050e00 	andeq	r0, r5, r0, lsl #28
 7a4:	0b3a0e03 	bleq	e83fb8 <__user_program+0xb83fb8>
 7a8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 7ac:	00001802 	andeq	r1, r0, r2, lsl #16
 7b0:	0300050f 	movweq	r0, #1295	; 0x50f
 7b4:	3b0b3a0e 	blcc	2ceff4 <__end+0x1a1ff4>
 7b8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 7bc:	10000017 	andne	r0, r0, r7, lsl r0
 7c0:	08030034 	stmdaeq	r3, {r2, r4, r5}
 7c4:	0b3b0b3a 	bleq	ec34b4 <__user_program+0xbc34b4>
 7c8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 7cc:	1d110000 	ldcne	0, cr0, [r1, #-0]
 7d0:	11133101 	tstne	r3, r1, lsl #2
 7d4:	58061201 	stmdapl	r6, {r0, r9, ip}
 7d8:	010b590b 	tsteq	fp, fp, lsl #18
 7dc:	12000013 	andne	r0, r0, #19
 7e0:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 7e4:	06120111 			; <UNDEFINED> instruction: 0x06120111
 7e8:	0b590b58 	bleq	1643550 <__user_program+0x1343550>
 7ec:	2e130000 	cdpcs	0, 1, cr0, cr3, cr0, {0}
 7f0:	03193f01 	tsteq	r9, #1, 30
 7f4:	3b0b3a0e 	blcc	2cf034 <__end+0x1a2034>
 7f8:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 7fc:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 800:	97184006 	ldrls	r4, [r8, -r6]
 804:	00001942 	andeq	r1, r0, r2, asr #18
 808:	03000514 	movweq	r0, #1300	; 0x514
 80c:	3b0b3a08 	blcc	2cf034 <__end+0x1a2034>
 810:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 814:	00000017 	andeq	r0, r0, r7, lsl r0
 818:	10001101 	andne	r1, r0, r1, lsl #2
 81c:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 820:	1b080301 	blne	20142c <__end+0xd442c>
 824:	13082508 	movwne	r2, #34056	; 0x8508
 828:	00000005 	andeq	r0, r0, r5
 82c:	10001101 	andne	r1, r0, r1, lsl #2
 830:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 834:	1b080301 	blne	201440 <__end+0xd4440>
 838:	13082508 	movwne	r2, #34056	; 0x8508
 83c:	00000005 	andeq	r0, r0, r5
 840:	10001101 	andne	r1, r0, r1, lsl #2
 844:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 848:	1b080301 	blne	201454 <__end+0xd4454>
 84c:	13082508 	movwne	r2, #34056	; 0x8508
 850:	00000005 	andeq	r0, r0, r5
 854:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 858:	030b130e 	movweq	r1, #45838	; 0xb30e
 85c:	110e1b0e 	tstne	lr, lr, lsl #22
 860:	10061201 	andne	r1, r6, r1, lsl #4
 864:	02000017 	andeq	r0, r0, #23
 868:	0b0b0024 	bleq	2c0900 <__end+0x193900>
 86c:	0e030b3e 	vmoveq.16	d3[0], r0
 870:	2e030000 	cdpcs	0, 0, cr0, cr3, cr0, {0}
 874:	03193f01 	tsteq	r9, #1, 30
 878:	3b0b3a0e 	blcc	2cf0b8 <__end+0x1a20b8>
 87c:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 880:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 884:	97184006 	ldrls	r4, [r8, -r6]
 888:	13011942 	movwne	r1, #6466	; 0x1942
 88c:	05040000 	streq	r0, [r4, #-0]
 890:	3a080300 	bcc	201498 <__end+0xd4498>
 894:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 898:	00170213 	andseq	r0, r7, r3, lsl r2
 89c:	00050500 	andeq	r0, r5, r0, lsl #10
 8a0:	0b3a0e03 	bleq	e840b4 <__user_program+0xb840b4>
 8a4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 8a8:	00001802 	andeq	r1, r0, r2, lsl #16
 8ac:	03003406 	movweq	r3, #1030	; 0x406
 8b0:	3b0b3a0e 	blcc	2cf0f0 <__end+0x1a20f0>
 8b4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 8b8:	07000018 	smladeq	r0, r8, r0, r0
 8bc:	01018289 	smlabbeq	r1, r9, r2, r8
 8c0:	13310111 	teqne	r1, #1073741828	; 0x40000004
 8c4:	8a080000 	bhi	2008cc <__end+0xd38cc>
 8c8:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
 8cc:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
 8d0:	0f090000 	svceq	0x00090000
 8d4:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 8d8:	0a000013 	beq	92c <__start-0x76d4>
 8dc:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 8e0:	0b3a0e03 	bleq	e840f4 <__user_program+0xb840f4>
 8e4:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 8e8:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 8ec:	00001301 	andeq	r1, r0, r1, lsl #6
 8f0:	4900050b 	stmdbmi	r0, {r0, r1, r3, r8, sl}
 8f4:	0c000013 	stceq	0, cr0, [r0], {19}
 8f8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 8fc:	0b3a0e03 	bleq	e84110 <__user_program+0xb84110>
 900:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 904:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 908:	01000000 	mrseq	r0, (UNDEF: 0)
 90c:	06100011 			; <UNDEFINED> instruction: 0x06100011
 910:	01120111 	tsteq	r2, r1, lsl r1
 914:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 918:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 91c:	01000000 	mrseq	r0, (UNDEF: 0)
 920:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 924:	0e030b13 	vmoveq.32	d3[0], r0
 928:	01110e1b 	tsteq	r1, fp, lsl lr
 92c:	17100612 			; <UNDEFINED> instruction: 0x17100612
 930:	24020000 	strcs	r0, [r2], #-0
 934:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 938:	000e030b 	andeq	r0, lr, fp, lsl #6
 93c:	00240300 	eoreq	r0, r4, r0, lsl #6
 940:	0b3e0b0b 	bleq	f83574 <__user_program+0xc83574>
 944:	00000803 	andeq	r0, r0, r3, lsl #16
 948:	03001604 	movweq	r1, #1540	; 0x604
 94c:	3b0b3a0e 	blcc	2cf18c <__end+0x1a218c>
 950:	0013490b 	andseq	r4, r3, fp, lsl #18
 954:	01130500 	tsteq	r3, r0, lsl #10
 958:	0b0b0e03 	bleq	2c416c <__end+0x19716c>
 95c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 960:	00001301 	andeq	r1, r0, r1, lsl #6
 964:	03000d06 	movweq	r0, #3334	; 0xd06
 968:	3b0b3a08 	blcc	2cf190 <__end+0x1a2190>
 96c:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 970:	0700000b 	streq	r0, [r0, -fp]
 974:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 978:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 97c:	0b381349 	bleq	e056a8 <__user_program+0xb056a8>
 980:	17080000 	strne	r0, [r8, -r0]
 984:	3a0b0b01 	bcc	2c3590 <__end+0x196590>
 988:	01053b0b 	tsteq	r5, fp, lsl #22
 98c:	09000013 	stmdbeq	r0, {r0, r1, r4}
 990:	0803000d 	stmdaeq	r3, {r0, r2, r3}
 994:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 998:	00001349 	andeq	r1, r0, r9, asr #6
 99c:	0300160a 	movweq	r1, #1546	; 0x60a
 9a0:	3b0b3a0e 	blcc	2cf1e0 <__end+0x1a21e0>
 9a4:	00134905 	andseq	r4, r3, r5, lsl #18
 9a8:	012e0b00 			; <UNDEFINED> instruction: 0x012e0b00
 9ac:	0b3a0e03 	bleq	e841c0 <__user_program+0xb841c0>
 9b0:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
 9b4:	0b201349 	bleq	8056e0 <__user_program+0x5056e0>
 9b8:	00001301 	andeq	r1, r0, r1, lsl #6
 9bc:	0300050c 	movweq	r0, #1292	; 0x50c
 9c0:	3b0b3a08 	blcc	2cf1e8 <__end+0x1a21e8>
 9c4:	00134905 	andseq	r4, r3, r5, lsl #18
 9c8:	00340d00 	eorseq	r0, r4, r0, lsl #26
 9cc:	0b3a0803 	bleq	e829e0 <__user_program+0xb829e0>
 9d0:	1349053b 	movtne	r0, #38203	; 0x953b
 9d4:	0f0e0000 	svceq	0x000e0000
 9d8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 9dc:	0f000013 	svceq	0x00000013
 9e0:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 9e4:	0b3a0e03 	bleq	e841f8 <__user_program+0xb841f8>
 9e8:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
 9ec:	01111349 	tsteq	r1, r9, asr #6
 9f0:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 9f4:	00194296 	mulseq	r9, r6, r2
 9f8:	00051000 	andeq	r1, r5, r0
 9fc:	0b3a0803 	bleq	e82a10 <__user_program+0xb82a10>
 a00:	1349053b 	movtne	r0, #38203	; 0x953b
 a04:	00001702 	andeq	r1, r0, r2, lsl #14
 a08:	03003411 	movweq	r3, #1041	; 0x411
 a0c:	3b0b3a08 	blcc	2cf234 <__end+0x1a2234>
 a10:	02134905 	andseq	r4, r3, #81920	; 0x14000
 a14:	12000017 	andne	r0, r0, #23
 a18:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 a1c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 a20:	05590b58 	ldrbeq	r0, [r9, #-2904]	; 0xfffff4a8
 a24:	05130000 	ldreq	r0, [r3, #-0]
 a28:	02133100 	andseq	r3, r3, #0, 2
 a2c:	14000017 	strne	r0, [r0], #-23	; 0xffffffe9
 a30:	0111010b 	tsteq	r1, fp, lsl #2
 a34:	00000612 	andeq	r0, r0, r2, lsl r6
 a38:	31003415 	tstcc	r0, r5, lsl r4
 a3c:	00170213 	andseq	r0, r7, r3, lsl r2
 a40:	11010000 	mrsne	r0, (UNDEF: 1)
 a44:	130e2501 	movwne	r2, #58625	; 0xe501
 a48:	1b0e030b 	blne	38167c <__user_program+0x8167c>
 a4c:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 a50:	00171006 	andseq	r1, r7, r6
 a54:	00240200 	eoreq	r0, r4, r0, lsl #4
 a58:	0b3e0b0b 	bleq	f8368c <__user_program+0xc8368c>
 a5c:	00000e03 	andeq	r0, r0, r3, lsl #28
 a60:	0b002403 	bleq	9a74 <__clzsi2+0x998>
 a64:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 a68:	04000008 	streq	r0, [r0], #-8
 a6c:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 a70:	0b3b0b3a 	bleq	ec3760 <__user_program+0xbc3760>
 a74:	00001349 	andeq	r1, r0, r9, asr #6
 a78:	03012e05 	movweq	r2, #7685	; 0x1e05
 a7c:	3b0b3a0e 	blcc	2cf2bc <__end+0x1a22bc>
 a80:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
 a84:	010b2013 	tsteq	fp, r3, lsl r0
 a88:	06000013 			; <UNDEFINED> instruction: 0x06000013
 a8c:	08030005 	stmdaeq	r3, {r0, r2}
 a90:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 a94:	00001349 	andeq	r1, r0, r9, asr #6
 a98:	03003407 	movweq	r3, #1031	; 0x407
 a9c:	3b0b3a08 	blcc	2cf2c4 <__end+0x1a22c4>
 aa0:	00134905 	andseq	r4, r3, r5, lsl #18
 aa4:	000f0800 	andeq	r0, pc, r0, lsl #16
 aa8:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 aac:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 ab0:	03193f01 	tsteq	r9, #1, 30
 ab4:	3b0b3a0e 	blcc	2cf2f4 <__end+0x1a22f4>
 ab8:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
 abc:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 ac0:	96184006 	ldrls	r4, [r8], -r6
 ac4:	00001942 	andeq	r1, r0, r2, asr #18
 ac8:	0300050a 	movweq	r0, #1290	; 0x50a
 acc:	3b0b3a08 	blcc	2cf2f4 <__end+0x1a22f4>
 ad0:	02134905 	andseq	r4, r3, #81920	; 0x14000
 ad4:	0b000017 	bleq	b38 <__start-0x74c8>
 ad8:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 adc:	17550152 			; <UNDEFINED> instruction: 0x17550152
 ae0:	05590b58 	ldrbeq	r0, [r9, #-2904]	; 0xfffff4a8
 ae4:	050c0000 	streq	r0, [ip, #-0]
 ae8:	1c133100 	ldfnes	f3, [r3], {-0}
 aec:	0d00000b 	stceq	0, cr0, [r0, #-44]	; 0xffffffd4
 af0:	13310005 	teqne	r1, #5
 af4:	00001702 	andeq	r1, r0, r2, lsl #14
 af8:	55010b0e 	strpl	r0, [r1, #-2830]	; 0xfffff4f2
 afc:	0f000017 	svceq	0x00000017
 b00:	13310034 	teqne	r1, #52	; 0x34
 b04:	00001702 	andeq	r1, r0, r2, lsl #14
 b08:	00110100 	andseq	r0, r1, r0, lsl #2
 b0c:	01110610 	tsteq	r1, r0, lsl r6
 b10:	08030112 	stmdaeq	r3, {r1, r4, r8}
 b14:	0825081b 	stmdaeq	r5!, {r0, r1, r3, r4, fp}
 b18:	00000513 	andeq	r0, r0, r3, lsl r5
 b1c:	00110100 	andseq	r0, r1, r0, lsl #2
 b20:	01110610 	tsteq	r1, r0, lsl r6
 b24:	08030112 	stmdaeq	r3, {r1, r4, r8}
 b28:	0825081b 	stmdaeq	r5!, {r0, r1, r3, r4, fp}
 b2c:	00000513 	andeq	r0, r0, r3, lsl r5
	...

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
  34:	00000054 	andeq	r0, r0, r4, asr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02d20002 	sbcseq	r0, r2, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	000083c8 	andeq	r8, r0, r8, asr #7
  54:	00000298 	muleq	r0, r8, r2
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	05c60002 	strbeq	r0, [r6, #2]
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	00008660 	andeq	r8, r0, r0, ror #12
  74:	000000f8 	strdeq	r0, [r0], -r8
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	07660002 	strbeq	r0, [r6, -r2]!
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	00008758 	andeq	r8, r0, r8, asr r7
  94:	0000031c 	andeq	r0, r0, ip, lsl r3
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	0ca20002 	stceq	0, cr0, [r2], #8
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008a74 	andeq	r8, r0, r4, ror sl
  b4:	00000268 	andeq	r0, r0, r8, ror #4
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	114b0002 	cmpne	fp, r2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008cdc 	ldrdeq	r8, [r0], -ip
  d4:	00000038 	andeq	r0, r0, r8, lsr r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	13010002 	movwne	r0, #4098	; 0x1002
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008000 	andeq	r8, r0, r0
  f4:	00000054 	andeq	r0, r0, r4, asr r0
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	136c0002 	cmnne	ip, #2
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008d14 	andeq	r8, r0, r4, lsl sp
 114:	00000044 	andeq	r0, r0, r4, asr #32
	...
 120:	0000001c 	andeq	r0, r0, ip, lsl r0
 124:	13d60002 	bicsne	r0, r6, #2
 128:	00040000 	andeq	r0, r4, r0
 12c:	00000000 	andeq	r0, r0, r0
 130:	00008d58 	andeq	r8, r0, r8, asr sp
 134:	0000003c 	andeq	r0, r0, ip, lsr r0
	...
 140:	0000001c 	andeq	r0, r0, ip, lsl r0
 144:	14800002 	strne	r0, [r0], #2
 148:	00040000 	andeq	r0, r4, r0
 14c:	00000000 	andeq	r0, r0, r0
 150:	00008d94 	muleq	r0, r4, sp
 154:	00000084 	andeq	r0, r0, r4, lsl #1
	...
 160:	0000001c 	andeq	r0, r0, ip, lsl r0
 164:	15e40002 	strbne	r0, [r4, #2]!
 168:	00040000 	andeq	r0, r4, r0
 16c:	00000000 	andeq	r0, r0, r0
 170:	00008e18 	andeq	r8, r0, r8, lsl lr
 174:	00000004 	andeq	r0, r0, r4
	...
 180:	0000001c 	andeq	r0, r0, ip, lsl r0
 184:	16920002 	ldrne	r0, [r2], r2
 188:	00040000 	andeq	r0, r4, r0
 18c:	00000000 	andeq	r0, r0, r0
 190:	00008e1c 	andeq	r8, r0, ip, lsl lr
 194:	00000178 	andeq	r0, r0, r8, ror r1
	...
 1a0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1a4:	18fb0002 	ldmne	fp!, {r1}^
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	00008f94 	muleq	r0, r4, pc	; <UNPREDICTABLE>
 1b4:	00000120 	andeq	r0, r0, r0, lsr #2
	...
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	1ac20002 	bne	ff0801d4 <__user_program+0xfed801d4>
 1c8:	00040000 	andeq	r0, r4, r0
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	000090b4 	strheq	r9, [r0], -r4
 1d4:	00000028 	andeq	r0, r0, r8, lsr #32
	...
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	1b700002 	blne	1c001f4 <__user_program+0x19001f4>
 1e8:	00040000 	andeq	r0, r4, r0
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	000090dc 	ldrdeq	r9, [r0], -ip
 1f4:	00000048 	andeq	r0, r0, r8, asr #32
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
  94:	00bc0101 	adcseq	r0, ip, r1, lsl #2
  98:	00020000 	andeq	r0, r2, r0
  9c:	0000009c 	muleq	r0, ip, r0
  a0:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
  a4:	0101000d 	tsteq	r1, sp
  a8:	00000101 	andeq	r0, r0, r1, lsl #2
  ac:	00000100 	andeq	r0, r0, r0, lsl #2
  b0:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
  b4:	5f6c656e 	svcpl	0x006c656e
  b8:	70616c63 	rsbvc	r6, r1, r3, ror #24
  bc:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
  c0:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
  c4:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
  c8:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
  cc:	6b62696c 	blvs	189a684 <__user_program+0x159a684>
  d0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  d4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  d8:	72656b00 	rsbvc	r6, r5, #0, 22
  dc:	5f6c656e 	svcpl	0x006c656e
  e0:	70616c63 	rsbvc	r6, r1, r3, ror #24
  e4:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
  e8:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
  ec:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  f0:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  f4:	656b0000 	strbvs	r0, [fp, #-0]!
  f8:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
  fc:	0100632e 	tsteq	r0, lr, lsr #6
 100:	736b0000 	cmnvc	fp, #0
 104:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 108:	00682e74 	rsbeq	r2, r8, r4, ror lr
 10c:	75000002 	strvc	r0, [r0, #-2]
 110:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
 114:	00030068 	andeq	r0, r3, r8, rrx
 118:	73646100 	cmnvc	r4, #0, 2
 11c:	35313031 	ldrcc	r3, [r1, #-49]!	; 0xffffffcf
 120:	0300682e 	movweq	r6, #2094	; 0x82e
 124:	32690000 	rsbcc	r0, r9, #0
 128:	00682e63 	rsbeq	r2, r8, r3, ror #28
 12c:	70000003 	andvc	r0, r0, r3
 130:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
 134:	00682e6b 	rsbeq	r2, r8, fp, ror #28
 138:	00000003 	andeq	r0, r0, r3
 13c:	74020500 	strvc	r0, [r2], #-1280	; 0xfffffb00
 140:	03000083 	movweq	r0, #131	; 0x83
 144:	312f0112 			; <UNDEFINED> instruction: 0x312f0112
 148:	2f4b344d 	svccs	0x004b344d
 14c:	4b4b2f46 	blmi	12cbe6c <__user_program+0xfcbe6c>
 150:	00060267 	andeq	r0, r6, r7, ror #4
 154:	00fa0101 	rscseq	r0, sl, r1, lsl #2
 158:	00020000 	andeq	r0, r2, r0
 15c:	00000095 	muleq	r0, r5, r0
 160:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 164:	0101000d 	tsteq	r1, sp
 168:	00000101 	andeq	r0, r0, r1, lsl #2
 16c:	00000100 	andeq	r0, r0, r0, lsl #2
 170:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 174:	5f6c656e 	svcpl	0x006c656e
 178:	70616c63 	rsbvc	r6, r1, r3, ror #24
 17c:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 180:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 184:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 188:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 18c:	6b62696c 	blvs	189a744 <__user_program+0x159a744>
 190:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 194:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 198:	72656b00 	rsbvc	r6, r5, #0, 22
 19c:	5f6c656e 	svcpl	0x006c656e
 1a0:	70616c63 	rsbvc	r6, r1, r3, ror #24
 1a4:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 1a8:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 1ac:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 1b0:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 1b4:	72700000 	rsbsvc	r0, r0, #0
 1b8:	6b746e69 	blvs	1d1bb64 <__user_program+0x1a1bb64>
 1bc:	0100632e 	tsteq	r0, lr, lsr #6
 1c0:	736b0000 	cmnvc	fp, #0
 1c4:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 1c8:	00682e74 	rsbeq	r2, r8, r4, ror lr
 1cc:	6b000002 	blvs	1dc <__start-0x7e24>
 1d0:	61647473 	smcvs	18243	; 0x4743
 1d4:	682e6772 	stmdavs	lr!, {r1, r4, r5, r6, r8, r9, sl, sp, lr}
 1d8:	00000200 	andeq	r0, r0, r0, lsl #4
 1dc:	6975623c 	ldmdbvs	r5!, {r2, r3, r4, r5, r9, sp, lr}^
 1e0:	692d746c 	pushvs	{r2, r3, r5, r6, sl, ip, sp, lr}
 1e4:	00003e6e 	andeq	r3, r0, lr, ror #28
 1e8:	61750000 	cmnvs	r5, r0
 1ec:	682e7472 	stmdavs	lr!, {r1, r4, r5, r6, sl, ip, sp, lr}
 1f0:	00000300 	andeq	r0, r0, r0, lsl #6
 1f4:	02050000 	andeq	r0, r5, #0
 1f8:	000083c8 	andeq	r8, r0, r8, asr #7
 1fc:	88012003 	stmdahi	r1, {r0, r1, sp}
 200:	02009c4d 	andeq	r9, r0, #19712	; 0x4d00
 204:	004c0104 	subeq	r0, ip, r4, lsl #2
 208:	33010402 	movwcc	r0, #5122	; 0x1402
 20c:	01040200 	mrseq	r0, R12_usr
 210:	02005908 	andeq	r5, r0, #8, 18	; 0x20000
 214:	4dd70104 	ldfmie	f0, [r7, #16]
 218:	2d9b6a4b 	vldrcs	s12, [fp, #300]	; 0x12c
 21c:	4d694987 	stclmi	9, cr4, [r9, #-540]!	; 0xfffffde4
 220:	4a200385 	bmi	80103c <__user_program+0x50103c>
 224:	2e5c0351 	mrccs	3, 2, r0, cr12, cr1, {2}
 228:	324b4b30 	subcc	r4, fp, #48, 22	; 0xc000
 22c:	83152c02 	tsthi	r5, #512	; 0x200
 230:	a4a04b4b 	strtge	r4, [r0], #2891	; 0xb4b
 234:	67328367 	ldrvs	r8, [r2, -r7, ror #6]!
 238:	83673383 	cmnhi	r7, #201326594	; 0xc000002
 23c:	2d678332 	stclcs	3, cr8, [r7, #-200]!	; 0xffffff38
 240:	324b678a 	subcc	r6, fp, #36175872	; 0x2280000
 244:	034d334b 	movteq	r3, #54091	; 0xd34b
 248:	032e7fbf 			; <UNDEFINED> instruction: 0x032e7fbf
 24c:	026600c6 	rsbeq	r0, r6, #198	; 0xc6
 250:	01010008 	tsteq	r1, r8
 254:	000000b9 	strheq	r0, [r0], -r9
 258:	00840002 	addeq	r0, r4, r2
 25c:	01020000 	mrseq	r0, (UNDEF: 2)
 260:	000d0efb 	strdeq	r0, [sp], -fp
 264:	01010101 	tsteq	r1, r1, lsl #2
 268:	01000000 	mrseq	r0, (UNDEF: 0)
 26c:	6b010000 	blvs	40274 <__bss_end+0x34274>
 270:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 274:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 278:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 27c:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 280:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 284:	33006372 	movwcc	r6, #882	; 0x372
 288:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 28c:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 290:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 294:	6b006564 	blvs	1982c <__bss_end+0xd82c>
 298:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 29c:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 2a0:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 2a4:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 2a8:	692f726f 	stmdbvs	pc!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
 2ac:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 2b0:	00006564 	andeq	r6, r0, r4, ror #10
 2b4:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 2b8:	0100632e 	tsteq	r0, lr, lsr #6
 2bc:	736b0000 	cmnvc	fp, #0
 2c0:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 2c4:	00682e74 	rsbeq	r2, r8, r4, ror lr
 2c8:	67000002 	strvs	r0, [r0, -r2]
 2cc:	2e6f6970 	mcrcs	9, 3, r6, cr15, cr0, {3}
 2d0:	00020068 	andeq	r0, r2, r8, rrx
 2d4:	69727000 	ldmdbvs	r2!, {ip, sp, lr}^
 2d8:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 2dc:	00030068 	andeq	r0, r3, r8, rrx
 2e0:	05000000 	streq	r0, [r0, #-0]
 2e4:	00866002 	addeq	r6, r6, r2
 2e8:	01250300 			; <UNDEFINED> instruction: 0x01250300
 2ec:	67696731 			; <UNDEFINED> instruction: 0x67696731
 2f0:	4c4ca069 	mcrrmi	0, 6, sl, ip, cr9
 2f4:	87a0156b 	strhi	r1, [r0, fp, ror #10]!
 2f8:	04020015 	streq	r0, [r2], #-21	; 0xffffffeb
 2fc:	064a0601 	strbeq	r0, [sl], -r1, lsl #12
 300:	2f2f876a 	svccs	0x002f876a
 304:	4b2f484c 	blmi	bd243c <__user_program+0x8d243c>
 308:	676d2b4b 	strbvs	r2, [sp, -fp, asr #22]!
 30c:	01000202 	tsteq	r0, r2, lsl #4
 310:	00010c01 	andeq	r0, r1, r1, lsl #24
 314:	97000200 	strls	r0, [r0, -r0, lsl #4]
 318:	02000000 	andeq	r0, r0, #0
 31c:	0d0efb01 	vstreq	d15, [lr, #-4]
 320:	01010100 	mrseq	r0, (UNDEF: 17)
 324:	00000001 	andeq	r0, r0, r1
 328:	01000001 	tsteq	r0, r1
 32c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 330:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 334:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 338:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 33c:	2f726f74 	svccs	0x00726f74
 340:	00637273 	rsbeq	r7, r3, r3, ror r2
 344:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 348:	2f6b6269 	svccs	0x006b6269
 34c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 350:	00656475 	rsbeq	r6, r5, r5, ror r4
 354:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 358:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 35c:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 360:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 364:	2f726f74 	svccs	0x00726f74
 368:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 36c:	00656475 	rsbeq	r6, r5, r5, ror r4
 370:	63326900 	teqvs	r2, #0, 18
 374:	0100632e 	tsteq	r0, lr, lsr #6
 378:	736b0000 	cmnvc	fp, #0
 37c:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 380:	00682e74 	rsbeq	r2, r8, r4, ror lr
 384:	67000002 	strvs	r0, [r0, -r2]
 388:	2e6f6970 	mcrcs	9, 3, r6, cr15, cr0, {3}
 38c:	00020068 	andeq	r0, r2, r8, rrx
 390:	69747500 	ldmdbvs	r4!, {r8, sl, ip, sp, lr}^
 394:	682e736c 	stmdavs	lr!, {r2, r3, r5, r6, r8, r9, ip, sp, lr}
 398:	00000300 	andeq	r0, r0, r0, lsl #6
 39c:	2e633269 	cdpcs	2, 6, cr3, cr3, cr9, {3}
 3a0:	00030068 	andeq	r0, r3, r8, rrx
 3a4:	69727000 	ldmdbvs	r2!, {ip, sp, lr}^
 3a8:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 3ac:	00030068 	andeq	r0, r3, r8, rrx
 3b0:	05000000 	streq	r0, [r0, #-0]
 3b4:	00875802 	addeq	r5, r7, r2, lsl #16
 3b8:	01100300 	tsteq	r0, r0, lsl #6
 3bc:	03876732 	orreq	r6, r7, #13107200	; 0xc80000
 3c0:	a068820d 	rsbge	r8, r8, sp, lsl #4
 3c4:	a0858484 	addge	r8, r5, r4, lsl #9
 3c8:	6767494b 	strbvs	r4, [r7, -fp, asr #18]!
 3cc:	ba09032a 	blt	24107c <__end+0x11407c>
 3d0:	342c8486 	strtcc	r8, [ip], #-1158	; 0xfffffb7a
 3d4:	04020084 	streq	r0, [r2], #-132	; 0xffffff7c
 3d8:	a1be8601 			; <UNDEFINED> instruction: 0xa1be8601
 3dc:	bc35894c 	ldclt	9, cr8, [r5], #-304	; 0xfffffed0
 3e0:	03868484 	orreq	r8, r6, #132, 8	; 0x84000000
 3e4:	14036670 	strne	r6, [r3], #-1648	; 0xfffff990
 3e8:	034b502e 	movteq	r5, #45102	; 0xb02e
 3ec:	83344a79 	teqhi	r4, #495616	; 0x79000
 3f0:	2e7a0384 	cdpcs	3, 7, cr0, cr10, cr4, {4}
 3f4:	01040200 	mrseq	r0, R12_usr
 3f8:	7f064a06 	svcvc	0x00064a06
 3fc:	9e0a0385 	cdpls	3, 0, cr0, cr10, cr5, {4}
 400:	4ca06b9f 	fstmiaxmi	r0!, {d6-d84}	;@ Deprecated
 404:	00624c64 	rsbeq	r4, r2, r4, ror #24
 408:	06010402 	streq	r0, [r1], -r2, lsl #8
 40c:	0a03064a 	beq	c1d3c <__bss_end+0xb5d3c>
 410:	342c8482 	strtcc	r8, [ip], #-1154	; 0xfffffb7e
 414:	04020084 	streq	r0, [r2], #-132	; 0xffffff7c
 418:	a2be8501 	adcsge	r8, lr, #4194304	; 0x400000
 41c:	01000402 	tsteq	r0, r2, lsl #8
 420:	0000d901 	andeq	sp, r0, r1, lsl #18
 424:	86000200 	strhi	r0, [r0], -r0, lsl #4
 428:	02000000 	andeq	r0, r0, #0
 42c:	0d0efb01 	vstreq	d15, [lr, #-4]
 430:	01010100 	mrseq	r0, (UNDEF: 17)
 434:	00000001 	andeq	r0, r0, r1
 438:	01000001 	tsteq	r0, r1
 43c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 440:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 444:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 448:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 44c:	2f726f74 	svccs	0x00726f74
 450:	00637273 	rsbeq	r7, r3, r3, ror r2
 454:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 458:	2f6b6269 	svccs	0x006b6269
 45c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 460:	00656475 	rsbeq	r6, r5, r5, ror r4
 464:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 468:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 46c:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 470:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 474:	2f726f74 	svccs	0x00726f74
 478:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 47c:	00656475 	rsbeq	r6, r5, r5, ror r4
 480:	73646100 	cmnvc	r4, #0, 2
 484:	35313031 	ldrcc	r3, [r1, #-49]!	; 0xffffffcf
 488:	0100632e 	tsteq	r0, lr, lsr #6
 48c:	736b0000 	cmnvc	fp, #0
 490:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 494:	00682e74 	rsbeq	r2, r8, r4, ror lr
 498:	70000002 	andvc	r0, r0, r2
 49c:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
 4a0:	00682e6b 	rsbeq	r2, r8, fp, ror #28
 4a4:	69000003 	stmdbvs	r0, {r0, r1}
 4a8:	682e6332 	stmdavs	lr!, {r1, r4, r5, r8, r9, sp, lr}
 4ac:	00000300 	andeq	r0, r0, r0, lsl #6
 4b0:	02050000 	andeq	r0, r5, #0
 4b4:	00008a74 	andeq	r8, r0, r4, ror sl
 4b8:	6c010f03 	stcvs	15, cr0, [r1], {3}
 4bc:	6b2f4b4b 	blvs	bd31f0 <__user_program+0x8d31f0>
 4c0:	676b85bb 			; <UNDEFINED> instruction: 0x676b85bb
 4c4:	4b68bb4b 	blmi	1a2f1f8 <__user_program+0x172f1f8>
 4c8:	68514e84 	ldmdavs	r1, {r2, r7, r9, sl, fp, lr}^
 4cc:	69bb6c9f 	ldmibvs	fp!, {r0, r1, r2, r3, r4, r7, sl, fp, sp, lr}
 4d0:	14036969 	strne	r6, [r3], #-2409	; 0xfffff697
 4d4:	bb4b674a 	bllt	12da204 <__user_program+0xfda204>
 4d8:	0f036768 	svceq	0x00036768
 4dc:	83846782 	orrhi	r6, r4, #34078720	; 0x2080000
 4e0:	820d0367 	andhi	r0, sp, #-1677721599	; 0x9c000001
 4e4:	6783844b 	strvs	r8, [r3, fp, asr #8]
 4e8:	d9314d84 	ldmdble	r1!, {r2, r7, r8, sl, fp, lr}
 4ec:	2f2f2f4c 	svccs	0x002f2f4c
 4f0:	032e7903 			; <UNDEFINED> instruction: 0x032e7903
 4f4:	45302e0c 	ldrmi	r2, [r0, #-3596]!	; 0xfffff1f4
 4f8:	00020235 	andeq	r0, r2, r5, lsr r2
 4fc:	00790101 	rsbseq	r0, r9, r1, lsl #2
 500:	00020000 	andeq	r0, r2, r0
 504:	00000053 	andeq	r0, r0, r3, asr r0
 508:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 50c:	0101000d 	tsteq	r1, sp
 510:	00000101 	andeq	r0, r0, r1, lsl #2
 514:	00000100 	andeq	r0, r0, r0, lsl #2
 518:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 51c:	5f6c656e 	svcpl	0x006c656e
 520:	70616c63 	rsbvc	r6, r1, r3, ror #24
 524:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 528:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 52c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 530:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 534:	6b62696c 	blvs	189aaec <__user_program+0x159aaec>
 538:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 53c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 540:	74750000 	ldrbtvc	r0, [r5], #-0
 544:	2e736c69 	cdpcs	12, 7, cr6, cr3, cr9, {3}
 548:	00010063 	andeq	r0, r1, r3, rrx
 54c:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xfffff500
 550:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 554:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 558:	00000000 	andeq	r0, r0, r0
 55c:	8cdc0205 	lfmhi	f0, 2, [ip], {5}
 560:	13150000 	tstne	r5, #0
 564:	4e13302f 	cdpmi	0, 1, cr3, cr3, cr15, {1}
 568:	03017803 	movweq	r7, #6147	; 0x1803
 56c:	7a032e0a 	bvc	cbd9c <__bss_end+0xbfd9c>
 570:	4a0b0366 	bmi	2c1310 <__end+0x194310>
 574:	04024b13 	streq	r4, [r2], #-2835	; 0xfffff4ed
 578:	54010100 	strpl	r0, [r1], #-256	; 0xffffff00
 57c:	02000000 	andeq	r0, r0, #0
 580:	00002900 	andeq	r2, r0, r0, lsl #18
 584:	fb010200 	blx	40d8e <__bss_end+0x34d8e>
 588:	01000d0e 	tsteq	r0, lr, lsl #26
 58c:	00010101 	andeq	r0, r1, r1, lsl #2
 590:	00010000 	andeq	r0, r1, r0
 594:	34330100 	ldrtcc	r0, [r3], #-256	; 0xffffff00
 598:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
 59c:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
 5a0:	62000063 	andvs	r0, r0, #99	; 0x63
 5a4:	2e746f6f 	cdpcs	15, 7, cr6, cr4, cr15, {3}
 5a8:	00010053 	andeq	r0, r1, r3, asr r0
 5ac:	05000000 	streq	r0, [r0, #-0]
 5b0:	00800002 	addeq	r0, r0, r2
 5b4:	011b0300 	tsteq	fp, r0, lsl #6
 5b8:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 5bc:	2f2f2f2f 	svccs	0x002f2f2f
 5c0:	2f312f2f 	svccs	0x00312f2f
 5c4:	2f33312f 	svccs	0x0033312f
 5c8:	312e6903 			; <UNDEFINED> instruction: 0x312e6903
 5cc:	02022f2f 	andeq	r2, r2, #47, 30	; 0xbc
 5d0:	4d010100 	stfmis	f0, [r1, #-0]
 5d4:	02000000 	andeq	r0, r0, #0
 5d8:	00002800 	andeq	r2, r0, r0, lsl #16
 5dc:	fb010200 	blx	40de6 <__bss_end+0x34de6>
 5e0:	01000d0e 	tsteq	r0, lr, lsl #26
 5e4:	00010101 	andeq	r0, r1, r1, lsl #2
 5e8:	00010000 	andeq	r0, r1, r0
 5ec:	34330100 	ldrtcc	r0, [r3], #-256	; 0xffffff00
 5f0:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
 5f4:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
 5f8:	61000063 	tstvs	r0, r3, rrx
 5fc:	532e6d72 			; <UNDEFINED> instruction: 0x532e6d72
 600:	00000100 	andeq	r0, r0, r0, lsl #2
 604:	02050000 	andeq	r0, r5, #0
 608:	00008d14 	andeq	r8, r0, r4, lsl sp
 60c:	2f011003 	svccs	0x00011003
 610:	332f332f 			; <UNDEFINED> instruction: 0x332f332f
 614:	2f2f332f 	svccs	0x002f332f
 618:	2f332f2f 	svccs	0x00332f2f
 61c:	022f2f2f 	eoreq	r2, pc, #47, 30	; 0xbc
 620:	01010002 	tsteq	r1, r2
 624:	0000005a 	andeq	r0, r0, sl, asr r0
 628:	003d0002 	eorseq	r0, sp, r2
 62c:	01020000 	mrseq	r0, (UNDEF: 2)
 630:	000d0efb 	strdeq	r0, [sp], -fp
 634:	01010101 	tsteq	r1, r1, lsl #2
 638:	01000000 	mrseq	r0, (UNDEF: 0)
 63c:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 640:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 644:	2f2e2e2f 	svccs	0x002e2e2f
 648:	2f637273 	svccs	0x00637273
 64c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 650:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 654:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 658:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 65c:	6200006d 	andvs	r0, r0, #109	; 0x6d
 660:	69626170 	stmdbvs	r2!, {r4, r5, r6, r8, sp, lr}^
 664:	0100532e 	tsteq	r0, lr, lsr #6
 668:	00000000 	andeq	r0, r0, r0
 66c:	8d580205 	lfmhi	f0, 2, [r8, #-20]	; 0xffffffec
 670:	9b030000 	blls	c0678 <__bss_end+0xb4678>
 674:	33f40101 	mvnscc	r0, #1073741824	; 0x40000000
 678:	2f2f2f31 	svccs	0x002f2f31
 67c:	0002022f 	andeq	r0, r2, pc, lsr #4
 680:	005b0101 	subseq	r0, fp, r1, lsl #2
 684:	00020000 	andeq	r0, r2, r0
 688:	0000003d 	andeq	r0, r0, sp, lsr r0
 68c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 690:	0101000d 	tsteq	r1, sp
 694:	00000101 	andeq	r0, r0, r1, lsl #2
 698:	00000100 	andeq	r0, r0, r0, lsl #2
 69c:	2f2e2e01 	svccs	0x002e2e01
 6a0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 6a4:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 6a8:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 6ac:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 6b0:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 6b4:	2f676966 	svccs	0x00676966
 6b8:	006d7261 	rsbeq	r7, sp, r1, ror #4
 6bc:	61706200 	cmnvs	r0, r0, lsl #4
 6c0:	632e6962 			; <UNDEFINED> instruction: 0x632e6962
 6c4:	00000100 	andeq	r0, r0, r0, lsl #2
 6c8:	02050000 	andeq	r0, r5, #0
 6cc:	00008d94 	muleq	r0, r4, sp
 6d0:	2e012503 	cfsh32cs	mvfx2, mvfx1, #3
 6d4:	50d84ba1 	sbcspl	r4, r8, r1, lsr #23
 6d8:	d82fa12e 	stmdale	pc!, {r1, r2, r3, r5, r8, sp, pc}	; <UNPREDICTABLE>
 6dc:	01000402 	tsteq	r0, r2, lsl #8
 6e0:	00005701 	andeq	r5, r0, r1, lsl #14
 6e4:	41000200 	mrsmi	r0, R8_usr
 6e8:	02000000 	andeq	r0, r0, #0
 6ec:	0d0efb01 	vstreq	d15, [lr, #-4]
 6f0:	01010100 	mrseq	r0, (UNDEF: 17)
 6f4:	00000001 	andeq	r0, r0, r1
 6f8:	01000001 	tsteq	r0, r1
 6fc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 700:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 704:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 708:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 70c:	2f636367 	svccs	0x00636367
 710:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 714:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 718:	00006d72 	andeq	r6, r0, r2, ror sp
 71c:	3162696c 	cmncc	r2, ip, ror #18
 720:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 724:	00532e73 	subseq	r2, r3, r3, ror lr
 728:	00000001 	andeq	r0, r0, r1
 72c:	18020500 	stmdane	r2, {r8, sl}
 730:	0300008e 	movweq	r0, #142	; 0x8e
 734:	02010bae 	andeq	r0, r1, #178176	; 0x2b800
 738:	01010002 	tsteq	r1, r2
 73c:	00000094 	muleq	r0, r4, r0
 740:	00410002 	subeq	r0, r1, r2
 744:	01020000 	mrseq	r0, (UNDEF: 2)
 748:	000d0efb 	strdeq	r0, [sp], -fp
 74c:	01010101 	tsteq	r1, r1, lsl #2
 750:	01000000 	mrseq	r0, (UNDEF: 0)
 754:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 758:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 75c:	2f2e2e2f 	svccs	0x002e2e2f
 760:	2f637273 	svccs	0x00637273
 764:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 768:	00006363 	andeq	r6, r0, r3, ror #6
 76c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 770:	2e326363 	cdpcs	3, 3, cr6, cr2, cr3, {3}
 774:	00010063 	andeq	r0, r1, r3, rrx
 778:	62696c00 	rsbvs	r6, r9, #0, 24
 77c:	32636367 	rsbcc	r6, r3, #-1677721599	; 0x9c000001
 780:	0100682e 	tsteq	r0, lr, lsr #16
 784:	00000000 	andeq	r0, r0, r0
 788:	8e1c0205 	cdphi	2, 1, cr0, cr12, cr5, {0}
 78c:	cb030000 	blgt	c0794 <__bss_end+0xb4794>
 790:	03180109 	tsteq	r8, #1073741826	; 0x40000002
 794:	33672e7a 	cmncc	r7, #1952	; 0x7a0
 798:	7de80331 	stclvc	3, cr0, [r8, #196]!	; 0xc4
 79c:	2d67a082 	stclcs	0, cr10, [r7, #-520]!	; 0xfffffdf8
 7a0:	a52f4c2f 	strge	r4, [pc, #-3119]!	; fffffb79 <__user_program+0xffcffb79>
 7a4:	352e7903 	strcc	r7, [lr, #-2307]!	; 0xfffff6fd
 7a8:	032e7903 			; <UNDEFINED> instruction: 0x032e7903
 7ac:	18032e6f 	stmdane	r3, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp}
 7b0:	2f2d314a 	svccs	0x002d314a
 7b4:	4c312f49 	ldcmi	15, cr2, [r1], #-292	; 0xfffffedc
 7b8:	6945be6e 	stmdbvs	r5, {r1, r2, r3, r5, r6, r9, sl, fp, ip, sp, pc}^
 7bc:	2f494f4c 	svccs	0x00494f4c
 7c0:	03306483 	teqeq	r0, #-2097152000	; 0x83000000
 7c4:	3c0801fa 	stfccs	f0, [r8], {250}	; 0xfa
 7c8:	2d827903 	stccs	9, cr7, [r2, #12]
 7cc:	0249472f 	subeq	r4, r9, #12320768	; 0xbc0000
 7d0:	01010004 	tsteq	r1, r4
 7d4:	0000008e 	andeq	r0, r0, lr, lsl #1
 7d8:	00410002 	subeq	r0, r1, r2
 7dc:	01020000 	mrseq	r0, (UNDEF: 2)
 7e0:	000d0efb 	strdeq	r0, [sp], -fp
 7e4:	01010101 	tsteq	r1, r1, lsl #2
 7e8:	01000000 	mrseq	r0, (UNDEF: 0)
 7ec:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 7f0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 7f4:	2f2e2e2f 	svccs	0x002e2e2f
 7f8:	2f637273 	svccs	0x00637273
 7fc:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 800:	00006363 	andeq	r6, r0, r3, ror #6
 804:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 808:	2e326363 	cdpcs	3, 3, cr6, cr2, cr3, {3}
 80c:	00010063 	andeq	r0, r1, r3, rrx
 810:	62696c00 	rsbvs	r6, r9, #0, 24
 814:	32636367 	rsbcc	r6, r3, #-1677721599	; 0x9c000001
 818:	0100682e 	tsteq	r0, lr, lsr #16
 81c:	00000000 	andeq	r0, r0, r0
 820:	8f940205 	svchi	0x00940205
 824:	86030000 	strhi	r0, [r3], -r0
 828:	b603010a 	strlt	r0, [r3], -sl, lsl #2
 82c:	ca03017d 	bgt	c0e28 <__bss_end+0xb4e28>
 830:	032e4a02 			; <UNDEFINED> instruction: 0x032e4a02
 834:	03827dab 	orreq	r7, r2, #10944	; 0x2ac0
 838:	67304a0b 	ldrvs	r4, [r0, -fp, lsl #20]!
 83c:	2f4c2f2d 	svccs	0x004c2f2d
 840:	2e7903a5 	cdpcs	3, 7, cr0, cr9, cr5, {5}
 844:	2e790335 	mrccs	3, 3, r0, cr9, cr5, {1}
 848:	032e6f03 			; <UNDEFINED> instruction: 0x032e6f03
 84c:	2d314a18 	vldmdbcs	r1!, {s8-s31}
 850:	312f492f 			; <UNDEFINED> instruction: 0x312f492f
 854:	45be6e4c 	ldrmi	r6, [lr, #3660]!	; 0xe4c
 858:	4b4e4c69 	blmi	1393a04 <__user_program+0x1093a04>
 85c:	02a503bb 	adceq	r0, r5, #-335544318	; 0xec000002
 860:	000402ba 			; <UNDEFINED> instruction: 0x000402ba
 864:	00610101 	rsbeq	r0, r1, r1, lsl #2
 868:	00020000 	andeq	r0, r2, r0
 86c:	00000041 	andeq	r0, r0, r1, asr #32
 870:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 874:	0101000d 	tsteq	r1, sp
 878:	00000101 	andeq	r0, r0, r1, lsl #2
 87c:	00000100 	andeq	r0, r0, r0, lsl #2
 880:	2f2e2e01 	svccs	0x002e2e01
 884:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 888:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 88c:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 890:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 894:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 898:	2f676966 	svccs	0x00676966
 89c:	006d7261 	rsbeq	r7, sp, r1, ror #4
 8a0:	62696c00 	rsbvs	r6, r9, #0, 24
 8a4:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
 8a8:	532e7363 			; <UNDEFINED> instruction: 0x532e7363
 8ac:	00000100 	andeq	r0, r0, r0, lsl #2
 8b0:	02050000 	andeq	r0, r5, #0
 8b4:	000090b4 	strheq	r9, [r0], -r4
 8b8:	010dae03 	tsteq	sp, r3, lsl #28
 8bc:	09032f30 	stmdbeq	r3, {r4, r5, r8, r9, sl, fp, sp}
 8c0:	302f2f2e 	eorcc	r2, pc, lr, lsr #30
 8c4:	0402342f 	streq	r3, [r2], #-1071	; 0xfffffbd1
 8c8:	64010100 	strvs	r0, [r1], #-256	; 0xffffff00
 8cc:	02000000 	andeq	r0, r0, #0
 8d0:	00004100 	andeq	r4, r0, r0, lsl #2
 8d4:	fb010200 	blx	410de <__bss_end+0x350de>
 8d8:	01000d0e 	tsteq	r0, lr, lsl #26
 8dc:	00010101 	andeq	r0, r1, r1, lsl #2
 8e0:	00010000 	andeq	r0, r1, r0
 8e4:	2e2e0100 	sufcse	f0, f6, f0
 8e8:	2f2e2e2f 	svccs	0x002e2e2f
 8ec:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 8f0:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 730 <__start-0x78d0>
 8f4:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 8f8:	6f632f63 	svcvs	0x00632f63
 8fc:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 900:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 904:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 908:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
 90c:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 910:	00010053 	andeq	r0, r1, r3, asr r0
 914:	05000000 	streq	r0, [r0, #-0]
 918:	0090dc02 	addseq	sp, r0, r2, lsl #24
 91c:	0d8d0300 	stceq	3, cr0, [sp]
 920:	2f302f01 	svccs	0x00302f01
 924:	2f2f302f 	svccs	0x002f302f
 928:	2f2f2f30 	svccs	0x002f2f30
 92c:	0a022f2f 	beq	8c5f0 <__bss_end+0x805f0>
 930:	Address 0x0000000000000930 is out of bounds.


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
 140:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 144:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
 148:	7479625f 	ldrbtvc	r6, [r9], #-607	; 0xfffffda1
 14c:	32690065 	rsbcc	r0, r9, #101	; 0x65
 150:	616d5f63 	cmnvs	sp, r3, ror #30
 154:	72657473 	rsbvc	r7, r5, #1929379840	; 0x73000000
 158:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
 15c:	6e690074 	mcrvs	0, 3, r0, cr9, cr4, {3}
 160:	00747570 	rsbseq	r7, r4, r0, ror r5
 164:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 168:	61006b74 	tstvs	r0, r4, ror fp
 16c:	695f6364 	ldmdbvs	pc, {r2, r5, r6, r8, r9, sp, lr}^	; <UNPREDICTABLE>
 170:	0074696e 	rsbseq	r6, r4, lr, ror #18
 174:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 178:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 17c:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 180:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 184:	2f726f74 	svccs	0x00726f74
 188:	2f637273 	svccs	0x00637273
 18c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 190:	632e6c65 			; <UNDEFINED> instruction: 0x632e6c65
 194:	72617500 	rsbvc	r7, r1, #0, 10
 198:	6e695f74 	mcrvs	15, 3, r5, cr9, cr4, {3}
 19c:	6b007469 	blvs	1d348 <__bss_end+0x11348>
 1a0:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 1a4:	616d5f6c 	cmnvs	sp, ip, ror #30
 1a8:	75006e69 	strvc	r6, [r0, #-3689]	; 0xfffff197
 1ac:	31746e69 	cmncc	r4, r9, ror #28
 1b0:	00745f36 	rsbseq	r5, r4, r6, lsr pc
 1b4:	20554e47 	subscs	r4, r5, r7, asr #28
 1b8:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
 1bc:	20332e39 	eorscs	r2, r3, r9, lsr lr
 1c0:	35313032 	ldrcc	r3, [r1, #-50]!	; 0xffffffce
 1c4:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
 1c8:	72702820 	rsbsvc	r2, r0, #32, 16	; 0x200000
 1cc:	6c657265 	sfmvs	f7, 2, [r5], #-404	; 0xfffffe6c
 1d0:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 1d4:	6d2d2029 	stcvs	0, cr2, [sp, #-164]!	; 0xffffff5c
 1d8:	616f6c66 	cmnvs	pc, r6, ror #24
 1dc:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
 1e0:	6f733d69 	svcvs	0x00733d69
 1e4:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
 1e8:	6372616d 	cmnvs	r2, #1073741851	; 0x4000001b
 1ec:	72613d68 	rsbvc	r3, r1, #104, 26	; 0x1a00
 1f0:	2d37766d 	ldccs	6, cr7, [r7, #-436]!	; 0xfffffe4c
 1f4:	672d2061 	strvs	r2, [sp, -r1, rrx]!
 1f8:	314f2d20 	cmpcc	pc, r0, lsr #26
 1fc:	66662d20 	strbtvs	r2, [r6], -r0, lsr #26
 200:	73656572 	cmnvc	r5, #478150656	; 0x1c800000
 204:	646e6174 	strbtvs	r6, [lr], #-372	; 0xfffffe8c
 208:	00676e69 	rsbeq	r6, r7, r9, ror #28
 20c:	5f636461 	svcpl	0x00636461
 210:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
 214:	74796200 	ldrbtvc	r6, [r9], #-512	; 0xfffffe00
 218:	74705f65 	ldrbtvc	r5, [r0], #-3941	; 0xfffff09b
 21c:	69750072 	ldmdbvs	r5!, {r1, r4, r5, r6}^
 220:	3436746e 	ldrtcc	r7, [r6], #-1134	; 0xfffffb92
 224:	6200745f 	andvs	r7, r0, #1593835520	; 0x5f000000
 228:	00657361 	rsbeq	r7, r5, r1, ror #6
 22c:	61765f5f 	cmnvs	r6, pc, asr pc
 230:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
 234:	61750074 	cmnvs	r5, r4, ror r0
 238:	705f7472 	subsvc	r7, pc, r2, ror r4	; <UNPREDICTABLE>
 23c:	625f7475 	subsvs	r7, pc, #1962934272	; 0x75000000
 240:	00657479 	rsbeq	r7, r5, r9, ror r4
 244:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 248:	6d756e74 	ldclvs	14, cr6, [r5, #-464]!	; 0xfffffe30
 24c:	6964006b 	stmdbvs	r4!, {r0, r1, r3, r5, r6}^
 250:	73746967 	cmnvc	r4, #1687552	; 0x19c000
 254:	65727000 	ldrbvs	r7, [r2, #-0]!
 258:	00786966 	rsbseq	r6, r8, r6, ror #18
 25c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 260:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 264:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 268:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 26c:	2f726f74 	svccs	0x00726f74
 270:	2f637273 	svccs	0x00637273
 274:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 278:	632e6b74 			; <UNDEFINED> instruction: 0x632e6b74
 27c:	67726100 	ldrbvs	r6, [r2, -r0, lsl #2]!
 280:	69730073 	ldmdbvs	r3!, {r0, r1, r4, r5, r6}^
 284:	7974657a 	ldmdbvc	r4!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^
 288:	5f006570 	svcpl	0x00006570
 28c:	0070615f 	rsbseq	r6, r0, pc, asr r1
 290:	6d6f7270 	sfmvs	f7, 2, [pc, #-448]!	; d8 <__start-0x7f28>
 294:	6b007470 	blvs	1d45c <__bss_end+0x1145c>
 298:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 29c:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 2a0:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 2a4:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 2a8:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 2ac:	752f6372 	strvc	r6, [pc, #-882]!	; ffffff42 <__user_program+0xffcfff42>
 2b0:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
 2b4:	61750063 	cmnvs	r5, r3, rrx
 2b8:	635f7472 	cmpvs	pc, #1912602624	; 0x72000000
 2bc:	65736f6c 	ldrbvs	r6, [r3, #-3948]!	; 0xfffff094
 2c0:	64617000 	strbtvs	r7, [r1], #-0
 2c4:	70007264 	andvc	r7, r0, r4, ror #4
 2c8:	5f697265 	svcpl	0x00697265
 2cc:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
 2d0:	69660065 	stmdbvs	r6!, {r0, r2, r5, r6}^
 2d4:	6b006f66 	blvs	1c074 <__bss_end+0x10074>
 2d8:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 2dc:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 2e0:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 2e4:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 2e8:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 2ec:	692f6372 	stmdbvs	pc!, {r1, r4, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
 2f0:	632e6332 			; <UNDEFINED> instruction: 0x632e6332
 2f4:	72657000 	rsbvc	r7, r5, #0
 2f8:	65725f69 	ldrbvs	r5, [r2, #-3945]!	; 0xfffff097
 2fc:	73006461 	movwvc	r6, #1121	; 0x461
 300:	75746174 	ldrbvc	r6, [r4, #-372]!	; 0xfffffe8c
 304:	32490073 	subcc	r0, r9, #115	; 0x73
 308:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
 30c:	4e4f5341 	cdpmi	3, 4, cr5, cr15, cr1, {2}
 310:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
 314:	4e5f524f 	cdpmi	2, 5, cr5, cr15, cr15, {2}
 318:	004b4341 	subeq	r4, fp, r1, asr #6
 31c:	69726570 	ldmdbvs	r2!, {r4, r5, r6, r8, sl, sp, lr}^
 320:	7465735f 	strbtvc	r7, [r5], #-863	; 0xfffffca1
 324:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
 328:	65720073 	ldrbvs	r0, [r2, #-115]!	; 0xffffff8d
 32c:	6e6f7361 	cdpvs	3, 6, cr7, cr15, cr1, {3}
 330:	43324900 	teqmi	r2, #0, 18
 334:	4145525f 	cmpmi	r5, pc, asr r2
 338:	5f4e4f53 	svcpl	0x004e4f53
 33c:	4f525245 	svcmi	0x00525245
 340:	41445f52 	cmpmi	r4, r2, asr pc
 344:	69004154 	stmdbvs	r0, {r2, r4, r6, r8, lr}
 348:	6d5f6332 	ldclvs	3, cr6, [pc, #-200]	; 288 <__start-0x7d78>
 34c:	65747361 	ldrbvs	r7, [r4, #-865]!	; 0xfffffc9f
 350:	65725f72 	ldrbvs	r5, [r2, #-3954]!	; 0xfffff08e
 354:	64006461 	strvs	r6, [r0], #-1121	; 0xfffffb9f
 358:	006e656c 	rsbeq	r6, lr, ip, ror #10
 35c:	5f633269 	svcpl	0x00633269
 360:	7473616d 	ldrbtvc	r6, [r3], #-365	; 0xfffffe93
 364:	775f7265 	ldrbvc	r7, [pc, -r5, ror #4]
 368:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
 36c:	43324900 	teqmi	r2, #0, 18
 370:	4145525f 	cmpmi	r5, pc, asr r2
 374:	5f4e4f53 	svcpl	0x004e4f53
 378:	4f525245 	svcmi	0x00525245
 37c:	4c435f52 	mcrrmi	15, 5, r5, r3, cr2
 380:	4900544b 	stmdbmi	r0, {r0, r1, r3, r6, sl, ip, lr}
 384:	525f4332 	subspl	r4, pc, #-939524096	; 0xc8000000
 388:	4f534145 	svcmi	0x00534145
 38c:	4b4f5f4e 	blmi	13d80cc <__user_program+0x10d80cc>
 390:	6e6f6300 	cdpvs	3, 6, cr6, cr15, cr0, {0}
 394:	6c6f7274 	sfmvs	f7, 2, [pc], #-464	; 1cc <__start-0x7e34>
 398:	6d657200 	sfmvs	f7, 2, [r5, #-0]
 39c:	696e6961 	stmdbvs	lr!, {r0, r5, r6, r8, fp, sp, lr}^
 3a0:	6b00676e 	blvs	1a160 <__bss_end+0xe160>
 3a4:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 3a8:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 3ac:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 3b0:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 3b4:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 3b8:	612f6372 			; <UNDEFINED> instruction: 0x612f6372
 3bc:	30317364 	eorscc	r7, r1, r4, ror #6
 3c0:	632e3531 			; <UNDEFINED> instruction: 0x632e3531
 3c4:	6e6f6300 	cdpvs	3, 6, cr6, cr15, cr0, {0}
 3c8:	5f676966 	svcpl	0x00676966
 3cc:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
 3d0:	64610065 	strbtvs	r0, [r1], #-101	; 0xffffff9b
 3d4:	65725f63 	ldrbvs	r5, [r2, #-3939]!	; 0xfffff09d
 3d8:	635f6461 	cmpvs	pc, #1627389952	; 0x61000000
 3dc:	65766e6f 	ldrbvs	r6, [r6, #-3695]!	; 0xfffff191
 3e0:	6f697372 	svcvs	0x00697372
 3e4:	6572006e 	ldrbvs	r0, [r2, #-110]!	; 0xffffff92
 3e8:	6c615674 	stclvs	6, cr5, [r1], #-464	; 0xfffffe30
 3ec:	6e6f6300 	cdpvs	3, 6, cr6, cr15, cr0, {0}
 3f0:	5f676966 	svcpl	0x00676966
 3f4:	006c6176 	rsbeq	r6, ip, r6, ror r1
 3f8:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
 3fc:	006c656e 	rsbeq	r6, ip, lr, ror #10
 400:	5f636461 	svcpl	0x00636461
 404:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
 408:	6f635f65 	svcvs	0x00635f65
 40c:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 410:	75627200 	strbvc	r7, [r2, #-512]!	; 0xfffffe00
 414:	616d0066 	cmnvs	sp, r6, rrx
 418:	6b006b73 	blvs	1b1ec <__bss_end+0xf1ec>
 41c:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 420:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 424:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 428:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 42c:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 430:	752f6372 	strvc	r6, [pc, #-882]!	; c6 <__start-0x7f3a>
 434:	736c6974 	cmnvc	ip, #116, 18	; 0x1d0000
 438:	5f00632e 	svcpl	0x0000632e
 43c:	7669645f 			; <UNDEFINED> instruction: 0x7669645f
 440:	00336964 	eorseq	r6, r3, r4, ror #18
 444:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
 448:	672f646c 	strvs	r6, [pc, -ip, ror #8]!
 44c:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
 450:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 454:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 458:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 45c:	5252442d 	subspl	r4, r2, #754974720	; 0x2d000000
 460:	2f414c6e 	svccs	0x00414c6e
 464:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 468:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 46c:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 470:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 474:	2e342d69 	cdpcs	13, 3, cr2, cr4, cr9, {3}
 478:	2b332e39 	blcs	ccbd64 <__user_program+0x9cbd64>
 47c:	326e7673 	rsbcc	r7, lr, #120586240	; 0x7300000
 480:	37313133 			; <UNDEFINED> instruction: 0x37313133
 484:	75622f37 	strbvc	r2, [r2, #-3895]!	; 0xfffff0c9
 488:	2f646c69 	svccs	0x00646c69
 48c:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 490:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 494:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 498:	696c2f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, sp}^
 49c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 4a0:	675f5f00 	ldrbvs	r5, [pc, -r0, lsl #30]
 4a4:	755f756e 	ldrbvc	r7, [pc, #-1390]	; ffffff3e <__user_program+0xffcfff3e>
 4a8:	7669646c 	strbtvc	r6, [r9], -ip, ror #8
 4ac:	5f646f6d 	svcpl	0x00646f6d
 4b0:	706c6568 	rsbvc	r6, ip, r8, ror #10
 4b4:	2e007265 	cdpcs	2, 0, cr7, cr0, cr5, {3}
 4b8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 4bc:	2f2e2e2f 	svccs	0x002e2e2f
 4c0:	2f637273 	svccs	0x00637273
 4c4:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 4c8:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 4cc:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 4d0:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 4d4:	70622f6d 	rsbvc	r2, r2, sp, ror #30
 4d8:	2e696261 	cdpcs	2, 6, cr6, cr9, cr1, {3}
 4dc:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
 4e0:	20432055 	subcs	r2, r3, r5, asr r0
 4e4:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
 4e8:	30322033 	eorscc	r2, r2, r3, lsr r0
 4ec:	35303531 	ldrcc	r3, [r0, #-1329]!	; 0xfffffacf
 4f0:	28203932 	stmdacs	r0!, {r1, r4, r5, r8, fp, ip, sp}
 4f4:	72657270 	rsbvc	r7, r5, #112, 4
 4f8:	61656c65 	cmnvs	r5, r5, ror #24
 4fc:	20296573 	eorcs	r6, r9, r3, ror r5
 500:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 504:	672d2067 	strvs	r2, [sp, -r7, rrx]!
 508:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
 50c:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
 510:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
 514:	73662d20 	cmnvc	r6, #32, 26	; 0x800
 518:	6b636174 	blvs	18d8af0 <__user_program+0x15d8af0>
 51c:	6f72702d 	svcvs	0x0072702d
 520:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 524:	732d726f 			; <UNDEFINED> instruction: 0x732d726f
 528:	6e6f7274 	mcrvs	2, 3, r7, cr15, cr4, {3}
 52c:	662d2067 	strtvs	r2, [sp], -r7, rrx
 530:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 534:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 538:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 53c:	2d726f74 	ldclcs	15, cr6, [r2, #-464]!	; 0xfffffe30
 540:	6f727473 	svcvs	0x00727473
 544:	2d20676e 	stccs	7, cr6, [r0, #-440]!	; 0xfffffe48
 548:	69756266 	ldmdbvs	r5!, {r1, r2, r5, r6, r9, sp, lr}^
 54c:	6e69646c 	cdpvs	4, 6, cr6, cr9, cr12, {3}
 550:	696c2d67 	stmdbvs	ip!, {r0, r1, r2, r5, r6, r8, sl, fp, sp}^
 554:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 558:	6e662d20 	cdpvs	13, 6, cr2, cr6, cr0, {1}
 55c:	74732d6f 	ldrbtvc	r2, [r3], #-3439	; 0xfffff291
 560:	2d6b6361 	stclcs	3, cr6, [fp, #-388]!	; 0xfffffe7c
 564:	746f7270 	strbtvc	r7, [pc], #-624	; 56c <__start-0x7a94>
 568:	6f746365 	svcvs	0x00746365
 56c:	662d2072 			; <UNDEFINED> instruction: 0x662d2072
 570:	692d6f6e 	pushvs	{r1, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}
 574:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
 578:	662d2065 	strtvs	r2, [sp], -r5, rrx
 57c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
 580:	696c6962 	stmdbvs	ip!, {r1, r5, r6, r8, fp, sp, lr}^
 584:	683d7974 	ldmdavs	sp!, {r2, r4, r5, r6, r8, fp, ip, sp, lr}
 588:	65646469 	strbvs	r6, [r4, #-1129]!	; 0xfffffb97
 58c:	6572006e 	ldrbvs	r0, [r2, #-110]!	; 0xffffff92
 590:	6e69616d 	powvsez	f6, f1, #5.0
 594:	00726564 	rsbseq	r6, r2, r4, ror #10
 598:	6e675f5f 	mcrvs	15, 3, r5, cr7, cr15, {2}
 59c:	646c5f75 	strbtvs	r5, [ip], #-3957	; 0xfffff08b
 5a0:	6f6d7669 	svcvs	0x006d7669
 5a4:	65685f64 	strbvs	r5, [r8, #-3940]!	; 0xfffff09c
 5a8:	7265706c 	rsbvc	r7, r5, #108	; 0x6c
 5ac:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff6b4 <__user_program+0xffcff6b4>
 5b0:	64766964 	ldrbtvs	r6, [r6], #-2404	; 0xfffff69c
 5b4:	71003369 	tstvc	r0, r9, ror #6
 5b8:	69746f75 	ldmdbvs	r4!, {r0, r2, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
 5bc:	00746e65 	rsbseq	r6, r4, r5, ror #28
 5c0:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
 5c4:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff6cc <__user_program+0xffcff6cc>
 5c8:	6d766964 	ldclvs	9, cr6, [r6, #-400]!	; 0xfffffe70
 5cc:	6964646f 	stmdbvs	r4!, {r0, r1, r2, r3, r5, r6, sl, sp, lr}^
 5d0:	53550034 	cmppl	r5, #52	; 0x34
 5d4:	70797449 	rsbsvc	r7, r9, r9, asr #8
 5d8:	2e2e0065 	cdpcs	0, 2, cr0, cr14, cr5, {3}
 5dc:	2f2e2e2f 	svccs	0x002e2e2f
 5e0:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 5e4:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 424 <__start-0x7bdc>
 5e8:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 5ec:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 5f0:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 5f4:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 5f8:	6e755744 	cdpvs	7, 7, cr5, cr5, cr4, {2}
 5fc:	006e6f69 	rsbeq	r6, lr, r9, ror #30
 600:	74494455 	strbvc	r4, [r9], #-1109	; 0xfffffbab
 604:	00657079 	rsbeq	r7, r5, r9, ror r0
 608:	706d6f63 	rsbvc	r6, sp, r3, ror #30
 60c:	2078656c 	rsbscs	r6, r8, ip, ror #10
 610:	616f6c66 	cmnvs	pc, r6, ror #24
 614:	4e470074 	mcrmi	0, 2, r0, cr7, cr4, {3}
 618:	20432055 	subcs	r2, r3, r5, asr r0
 61c:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
 620:	30322033 	eorscc	r2, r2, r3, lsr r0
 624:	35303531 	ldrcc	r3, [r0, #-1329]!	; 0xfffffacf
 628:	28203932 	stmdacs	r0!, {r1, r4, r5, r8, fp, ip, sp}
 62c:	72657270 	rsbvc	r7, r5, #112, 4
 630:	61656c65 	cmnvs	r5, r5, ror #24
 634:	20296573 	eorcs	r6, r9, r3, ror r5
 638:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 63c:	672d2067 	strvs	r2, [sp, -r7, rrx]!
 640:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
 644:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
 648:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
 64c:	73662d20 	cmnvc	r6, #32, 26	; 0x800
 650:	6b636174 	blvs	18d8c28 <__user_program+0x15d8c28>
 654:	6f72702d 	svcvs	0x0072702d
 658:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 65c:	732d726f 			; <UNDEFINED> instruction: 0x732d726f
 660:	6e6f7274 	mcrvs	2, 3, r7, cr15, cr4, {3}
 664:	662d2067 	strtvs	r2, [sp], -r7, rrx
 668:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 66c:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 670:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 674:	2d726f74 	ldclcs	15, cr6, [r2, #-464]!	; 0xfffffe30
 678:	6f727473 	svcvs	0x00727473
 67c:	2d20676e 	stccs	7, cr6, [r0, #-440]!	; 0xfffffe48
 680:	69756266 	ldmdbvs	r5!, {r1, r2, r5, r6, r9, sp, lr}^
 684:	6e69646c 	cdpvs	4, 6, cr6, cr9, cr12, {3}
 688:	696c2d67 	stmdbvs	ip!, {r0, r1, r2, r5, r6, r8, sl, fp, sp}^
 68c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 690:	6e662d20 	cdpvs	13, 6, cr2, cr6, cr0, {1}
 694:	74732d6f 	ldrbtvc	r2, [r3], #-3439	; 0xfffff291
 698:	2d6b6361 	stclcs	3, cr6, [fp, #-388]!	; 0xfffffe7c
 69c:	746f7270 	strbtvc	r7, [pc], #-624	; 6a4 <__start-0x795c>
 6a0:	6f746365 	svcvs	0x00746365
 6a4:	662d2072 			; <UNDEFINED> instruction: 0x662d2072
 6a8:	692d6f6e 	pushvs	{r1, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}
 6ac:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
 6b0:	662d2065 	strtvs	r2, [sp], -r5, rrx
 6b4:	65637865 	strbvs	r7, [r3, #-2149]!	; 0xfffff79b
 6b8:	6f697470 	svcvs	0x00697470
 6bc:	2d20736e 	stccs	3, cr7, [r0, #-440]!	; 0xfffffe48
 6c0:	73697666 	cmnvc	r9, #106954752	; 0x6600000
 6c4:	6c696269 	sfmvs	f6, 2, [r9], #-420	; 0xfffffe5c
 6c8:	3d797469 	cfldrdcc	mvd7, [r9, #-420]!	; 0xfffffe5c
 6cc:	64646968 	strbtvs	r6, [r4], #-2408	; 0xfffff698
 6d0:	63006e65 	movwvs	r6, #3685	; 0xe65
 6d4:	6c706d6f 	ldclvs	13, cr6, [r0], #-444	; 0xfffffe44
 6d8:	64207865 	strtvs	r7, [r0], #-2149	; 0xfffff79b
 6dc:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
 6e0:	57440065 	strbpl	r0, [r4, -r5, rrx]
 6e4:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
 6e8:	Address 0x00000000000006e8 is out of bounds.


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
  24:	1a011803 	bne	46038 <__bss_end+0x3a038>
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
  20:	8b040e42 	blhi	103930 <__bss_end+0xf7930>
  24:	0b0d4201 	bleq	350830 <__user_program+0x50830>
  28:	0d0d8802 	stceq	8, cr8, [sp, #-8]
  2c:	000ecb42 	andeq	ip, lr, r2, asr #22
  30:	0000001c 	andeq	r0, r0, ip, lsl r0
  34:	00000000 	andeq	r0, r0, r0
  38:	00008174 	andeq	r8, r0, r4, ror r1
  3c:	00000084 	andeq	r0, r0, r4, lsl #1
  40:	8b040e42 	blhi	103950 <__bss_end+0xf7950>
  44:	0b0d4201 	bleq	350850 <__user_program+0x50850>
  48:	420d0d7a 	andmi	r0, sp, #7808	; 0x1e80
  4c:	00000ecb 	andeq	r0, r0, fp, asr #29
  50:	0000001c 	andeq	r0, r0, ip, lsl r0
  54:	00000000 	andeq	r0, r0, r0
  58:	000081f8 	strdeq	r8, [r0], -r8	; <UNPREDICTABLE>
  5c:	00000084 	andeq	r0, r0, r4, lsl #1
  60:	8b040e42 	blhi	103970 <__bss_end+0xf7970>
  64:	0b0d4201 	bleq	350870 <__user_program+0x50870>
  68:	420d0d7a 	andmi	r0, sp, #7808	; 0x1e80
  6c:	00000ecb 	andeq	r0, r0, fp, asr #29
  70:	0000001c 	andeq	r0, r0, ip, lsl r0
  74:	00000000 	andeq	r0, r0, r0
  78:	0000827c 	andeq	r8, r0, ip, ror r2
  7c:	000000f8 	strdeq	r0, [r0], -r8
  80:	8b080e42 	blhi	203990 <__end+0xd6990>
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
  ac:	00000054 	andeq	r0, r0, r4, asr r0
  b0:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
  b4:	86038504 	strhi	r8, [r3], -r4, lsl #10
  b8:	00018e02 	andeq	r8, r1, r2, lsl #28
  bc:	0000000c 	andeq	r0, r0, ip
  c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c4:	7c020001 	stcvc	0, cr0, [r2], {1}
  c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  cc:	00000028 	andeq	r0, r0, r8, lsr #32
  d0:	000000bc 	strheq	r0, [r0], -ip
  d4:	000083c8 	andeq	r8, r0, r8, asr #7
  d8:	000000e0 	andeq	r0, r0, r0, ror #1
  dc:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
  e0:	86078508 	strhi	r8, [r7], -r8, lsl #10
  e4:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
  e8:	8a038904 	bhi	e2500 <__bss_end+0xd6500>
  ec:	42018e02 	andmi	r8, r1, #2, 28
  f0:	6a02280e 	bvs	8a130 <__bss_end+0x7e130>
  f4:	0000200e 	andeq	r2, r0, lr
  f8:	00000040 	andeq	r0, r0, r0, asr #32
  fc:	000000bc 	strheq	r0, [r0], -ip
 100:	000084a8 	andeq	r8, r0, r8, lsr #9
 104:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 108:	80100e42 	andshi	r0, r0, r2, asr #28
 10c:	82038104 	andhi	r8, r3, #4, 2
 110:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 114:	0a84280e 	beq	fe10a154 <__user_program+0xfde0a154>
 118:	08860985 	stmeq	r6, {r0, r2, r7, r8, fp}
 11c:	06880787 	streq	r0, [r8], r7, lsl #15
 120:	0e42058e 	cdpeq	5, 4, cr0, cr2, cr14, {4}
 124:	0ed00230 	mrceq	2, 6, r0, cr0, cr0, {1}
 128:	c8ce4228 	stmiagt	lr, {r3, r5, r9, lr}^
 12c:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 130:	c342100e 	movtgt	r1, #8206	; 0x200e
 134:	0ec0c1c2 	acseqdm	f4, f2
 138:	00000000 	andeq	r0, r0, r0
 13c:	0000000c 	andeq	r0, r0, ip
 140:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 144:	7c020001 	stcvc	0, cr0, [r2], {1}
 148:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 14c:	00000014 	andeq	r0, r0, r4, lsl r0
 150:	0000013c 	andeq	r0, r0, ip, lsr r1
 154:	00008660 	andeq	r8, r0, r0, ror #12
 158:	00000064 	andeq	r0, r0, r4, rrx
 15c:	83080e42 	movwhi	r0, #36418	; 0x8e42
 160:	00018e02 	andeq	r8, r1, r2, lsl #28
 164:	0000000c 	andeq	r0, r0, ip
 168:	0000013c 	andeq	r0, r0, ip, lsr r1
 16c:	000086c4 	andeq	r8, r0, r4, asr #13
 170:	00000024 	andeq	r0, r0, r4, lsr #32
 174:	0000000c 	andeq	r0, r0, ip
 178:	0000013c 	andeq	r0, r0, ip, lsr r1
 17c:	000086e8 	andeq	r8, r0, r8, ror #13
 180:	00000024 	andeq	r0, r0, r4, lsr #32
 184:	00000018 	andeq	r0, r0, r8, lsl r0
 188:	0000013c 	andeq	r0, r0, ip, lsr r1
 18c:	0000870c 	andeq	r8, r0, ip, lsl #14
 190:	0000004c 	andeq	r0, r0, ip, asr #32
 194:	83100e42 	tsthi	r0, #1056	; 0x420
 198:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 19c:	00018e02 	andeq	r8, r1, r2, lsl #28
 1a0:	0000000c 	andeq	r0, r0, ip
 1a4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1a8:	7c020001 	stcvc	0, cr0, [r2], {1}
 1ac:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1b0:	00000014 	andeq	r0, r0, r4, lsl r0
 1b4:	000001a0 	andeq	r0, r0, r0, lsr #3
 1b8:	00008758 	andeq	r8, r0, r8, asr r7
 1bc:	00000020 	andeq	r0, r0, r0, lsr #32
 1c0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1c4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1c8:	0000001c 	andeq	r0, r0, ip, lsl r0
 1cc:	000001a0 	andeq	r0, r0, r0, lsr #3
 1d0:	00008778 	andeq	r8, r0, r8, ror r7
 1d4:	00000134 	andeq	r0, r0, r4, lsr r1
 1d8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 1dc:	86058506 	strhi	r8, [r5], -r6, lsl #10
 1e0:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 1e4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1e8:	00000020 	andeq	r0, r0, r0, lsr #32
 1ec:	000001a0 	andeq	r0, r0, r0, lsr #3
 1f0:	000088ac 	andeq	r8, r0, ip, lsr #17
 1f4:	000001c8 	andeq	r0, r0, r8, asr #3
 1f8:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 1fc:	86078508 	strhi	r8, [r7], -r8, lsl #10
 200:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 204:	8a038904 	bhi	e261c <__bss_end+0xd661c>
 208:	00018e02 	andeq	r8, r1, r2, lsl #28
 20c:	0000000c 	andeq	r0, r0, ip
 210:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 214:	7c020001 	stcvc	0, cr0, [r2], {1}
 218:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 21c:	00000018 	andeq	r0, r0, r8, lsl r0
 220:	0000020c 	andeq	r0, r0, ip, lsl #4
 224:	00008a74 	andeq	r8, r0, r4, ror sl
 228:	000000b8 	strheq	r0, [r0], -r8
 22c:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 230:	100e4201 	andne	r4, lr, r1, lsl #4
 234:	040e5602 	streq	r5, [lr], #-1538	; 0xfffff9fe
 238:	00000018 	andeq	r0, r0, r8, lsl r0
 23c:	0000020c 	andeq	r0, r0, ip, lsl #4
 240:	00008b2c 	andeq	r8, r0, ip, lsr #22
 244:	00000070 	andeq	r0, r0, r0, ror r0
 248:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 24c:	100e4201 	andne	r4, lr, r1, lsl #4
 250:	00040e72 	andeq	r0, r4, r2, ror lr
 254:	0000001c 	andeq	r0, r0, ip, lsl r0
 258:	0000020c 	andeq	r0, r0, ip, lsl #4
 25c:	00008b9c 	muleq	r0, ip, fp
 260:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 264:	840c0e42 	strhi	r0, [ip], #-3650	; 0xfffff1be
 268:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 26c:	180e4201 	stmdane	lr, {r0, r9, lr}
 270:	0c0e7202 	sfmeq	f7, 4, [lr], {2}
 274:	00000014 	andeq	r0, r0, r4, lsl r0
 278:	0000020c 	andeq	r0, r0, ip, lsl #4
 27c:	00008c8c 	andeq	r8, r0, ip, lsl #25
 280:	00000050 	andeq	r0, r0, r0, asr r0
 284:	83080e42 	movwhi	r0, #36418	; 0x8e42
 288:	00018e02 	andeq	r8, r1, r2, lsl #28
 28c:	0000000c 	andeq	r0, r0, ip
 290:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 294:	7c020001 	stcvc	0, cr0, [r2], {1}
 298:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 29c:	0000000c 	andeq	r0, r0, ip
 2a0:	0000028c 	andeq	r0, r0, ip, lsl #5
 2a4:	00008cdc 	ldrdeq	r8, [r0], -ip
 2a8:	00000008 	andeq	r0, r0, r8
 2ac:	0000000c 	andeq	r0, r0, ip
 2b0:	0000028c 	andeq	r0, r0, ip, lsl #5
 2b4:	00008ce4 	andeq	r8, r0, r4, ror #25
 2b8:	00000008 	andeq	r0, r0, r8
 2bc:	0000000c 	andeq	r0, r0, ip
 2c0:	0000028c 	andeq	r0, r0, ip, lsl #5
 2c4:	00008cec 	andeq	r8, r0, ip, ror #25
 2c8:	00000018 	andeq	r0, r0, r8, lsl r0
 2cc:	0000000c 	andeq	r0, r0, ip
 2d0:	0000028c 	andeq	r0, r0, ip, lsl #5
 2d4:	00008d04 	andeq	r8, r0, r4, lsl #26
 2d8:	00000010 	andeq	r0, r0, r0, lsl r0
 2dc:	0000000c 	andeq	r0, r0, ip
 2e0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2e4:	7c010001 	stcvc	0, cr0, [r1], {1}
 2e8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2ec:	00000014 	andeq	r0, r0, r4, lsl r0
 2f0:	000002dc 	ldrdeq	r0, [r0], -ip
 2f4:	00008d58 	andeq	r8, r0, r8, asr sp
 2f8:	0000003c 	andeq	r0, r0, ip, lsr r0
 2fc:	0e038e68 	cdpeq	14, 0, cr8, cr3, cr8, {3}
 300:	00000010 	andeq	r0, r0, r0, lsl r0
 304:	0000000c 	andeq	r0, r0, ip
 308:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 30c:	7c020001 	stcvc	0, cr0, [r2], {1}
 310:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 314:	0000002c 	andeq	r0, r0, ip, lsr #32
 318:	00000304 	andeq	r0, r0, r4, lsl #6
 31c:	00008d94 	muleq	r0, r4, sp
 320:	00000044 	andeq	r0, r0, r4, asr #32
 324:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 328:	86078508 	strhi	r8, [r7], -r8, lsl #10
 32c:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 330:	8a038904 	bhi	e2748 <__bss_end+0xd6748>
 334:	5e018e02 	cdppl	14, 0, cr8, cr1, cr2, {0}
 338:	c8c9cace 	stmiagt	r9, {r1, r2, r3, r6, r7, r9, fp, lr, pc}^
 33c:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 340:	0000000e 	andeq	r0, r0, lr
 344:	00000024 	andeq	r0, r0, r4, lsr #32
 348:	00000304 	andeq	r0, r0, r4, lsl #6
 34c:	00008dd8 	ldrdeq	r8, [r0], -r8	; <UNPREDICTABLE>
 350:	00000040 	andeq	r0, r0, r0, asr #32
 354:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 358:	86058506 	strhi	r8, [r5], -r6, lsl #10
 35c:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 360:	5c018e02 	stcpl	14, cr8, [r1], {2}
 364:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 368:	000ec4c5 	andeq	ip, lr, r5, asr #9
 36c:	0000000c 	andeq	r0, r0, ip
 370:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 374:	7c020001 	stcvc	0, cr0, [r2], {1}
 378:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 37c:	00000034 	andeq	r0, r0, r4, lsr r0
 380:	0000036c 	andeq	r0, r0, ip, ror #6
 384:	00008e1c 	andeq	r8, r0, ip, lsl lr
 388:	00000178 	andeq	r0, r0, r8, ror r1
 38c:	83280e44 			; <UNDEFINED> instruction: 0x83280e44
 390:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
 394:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 398:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 39c:	8b038a04 	blhi	e2bb4 <__bss_end+0xd6bb4>
 3a0:	02018e02 	andeq	r8, r1, #2, 28
 3a4:	cbce0aa6 	blgt	ff382e44 <__user_program+0xff082e44>
 3a8:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 3ac:	c3c4c5c6 	bicgt	ip, r4, #830472192	; 0x31800000
 3b0:	0b42000e 	bleq	10803f0 <__user_program+0xd803f0>
 3b4:	0000000c 	andeq	r0, r0, ip
 3b8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3bc:	7c020001 	stcvc	0, cr0, [r2], {1}
 3c0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3c4:	0000002c 	andeq	r0, r0, ip, lsr #32
 3c8:	000003b4 			; <UNDEFINED> instruction: 0x000003b4
 3cc:	00008f94 	muleq	r0, r4, pc	; <UNPREDICTABLE>
 3d0:	00000120 	andeq	r0, r0, r0, lsr #2
 3d4:	84200e46 	strthi	r0, [r0], #-3654	; 0xfffff1ba
 3d8:	86078508 	strhi	r8, [r7], -r8, lsl #10
 3dc:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 3e0:	8a038904 	bhi	e27f8 <__bss_end+0xd67f8>
 3e4:	02018e02 	andeq	r8, r1, #2, 28
 3e8:	c9cace88 	stmibgt	sl, {r3, r7, r9, sl, fp, lr, pc}^
 3ec:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 3f0:	00000ec4 	andeq	r0, r0, r4, asr #29

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000048 	andeq	r0, r0, r8, asr #32
   4:	0000004f 	andeq	r0, r0, pc, asr #32
   8:	00510001 	subseq	r0, r1, r1
   c:	00000000 	andeq	r0, r0, r0
  10:	2c000000 	stccs	0, cr0, [r0], {-0}
  14:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
  18:	01000000 	mrseq	r0, (UNDEF: 0)
  1c:	00005000 	andeq	r5, r0, r0
	...
  28:	00480000 	subeq	r0, r8, r0
  2c:	00010000 	andeq	r0, r1, r0
  30:	00004850 	andeq	r4, r0, r0, asr r8
  34:	0000e000 	andeq	lr, r0, r0
  38:	f3000400 	vshl.u8	d0, d0, d0
  3c:	009f5001 	addseq	r5, pc, r1
	...
  48:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
  4c:	06000000 	streq	r0, [r0], -r0
  50:	04935200 	ldreq	r5, [r3], #512	; 0x200
  54:	48049353 	stmdami	r4, {r0, r1, r4, r6, r8, r9, ip, pc}
  58:	7c000000 	stcvc	0, cr0, [r0], {-0}
  5c:	06000000 	streq	r0, [r0], -r0
  60:	04935600 	ldreq	r5, [r3], #1536	; 0x600
  64:	80049357 	andhi	r9, r4, r7, asr r3
  68:	e0000000 	and	r0, r0, r0
  6c:	06000000 	streq	r0, [r0], -r0
  70:	04935600 	ldreq	r5, [r3], #1536	; 0x600
  74:	00049357 	andeq	r9, r4, r7, asr r3
  78:	00000000 	andeq	r0, r0, r0
  7c:	10000000 	andne	r0, r0, r0
  80:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
  84:	02000000 	andeq	r0, r0, #0
  88:	909f3000 	addsls	r3, pc, r0
  8c:	9c000000 	stcls	0, cr0, [r0], {-0}
  90:	01000000 	mrseq	r0, (UNDEF: 0)
  94:	00b05800 	adcseq	r5, r0, r0, lsl #16
  98:	00b80000 	adcseq	r0, r8, r0
  9c:	00010000 	andeq	r0, r1, r0
  a0:	0000b858 	andeq	fp, r0, r8, asr r8
  a4:	0000c400 	andeq	ip, r0, r0, lsl #8
  a8:	78000300 	stmdavc	r0, {r8, r9}
  ac:	00009f7f 	andeq	r9, r0, pc, ror pc
  b0:	00000000 	andeq	r0, r0, r0
  b4:	00100000 	andseq	r0, r0, r0
  b8:	00380000 	eorseq	r0, r8, r0
  bc:	00030000 	andeq	r0, r3, r0
  c0:	389f5791 	ldmcc	pc, {r0, r4, r7, r8, r9, sl, ip, lr}	; <UNPREDICTABLE>
  c4:	64000000 	strvs	r0, [r0], #-0
  c8:	01000000 	mrseq	r0, (UNDEF: 0)
  cc:	00645400 	rsbeq	r5, r4, r0, lsl #8
  d0:	009c0000 	addseq	r0, ip, r0
  d4:	00030000 	andeq	r0, r3, r0
  d8:	9c9f0174 	ldflss	f0, [pc], {116}	; 0x74
  dc:	b0000000 	andlt	r0, r0, r0
  e0:	01000000 	mrseq	r0, (UNDEF: 0)
  e4:	00b05400 	adcseq	r5, r0, r0, lsl #8
  e8:	00c40000 	sbceq	r0, r4, r0
  ec:	00030000 	andeq	r0, r3, r0
  f0:	c49f0174 	ldrgt	r0, [pc], #372	; f8 <__start-0x7f08>
  f4:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
  f8:	01000000 	mrseq	r0, (UNDEF: 0)
  fc:	00c85400 	sbceq	r5, r8, r0, lsl #8
 100:	00cc0000 	sbceq	r0, ip, r0
 104:	00030000 	andeq	r0, r3, r0
 108:	cc9f7f74 	ldcgt	15, cr7, [pc], {116}	; 0x74
 10c:	e0000000 	and	r0, r0, r0
 110:	01000000 	mrseq	r0, (UNDEF: 0)
 114:	00005400 	andeq	r5, r0, r0, lsl #8
 118:	00000000 	andeq	r0, r0, r0
 11c:	00e00000 	rsceq	r0, r0, r0
 120:	01080000 	mrseq	r0, (UNDEF: 8)
 124:	00020000 	andeq	r0, r2, r0
 128:	01087091 	swpeq	r7, r1, [r8]
 12c:	011c0000 	tsteq	ip, r0
 130:	00010000 	andeq	r0, r1, r0
 134:	00011c54 	andeq	r1, r1, r4, asr ip
 138:	00027c00 	andeq	r7, r2, r0, lsl #24
 13c:	74000300 	strvc	r0, [r0], #-768	; 0xfffffd00
 140:	027c9f01 	rsbseq	r9, ip, #1, 30
 144:	02880000 	addeq	r0, r8, #0
 148:	00010000 	andeq	r0, r1, r0
 14c:	00000054 	andeq	r0, r0, r4, asr r0
 150:	00000000 	andeq	r0, r0, r0
 154:	0001e800 	andeq	lr, r1, r0, lsl #16
 158:	0001f400 	andeq	pc, r1, r0, lsl #8
 15c:	73000200 	movwvc	r0, #512	; 0x200
 160:	0001f400 	andeq	pc, r1, r0, lsl #8
 164:	0001f700 	andeq	pc, r1, r0, lsl #14
 168:	52000100 	andpl	r0, r0, #0, 2
	...
 174:	00000208 	andeq	r0, r0, r8, lsl #4
 178:	00000214 	andeq	r0, r0, r4, lsl r2
 17c:	00730002 	rsbseq	r0, r3, r2
 180:	00000214 	andeq	r0, r0, r4, lsl r2
 184:	00000217 	andeq	r0, r0, r7, lsl r2
 188:	00520001 	subseq	r0, r2, r1
 18c:	00000000 	andeq	r0, r0, r0
 190:	84000000 	strhi	r0, [r0], #-0
 194:	bc000001 	stclt	0, cr0, [r0], {1}
 198:	01000001 	tsteq	r0, r1
 19c:	00005500 	andeq	r5, r0, r0, lsl #10
 1a0:	00000000 	andeq	r0, r0, r0
 1a4:	01c80000 	biceq	r0, r8, r0
 1a8:	01d40000 	bicseq	r0, r4, r0
 1ac:	00020000 	andeq	r0, r2, r0
 1b0:	01d40073 	bicseq	r0, r4, r3, ror r0
 1b4:	01d70000 	bicseq	r0, r7, r0
 1b8:	00010000 	andeq	r0, r1, r0
 1bc:	00000052 	andeq	r0, r0, r2, asr r0
 1c0:	00000000 	andeq	r0, r0, r0
 1c4:	00022c00 	andeq	r2, r2, r0, lsl #24
 1c8:	00024000 	andeq	r4, r2, r0
 1cc:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
 1d0:	00000240 	andeq	r0, r0, r0, asr #4
 1d4:	0000024c 	andeq	r0, r0, ip, asr #4
 1d8:	7f750003 	svcvc	0x00750003
 1dc:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 1e0:	00000000 	andeq	r0, r0, r0
 1e4:	00025800 	andeq	r5, r2, r0, lsl #16
 1e8:	00025f00 	andeq	r5, r2, r0, lsl #30
 1ec:	73000200 	movwvc	r0, #512	; 0x200
	...
 1f8:	0000b000 	andeq	fp, r0, r0
 1fc:	0000c800 	andeq	ip, r0, r0, lsl #16
 200:	30000200 	andcc	r0, r0, r0, lsl #4
 204:	0000c89f 	muleq	r0, pc, r8	; <UNPREDICTABLE>
 208:	0000d700 	andeq	sp, r0, r0, lsl #14
 20c:	52000100 	andpl	r0, r0, #0, 2
 210:	000000d8 	ldrdeq	r0, [r0], -r8
 214:	000000dc 	ldrdeq	r0, [r0], -ip
 218:	9f310002 	svcls	0x00310002
 21c:	000000dc 	ldrdeq	r0, [r0], -ip
 220:	000000f8 	strdeq	r0, [r0], -r8
 224:	00520001 	subseq	r0, r2, r1
	...
 230:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 234:	01000000 	mrseq	r0, (UNDEF: 0)
 238:	00085000 	andeq	r5, r8, r0
 23c:	00200000 	eoreq	r0, r0, r0
 240:	00040000 	andeq	r0, r4, r0
 244:	9f5001f3 	svcls	0x005001f3
	...
 250:	00000020 	andeq	r0, r0, r0, lsr #32
 254:	00000034 	andeq	r0, r0, r4, lsr r0
 258:	34500001 	ldrbcc	r0, [r0], #-1
 25c:	90000000 	andls	r0, r0, r0
 260:	01000000 	mrseq	r0, (UNDEF: 0)
 264:	00905500 	addseq	r5, r0, r0, lsl #10
 268:	00a40000 	adceq	r0, r4, r0
 26c:	00030000 	andeq	r0, r3, r0
 270:	a49f0175 	ldrge	r0, [pc], #373	; 278 <__start-0x7d88>
 274:	54000000 	strpl	r0, [r0], #-0
 278:	04000001 	streq	r0, [r0], #-1
 27c:	5001f300 	andpl	pc, r1, r0, lsl #6
 280:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 284:	00000000 	andeq	r0, r0, r0
 288:	00002000 	andeq	r2, r0, r0
 28c:	00003b00 	andeq	r3, r0, r0, lsl #22
 290:	51000100 	mrspl	r0, (UNDEF: 16)
 294:	0000003b 	andeq	r0, r0, fp, lsr r0
 298:	00000154 	andeq	r0, r0, r4, asr r1
 29c:	01f30004 	mvnseq	r0, r4
 2a0:	00009f51 	andeq	r9, r0, r1, asr pc
 2a4:	00000000 	andeq	r0, r0, r0
 2a8:	00200000 	eoreq	r0, r0, r0
 2ac:	003b0000 	eorseq	r0, fp, r0
 2b0:	00010000 	andeq	r0, r1, r0
 2b4:	00003b52 	andeq	r3, r0, r2, asr fp
 2b8:	00015400 	andeq	r5, r1, r0, lsl #8
 2bc:	f3000400 	vshl.u8	d0, d0, d0
 2c0:	009f5201 	addseq	r5, pc, r1, lsl #4
 2c4:	00000000 	andeq	r0, r0, r0
 2c8:	30000000 	andcc	r0, r0, r0
 2cc:	3b000000 	blcc	2d4 <__start-0x7d2c>
 2d0:	01000000 	mrseq	r0, (UNDEF: 0)
 2d4:	003b5100 	eorseq	r5, fp, r0, lsl #2
 2d8:	00940000 	addseq	r0, r4, r0
 2dc:	00010000 	andeq	r0, r1, r0
 2e0:	00009454 	andeq	r9, r0, r4, asr r4
 2e4:	0000a400 	andeq	sl, r0, r0, lsl #8
 2e8:	58000100 	stmdapl	r0, {r8}
 2ec:	000000a4 	andeq	r0, r0, r4, lsr #1
 2f0:	000000d8 	ldrdeq	r0, [r0], -r8
 2f4:	0078000a 	rsbseq	r0, r8, sl
 2f8:	1affff0a 	bne	ffffff28 <__user_program+0xffcfff28>
 2fc:	9f1c0074 	svcls	0x001c0074
	...
 308:	00000030 	andeq	r0, r0, r0, lsr r0
 30c:	000000a4 	andeq	r0, r0, r4, lsr #1
 310:	9f300002 	svcls	0x00300002
 314:	000000a4 	andeq	r0, r0, r4, lsr #1
 318:	000000d8 	ldrdeq	r0, [r0], -r8
 31c:	00540001 	subseq	r0, r4, r1
 320:	00000000 	andeq	r0, r0, r0
 324:	30000000 	andcc	r0, r0, r0
 328:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
 32c:	02000001 	andeq	r0, r0, #1
 330:	009f3000 	addseq	r3, pc, r0
 334:	00000000 	andeq	r0, r0, r0
 338:	54000000 	strpl	r0, [r0], #-0
 33c:	74000001 	strvc	r0, [r0], #-1
 340:	01000001 	tsteq	r0, r1
 344:	01745000 	cmneq	r4, r0
 348:	031c0000 	tsteq	ip, #0
 34c:	00010000 	andeq	r0, r1, r0
 350:	0000005a 	andeq	r0, r0, sl, asr r0
 354:	00000000 	andeq	r0, r0, r0
 358:	00015400 	andeq	r5, r1, r0, lsl #8
 35c:	00017800 	andeq	r7, r1, r0, lsl #16
 360:	51000100 	mrspl	r0, (UNDEF: 16)
 364:	00000178 	andeq	r0, r0, r8, ror r1
 368:	0000031c 	andeq	r0, r0, ip, lsl r3
 36c:	01f30004 	mvnseq	r0, r4
 370:	00009f51 	andeq	r9, r0, r1, asr pc
 374:	00000000 	andeq	r0, r0, r0
 378:	01540000 	cmpeq	r4, r0
 37c:	017c0000 	cmneq	ip, r0
 380:	00010000 	andeq	r0, r1, r0
 384:	00017c52 	andeq	r7, r1, r2, asr ip
 388:	00031c00 	andeq	r1, r3, r0, lsl #24
 38c:	f3000400 	vshl.u8	d0, d0, d0
 390:	009f5201 	addseq	r5, pc, r1, lsl #4
 394:	00000000 	andeq	r0, r0, r0
 398:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
 39c:	78000001 	stmdavc	r0, {r0}
 3a0:	01000001 	tsteq	r0, r1
 3a4:	01785100 	cmneq	r8, r0, lsl #2
 3a8:	01fc0000 	mvnseq	r0, r0
 3ac:	00010000 	andeq	r0, r1, r0
 3b0:	0001fc54 	andeq	pc, r1, r4, asr ip	; <UNPREDICTABLE>
 3b4:	00020400 	andeq	r0, r2, r0, lsl #8
 3b8:	74000300 	strvc	r0, [r0], #-768	; 0xfffffd00
 3bc:	02049f7f 	andeq	r9, r4, #508	; 0x1fc
 3c0:	02980000 	addseq	r0, r8, #0
 3c4:	00010000 	andeq	r0, r1, r0
 3c8:	00029854 	andeq	r9, r2, r4, asr r8
 3cc:	00029c00 	andeq	r9, r2, r0, lsl #24
 3d0:	74000300 	strvc	r0, [r0], #-768	; 0xfffffd00
 3d4:	029c9f7f 	addseq	r9, ip, #508	; 0x1fc
 3d8:	02ec0000 	rsceq	r0, ip, #0
 3dc:	00010000 	andeq	r0, r1, r0
 3e0:	00000054 	andeq	r0, r0, r4, asr r0
 3e4:	00000000 	andeq	r0, r0, r0
 3e8:	00016800 	andeq	r6, r1, r0, lsl #16
 3ec:	0001dc00 	andeq	sp, r1, r0, lsl #24
 3f0:	30000200 	andcc	r0, r0, r0, lsl #4
 3f4:	0001dc9f 	muleq	r1, pc, ip	; <UNPREDICTABLE>
 3f8:	00026800 	andeq	r6, r2, r0, lsl #16
 3fc:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
 400:	00000284 	andeq	r0, r0, r4, lsl #5
 404:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 408:	00750006 	rsbseq	r0, r5, r6
 40c:	9f1c007a 	svcls	0x001c007a
	...
 418:	00000168 	andeq	r0, r0, r8, ror #2
 41c:	000002f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 420:	9f300002 	svcls	0x00300002
	...
 430:	00000024 	andeq	r0, r0, r4, lsr #32
 434:	24500001 	ldrbcs	r0, [r0], #-1
 438:	b8000000 	stmdalt	r0, {}	; <UNPREDICTABLE>
 43c:	04000000 	streq	r0, [r0], #-0
 440:	5001f300 	andpl	pc, r1, r0, lsl #6
 444:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 448:	00000000 	andeq	r0, r0, r0
 44c:	00009800 	andeq	r9, r0, r0, lsl #16
 450:	0000af00 	andeq	sl, r0, r0, lsl #30
 454:	7d001200 	sfmvc	f1, 4, [r0, #-0]
 458:	08019400 	stmdaeq	r1, {sl, ip, pc}
 45c:	24381aff 	ldrtcs	r1, [r8], #-2815	; 0xfffff501
 460:	01946991 			; <UNDEFINED> instruction: 0x01946991
 464:	221aff08 	andscs	pc, sl, #8, 30
 468:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 46c:	00000000 	andeq	r0, r0, r0
 470:	00003c00 	andeq	r3, r0, r0, lsl #24
 474:	00004800 	andeq	r4, r0, r0, lsl #16
 478:	50000100 	andpl	r0, r0, r0, lsl #2
 47c:	00000054 	andeq	r0, r0, r4, asr r0
 480:	00000058 	andeq	r0, r0, r8, asr r0
 484:	84500001 	ldrbhi	r0, [r0], #-1
 488:	90000000 	andls	r0, r0, r0
 48c:	01000000 	mrseq	r0, (UNDEF: 0)
 490:	00005000 	andeq	r5, r0, r0
 494:	00000000 	andeq	r0, r0, r0
 498:	00d80000 	sbcseq	r0, r8, r0
 49c:	00e40000 	rsceq	r0, r4, r0
 4a0:	00010000 	andeq	r0, r1, r0
 4a4:	0000fc50 	andeq	pc, r0, r0, asr ip	; <UNPREDICTABLE>
 4a8:	00010800 	andeq	r0, r1, r0, lsl #16
 4ac:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 4b8:	00000168 	andeq	r0, r0, r8, ror #2
 4bc:	00000183 	andeq	r0, r0, r3, lsl #3
 4c0:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 4c4:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 4c8:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 4cc:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 4d0:	9f221aff 	svcls	0x00221aff
 4d4:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
 4d8:	000001cb 	andeq	r0, r0, fp, asr #3
 4dc:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 4e0:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 4e4:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 4e8:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 4ec:	9f221aff 	svcls	0x00221aff
 4f0:	000001f4 	strdeq	r0, [r0], -r4
 4f4:	0000020f 	andeq	r0, r0, pc, lsl #4
 4f8:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 4fc:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 500:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 504:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 508:	9f221aff 	svcls	0x00221aff
	...
 514:	00000154 	andeq	r0, r0, r4, asr r1
 518:	00000160 	andeq	r0, r0, r0, ror #2
 51c:	00500001 	subseq	r0, r0, r1
 520:	00000000 	andeq	r0, r0, r0
 524:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 528:	3c000002 	stccc	0, cr0, [r0], {2}
 52c:	01000002 	tsteq	r0, r2
 530:	023c5000 	eorseq	r5, ip, #0
 534:	02400000 	subeq	r0, r0, #0
 538:	00040000 	andeq	r0, r4, r0
 53c:	9f5001f3 	svcls	0x005001f3
 540:	00000240 	andeq	r0, r0, r0, asr #4
 544:	00000244 	andeq	r0, r0, r4, asr #4
 548:	44500001 	ldrbmi	r0, [r0], #-1
 54c:	48000002 	stmdami	r0, {r1}
 550:	04000002 	streq	r0, [r0], #-2
 554:	5001f300 	andpl	pc, r1, r0, lsl #6
 558:	0002489f 	muleq	r2, pc, r8	; <UNPREDICTABLE>
 55c:	00024c00 	andeq	r4, r2, r0, lsl #24
 560:	50000100 	andpl	r0, r0, r0, lsl #2
 564:	0000024c 	andeq	r0, r0, ip, asr #4
 568:	00000250 	andeq	r0, r0, r0, asr r2
 56c:	01f30004 	mvnseq	r0, r4
 570:	02509f50 	subseq	r9, r0, #80, 30	; 0x140
 574:	02540000 	subseq	r0, r4, #0
 578:	00010000 	andeq	r0, r1, r0
 57c:	00025450 	andeq	r5, r2, r0, asr r4
 580:	00026000 	andeq	r6, r2, r0
 584:	f3000400 	vshl.u8	d0, d0, d0
 588:	609f5001 	addsvs	r5, pc, r1
 58c:	64000002 	strvs	r0, [r0], #-2
 590:	01000002 	tsteq	r0, r2
 594:	02645000 	rsbeq	r5, r4, #0
 598:	02680000 	rsbeq	r0, r8, #0
 59c:	00040000 	andeq	r0, r4, r0
 5a0:	9f5001f3 	svcls	0x005001f3
	...
 5ac:	0000021c 	andeq	r0, r0, ip, lsl r2
 5b0:	00000240 	andeq	r0, r0, r0, asr #4
 5b4:	830a0004 	movwhi	r0, #40964	; 0xa004
 5b8:	02409f40 	subeq	r9, r0, #64, 30	; 0x100
 5bc:	02480000 	subeq	r0, r8, #0
 5c0:	00040000 	andeq	r0, r4, r0
 5c4:	9f60830a 	svcls	0x0060830a
 5c8:	00000248 	andeq	r0, r0, r8, asr #4
 5cc:	00000250 	andeq	r0, r0, r0, asr r2
 5d0:	830a0004 	movwhi	r0, #40964	; 0xa004
 5d4:	02509f70 	subseq	r9, r0, #112, 30	; 0x1c0
 5d8:	02540000 	subseq	r0, r4, #0
 5dc:	00040000 	andeq	r0, r4, r0
 5e0:	9f40830a 	svcls	0x0040830a
 5e4:	00000254 	andeq	r0, r0, r4, asr r2
 5e8:	00000257 	andeq	r0, r0, r7, asr r2
 5ec:	60500001 	subsvs	r0, r0, r1
 5f0:	68000002 	stmdavs	r0, {r1}
 5f4:	04000002 	streq	r0, [r0], #-2
 5f8:	40830a00 	addmi	r0, r3, r0, lsl #20
 5fc:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 608:	00000400 	andeq	r0, r0, r0, lsl #8
 60c:	50000100 	andpl	r0, r0, r0, lsl #2
 610:	00000004 	andeq	r0, r0, r4
 614:	00000008 	andeq	r0, r0, r8
 618:	01f30004 	mvnseq	r0, r4
 61c:	00009f50 	andeq	r9, r0, r0, asr pc
 620:	00000000 	andeq	r0, r0, r0
 624:	00100000 	andseq	r0, r0, r0
 628:	001c0000 	andseq	r0, ip, r0
 62c:	00010000 	andeq	r0, r1, r0
 630:	00001c51 	andeq	r1, r0, r1, asr ip
 634:	00002800 	andeq	r2, r0, r0, lsl #16
 638:	f3000400 	vshl.u8	d0, d0, d0
 63c:	009f5101 	addseq	r5, pc, r1, lsl #2
 640:	00000000 	andeq	r0, r0, r0
 644:	10000000 	andne	r0, r0, r0
 648:	20000000 	andcs	r0, r0, r0
 64c:	01000000 	mrseq	r0, (UNDEF: 0)
 650:	00205200 	eoreq	r5, r0, r0, lsl #4
 654:	00280000 	eoreq	r0, r8, r0
 658:	00040000 	andeq	r0, r4, r0
 65c:	9f5201f3 	svcls	0x005201f3
	...
 668:	00000028 	andeq	r0, r0, r8, lsr #32
 66c:	0000002c 	andeq	r0, r0, ip, lsr #32
 670:	2c500001 	mrrccs	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
 674:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 678:	04000000 	streq	r0, [r0], #-0
 67c:	5001f300 	andpl	pc, r1, r0, lsl #6
 680:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 684:	00000000 	andeq	r0, r0, r0
 688:	00002800 	andeq	r2, r0, r0, lsl #16
 68c:	00003000 	andeq	r3, r0, r0
 690:	51000100 	mrspl	r0, (UNDEF: 16)
 694:	00000030 	andeq	r0, r0, r0, lsr r0
 698:	00000038 	andeq	r0, r0, r8, lsr r0
 69c:	01f30004 	mvnseq	r0, r4
 6a0:	00009f51 	andeq	r9, r0, r1, asr pc
	...
 6ac:	001b0000 	andseq	r0, fp, r0
 6b0:	00060000 	andeq	r0, r6, r0
 6b4:	51049350 	tstpl	r4, r0, asr r3
 6b8:	001b0493 	mulseq	fp, r3, r4
 6bc:	00440000 	subeq	r0, r4, r0
 6c0:	00060000 	andeq	r0, r6, r0
 6c4:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
 6c8:	00009f25 	andeq	r9, r0, r5, lsr #30
	...
 6d4:	001b0000 	andseq	r0, fp, r0
 6d8:	00060000 	andeq	r0, r6, r0
 6dc:	53049352 	movwpl	r9, #17234	; 0x4352
 6e0:	001b0493 	mulseq	fp, r3, r4
 6e4:	00440000 	subeq	r0, r4, r0
 6e8:	00060000 	andeq	r0, r6, r0
 6ec:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
 6f0:	00009f25 	andeq	r9, r0, r5, lsr #30
 6f4:	00000000 	andeq	r0, r0, r0
 6f8:	00440000 	subeq	r0, r4, r0
 6fc:	005f0000 	subseq	r0, pc, r0
 700:	00060000 	andeq	r0, r6, r0
 704:	51049350 	tstpl	r4, r0, asr r3
 708:	005f0493 			; <UNDEFINED> instruction: 0x005f0493
 70c:	00840000 	addeq	r0, r4, r0
 710:	00060000 	andeq	r0, r6, r0
 714:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
 718:	00009f25 	andeq	r9, r0, r5, lsr #30
 71c:	00000000 	andeq	r0, r0, r0
 720:	00440000 	subeq	r0, r4, r0
 724:	005f0000 	subseq	r0, pc, r0
 728:	00060000 	andeq	r0, r6, r0
 72c:	53049352 	movwpl	r9, #17234	; 0x4352
 730:	005f0493 			; <UNDEFINED> instruction: 0x005f0493
 734:	00840000 	addeq	r0, r4, r0
 738:	00060000 	andeq	r0, r6, r0
 73c:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
 740:	00009f25 	andeq	r9, r0, r5, lsr #30
	...
 74c:	00440000 	subeq	r0, r4, r0
 750:	00060000 	andeq	r0, r6, r0
 754:	51049350 	tstpl	r4, r0, asr r3
 758:	00440493 	umaaleq	r0, r4, r3, r4
 75c:	01580000 	cmpeq	r8, r0
 760:	00060000 	andeq	r0, r6, r0
 764:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
 768:	01589f25 	cmpeq	r8, r5, lsr #30
 76c:	01780000 	cmneq	r8, r0
 770:	00060000 	andeq	r0, r6, r0
 774:	51049350 	tstpl	r4, r0, asr r3
 778:	00000493 	muleq	r0, r3, r4
	...
 784:	00340000 	eorseq	r0, r4, r0
 788:	00060000 	andeq	r0, r6, r0
 78c:	53049352 	movwpl	r9, #17234	; 0x4352
 790:	00340493 	mlaseq	r4, r3, r4, r0
 794:	01580000 	cmpeq	r8, r0
 798:	00060000 	andeq	r0, r6, r0
 79c:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
 7a0:	01589f25 	cmpeq	r8, r5, lsr #30
 7a4:	01780000 	cmneq	r8, r0
 7a8:	00060000 	andeq	r0, r6, r0
 7ac:	53049352 	movwpl	r9, #17234	; 0x4352
 7b0:	00000493 	muleq	r0, r3, r4
	...
 7bc:	00180000 	andseq	r0, r8, r0
 7c0:	00020000 	andeq	r0, r2, r0
 7c4:	00189f30 	andseq	r9, r8, r0, lsr pc
 7c8:	01540000 	cmpeq	r4, r0
 7cc:	00010000 	andeq	r0, r1, r0
 7d0:	0001585a 	andeq	r5, r1, sl, asr r8
 7d4:	00016800 	andeq	r6, r1, r0, lsl #16
 7d8:	5a000100 	bpl	be0 <__start-0x7420>
 7dc:	00000168 	andeq	r0, r0, r8, ror #2
 7e0:	00000178 	andeq	r0, r0, r8, ror r1
 7e4:	ff090003 			; <UNDEFINED> instruction: 0xff090003
 7e8:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 7ec:	00000000 	andeq	r0, r0, r0
 7f0:	00012c00 	andeq	r2, r1, r0, lsl #24
 7f4:	00013800 	andeq	r3, r1, r0, lsl #16
 7f8:	52000600 	andpl	r0, r0, #0, 12
 7fc:	93530493 	cmpls	r3, #-1828716544	; 0x93000000
 800:	00013804 	andeq	r3, r1, r4, lsl #16
 804:	00014400 	andeq	r4, r1, r0, lsl #8
 808:	f5000d00 			; <UNDEFINED> instruction: 0xf5000d00
 80c:	f51f2500 			; <UNDEFINED> instruction: 0xf51f2500
 810:	f5272502 			; <UNDEFINED> instruction: 0xf5272502
 814:	9f222500 	svcls	0x00222500
	...
 820:	00000028 	andeq	r0, r0, r8, lsr #32
 824:	00000158 	andeq	r0, r0, r8, asr r1
 828:	9f300002 	svcls	0x00300002
	...
 834:	00000028 	andeq	r0, r0, r8, lsr #32
 838:	00000090 	muleq	r0, r0, r0
 83c:	93580006 	cmpls	r8, #6
 840:	04935904 	ldreq	r5, [r3], #2308	; 0x904
	...
 84c:	00000028 	andeq	r0, r0, r8, lsr #32
 850:	00000094 	muleq	r0, r4, r0
 854:	93540006 	cmpls	r4, #6
 858:	04935504 	ldreq	r5, [r3], #1284	; 0x504
	...
 864:	00000028 	andeq	r0, r0, r8, lsr #32
 868:	000000a4 	andeq	r0, r0, r4, lsr #1
 86c:	089e000a 	ldmeq	lr, {r1, r3}
	...
 878:	000000a4 	andeq	r0, r0, r4, lsr #1
 87c:	00000100 	andeq	r0, r0, r0, lsl #2
 880:	93520006 	cmpls	r2, #6
 884:	04935304 	ldreq	r5, [r3], #772	; 0x304
	...
 890:	00000028 	andeq	r0, r0, r8, lsr #32
 894:	00000094 	muleq	r0, r4, r0
 898:	93540006 	cmpls	r4, #6
 89c:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 8a0:	000000a0 	andeq	r0, r0, r0, lsr #1
 8a4:	000000bc 	strheq	r0, [r0], -ip
 8a8:	93540006 	cmpls	r4, #6
 8ac:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 8b0:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 8b4:	000000e8 	andeq	r0, r0, r8, ror #1
 8b8:	93540006 	cmpls	r4, #6
 8bc:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 8c0:	000000ec 	andeq	r0, r0, ip, ror #1
 8c4:	0000010c 	andeq	r0, r0, ip, lsl #2
 8c8:	93540006 	cmpls	r4, #6
 8cc:	04935504 	ldreq	r5, [r3], #1284	; 0x504
	...
 8d8:	00000028 	andeq	r0, r0, r8, lsr #32
 8dc:	00000078 	andeq	r0, r0, r8, ror r0
 8e0:	93580006 	cmpls	r8, #6
 8e4:	04935904 	ldreq	r5, [r3], #2308	; 0x904
 8e8:	00000078 	andeq	r0, r0, r8, ror r0
 8ec:	0000011c 	andeq	r0, r0, ip, lsl r1
 8f0:	93560006 	cmpls	r6, #6
 8f4:	04935704 	ldreq	r5, [r3], #1796	; 0x704
	...
 900:	00000050 	andeq	r0, r0, r0, asr r0
 904:	00000054 	andeq	r0, r0, r4, asr r0
 908:	54500001 	ldrbpl	r0, [r0], #-1
 90c:	2c000000 	stccs	0, cr0, [r0], {-0}
 910:	01000001 	tsteq	r0, r1
 914:	00005b00 	andeq	r5, r0, r0, lsl #22
 918:	00000000 	andeq	r0, r0, r0
 91c:	00580000 	subseq	r0, r8, r0
 920:	005c0000 	subseq	r0, ip, r0
 924:	00010000 	andeq	r0, r1, r0
 928:	00000050 	andeq	r0, r0, r0, asr r0
 92c:	00000000 	andeq	r0, r0, r0
 930:	0000b400 	andeq	fp, r0, r0, lsl #8
 934:	0000d000 	andeq	sp, r0, r0
 938:	50000100 	andpl	r0, r0, r0, lsl #2
 93c:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 940:	000000d4 	ldrdeq	r0, [r0], -r4
 944:	7f700003 	svcvc	0x00700003
 948:	0000d49f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
 94c:	0000ec00 	andeq	lr, r0, r0, lsl #24
 950:	50000100 	andpl	r0, r0, r0, lsl #2
 954:	000000ec 	andeq	r0, r0, ip, ror #1
 958:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 95c:	7f700003 	svcvc	0x00700003
 960:	0000f09f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 964:	0000fc00 	andeq	pc, r0, r0, lsl #24
 968:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 974:	0000005c 	andeq	r0, r0, ip, asr r0
 978:	000000b8 	strheq	r0, [r0], -r8
 97c:	b8500001 	ldmdalt	r0, {r0}^
 980:	2c000000 	stccs	0, cr0, [r0], {-0}
 984:	01000001 	tsteq	r0, r1
 988:	00005100 	andeq	r5, r0, r0, lsl #2
	...
 994:	00200000 	eoreq	r0, r0, r0
 998:	00060000 	andeq	r0, r6, r0
 99c:	51049350 	tstpl	r4, r0, asr r3
 9a0:	00200493 	mlaeq	r0, r3, r4, r0
 9a4:	01200000 			; <UNDEFINED> instruction: 0x01200000
 9a8:	00060000 	andeq	r0, r6, r0
 9ac:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
 9b0:	00009f25 	andeq	r9, r0, r5, lsr #30
	...
 9bc:	00330000 	eorseq	r0, r3, r0
 9c0:	00060000 	andeq	r0, r6, r0
 9c4:	53049352 	movwpl	r9, #17234	; 0x4352
 9c8:	00330493 	mlaseq	r3, r3, r4, r0
 9cc:	01200000 			; <UNDEFINED> instruction: 0x01200000
 9d0:	00060000 	andeq	r0, r6, r0
 9d4:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
 9d8:	00009f25 	andeq	r9, r0, r5, lsr #30
 9dc:	00000000 	andeq	r0, r0, r0
 9e0:	001c0000 	andseq	r0, ip, r0
 9e4:	007c0000 	rsbseq	r0, ip, r0
 9e8:	00060000 	andeq	r0, r6, r0
 9ec:	59049358 	stmdbpl	r4, {r3, r4, r6, r8, r9, ip, pc}
 9f0:	00000493 	muleq	r0, r3, r4
 9f4:	00000000 	andeq	r0, r0, r0
 9f8:	00140000 	andseq	r0, r4, r0
 9fc:	00800000 	addeq	r0, r0, r0
 a00:	00060000 	andeq	r0, r6, r0
 a04:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 a08:	00000493 	muleq	r0, r3, r4
 a0c:	00000000 	andeq	r0, r0, r0
 a10:	001c0000 	andseq	r0, ip, r0
 a14:	00900000 	addseq	r0, r0, r0
 a18:	000a0000 	andeq	r0, sl, r0
 a1c:	0000089e 	muleq	r0, lr, r8
 a20:	00000000 	andeq	r0, r0, r0
 a24:	00900000 	addseq	r0, r0, r0
 a28:	00e80000 	rsceq	r0, r8, r0
 a2c:	00060000 	andeq	r0, r6, r0
 a30:	51049350 	tstpl	r4, r0, asr r3
 a34:	00e80493 	smlaleq	r0, r8, r3, r4
 a38:	01180000 	tsteq	r8, r0
 a3c:	00060000 	andeq	r0, r6, r0
 a40:	59049358 	stmdbpl	r4, {r3, r4, r6, r8, r9, ip, pc}
 a44:	01180493 			; <UNDEFINED> instruction: 0x01180493
 a48:	01200000 			; <UNDEFINED> instruction: 0x01200000
 a4c:	00060000 	andeq	r0, r6, r0
 a50:	51049350 	tstpl	r4, r0, asr r3
 a54:	00000493 	muleq	r0, r3, r4
 a58:	00000000 	andeq	r0, r0, r0
 a5c:	001c0000 	andseq	r0, ip, r0
 a60:	00800000 	addeq	r0, r0, r0
 a64:	00060000 	andeq	r0, r6, r0
 a68:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 a6c:	008c0493 	umulleq	r0, ip, r3, r4
 a70:	00a80000 	adceq	r0, r8, r0
 a74:	00060000 	andeq	r0, r6, r0
 a78:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 a7c:	00bc0493 	umlalseq	r0, ip, r3, r4
 a80:	00d40000 	sbcseq	r0, r4, r0
 a84:	00060000 	andeq	r0, r6, r0
 a88:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 a8c:	00d80493 	smullseq	r0, r8, r3, r4
 a90:	00e80000 	rsceq	r0, r8, r0
 a94:	00060000 	andeq	r0, r6, r0
 a98:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 a9c:	00e80493 	smlaleq	r0, r8, r3, r4
 aa0:	01180000 	tsteq	r8, r0
 aa4:	000b0000 	andeq	r0, fp, r0
 aa8:	722504f5 	eorvc	r0, r5, #-184549376	; 0xf5000000
 aac:	f72cf700 			; <UNDEFINED> instruction: 0xf72cf700
 ab0:	009f2525 	addseq	r2, pc, r5, lsr #10
 ab4:	00000000 	andeq	r0, r0, r0
 ab8:	1c000000 	stcne	0, cr0, [r0], {-0}
 abc:	64000000 	strvs	r0, [r0], #-0
 ac0:	06000000 	streq	r0, [r0], -r0
 ac4:	04935800 	ldreq	r5, [r3], #2048	; 0x800
 ac8:	64049359 	strvs	r9, [r4], #-857	; 0xfffffca7
 acc:	0c000000 	stceq	0, cr0, [r0], {-0}
 ad0:	06000001 	streq	r0, [r0], -r1
 ad4:	04935600 	ldreq	r5, [r3], #1536	; 0x600
 ad8:	00049357 	andeq	r9, r4, r7, asr r3
 adc:	00000000 	andeq	r0, r0, r0
 ae0:	3c000000 	stccc	0, cr0, [r0], {-0}
 ae4:	40000000 	andmi	r0, r0, r0
 ae8:	01000000 	mrseq	r0, (UNDEF: 0)
 aec:	00405000 	subeq	r5, r0, r0
 af0:	01180000 	tsteq	r8, r0
 af4:	00010000 	andeq	r0, r1, r0
 af8:	0000005a 	andeq	r0, r0, sl, asr r0
 afc:	00000000 	andeq	r0, r0, r0
 b00:	00004400 	andeq	r4, r0, r0, lsl #8
 b04:	00007000 	andeq	r7, r0, r0
 b08:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 b14:	000000a0 	andeq	r0, r0, r0, lsr #1
 b18:	000000bc 	strheq	r0, [r0], -ip
 b1c:	bc530001 	mrrclt	0, 0, r0, r3, cr1
 b20:	c0000000 	andgt	r0, r0, r0
 b24:	03000000 	movweq	r0, #0
 b28:	9f7f7300 	svcls	0x007f7300
 b2c:	000000c0 	andeq	r0, r0, r0, asr #1
 b30:	000000d8 	ldrdeq	r0, [r0], -r8
 b34:	d8530001 	ldmdale	r3, {r0}^
 b38:	dc000000 	stcle	0, cr0, [r0], {-0}
 b3c:	03000000 	movweq	r0, #0
 b40:	9f7f7300 	svcls	0x007f7300
 b44:	000000dc 	ldrdeq	r0, [r0], -ip
 b48:	000000ec 	andeq	r0, r0, ip, ror #1
 b4c:	00530001 	subseq	r0, r3, r1
 b50:	00000000 	andeq	r0, r0, r0
 b54:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
 b58:	a4000000 	strge	r0, [r0], #-0
 b5c:	01000000 	mrseq	r0, (UNDEF: 0)
 b60:	00a45300 	adceq	r5, r4, r0, lsl #6
 b64:	01180000 	tsteq	r8, r0
 b68:	00010000 	andeq	r0, r1, r0
 b6c:	00000052 	andeq	r0, r0, r2, asr r0
 b70:	00000000 	andeq	r0, r0, r0
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	000000f8 	strdeq	r0, [r0], -r8
   4:	00000100 	andeq	r0, r0, r0, lsl #2
   8:	000001dc 	ldrdeq	r0, [r0], -ip
   c:	000001fc 	strdeq	r0, [r0], -ip
	...
  18:	00000100 	andeq	r0, r0, r0, lsl #2
  1c:	00000104 	andeq	r0, r0, r4, lsl #2
  20:	000001fc 	strdeq	r0, [r0], -ip
  24:	0000021c 	andeq	r0, r0, ip, lsl r2
	...
  34:	00000008 	andeq	r0, r0, r8
  38:	0000001c 	andeq	r0, r0, ip, lsl r0
  3c:	00000118 	andeq	r0, r0, r8, lsl r1
	...
