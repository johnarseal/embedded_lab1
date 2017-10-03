
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
    82d4:	eb0002b7 	bl	8db8 <delay_cycles>
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
    830c:	eb0002a9 	bl	8db8 <delay_cycles>
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
    8350:	eb000298 	bl	8db8 <delay_cycles>
    8354:	e30b3000 	movw	r3, #45056	; 0xb000
    8358:	e3403000 	movt	r3, #0
    835c:	e5933000 	ldr	r3, [r3]
    8360:	e2833098 	add	r3, r3, #152	; 0x98
    8364:	e3a02000 	mov	r2, #0
    8368:	e5832000 	str	r2, [r3]
    836c:	e24bd004 	sub	sp, fp, #4
    8370:	e8bd8800 	pop	{fp, pc}

00008374 <kernel_main>:
    8374:	e92d4038 	push	{r3, r4, r5, lr}
    8378:	eb0000b7 	bl	865c <uart_init>
    837c:	e30005dc 	movw	r0, #1500	; 0x5dc
    8380:	eb0000f3 	bl	8754 <i2c_master_init>
    8384:	eb0001f4 	bl	8b5c <adc_init>
    8388:	e30a5014 	movw	r5, #40980	; 0xa014
    838c:	e3405000 	movt	r5, #0
    8390:	eb0000dc 	bl	8708 <uart_get_byte>
    8394:	e1a04000 	mov	r4, r0
    8398:	e1a00005 	mov	r0, r5
    839c:	e1a01004 	mov	r1, r4
    83a0:	eb00003f 	bl	84a4 <printk>
    83a4:	e3540030 	cmp	r4, #48	; 0x30
    83a8:	1a000001 	bne	83b4 <kernel_main+0x40>
    83ac:	eb000243 	bl	8cc0 <display_light>
    83b0:	eafffff6 	b	8390 <kernel_main+0x1c>
    83b4:	e3540031 	cmp	r4, #49	; 0x31
    83b8:	1afffff4 	bne	8390 <kernel_main+0x1c>
    83bc:	eb000247 	bl	8ce0 <clap_detect>
    83c0:	eafffff2 	b	8390 <kernel_main+0x1c>

000083c4 <printnumk>:
    83c4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    83c8:	e24dd008 	sub	sp, sp, #8
    83cc:	e1a06002 	mov	r6, r2
    83d0:	e1a07003 	mov	r7, r3
    83d4:	e3500008 	cmp	r0, #8
    83d8:	0a000004 	beq	83f0 <printnumk+0x2c>
    83dc:	e30a8020 	movw	r8, #40992	; 0xa020
    83e0:	e3408000 	movt	r8, #0
    83e4:	e3500010 	cmp	r0, #16
    83e8:	13a08000 	movne	r8, #0
    83ec:	ea000001 	b	83f8 <printnumk+0x34>
    83f0:	e30a801c 	movw	r8, #40988	; 0xa01c
    83f4:	e3408000 	movt	r8, #0
    83f8:	e28d4007 	add	r4, sp, #7
    83fc:	e1a05000 	mov	r5, r0
    8400:	e3a09000 	mov	r9, #0
    8404:	e30aa000 	movw	sl, #40960	; 0xa000
    8408:	e340a000 	movt	sl, #0
    840c:	e1a00006 	mov	r0, r6
    8410:	e1a01007 	mov	r1, r7
    8414:	e1a02005 	mov	r2, r5
    8418:	e1a03009 	mov	r3, r9
    841c:	eb000276 	bl	8dfc <__aeabi_uldivmod>
    8420:	e7da3002 	ldrb	r3, [sl, r2]
    8424:	e4443001 	strb	r3, [r4], #-1
    8428:	e1a00006 	mov	r0, r6
    842c:	e1a01007 	mov	r1, r7
    8430:	e1a02005 	mov	r2, r5
    8434:	e1a03009 	mov	r3, r9
    8438:	eb00026f 	bl	8dfc <__aeabi_uldivmod>
    843c:	e1a06000 	mov	r6, r0
    8440:	e1a07001 	mov	r7, r1
    8444:	e1963007 	orrs	r3, r6, r7
    8448:	1affffef 	bne	840c <printnumk+0x48>
    844c:	e3580000 	cmp	r8, #0
    8450:	0a000002 	beq	8460 <printnumk+0x9c>
    8454:	e5d80000 	ldrb	r0, [r8]
    8458:	e3500000 	cmp	r0, #0
    845c:	1a000004 	bne	8474 <printnumk+0xb0>
    8460:	e2844001 	add	r4, r4, #1
    8464:	e28d3008 	add	r3, sp, #8
    8468:	e1540003 	cmp	r4, r3
    846c:	1a000005 	bne	8488 <printnumk+0xc4>
    8470:	ea000009 	b	849c <printnumk+0xd8>
    8474:	eb00009a 	bl	86e4 <uart_put_byte>
    8478:	e5f80001 	ldrb	r0, [r8, #1]!
    847c:	e3500000 	cmp	r0, #0
    8480:	1afffffb 	bne	8474 <printnumk+0xb0>
    8484:	eafffff5 	b	8460 <printnumk+0x9c>
    8488:	e4d40001 	ldrb	r0, [r4], #1
    848c:	eb000094 	bl	86e4 <uart_put_byte>
    8490:	e28d3008 	add	r3, sp, #8
    8494:	e1540003 	cmp	r4, r3
    8498:	1afffffa 	bne	8488 <printnumk+0xc4>
    849c:	e28dd008 	add	sp, sp, #8
    84a0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

000084a4 <printk>:
    84a4:	e92d000f 	push	{r0, r1, r2, r3}
    84a8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    84ac:	e24dd008 	sub	sp, sp, #8
    84b0:	e59d4020 	ldr	r4, [sp, #32]
    84b4:	e28d3024 	add	r3, sp, #36	; 0x24
    84b8:	e58d3004 	str	r3, [sp, #4]
    84bc:	e3a06000 	mov	r6, #0
    84c0:	e3a08008 	mov	r8, #8
    84c4:	e3a07010 	mov	r7, #16
    84c8:	ea00005c 	b	8640 <printk+0x19c>
    84cc:	e3500025 	cmp	r0, #37	; 0x25
    84d0:	0a000002 	beq	84e0 <printk+0x3c>
    84d4:	e2844001 	add	r4, r4, #1
    84d8:	eb000081 	bl	86e4 <uart_put_byte>
    84dc:	ea000057 	b	8640 <printk+0x19c>
    84e0:	e5d43001 	ldrb	r3, [r4, #1]
    84e4:	e353006f 	cmp	r3, #111	; 0x6f
    84e8:	0a00002c 	beq	85a0 <printk+0xfc>
    84ec:	8a000006 	bhi	850c <printk+0x68>
    84f0:	e3530063 	cmp	r3, #99	; 0x63
    84f4:	0a000045 	beq	8610 <printk+0x16c>
    84f8:	e3530064 	cmp	r3, #100	; 0x64
    84fc:	0a00000d 	beq	8538 <printk+0x94>
    8500:	e3530025 	cmp	r3, #37	; 0x25
    8504:	1a00004a 	bne	8634 <printk+0x190>
    8508:	ea000046 	b	8628 <printk+0x184>
    850c:	e3530073 	cmp	r3, #115	; 0x73
    8510:	0a000032 	beq	85e0 <printk+0x13c>
    8514:	8a000002 	bhi	8524 <printk+0x80>
    8518:	e3530070 	cmp	r3, #112	; 0x70
    851c:	0a000027 	beq	85c0 <printk+0x11c>
    8520:	ea000043 	b	8634 <printk+0x190>
    8524:	e3530075 	cmp	r3, #117	; 0x75
    8528:	0a000014 	beq	8580 <printk+0xdc>
    852c:	e3530078 	cmp	r3, #120	; 0x78
    8530:	0a000022 	beq	85c0 <printk+0x11c>
    8534:	ea00003e 	b	8634 <printk+0x190>
    8538:	e59d3004 	ldr	r3, [sp, #4]
    853c:	e2832004 	add	r2, r3, #4
    8540:	e58d2004 	str	r2, [sp, #4]
    8544:	e5935000 	ldr	r5, [r3]
    8548:	e3550000 	cmp	r5, #0
    854c:	aa000006 	bge	856c <printk+0xc8>
    8550:	e3a0002d 	mov	r0, #45	; 0x2d
    8554:	eb000062 	bl	86e4 <uart_put_byte>
    8558:	e2652000 	rsb	r2, r5, #0
    855c:	e3a0000a 	mov	r0, #10
    8560:	e1a03fc2 	asr	r3, r2, #31
    8564:	ebffff96 	bl	83c4 <printnumk>
    8568:	ea000033 	b	863c <printk+0x198>
    856c:	e3a0000a 	mov	r0, #10
    8570:	e1a02005 	mov	r2, r5
    8574:	e1a03fc5 	asr	r3, r5, #31
    8578:	ebffff91 	bl	83c4 <printnumk>
    857c:	ea00002e 	b	863c <printk+0x198>
    8580:	e59d3004 	ldr	r3, [sp, #4]
    8584:	e2832004 	add	r2, r3, #4
    8588:	e58d2004 	str	r2, [sp, #4]
    858c:	e3a0000a 	mov	r0, #10
    8590:	e5932000 	ldr	r2, [r3]
    8594:	e1a03006 	mov	r3, r6
    8598:	ebffff89 	bl	83c4 <printnumk>
    859c:	ea000026 	b	863c <printk+0x198>
    85a0:	e59d3004 	ldr	r3, [sp, #4]
    85a4:	e2832004 	add	r2, r3, #4
    85a8:	e58d2004 	str	r2, [sp, #4]
    85ac:	e1a00008 	mov	r0, r8
    85b0:	e5932000 	ldr	r2, [r3]
    85b4:	e1a03006 	mov	r3, r6
    85b8:	ebffff81 	bl	83c4 <printnumk>
    85bc:	ea00001e 	b	863c <printk+0x198>
    85c0:	e59d3004 	ldr	r3, [sp, #4]
    85c4:	e2832004 	add	r2, r3, #4
    85c8:	e58d2004 	str	r2, [sp, #4]
    85cc:	e1a00007 	mov	r0, r7
    85d0:	e5932000 	ldr	r2, [r3]
    85d4:	e1a03006 	mov	r3, r6
    85d8:	ebffff79 	bl	83c4 <printnumk>
    85dc:	ea000016 	b	863c <printk+0x198>
    85e0:	e59d3004 	ldr	r3, [sp, #4]
    85e4:	e2832004 	add	r2, r3, #4
    85e8:	e58d2004 	str	r2, [sp, #4]
    85ec:	e5935000 	ldr	r5, [r3]
    85f0:	e5d50000 	ldrb	r0, [r5]
    85f4:	e3500000 	cmp	r0, #0
    85f8:	0a00000f 	beq	863c <printk+0x198>
    85fc:	eb000038 	bl	86e4 <uart_put_byte>
    8600:	e5f50001 	ldrb	r0, [r5, #1]!
    8604:	e3500000 	cmp	r0, #0
    8608:	1afffffb 	bne	85fc <printk+0x158>
    860c:	ea00000a 	b	863c <printk+0x198>
    8610:	e59d3004 	ldr	r3, [sp, #4]
    8614:	e2832004 	add	r2, r3, #4
    8618:	e58d2004 	str	r2, [sp, #4]
    861c:	e5d30000 	ldrb	r0, [r3]
    8620:	eb00002f 	bl	86e4 <uart_put_byte>
    8624:	ea000004 	b	863c <printk+0x198>
    8628:	e3a00025 	mov	r0, #37	; 0x25
    862c:	eb00002c 	bl	86e4 <uart_put_byte>
    8630:	ea000001 	b	863c <printk+0x198>
    8634:	e3e00000 	mvn	r0, #0
    8638:	ea000003 	b	864c <printk+0x1a8>
    863c:	e2844002 	add	r4, r4, #2
    8640:	e5d40000 	ldrb	r0, [r4]
    8644:	e3500000 	cmp	r0, #0
    8648:	1affff9f 	bne	84cc <printk+0x28>
    864c:	e28dd008 	add	sp, sp, #8
    8650:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8654:	e28dd010 	add	sp, sp, #16
    8658:	e12fff1e 	bx	lr

0000865c <uart_init>:
    865c:	e92d4008 	push	{r3, lr}
    8660:	e3a0000f 	mov	r0, #15
    8664:	e3a01000 	mov	r1, #0
    8668:	ebffff03 	bl	827c <gpio_set_pull>
    866c:	e3a0000e 	mov	r0, #14
    8670:	e3a01000 	mov	r1, #0
    8674:	ebffff00 	bl	827c <gpio_set_pull>
    8678:	e3a0000f 	mov	r0, #15
    867c:	e3a01002 	mov	r1, #2
    8680:	ebfffe73 	bl	8054 <gpio_config>
    8684:	e3a0000e 	mov	r0, #14
    8688:	e3a01002 	mov	r1, #2
    868c:	ebfffe70 	bl	8054 <gpio_config>
    8690:	e3a03a05 	mov	r3, #20480	; 0x5000
    8694:	e3433f21 	movt	r3, #16161	; 0x3f21
    8698:	e5932004 	ldr	r2, [r3, #4]
    869c:	e3822001 	orr	r2, r2, #1
    86a0:	e5832004 	str	r2, [r3, #4]
    86a4:	e3a02003 	mov	r2, #3
    86a8:	e583204c 	str	r2, [r3, #76]	; 0x4c
    86ac:	e3a02000 	mov	r2, #0
    86b0:	e5832044 	str	r2, [r3, #68]	; 0x44
    86b4:	e300210e 	movw	r2, #270	; 0x10e
    86b8:	e5832068 	str	r2, [r3, #104]	; 0x68
    86bc:	e8bd8008 	pop	{r3, pc}

000086c0 <uart_close>:
    86c0:	e3a03a05 	mov	r3, #20480	; 0x5000
    86c4:	e3433f21 	movt	r3, #16161	; 0x3f21
    86c8:	e5932048 	ldr	r2, [r3, #72]	; 0x48
    86cc:	e3822006 	orr	r2, r2, #6
    86d0:	e5832048 	str	r2, [r3, #72]	; 0x48
    86d4:	e5932004 	ldr	r2, [r3, #4]
    86d8:	e3c22001 	bic	r2, r2, #1
    86dc:	e5832004 	str	r2, [r3, #4]
    86e0:	e12fff1e 	bx	lr

000086e4 <uart_put_byte>:
    86e4:	e3a02a05 	mov	r2, #20480	; 0x5000
    86e8:	e3432f21 	movt	r2, #16161	; 0x3f21
    86ec:	e5923054 	ldr	r3, [r2, #84]	; 0x54
    86f0:	e3130020 	tst	r3, #32
    86f4:	0afffffc 	beq	86ec <uart_put_byte+0x8>
    86f8:	e3a03a05 	mov	r3, #20480	; 0x5000
    86fc:	e3433f21 	movt	r3, #16161	; 0x3f21
    8700:	e5c30040 	strb	r0, [r3, #64]	; 0x40
    8704:	e12fff1e 	bx	lr

00008708 <uart_get_byte>:
    8708:	e92d4038 	push	{r3, r4, r5, lr}
    870c:	e3a02000 	mov	r2, #0
    8710:	e3a04a05 	mov	r4, #20480	; 0x5000
    8714:	e3434f21 	movt	r4, #16161	; 0x3f21
    8718:	e30a5024 	movw	r5, #40996	; 0xa024
    871c:	e3405000 	movt	r5, #0
    8720:	ea000004 	b	8738 <uart_get_byte+0x30>
    8724:	e3520000 	cmp	r2, #0
    8728:	1a000002 	bne	8738 <uart_get_byte+0x30>
    872c:	e1a00005 	mov	r0, r5
    8730:	ebffff5b 	bl	84a4 <printk>
    8734:	e3a02001 	mov	r2, #1
    8738:	e5943054 	ldr	r3, [r4, #84]	; 0x54
    873c:	e3130001 	tst	r3, #1
    8740:	0afffff7 	beq	8724 <uart_get_byte+0x1c>
    8744:	e3a03a05 	mov	r3, #20480	; 0x5000
    8748:	e3433f21 	movt	r3, #16161	; 0x3f21
    874c:	e5d30040 	ldrb	r0, [r3, #64]	; 0x40
    8750:	e8bd8038 	pop	{r3, r4, r5, pc}

00008754 <i2c_master_init>:
    8754:	e92d4008 	push	{r3, lr}
    8758:	e3a00002 	mov	r0, #2
    875c:	e3a01004 	mov	r1, #4
    8760:	ebfffe3b 	bl	8054 <gpio_config>
    8764:	e3a00003 	mov	r0, #3
    8768:	e3a01004 	mov	r1, #4
    876c:	ebfffe38 	bl	8054 <gpio_config>
    8770:	e8bd8008 	pop	{r3, pc}

00008774 <i2c_master_write>:
    8774:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    8778:	e1a05000 	mov	r5, r0
    877c:	e1a04001 	mov	r4, r1
    8780:	e1a06002 	mov	r6, r2
    8784:	e3a00901 	mov	r0, #16384	; 0x4000
    8788:	e3430f80 	movt	r0, #16256	; 0x3f80
    878c:	e3a01010 	mov	r1, #16
    8790:	e1a02001 	mov	r2, r1
    8794:	eb00017d 	bl	8d90 <peri_set_bits>
    8798:	e3040004 	movw	r0, #16388	; 0x4004
    879c:	e3430f80 	movt	r0, #16256	; 0x3f80
    87a0:	e3001302 	movw	r1, #770	; 0x302
    87a4:	eb000177 	bl	8d88 <peri_write>
    87a8:	e304000c 	movw	r0, #16396	; 0x400c
    87ac:	e3430f80 	movt	r0, #16256	; 0x3f80
    87b0:	e1a01006 	mov	r1, r6
    87b4:	eb000173 	bl	8d88 <peri_write>
    87b8:	e3040008 	movw	r0, #16392	; 0x4008
    87bc:	e3430f80 	movt	r0, #16256	; 0x3f80
    87c0:	e1a01004 	mov	r1, r4
    87c4:	eb00016f 	bl	8d88 <peri_write>
    87c8:	e3540000 	cmp	r4, #0
    87cc:	0a00000e 	beq	880c <i2c_master_write+0x98>
    87d0:	e1a07004 	mov	r7, r4
    87d4:	e2455001 	sub	r5, r5, #1
    87d8:	e3a04000 	mov	r4, #0
    87dc:	e3046010 	movw	r6, #16400	; 0x4010
    87e0:	e3436f80 	movt	r6, #16256	; 0x3f80
    87e4:	e1a00006 	mov	r0, r6
    87e8:	e5f51001 	ldrb	r1, [r5, #1]!
    87ec:	eb000165 	bl	8d88 <peri_write>
    87f0:	e2844001 	add	r4, r4, #1
    87f4:	e0573004 	subs	r3, r7, r4
    87f8:	13a03001 	movne	r3, #1
    87fc:	e354000f 	cmp	r4, #15
    8800:	83a03000 	movhi	r3, #0
    8804:	e3530000 	cmp	r3, #0
    8808:	1afffff5 	bne	87e4 <i2c_master_write+0x70>
    880c:	e3a00901 	mov	r0, #16384	; 0x4000
    8810:	e3430f80 	movt	r0, #16256	; 0x3f80
    8814:	e3081080 	movw	r1, #32896	; 0x8080
    8818:	eb00015a 	bl	8d88 <peri_write>
    881c:	e3040004 	movw	r0, #16388	; 0x4004
    8820:	e3430f80 	movt	r0, #16256	; 0x3f80
    8824:	eb000155 	bl	8d80 <peri_read>
    8828:	e3100c01 	tst	r0, #256	; 0x100
    882c:	13a05001 	movne	r5, #1
    8830:	1a000007 	bne	8854 <i2c_master_write+0xe0>
    8834:	e3040004 	movw	r0, #16388	; 0x4004
    8838:	e3430f80 	movt	r0, #16256	; 0x3f80
    883c:	eb00014f 	bl	8d80 <peri_read>
    8840:	e2000c02 	and	r0, r0, #512	; 0x200
    8844:	e3500000 	cmp	r0, #0
    8848:	03a05000 	moveq	r5, #0
    884c:	13a05002 	movne	r5, #2
    8850:	eaffffff 	b	8854 <i2c_master_write+0xe0>
    8854:	e3044004 	movw	r4, #16388	; 0x4004
    8858:	e3434f80 	movt	r4, #16256	; 0x3f80
    885c:	e1a00004 	mov	r0, r4
    8860:	eb000146 	bl	8d80 <peri_read>
    8864:	e3100002 	tst	r0, #2
    8868:	0afffffb 	beq	885c <i2c_master_write+0xe8>
    886c:	e3a00901 	mov	r0, #16384	; 0x4000
    8870:	e3430f80 	movt	r0, #16256	; 0x3f80
    8874:	e3a01002 	mov	r1, #2
    8878:	e1a02001 	mov	r2, r1
    887c:	eb000143 	bl	8d90 <peri_set_bits>
    8880:	e1a00005 	mov	r0, r5
    8884:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

00008888 <i2c_master_read>:
    8888:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
    888c:	e1a09000 	mov	r9, r0
    8890:	e1a06001 	mov	r6, r1
    8894:	e1a07002 	mov	r7, r2
    8898:	e1a04001 	mov	r4, r1
    889c:	e3a05901 	mov	r5, #16384	; 0x4000
    88a0:	e3435f80 	movt	r5, #16256	; 0x3f80
    88a4:	e1a00005 	mov	r0, r5
    88a8:	e3a01020 	mov	r1, #32
    88ac:	e1a02001 	mov	r2, r1
    88b0:	eb000136 	bl	8d90 <peri_set_bits>
    88b4:	e3040004 	movw	r0, #16388	; 0x4004
    88b8:	e3430f80 	movt	r0, #16256	; 0x3f80
    88bc:	e3001302 	movw	r1, #770	; 0x302
    88c0:	eb000130 	bl	8d88 <peri_write>
    88c4:	e3040008 	movw	r0, #16392	; 0x4008
    88c8:	e3430f80 	movt	r0, #16256	; 0x3f80
    88cc:	e1a01006 	mov	r1, r6
    88d0:	eb00012c 	bl	8d88 <peri_write>
    88d4:	e304000c 	movw	r0, #16396	; 0x400c
    88d8:	e3430f80 	movt	r0, #16256	; 0x3f80
    88dc:	e1a01007 	mov	r1, r7
    88e0:	eb000128 	bl	8d88 <peri_write>
    88e4:	e1a00005 	mov	r0, r5
    88e8:	e3081081 	movw	r1, #32897	; 0x8081
    88ec:	eb000125 	bl	8d88 <peri_write>
    88f0:	e3a05000 	mov	r5, #0
    88f4:	e3047004 	movw	r7, #16388	; 0x4004
    88f8:	e3437f80 	movt	r7, #16256	; 0x3f80
    88fc:	e3048010 	movw	r8, #16400	; 0x4010
    8900:	e3438f80 	movt	r8, #16256	; 0x3f80
    8904:	ea000009 	b	8930 <i2c_master_read+0xa8>
    8908:	e1a00008 	mov	r0, r8
    890c:	eb00011b 	bl	8d80 <peri_read>
    8910:	e4c60001 	strb	r0, [r6], #1
    8914:	e2855001 	add	r5, r5, #1
    8918:	e2544001 	subs	r4, r4, #1
    891c:	0a000003 	beq	8930 <i2c_master_read+0xa8>
    8920:	e1a00007 	mov	r0, r7
    8924:	eb000115 	bl	8d80 <peri_read>
    8928:	e3100020 	tst	r0, #32
    892c:	1afffff5 	bne	8908 <i2c_master_read+0x80>
    8930:	e1a00007 	mov	r0, r7
    8934:	eb000111 	bl	8d80 <peri_read>
    8938:	e3100002 	tst	r0, #2
    893c:	1a000003 	bne	8950 <i2c_master_read+0xc8>
    8940:	e3540000 	cmp	r4, #0
    8944:	0afffff9 	beq	8930 <i2c_master_read+0xa8>
    8948:	e0896005 	add	r6, r9, r5
    894c:	eafffff3 	b	8920 <i2c_master_read+0x98>
    8950:	e1a06004 	mov	r6, r4
    8954:	e3040004 	movw	r0, #16388	; 0x4004
    8958:	e3430f80 	movt	r0, #16256	; 0x3f80
    895c:	eb000107 	bl	8d80 <peri_read>
    8960:	e3100020 	tst	r0, #32
    8964:	0a000002 	beq	8974 <i2c_master_read+0xec>
    8968:	e30a0034 	movw	r0, #41012	; 0xa034
    896c:	e3400000 	movt	r0, #0
    8970:	ebfffecb 	bl	84a4 <printk>
    8974:	e3560000 	cmp	r6, #0
    8978:	0a000012 	beq	89c8 <i2c_master_read+0x140>
    897c:	e0895005 	add	r5, r9, r5
    8980:	e3047004 	movw	r7, #16388	; 0x4004
    8984:	e3437f80 	movt	r7, #16256	; 0x3f80
    8988:	e30a6054 	movw	r6, #41044	; 0xa054
    898c:	e3406000 	movt	r6, #0
    8990:	e3048010 	movw	r8, #16400	; 0x4010
    8994:	e3438f80 	movt	r8, #16256	; 0x3f80
    8998:	ea000006 	b	89b8 <i2c_master_read+0x130>
    899c:	e1a00006 	mov	r0, r6
    89a0:	ebfffebf 	bl	84a4 <printk>
    89a4:	e1a00008 	mov	r0, r8
    89a8:	eb0000f4 	bl	8d80 <peri_read>
    89ac:	e4c50001 	strb	r0, [r5], #1
    89b0:	e2544001 	subs	r4, r4, #1
    89b4:	0a000003 	beq	89c8 <i2c_master_read+0x140>
    89b8:	e1a00007 	mov	r0, r7
    89bc:	eb0000ef 	bl	8d80 <peri_read>
    89c0:	e3100020 	tst	r0, #32
    89c4:	1afffff4 	bne	899c <i2c_master_read+0x114>
    89c8:	e3040004 	movw	r0, #16388	; 0x4004
    89cc:	e3430f80 	movt	r0, #16256	; 0x3f80
    89d0:	eb0000ea 	bl	8d80 <peri_read>
    89d4:	e3100c01 	tst	r0, #256	; 0x100
    89d8:	13a05001 	movne	r5, #1
    89dc:	1a000007 	bne	8a00 <i2c_master_read+0x178>
    89e0:	e3040004 	movw	r0, #16388	; 0x4004
    89e4:	e3430f80 	movt	r0, #16256	; 0x3f80
    89e8:	eb0000e4 	bl	8d80 <peri_read>
    89ec:	e2000c02 	and	r0, r0, #512	; 0x200
    89f0:	e3500000 	cmp	r0, #0
    89f4:	03a05000 	moveq	r5, #0
    89f8:	13a05002 	movne	r5, #2
    89fc:	eaffffff 	b	8a00 <i2c_master_read+0x178>
    8a00:	e3044004 	movw	r4, #16388	; 0x4004
    8a04:	e3434f80 	movt	r4, #16256	; 0x3f80
    8a08:	e1a00004 	mov	r0, r4
    8a0c:	eb0000db 	bl	8d80 <peri_read>
    8a10:	e3100002 	tst	r0, #2
    8a14:	0afffffb 	beq	8a08 <i2c_master_read+0x180>
    8a18:	e3a00901 	mov	r0, #16384	; 0x4000
    8a1c:	e3430f80 	movt	r0, #16256	; 0x3f80
    8a20:	e3a01002 	mov	r1, #2
    8a24:	e1a02001 	mov	r2, r1
    8a28:	eb0000d8 	bl	8d90 <peri_set_bits>
    8a2c:	e1a00005 	mov	r0, r5
    8a30:	e8bd83f8 	pop	{r3, r4, r5, r6, r7, r8, r9, pc}

00008a34 <adc_write_config>:
    8a34:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8a38:	e24dd00c 	sub	sp, sp, #12
    8a3c:	e1a01000 	mov	r1, r0
    8a40:	e3a03001 	mov	r3, #1
    8a44:	e5cd3004 	strb	r3, [sp, #4]
    8a48:	e1a03420 	lsr	r3, r0, #8
    8a4c:	e5cd3005 	strb	r3, [sp, #5]
    8a50:	e5cd0006 	strb	r0, [sp, #6]
    8a54:	e30a007c 	movw	r0, #41084	; 0xa07c
    8a58:	e3400000 	movt	r0, #0
    8a5c:	ebfffe90 	bl	84a4 <printk>
    8a60:	e28d0004 	add	r0, sp, #4
    8a64:	e3a01003 	mov	r1, #3
    8a68:	e3a02049 	mov	r2, #73	; 0x49
    8a6c:	ebffff40 	bl	8774 <i2c_master_write>
    8a70:	e2501000 	subs	r1, r0, #0
    8a74:	0a000003 	beq	8a88 <adc_write_config+0x54>
    8a78:	e30a0094 	movw	r0, #41108	; 0xa094
    8a7c:	e3400000 	movt	r0, #0
    8a80:	ebfffe87 	bl	84a4 <printk>
    8a84:	ea000002 	b	8a94 <adc_write_config+0x60>
    8a88:	e30a00a8 	movw	r0, #41128	; 0xa0a8
    8a8c:	e3400000 	movt	r0, #0
    8a90:	ebfffe83 	bl	84a4 <printk>
    8a94:	e3a01001 	mov	r1, #1
    8a98:	e28d0008 	add	r0, sp, #8
    8a9c:	e5601004 	strb	r1, [r0, #-4]!
    8aa0:	e3a02049 	mov	r2, #73	; 0x49
    8aa4:	ebffff32 	bl	8774 <i2c_master_write>
    8aa8:	e1a0000d 	mov	r0, sp
    8aac:	e3a01002 	mov	r1, #2
    8ab0:	e3a02049 	mov	r2, #73	; 0x49
    8ab4:	ebffff73 	bl	8888 <i2c_master_read>
    8ab8:	e2501000 	subs	r1, r0, #0
    8abc:	0a000002 	beq	8acc <adc_write_config+0x98>
    8ac0:	e30a00b8 	movw	r0, #41144	; 0xa0b8
    8ac4:	e3400000 	movt	r0, #0
    8ac8:	ebfffe75 	bl	84a4 <printk>
    8acc:	e5dd1000 	ldrb	r1, [sp]
    8ad0:	e5dd3001 	ldrb	r3, [sp, #1]
    8ad4:	e30a00dc 	movw	r0, #41180	; 0xa0dc
    8ad8:	e3400000 	movt	r0, #0
    8adc:	e0831401 	add	r1, r3, r1, lsl #8
    8ae0:	ebfffe6f 	bl	84a4 <printk>
    8ae4:	e28dd00c 	add	sp, sp, #12
    8ae8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008aec <adc_read_conversion>:
    8aec:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8af0:	e24dd00c 	sub	sp, sp, #12
    8af4:	e28d0008 	add	r0, sp, #8
    8af8:	e3a03000 	mov	r3, #0
    8afc:	e5603004 	strb	r3, [r0, #-4]!
    8b00:	e3a01001 	mov	r1, #1
    8b04:	e3a02049 	mov	r2, #73	; 0x49
    8b08:	ebffff19 	bl	8774 <i2c_master_write>
    8b0c:	e2501000 	subs	r1, r0, #0
    8b10:	0a000002 	beq	8b20 <adc_read_conversion+0x34>
    8b14:	e30a00f4 	movw	r0, #41204	; 0xa0f4
    8b18:	e3400000 	movt	r0, #0
    8b1c:	ebfffe60 	bl	84a4 <printk>
    8b20:	e1a0000d 	mov	r0, sp
    8b24:	e3a01002 	mov	r1, #2
    8b28:	e3a02049 	mov	r2, #73	; 0x49
    8b2c:	ebffff55 	bl	8888 <i2c_master_read>
    8b30:	e2501000 	subs	r1, r0, #0
    8b34:	0a000002 	beq	8b44 <adc_read_conversion+0x58>
    8b38:	e30a0134 	movw	r0, #41268	; 0xa134
    8b3c:	e3400000 	movt	r0, #0
    8b40:	ebfffe57 	bl	84a4 <printk>
    8b44:	e5dd0000 	ldrb	r0, [sp]
    8b48:	e5dd3001 	ldrb	r3, [sp, #1]
    8b4c:	e0830400 	add	r0, r3, r0, lsl #8
    8b50:	e7eb0250 	ubfx	r0, r0, #4, #12
    8b54:	e28dd00c 	add	sp, sp, #12
    8b58:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008b5c <adc_init>:
    8b5c:	e92d4030 	push	{r4, r5, lr}
    8b60:	e24dd00c 	sub	sp, sp, #12
    8b64:	e3a01001 	mov	r1, #1
    8b68:	e28d0008 	add	r0, sp, #8
    8b6c:	e5601004 	strb	r1, [r0, #-4]!
    8b70:	e3a02049 	mov	r2, #73	; 0x49
    8b74:	ebfffefe 	bl	8774 <i2c_master_write>
    8b78:	e1a0000d 	mov	r0, sp
    8b7c:	e3a01002 	mov	r1, #2
    8b80:	e3a02049 	mov	r2, #73	; 0x49
    8b84:	ebffff3f 	bl	8888 <i2c_master_read>
    8b88:	e2501000 	subs	r1, r0, #0
    8b8c:	0a000002 	beq	8b9c <adc_init+0x40>
    8b90:	e30a00b8 	movw	r0, #41144	; 0xa0b8
    8b94:	e3400000 	movt	r0, #0
    8b98:	ebfffe41 	bl	84a4 <printk>
    8b9c:	e5dd1000 	ldrb	r1, [sp]
    8ba0:	e5dd3001 	ldrb	r3, [sp, #1]
    8ba4:	e0831401 	add	r1, r3, r1, lsl #8
    8ba8:	e30a0160 	movw	r0, #41312	; 0xa160
    8bac:	e3400000 	movt	r0, #0
    8bb0:	e6ff1071 	uxth	r1, r1
    8bb4:	ebfffe3a 	bl	84a4 <printk>
    8bb8:	e28d4008 	add	r4, sp, #8
    8bbc:	e3a03003 	mov	r3, #3
    8bc0:	e5643004 	strb	r3, [r4, #-4]!
    8bc4:	e1a00004 	mov	r0, r4
    8bc8:	e3a01001 	mov	r1, #1
    8bcc:	e3a02049 	mov	r2, #73	; 0x49
    8bd0:	ebfffee7 	bl	8774 <i2c_master_write>
    8bd4:	e1a0000d 	mov	r0, sp
    8bd8:	e3a01002 	mov	r1, #2
    8bdc:	e3a02049 	mov	r2, #73	; 0x49
    8be0:	ebffff28 	bl	8888 <i2c_master_read>
    8be4:	e5dd1000 	ldrb	r1, [sp]
    8be8:	e5dd3001 	ldrb	r3, [sp, #1]
    8bec:	e0831401 	add	r1, r3, r1, lsl #8
    8bf0:	e30a0184 	movw	r0, #41348	; 0xa184
    8bf4:	e3400000 	movt	r0, #0
    8bf8:	e6ff1071 	uxth	r1, r1
    8bfc:	ebfffe28 	bl	84a4 <printk>
    8c00:	e3a05002 	mov	r5, #2
    8c04:	e5cd5004 	strb	r5, [sp, #4]
    8c08:	e1a00004 	mov	r0, r4
    8c0c:	e3a01001 	mov	r1, #1
    8c10:	e3a02049 	mov	r2, #73	; 0x49
    8c14:	ebfffed6 	bl	8774 <i2c_master_write>
    8c18:	e1a0000d 	mov	r0, sp
    8c1c:	e1a01005 	mov	r1, r5
    8c20:	e3a02049 	mov	r2, #73	; 0x49
    8c24:	ebffff17 	bl	8888 <i2c_master_read>
    8c28:	e5dd1000 	ldrb	r1, [sp]
    8c2c:	e5dd3001 	ldrb	r3, [sp, #1]
    8c30:	e0831401 	add	r1, r3, r1, lsl #8
    8c34:	e30a0194 	movw	r0, #41364	; 0xa194
    8c38:	e3400000 	movt	r0, #0
    8c3c:	e6ff1071 	uxth	r1, r1
    8c40:	ebfffe17 	bl	84a4 <printk>
    8c44:	e28dd00c 	add	sp, sp, #12
    8c48:	e8bd8030 	pop	{r4, r5, pc}

00008c4c <adc_read>:
    8c4c:	e92d4010 	push	{r4, lr}
    8c50:	e1a04000 	mov	r4, r0
    8c54:	e30b3004 	movw	r3, #45060	; 0xb004
    8c58:	e3403000 	movt	r3, #0
    8c5c:	e5933000 	ldr	r3, [r3]
    8c60:	e1500003 	cmp	r0, r3
    8c64:	0a000011 	beq	8cb0 <adc_read+0x64>
    8c68:	e3500003 	cmp	r0, #3
    8c6c:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
    8c70:	ea000010 	b	8cb8 <adc_read+0x6c>
    8c74:	00008c9c 	muleq	r0, ip, ip
    8c78:	00008c84 	andeq	r8, r0, r4, lsl #25
    8c7c:	00008c8c 	andeq	r8, r0, ip, lsl #25
    8c80:	00008c94 	muleq	r0, r4, ip
    8c84:	e3050083 	movw	r0, #20611	; 0x5083
    8c88:	ea000004 	b	8ca0 <adc_read+0x54>
    8c8c:	e3060083 	movw	r0, #24707	; 0x6083
    8c90:	ea000002 	b	8ca0 <adc_read+0x54>
    8c94:	e3070083 	movw	r0, #28803	; 0x7083
    8c98:	ea000000 	b	8ca0 <adc_read+0x54>
    8c9c:	e3040083 	movw	r0, #16515	; 0x4083
    8ca0:	ebffff63 	bl	8a34 <adc_write_config>
    8ca4:	e30b3004 	movw	r3, #45060	; 0xb004
    8ca8:	e3403000 	movt	r3, #0
    8cac:	e5834000 	str	r4, [r3]
    8cb0:	ebffff8d 	bl	8aec <adc_read_conversion>
    8cb4:	e8bd8010 	pop	{r4, pc}
    8cb8:	e3a00000 	mov	r0, #0
    8cbc:	e8bd8010 	pop	{r4, pc}

00008cc0 <display_light>:
    8cc0:	e92d4008 	push	{r3, lr}
    8cc4:	e3a00003 	mov	r0, #3
    8cc8:	ebffffdf 	bl	8c4c <adc_read>
    8ccc:	e1a01000 	mov	r1, r0
    8cd0:	e30a0018 	movw	r0, #40984	; 0xa018
    8cd4:	e3400000 	movt	r0, #0
    8cd8:	ebfffdf1 	bl	84a4 <printk>
    8cdc:	e8bd8008 	pop	{r3, pc}

00008ce0 <clap_detect>:
    8ce0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8ce4:	e30b6dc1 	movw	r6, #48577	; 0xbdc1
    8ce8:	e34f6ff0 	movt	r6, #65520	; 0xfff0
    8cec:	e3e07102 	mvn	r7, #-2147483648	; 0x80000000
    8cf0:	e30aa1b8 	movw	sl, #41400	; 0xa1b8
    8cf4:	e340a000 	movt	sl, #0
    8cf8:	e30a91a4 	movw	r9, #41380	; 0xa1a4
    8cfc:	e3409000 	movt	r9, #0
    8d00:	e3a05ffa 	mov	r5, #1000	; 0x3e8
    8d04:	e3a08002 	mov	r8, #2
    8d08:	e1a00008 	mov	r0, r8
    8d0c:	ebffffce 	bl	8c4c <adc_read>
    8d10:	e1a04000 	mov	r4, r0
    8d14:	e1500007 	cmp	r0, r7
    8d18:	aa000003 	bge	8d2c <clap_detect+0x4c>
    8d1c:	e1a00009 	mov	r0, r9
    8d20:	e1a01004 	mov	r1, r4
    8d24:	ebfffdde 	bl	84a4 <printk>
    8d28:	e1a07004 	mov	r7, r4
    8d2c:	e1540006 	cmp	r4, r6
    8d30:	da000003 	ble	8d44 <clap_detect+0x64>
    8d34:	e1a0000a 	mov	r0, sl
    8d38:	e1a01004 	mov	r1, r4
    8d3c:	ebfffdd8 	bl	84a4 <printk>
    8d40:	e1a06004 	mov	r6, r4
    8d44:	e2555001 	subs	r5, r5, #1
    8d48:	1affffee 	bne	8d08 <clap_detect+0x28>
    8d4c:	e0674006 	rsb	r4, r7, r6
    8d50:	e30a01cc 	movw	r0, #41420	; 0xa1cc
    8d54:	e3400000 	movt	r0, #0
    8d58:	e1a01007 	mov	r1, r7
    8d5c:	e1a02006 	mov	r2, r6
    8d60:	e1a03004 	mov	r3, r4
    8d64:	ebfffdce 	bl	84a4 <printk>
    8d68:	e3540e19 	cmp	r4, #400	; 0x190
    8d6c:	daffffe3 	ble	8d00 <clap_detect+0x20>
    8d70:	e30a01e4 	movw	r0, #41444	; 0xa1e4
    8d74:	e3400000 	movt	r0, #0
    8d78:	ebfffdc9 	bl	84a4 <printk>
    8d7c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

00008d80 <peri_read>:
    8d80:	e5900000 	ldr	r0, [r0]
    8d84:	e12fff1e 	bx	lr

00008d88 <peri_write>:
    8d88:	e5801000 	str	r1, [r0]
    8d8c:	e12fff1e 	bx	lr

00008d90 <peri_set_bits>:
    8d90:	e5903000 	ldr	r3, [r0]
    8d94:	e1c33002 	bic	r3, r3, r2
    8d98:	e0011002 	and	r1, r1, r2
    8d9c:	e1832001 	orr	r2, r3, r1
    8da0:	e5802000 	str	r2, [r0]
    8da4:	e12fff1e 	bx	lr

00008da8 <set_bits>:
    8da8:	e1c00002 	bic	r0, r0, r2
    8dac:	e0011002 	and	r1, r1, r2
    8db0:	e1800001 	orr	r0, r0, r1
    8db4:	e12fff1e 	bx	lr

00008db8 <delay_cycles>:
    8db8:	e2500001 	subs	r0, r0, #1
    8dbc:	1afffffd 	bne	8db8 <delay_cycles>
    8dc0:	e1a0f00e 	mov	pc, lr

00008dc4 <read_cpsr>:
    8dc4:	e10f0000 	mrs	r0, CPSR
    8dc8:	e1a0f00e 	mov	pc, lr

00008dcc <write_cpsr>:
    8dcc:	e129f000 	msr	CPSR_fc, r0
    8dd0:	e1a0f00e 	mov	pc, lr

00008dd4 <disable_interrupts>:
    8dd4:	e10f0000 	mrs	r0, CPSR
    8dd8:	e3a01d07 	mov	r1, #448	; 0x1c0
    8ddc:	e1800001 	orr	r0, r0, r1
    8de0:	e129f000 	msr	CPSR_fc, r0
    8de4:	e1a0f00e 	mov	pc, lr

00008de8 <enable_interrupts>:
    8de8:	e10f0000 	mrs	r0, CPSR
    8dec:	e3a01d07 	mov	r1, #448	; 0x1c0
    8df0:	e1c00001 	bic	r0, r0, r1
    8df4:	e129f000 	msr	CPSR_fc, r0
    8df8:	e1a0f00e 	mov	pc, lr

00008dfc <__aeabi_uldivmod>:
    8dfc:	e3530000 	cmp	r3, #0
    8e00:	03520000 	cmpeq	r2, #0
    8e04:	1a000004 	bne	8e1c <__aeabi_uldivmod+0x20>
    8e08:	e3510000 	cmp	r1, #0
    8e0c:	03500000 	cmpeq	r0, #0
    8e10:	13e01000 	mvnne	r1, #0
    8e14:	13e00000 	mvnne	r0, #0
    8e18:	ea000027 	b	8ebc <__aeabi_idiv0>
    8e1c:	e24dd008 	sub	sp, sp, #8
    8e20:	e92d6000 	push	{sp, lr}
    8e24:	eb000014 	bl	8e7c <__gnu_uldivmod_helper>
    8e28:	e59de004 	ldr	lr, [sp, #4]
    8e2c:	e28dd008 	add	sp, sp, #8
    8e30:	e8bd000c 	pop	{r2, r3}
    8e34:	e12fff1e 	bx	lr

00008e38 <__gnu_ldivmod_helper>:
    8e38:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8e3c:	e59d6020 	ldr	r6, [sp, #32]
    8e40:	e1a07002 	mov	r7, r2
    8e44:	e1a0a003 	mov	sl, r3
    8e48:	e1a04000 	mov	r4, r0
    8e4c:	e1a05001 	mov	r5, r1
    8e50:	eb00001a 	bl	8ec0 <__divdi3>
    8e54:	e1a03000 	mov	r3, r0
    8e58:	e0020197 	mul	r2, r7, r1
    8e5c:	e0898097 	umull	r8, r9, r7, r0
    8e60:	e023239a 	mla	r3, sl, r3, r2
    8e64:	e0544008 	subs	r4, r4, r8
    8e68:	e0839009 	add	r9, r3, r9
    8e6c:	e0c55009 	sbc	r5, r5, r9
    8e70:	e8860030 	stm	r6, {r4, r5}
    8e74:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8e78:	e12fff1e 	bx	lr

00008e7c <__gnu_uldivmod_helper>:
    8e7c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8e80:	e59d5018 	ldr	r5, [sp, #24]
    8e84:	e1a04002 	mov	r4, r2
    8e88:	e1a08003 	mov	r8, r3
    8e8c:	e1a06000 	mov	r6, r0
    8e90:	e1a07001 	mov	r7, r1
    8e94:	eb000067 	bl	9038 <__udivdi3>
    8e98:	e0080890 	mul	r8, r0, r8
    8e9c:	e0832490 	umull	r2, r3, r0, r4
    8ea0:	e0248491 	mla	r4, r1, r4, r8
    8ea4:	e0566002 	subs	r6, r6, r2
    8ea8:	e0843003 	add	r3, r4, r3
    8eac:	e0c77003 	sbc	r7, r7, r3
    8eb0:	e88500c0 	stm	r5, {r6, r7}
    8eb4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8eb8:	e12fff1e 	bx	lr

00008ebc <__aeabi_idiv0>:
    8ebc:	e12fff1e 	bx	lr

00008ec0 <__divdi3>:
    8ec0:	e3510000 	cmp	r1, #0
    8ec4:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8ec8:	a1a04000 	movge	r4, r0
    8ecc:	a1a05001 	movge	r5, r1
    8ed0:	a3a0a000 	movge	sl, #0
    8ed4:	ba000053 	blt	9028 <__divdi3+0x168>
    8ed8:	e3530000 	cmp	r3, #0
    8edc:	a1a08002 	movge	r8, r2
    8ee0:	a1a09003 	movge	r9, r3
    8ee4:	ba00004b 	blt	9018 <__divdi3+0x158>
    8ee8:	e1550009 	cmp	r5, r9
    8eec:	01540008 	cmpeq	r4, r8
    8ef0:	33a02000 	movcc	r2, #0
    8ef4:	33a03000 	movcc	r3, #0
    8ef8:	3a00003b 	bcc	8fec <__divdi3+0x12c>
    8efc:	e1a01009 	mov	r1, r9
    8f00:	e1a00008 	mov	r0, r8
    8f04:	eb000093 	bl	9158 <__clzdi2>
    8f08:	e1a01005 	mov	r1, r5
    8f0c:	e1a0b000 	mov	fp, r0
    8f10:	e1a00004 	mov	r0, r4
    8f14:	eb00008f 	bl	9158 <__clzdi2>
    8f18:	e060000b 	rsb	r0, r0, fp
    8f1c:	e240e020 	sub	lr, r0, #32
    8f20:	e1a07019 	lsl	r7, r9, r0
    8f24:	e1877e18 	orr	r7, r7, r8, lsl lr
    8f28:	e260c020 	rsb	ip, r0, #32
    8f2c:	e1877c38 	orr	r7, r7, r8, lsr ip
    8f30:	e1550007 	cmp	r5, r7
    8f34:	e1a06018 	lsl	r6, r8, r0
    8f38:	01540006 	cmpeq	r4, r6
    8f3c:	e1a01000 	mov	r1, r0
    8f40:	33a02000 	movcc	r2, #0
    8f44:	33a03000 	movcc	r3, #0
    8f48:	3a000005 	bcc	8f64 <__divdi3+0xa4>
    8f4c:	e3a08001 	mov	r8, #1
    8f50:	e0544006 	subs	r4, r4, r6
    8f54:	e1a03e18 	lsl	r3, r8, lr
    8f58:	e1833c38 	orr	r3, r3, r8, lsr ip
    8f5c:	e0c55007 	sbc	r5, r5, r7
    8f60:	e1a02018 	lsl	r2, r8, r0
    8f64:	e3500000 	cmp	r0, #0
    8f68:	0a00001f 	beq	8fec <__divdi3+0x12c>
    8f6c:	e1b070a7 	lsrs	r7, r7, #1
    8f70:	e1a06066 	rrx	r6, r6
    8f74:	ea000007 	b	8f98 <__divdi3+0xd8>
    8f78:	e0544006 	subs	r4, r4, r6
    8f7c:	e0c55007 	sbc	r5, r5, r7
    8f80:	e0944004 	adds	r4, r4, r4
    8f84:	e0a55005 	adc	r5, r5, r5
    8f88:	e2944001 	adds	r4, r4, #1
    8f8c:	e2a55000 	adc	r5, r5, #0
    8f90:	e2500001 	subs	r0, r0, #1
    8f94:	0a000006 	beq	8fb4 <__divdi3+0xf4>
    8f98:	e1570005 	cmp	r7, r5
    8f9c:	01560004 	cmpeq	r6, r4
    8fa0:	9afffff4 	bls	8f78 <__divdi3+0xb8>
    8fa4:	e0944004 	adds	r4, r4, r4
    8fa8:	e0a55005 	adc	r5, r5, r5
    8fac:	e2500001 	subs	r0, r0, #1
    8fb0:	1afffff8 	bne	8f98 <__divdi3+0xd8>
    8fb4:	e261c020 	rsb	ip, r1, #32
    8fb8:	e1a00134 	lsr	r0, r4, r1
    8fbc:	e0922004 	adds	r2, r2, r4
    8fc0:	e241e020 	sub	lr, r1, #32
    8fc4:	e1800c15 	orr	r0, r0, r5, lsl ip
    8fc8:	e1a04135 	lsr	r4, r5, r1
    8fcc:	e1800e35 	orr	r0, r0, r5, lsr lr
    8fd0:	e1a07114 	lsl	r7, r4, r1
    8fd4:	e1877e10 	orr	r7, r7, r0, lsl lr
    8fd8:	e1a06110 	lsl	r6, r0, r1
    8fdc:	e0a33005 	adc	r3, r3, r5
    8fe0:	e1877c30 	orr	r7, r7, r0, lsr ip
    8fe4:	e0522006 	subs	r2, r2, r6
    8fe8:	e0c33007 	sbc	r3, r3, r7
    8fec:	e29a0000 	adds	r0, sl, #0
    8ff0:	13a00001 	movne	r0, #1
    8ff4:	e3a01000 	mov	r1, #0
    8ff8:	e2704000 	rsbs	r4, r0, #0
    8ffc:	e2e15000 	rsc	r5, r1, #0
    9000:	e0222004 	eor	r2, r2, r4
    9004:	e0233005 	eor	r3, r3, r5
    9008:	e0900002 	adds	r0, r0, r2
    900c:	e0a11003 	adc	r1, r1, r3
    9010:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9014:	e12fff1e 	bx	lr
    9018:	e2728000 	rsbs	r8, r2, #0
    901c:	e1e0a00a 	mvn	sl, sl
    9020:	e2e39000 	rsc	r9, r3, #0
    9024:	eaffffaf 	b	8ee8 <__divdi3+0x28>
    9028:	e2704000 	rsbs	r4, r0, #0
    902c:	e2e15000 	rsc	r5, r1, #0
    9030:	e3e0a000 	mvn	sl, #0
    9034:	eaffffa7 	b	8ed8 <__divdi3+0x18>

00009038 <__udivdi3>:
    9038:	e1510003 	cmp	r1, r3
    903c:	01500002 	cmpeq	r0, r2
    9040:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    9044:	e1a04000 	mov	r4, r0
    9048:	e1a05001 	mov	r5, r1
    904c:	e1a08002 	mov	r8, r2
    9050:	e1a09003 	mov	r9, r3
    9054:	33a00000 	movcc	r0, #0
    9058:	33a01000 	movcc	r1, #0
    905c:	3a00003b 	bcc	9150 <__udivdi3+0x118>
    9060:	e1a01003 	mov	r1, r3
    9064:	e1a00002 	mov	r0, r2
    9068:	eb00003a 	bl	9158 <__clzdi2>
    906c:	e1a01005 	mov	r1, r5
    9070:	e1a0a000 	mov	sl, r0
    9074:	e1a00004 	mov	r0, r4
    9078:	eb000036 	bl	9158 <__clzdi2>
    907c:	e060300a 	rsb	r3, r0, sl
    9080:	e243e020 	sub	lr, r3, #32
    9084:	e1a07319 	lsl	r7, r9, r3
    9088:	e1877e18 	orr	r7, r7, r8, lsl lr
    908c:	e263c020 	rsb	ip, r3, #32
    9090:	e1877c38 	orr	r7, r7, r8, lsr ip
    9094:	e1550007 	cmp	r5, r7
    9098:	e1a06318 	lsl	r6, r8, r3
    909c:	01540006 	cmpeq	r4, r6
    90a0:	e1a02003 	mov	r2, r3
    90a4:	33a00000 	movcc	r0, #0
    90a8:	33a01000 	movcc	r1, #0
    90ac:	3a000005 	bcc	90c8 <__udivdi3+0x90>
    90b0:	e3a08001 	mov	r8, #1
    90b4:	e0544006 	subs	r4, r4, r6
    90b8:	e1a01e18 	lsl	r1, r8, lr
    90bc:	e1811c38 	orr	r1, r1, r8, lsr ip
    90c0:	e0c55007 	sbc	r5, r5, r7
    90c4:	e1a00318 	lsl	r0, r8, r3
    90c8:	e3530000 	cmp	r3, #0
    90cc:	0a00001f 	beq	9150 <__udivdi3+0x118>
    90d0:	e1b070a7 	lsrs	r7, r7, #1
    90d4:	e1a06066 	rrx	r6, r6
    90d8:	ea000007 	b	90fc <__udivdi3+0xc4>
    90dc:	e0544006 	subs	r4, r4, r6
    90e0:	e0c55007 	sbc	r5, r5, r7
    90e4:	e0944004 	adds	r4, r4, r4
    90e8:	e0a55005 	adc	r5, r5, r5
    90ec:	e2944001 	adds	r4, r4, #1
    90f0:	e2a55000 	adc	r5, r5, #0
    90f4:	e2533001 	subs	r3, r3, #1
    90f8:	0a000006 	beq	9118 <__udivdi3+0xe0>
    90fc:	e1570005 	cmp	r7, r5
    9100:	01560004 	cmpeq	r6, r4
    9104:	9afffff4 	bls	90dc <__udivdi3+0xa4>
    9108:	e0944004 	adds	r4, r4, r4
    910c:	e0a55005 	adc	r5, r5, r5
    9110:	e2533001 	subs	r3, r3, #1
    9114:	1afffff8 	bne	90fc <__udivdi3+0xc4>
    9118:	e0948000 	adds	r8, r4, r0
    911c:	e0a59001 	adc	r9, r5, r1
    9120:	e1a03234 	lsr	r3, r4, r2
    9124:	e2621020 	rsb	r1, r2, #32
    9128:	e2420020 	sub	r0, r2, #32
    912c:	e1833115 	orr	r3, r3, r5, lsl r1
    9130:	e1a0c235 	lsr	ip, r5, r2
    9134:	e1833035 	orr	r3, r3, r5, lsr r0
    9138:	e1a0721c 	lsl	r7, ip, r2
    913c:	e1877013 	orr	r7, r7, r3, lsl r0
    9140:	e1a06213 	lsl	r6, r3, r2
    9144:	e1877133 	orr	r7, r7, r3, lsr r1
    9148:	e0580006 	subs	r0, r8, r6
    914c:	e0c91007 	sbc	r1, r9, r7
    9150:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    9154:	e12fff1e 	bx	lr

00009158 <__clzdi2>:
    9158:	e92d4010 	push	{r4, lr}
    915c:	e3510000 	cmp	r1, #0
    9160:	1a000002 	bne	9170 <__clzdi2+0x18>
    9164:	eb000005 	bl	9180 <__clzsi2>
    9168:	e2800020 	add	r0, r0, #32
    916c:	ea000001 	b	9178 <__clzdi2+0x20>
    9170:	e1a00001 	mov	r0, r1
    9174:	eb000001 	bl	9180 <__clzsi2>
    9178:	e8bd4010 	pop	{r4, lr}
    917c:	e12fff1e 	bx	lr

00009180 <__clzsi2>:
    9180:	e3a0101c 	mov	r1, #28
    9184:	e3500801 	cmp	r0, #65536	; 0x10000
    9188:	21a00820 	lsrcs	r0, r0, #16
    918c:	22411010 	subcs	r1, r1, #16
    9190:	e3500c01 	cmp	r0, #256	; 0x100
    9194:	21a00420 	lsrcs	r0, r0, #8
    9198:	22411008 	subcs	r1, r1, #8
    919c:	e3500010 	cmp	r0, #16
    91a0:	21a00220 	lsrcs	r0, r0, #4
    91a4:	22411004 	subcs	r1, r1, #4
    91a8:	e28f2008 	add	r2, pc, #8
    91ac:	e7d20000 	ldrb	r0, [r2, r0]
    91b0:	e0800001 	add	r0, r0, r1
    91b4:	e12fff1e 	bx	lr
    91b8:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    91bc:	01010101 	tsteq	r1, r1, lsl #2
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
    a018:	000a6425 	andeq	r6, sl, r5, lsr #8
    a01c:	00000030 	andeq	r0, r0, r0, lsr r0
    a020:	00007830 	andeq	r7, r0, r0, lsr r8
    a024:	61656c70 	smcvs	22208	; 0x56c0
    a028:	69206573 	stmdbvs	r0!, {r0, r1, r4, r5, r6, r8, sl, sp, lr}
    a02c:	7475706e 	ldrbtvc	r7, [r5], #-110	; 0xffffff92
    a030:	0000000a 	andeq	r0, r0, sl
    a034:	72656874 	rsbvc	r6, r5, #116, 16	; 0x740000
    a038:	72612065 	rsbvc	r2, r1, #101	; 0x65
    a03c:	6f6d2065 	svcvs	0x006d2065
    a040:	64206572 	strtvs	r6, [r0], #-1394	; 0xfffffa8e
    a044:	20617461 	rsbcs	r7, r1, r1, ror #8
    a048:	46206e69 	strtmi	r6, [r0], -r9, ror #28
    a04c:	0a4f4649 	beq	13db978 <__user_program+0x10db978>
    a050:	00000000 	andeq	r0, r0, r0
    a054:	65636572 	strbvs	r6, [r3, #-1394]!	; 0xfffffa8e
    a058:	6e697669 	cdpvs	6, 6, cr7, cr9, cr9, {3}
    a05c:	61642067 	cmnvs	r4, r7, rrx
    a060:	61206174 			; <UNDEFINED> instruction: 0x61206174
    a064:	72657466 	rsbvc	r7, r5, #1711276032	; 0x66000000
    a068:	61727420 	cmnvs	r2, r0, lsr #8
    a06c:	6566736e 	strbvs	r7, [r6, #-878]!	; 0xfffffc92
    a070:	73692072 	cmnvc	r9, #114	; 0x72
    a074:	4e4f4420 	cdpmi	4, 4, cr4, cr15, cr0, {1}
    a078:	00000a45 	andeq	r0, r0, r5, asr #20
    a07c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a080:	72756769 	rsbsvc	r6, r5, #27525120	; 0x1a40000
    a084:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a088:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    a08c:	25203a65 	strcs	r3, [r0, #-2661]!	; 0xfffff59b
    a090:	00000a78 	andeq	r0, r0, r8, ror sl
    a094:	6f727265 	svcvs	0x00727265
    a098:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a09c:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a0a0:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0a4:	000a6769 	andeq	r6, sl, r9, ror #14
    a0a8:	63637573 	cmnvs	r3, #482344960	; 0x1cc00000
    a0ac:	20737365 	rsbscs	r7, r3, r5, ror #6
    a0b0:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0b4:	000a6769 	andeq	r6, sl, r9, ror #14
    a0b8:	6f727265 	svcvs	0x00727265
    a0bc:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a0c0:	65687720 	strbvs	r7, [r8, #-1824]!	; 0xfffff8e0
    a0c4:	6572206e 	ldrbvs	r2, [r2, #-110]!	; 0xffffff92
    a0c8:	6e696461 	cdpvs	4, 6, cr6, cr9, cr1, {3}
    a0cc:	6f632067 	svcvs	0x00632067
    a0d0:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    a0d4:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a0d8:	0000000a 	andeq	r0, r0, sl
    a0dc:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0e0:	72206769 	eorvc	r6, r0, #27525120	; 0x1a40000
    a0e4:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    a0e8:	20726574 	rsbscs	r6, r2, r4, ror r5
    a0ec:	25207369 	strcs	r7, [r0, #-873]!	; 0xfffffc97
    a0f0:	00000a78 	andeq	r0, r0, r8, ror sl
    a0f4:	6f727265 	svcvs	0x00727265
    a0f8:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a0fc:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a100:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
    a104:	676e6967 	strbvs	r6, [lr, -r7, ror #18]!
    a108:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a10c:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    a110:	6f702072 	svcvs	0x00702072
    a114:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
    a118:	6f662072 	svcvs	0x00662072
    a11c:	6f632072 	svcvs	0x00632072
    a120:	7265766e 	rsbvc	r7, r5, #115343360	; 0x6e00000
    a124:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
    a128:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a12c:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    a130:	00000a72 	andeq	r0, r0, r2, ror sl
    a134:	6f727265 	svcvs	0x00727265
    a138:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a13c:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a140:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
    a144:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a148:	766e6f63 	strbtvc	r6, [lr], -r3, ror #30
    a14c:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    a150:	72206e6f 	eorvc	r6, r0, #1776	; 0x6f0
    a154:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    a158:	0a726574 	beq	1ca3730 <__user_program+0x19a3730>
    a15c:	00000000 	andeq	r0, r0, r0
    a160:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xfffff1b7
    a164:	6c6c6169 	stfvse	f6, [ip], #-420	; 0xfffffe5c
    a168:	63202c79 			; <UNDEFINED> instruction: 0x63202c79
    a16c:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
    a170:	65722067 	ldrbvs	r2, [r2, #-103]!	; 0xffffff99
    a174:	74736967 	ldrbtvc	r6, [r3], #-2407	; 0xfffff699
    a178:	69207265 	stmdbvs	r0!, {r0, r2, r5, r6, r9, ip, sp, lr}
    a17c:	78252073 	stmdavc	r5!, {r0, r1, r4, r5, r6, sp}
    a180:	0000000a 	andeq	r0, r0, sl
    a184:	74206948 	strtvc	r6, [r0], #-2376	; 0xfffff6b8
    a188:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    a18c:	20736920 	rsbscs	r6, r3, r0, lsr #18
    a190:	000a7825 	andeq	r7, sl, r5, lsr #16
    a194:	74206f4c 	strtvc	r6, [r0], #-3916	; 0xfffff0b4
    a198:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    a19c:	20736920 	rsbscs	r6, r3, r0, lsr #18
    a1a0:	000a7825 	andeq	r7, sl, r5, lsr #16
    a1a4:	206e696d 	rsbcs	r6, lr, sp, ror #18
    a1a8:	61647075 	smcvs	18181	; 0x4705
    a1ac:	2c646574 	cfstr64cs	mvdx6, [r4], #-464	; 0xfffffe30
    a1b0:	0a642520 	beq	1913638 <__user_program+0x1613638>
    a1b4:	00000000 	andeq	r0, r0, r0
    a1b8:	2078616d 	rsbscs	r6, r8, sp, ror #2
    a1bc:	61647075 	smcvs	18181	; 0x4705
    a1c0:	2c646574 	cfstr64cs	mvdx6, [r4], #-464	; 0xfffffe30
    a1c4:	0a642520 	beq	191364c <__user_program+0x161364c>
    a1c8:	00000000 	andeq	r0, r0, r0
    a1cc:	3a6e696d 	bcc	1ba4788 <__user_program+0x18a4788>
    a1d0:	202c6425 	eorcs	r6, ip, r5, lsr #8
    a1d4:	3a78616d 	bcc	1e22790 <__user_program+0x1b22790>
    a1d8:	202c6425 	eorcs	r6, ip, r5, lsr #8
    a1dc:	3a706167 	bcc	1c22780 <__user_program+0x1922780>
    a1e0:	000a6425 	andeq	r6, sl, r5, lsr #8
    a1e4:	70616c63 	rsbvc	r6, r1, r3, ror #24
    a1e8:	74656420 	strbtvc	r6, [r5], #-1056	; 0xfffffbe0
    a1ec:	65746365 	ldrbvs	r6, [r4, #-869]!	; 0xfffffc9b
    a1f0:	000a2164 	andeq	r2, sl, r4, ror #2

Disassembly of section .ARM.exidx:

0000a1f4 <.ARM.exidx>:
    a1f4:	7fffeccc 	svcvc	0x00ffeccc
    a1f8:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

0000b000 <__data_start>:
    b000:	3f200000 	svccc	0x00200000

0000b004 <cur_channel.3682>:
    b004:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

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
      b0:	d7087491 			; <UNDEFINED> instruction: 0xd7087491
      b4:	01000003 	tsteq	r0, r3
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
     164:	01500000 	cmpeq	r0, r0
     168:	00040000 	andeq	r0, r4, r0
     16c:	000000b7 	strheq	r0, [r0], -r7
     170:	01ce0104 	biceq	r0, lr, r4, lsl #2
     174:	8e010000 	cdphi	0, 0, cr0, cr1, cr0, {0}
     178:	70000001 	andvc	r0, r0, r1
     17c:	74000000 	strvc	r0, [r0], #-0
     180:	50000083 	andpl	r0, r0, r3, lsl #1
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
     1b8:	01c50400 	biceq	r0, r5, r0, lsl #8
     1bc:	18020000 	stmdane	r2, {}	; <UNPREDICTABLE>
     1c0:	0000005e 	andeq	r0, r0, lr, asr r0
     1c4:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     1c8:	02000000 	andeq	r0, r0, #0
     1cc:	00340704 	eorseq	r0, r4, r4, lsl #14
     1d0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     1d4:	00002a07 	andeq	r2, r0, r7, lsl #20
     1d8:	01b90500 			; <UNDEFINED> instruction: 0x01b90500
     1dc:	13010000 	movwne	r0, #4096	; 0x1000
     1e0:	00008374 	andeq	r8, r0, r4, ror r3
     1e4:	00000050 	andeq	r0, r0, r0, asr r0
     1e8:	00f29c01 	rscseq	r9, r2, r1, lsl #24
     1ec:	78060000 	stmdavc	r6, {}	; <UNPREDICTABLE>
     1f0:	01000001 	tsteq	r0, r1
     1f4:	0000411b 	andeq	r4, r0, fp, lsl r1
     1f8:	07540100 	ldrbeq	r0, [r4, -r0, lsl #2]
     1fc:	0000837c 	andeq	r8, r0, ip, ror r3
     200:	000000f2 	strdeq	r0, [r0], -r2
     204:	00838408 	addeq	r8, r3, r8, lsl #8
     208:	0000f900 	andeq	pc, r0, r0, lsl #18
     20c:	0000b300 	andeq	fp, r0, r0, lsl #6
     210:	50010900 	andpl	r0, r1, r0, lsl #18
     214:	05dc0a03 	ldrbeq	r0, [ip, #2563]	; 0xa03
     218:	83880700 	orrhi	r0, r8, #0, 14
     21c:	010a0000 	mrseq	r0, (UNDEF: 10)
     220:	94070000 	strls	r0, [r7], #-0
     224:	11000083 	smlabbne	r0, r3, r0, r0
     228:	08000001 	stmdaeq	r0, {r0}
     22c:	000083a4 	andeq	r8, r0, r4, lsr #7
     230:	0000011c 	andeq	r0, r0, ip, lsl r1
     234:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
     238:	02510109 	subseq	r0, r1, #1073741826	; 0x40000002
     23c:	01090074 	tsteq	r9, r4, ror r0
     240:	00750250 	rsbseq	r0, r5, r0, asr r2
     244:	83b00700 	movshi	r0, #0, 14
     248:	013d0000 	teqeq	sp, r0
     24c:	c0070000 	andgt	r0, r7, r0
     250:	4a000083 	bmi	464 <__start-0x7b9c>
     254:	00000001 	andeq	r0, r0, r1
     258:	0001af0a 	andeq	sl, r1, sl, lsl #30
     25c:	0b170300 	bleq	5c0e64 <__user_program+0x2c0e64>
     260:	0000015c 	andeq	r0, r0, ip, asr r1
     264:	010a5a05 	tsteq	sl, r5, lsl #20
     268:	530c0000 	movwpl	r0, #49152	; 0xc000
     26c:	00000000 	andeq	r0, r0, r0
     270:	0001850a 	andeq	r8, r1, sl, lsl #10
     274:	0d280400 	cfstrseq	mvf0, [r8, #-0]
     278:	00000140 	andeq	r0, r0, r0, asr #2
     27c:	00412a03 	subeq	r2, r1, r3, lsl #20
     280:	7e0e0000 	cdpvc	0, 0, cr0, cr14, cr0, {0}
     284:	06000001 	streq	r0, [r0], -r1
     288:	00003313 	andeq	r3, r0, r3, lsl r3
     28c:	00013200 	andeq	r3, r1, r0, lsl #4
     290:	01320c00 	teqeq	r2, r0, lsl #24
     294:	000f0000 	andeq	r0, pc, r0
     298:	01380410 	teqeq	r8, r0, lsl r4
     29c:	25110000 	ldrcs	r0, [r1, #-0]
     2a0:	12000000 	andne	r0, r0, #0
     2a4:	0000014e 	andeq	r0, r0, lr, asr #2
     2a8:	014a3204 	cmpeq	sl, r4, lsl #4
     2ac:	000f0000 	andeq	r0, pc, r0
     2b0:	00016c13 	andeq	r6, r1, r3, lsl ip
     2b4:	0f340400 	svceq	0x00340400
     2b8:	02f00000 	rscseq	r0, r0, #0
     2bc:	00040000 	andeq	r0, r4, r0
     2c0:	000001c3 	andeq	r0, r0, r3, asr #3
     2c4:	01ce0104 	biceq	r0, lr, r4, lsl #2
     2c8:	6d010000 	stcvs	0, cr0, [r1, #-0]
     2cc:	70000002 	andvc	r0, r0, r2
     2d0:	c4000000 	strgt	r0, [r0], #-0
     2d4:	98000083 	stmdals	r0, {r0, r1, r7}
     2d8:	55000002 	strpl	r0, [r0, #-2]
     2dc:	02000001 	andeq	r0, r0, #1
     2e0:	00000052 	andeq	r0, r0, r2, asr r0
     2e4:	00300e02 	eorseq	r0, r0, r2, lsl #28
     2e8:	01030000 	mrseq	r0, (UNDEF: 3)
     2ec:	00006208 	andeq	r6, r0, r8, lsl #4
     2f0:	05020300 	streq	r0, [r2, #-768]	; 0xfffffd00
     2f4:	00000123 	andeq	r0, r0, r3, lsr #2
     2f8:	00006802 	andeq	r6, r0, r2, lsl #16
     2fc:	49120200 	ldmdbmi	r2, {r9}
     300:	04000000 	streq	r0, [r0], #-0
     304:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     308:	08030074 	stmdaeq	r3, {r2, r4, r5, r6}
     30c:	00000005 	andeq	r0, r0, r5
     310:	00510200 	subseq	r0, r1, r0, lsl #4
     314:	16020000 	strne	r0, [r2], -r0
     318:	00000062 	andeq	r0, r0, r2, rrx
     31c:	59080103 	stmdbpl	r8, {r0, r1, r8}
     320:	03000000 	movweq	r0, #0
     324:	00fe0702 	rscseq	r0, lr, r2, lsl #14
     328:	67020000 	strvs	r0, [r2, -r0]
     32c:	02000000 	andeq	r0, r0, #0
     330:	00007b1a 	andeq	r7, r0, sl, lsl fp
     334:	07040300 	streq	r0, [r4, -r0, lsl #6]
     338:	00000034 	andeq	r0, r0, r4, lsr r0
     33c:	00022f02 	andeq	r2, r2, r2, lsl #30
     340:	8d1c0200 	lfmhi	f0, 4, [ip, #-0]
     344:	03000000 	movweq	r0, #0
     348:	002a0708 	eoreq	r0, sl, r8, lsl #14
     34c:	3f020000 	svccc	0x00020000
     350:	03000002 	movweq	r0, #2
     354:	00009f13 	andeq	r9, r0, r3, lsl pc
     358:	023d0500 	eorseq	r0, sp, #0, 10
     35c:	04040000 	streq	r0, [r4], #-0
     360:	0000b600 	andeq	fp, r0, r0, lsl #12
     364:	029c0600 	addseq	r0, ip, #0, 12
     368:	00b60000 	adcseq	r0, r6, r0
     36c:	00000000 	andeq	r0, r0, r0
     370:	55080407 	strpl	r0, [r8, #-1031]	; 0xfffffbf9
     374:	01000002 	tsteq	r0, r2
     378:	0083c421 	addeq	ip, r3, r1, lsr #8
     37c:	0000e000 	andeq	lr, r0, r0
     380:	2a9c0100 	bcs	fe700788 <__user_program+0xfe400788>
     384:	09000001 	stmdbeq	r0, {r0}
     388:	00000238 	andeq	r0, r0, r8, lsr r2
     38c:	00572101 	subseq	r2, r7, r1, lsl #2
     390:	00000000 	andeq	r0, r0, r0
     394:	6e0a0000 	cdpvs	0, 0, cr0, cr10, cr0, {0}
     398:	01006d75 	tsteq	r0, r5, ror sp
     39c:	00008221 	andeq	r8, r0, r1, lsr #4
     3a0:	00002100 	andeq	r2, r0, r0, lsl #2
     3a4:	02660b00 	rsbeq	r0, r6, #0, 22
     3a8:	22010000 	andcs	r0, r1, #0
     3ac:	0000012a 	andeq	r0, r0, sl, lsr #2
     3b0:	00000059 	andeq	r0, r0, r9, asr r0
     3b4:	6675620c 	ldrbtvs	r6, [r5], -ip, lsl #4
     3b8:	30230100 	eorcc	r0, r3, r0, lsl #2
     3bc:	02000001 	andeq	r0, r0, #1
     3c0:	700d5891 	mulvc	sp, r1, r8
     3c4:	01007274 	tsteq	r0, r4, ror r2
     3c8:	00012a24 	andeq	r2, r1, r4, lsr #20
     3cc:	00009000 	andeq	r9, r0, r0
     3d0:	84780e00 	ldrbthi	r0, [r8], #-3584	; 0xfffff200
     3d4:	02e60000 	rsceq	r0, r6, #0
     3d8:	900e0000 	andls	r0, lr, r0
     3dc:	e6000084 	str	r0, [r0], -r4, lsl #1
     3e0:	00000002 	andeq	r0, r0, r2
     3e4:	0025040f 	eoreq	r0, r5, pc, lsl #8
     3e8:	25100000 	ldrcs	r0, [r0, #-0]
     3ec:	40000000 	andmi	r0, r0, r0
     3f0:	11000001 	tstne	r0, r1
     3f4:	00000140 	andeq	r0, r0, r0, asr #2
     3f8:	04030007 	streq	r0, [r3], #-7
     3fc:	00029307 	andeq	r9, r2, r7, lsl #6
     400:	017e1200 	cmneq	lr, r0, lsl #4
     404:	3f010000 	svccc	0x00010000
     408:	00000049 	andeq	r0, r0, r9, asr #32
     40c:	000084a4 	andeq	r8, r0, r4, lsr #9
     410:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
     414:	02b59c01 	adcseq	r9, r5, #256	; 0x100
     418:	660a0000 	strvs	r0, [sl], -r0
     41c:	0100746d 	tsteq	r0, sp, ror #8
     420:	0002b53f 	andeq	fp, r2, pc, lsr r5
     424:	0000f800 	andeq	pc, r0, r0, lsl #16
     428:	8e141300 	cdphi	3, 1, cr1, cr4, cr0, {0}
     42c:	01000002 	tsteq	r0, r2
     430:	00009440 	andeq	r9, r0, r0, asr #8
     434:	54910200 	ldrpl	r0, [r1], #512	; 0x200
     438:	00000015 	andeq	r0, r0, r5, lsl r0
     43c:	0001a700 	andeq	sl, r1, r0, lsl #14
     440:	756e0d00 	strbvc	r0, [lr, #-3328]!	; 0xfffff300
     444:	6101006d 	tstvs	r1, sp, rrx
     448:	00000070 	andeq	r0, r0, r0, ror r0
     44c:	0000012f 	andeq	r0, r0, pc, lsr #2
     450:	0085bc16 	addeq	fp, r5, r6, lsl ip
     454:	0000b800 	andeq	fp, r0, r0, lsl #16
     458:	50011700 	andpl	r1, r1, r0, lsl #14
     45c:	00007802 	andeq	r7, r0, r2, lsl #16
     460:	00181500 	andseq	r1, r8, r0, lsl #10
     464:	01d00000 	bicseq	r0, r0, r0
     468:	6e0d0000 	cdpvs	0, 0, cr0, cr13, cr0, {0}
     46c:	01006d75 	tsteq	r0, r5, ror sp
     470:	00007068 	andeq	r7, r0, r8, rrx
     474:	00014e00 	andeq	r4, r1, r0, lsl #28
     478:	85dc1600 	ldrbhi	r1, [ip, #1536]	; 0x600
     47c:	00b80000 	adcseq	r0, r8, r0
     480:	01170000 	tsteq	r7, r0
     484:	00770250 	rsbseq	r0, r7, r0, asr r2
     488:	38180000 	ldmdacc	r8, {}	; <UNPREDICTABLE>
     48c:	48000085 	stmdami	r0, {r0, r2, r7}
     490:	23000000 	movwcs	r0, #0
     494:	0d000002 	stceq	0, cr0, [r0, #-8]
     498:	006d756e 	rsbeq	r7, sp, lr, ror #10
     49c:	003e5001 	eorseq	r5, lr, r1
     4a0:	016d0000 	cmneq	sp, r0
     4a4:	58190000 	ldmdapl	r9, {}	; <UNPREDICTABLE>
     4a8:	e6000085 	str	r0, [r0], -r5, lsl #1
     4ac:	00000002 	andeq	r0, r0, r2
     4b0:	17000002 	strne	r0, [r0, -r2]
     4b4:	08025001 	stmdaeq	r2, {r0, ip, lr}
     4b8:	6819002d 	ldmdavs	r9, {r0, r2, r3, r5}
     4bc:	b8000085 	stmdalt	r0, {r0, r2, r7}
     4c0:	13000000 	movwne	r0, #0
     4c4:	17000002 	strne	r0, [r0, -r2]
     4c8:	3a015001 	bcc	544d4 <__bss_end+0x484d4>
     4cc:	857c1600 	ldrbhi	r1, [ip, #-1536]!	; 0xfffffa00
     4d0:	00b80000 	adcseq	r0, r8, r0
     4d4:	01170000 	tsteq	r7, r0
     4d8:	003a0150 	eorseq	r0, sl, r0, asr r1
     4dc:	85801800 	strhi	r1, [r0, #2048]	; 0x800
     4e0:	00200000 	eoreq	r0, r0, r0
     4e4:	024f0000 	subeq	r0, pc, #0
     4e8:	6e0d0000 	cdpvs	0, 0, cr0, cr13, cr0, {0}
     4ec:	01006d75 	tsteq	r0, r5, ror sp
     4f0:	0000705b 	andeq	r7, r0, fp, asr r0
     4f4:	00018000 	andeq	r8, r1, r0
     4f8:	859c1600 	ldrhi	r1, [ip, #1536]	; 0x600
     4fc:	00b80000 	adcseq	r0, r8, r0
     500:	01170000 	tsteq	r7, r0
     504:	003a0150 	eorseq	r0, sl, r0, asr r1
     508:	85e01800 	strbhi	r1, [r0, #2048]!	; 0x800
     50c:	00300000 	eorseq	r0, r0, r0
     510:	02750000 	rsbseq	r0, r5, #0
     514:	260b0000 	strcs	r0, [fp], -r0
     518:	01000002 	tsteq	r0, r2
     51c:	00012a6e 	andeq	r2, r1, lr, ror #20
     520:	00019f00 	andeq	r9, r1, r0, lsl #30
     524:	86000e00 	strhi	r0, [r0], -r0, lsl #28
     528:	02e60000 	rsceq	r0, r6, #0
     52c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     530:	00008610 	andeq	r8, r0, r0, lsl r6
     534:	00000018 	andeq	r0, r0, r8, lsl r0
     538:	0000029b 	muleq	r0, fp, r2
     53c:	0001490b 	andeq	r4, r1, fp, lsl #18
     540:	3e770100 	rpwccs	f0, f7, f0
     544:	bf000000 	svclt	0x00000000
     548:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     54c:	00008624 	andeq	r8, r0, r4, lsr #12
     550:	000002e6 	andeq	r0, r0, r6, ror #5
     554:	84dc0e00 	ldrbhi	r0, [ip], #3584	; 0xe00
     558:	02e60000 	rsceq	r0, r6, #0
     55c:	30160000 	andscc	r0, r6, r0
     560:	e6000086 	str	r0, [r0], -r6, lsl #1
     564:	17000002 	strne	r0, [r0, -r2]
     568:	08025001 	stmdaeq	r2, {r0, ip, lr}
     56c:	0f000025 	svceq	0x00000025
     570:	0002bb04 	andeq	fp, r2, r4, lsl #22
     574:	00301a00 	eorseq	r1, r0, r0, lsl #20
     578:	30100000 	andscc	r0, r0, r0
     57c:	d0000000 	andle	r0, r0, r0
     580:	11000002 	tstne	r0, r2
     584:	00000140 	andeq	r0, r0, r0, asr #2
     588:	5f140010 	svcpl	0x00140010
     58c:	01000002 	tsteq	r0, r2
     590:	0002e118 	andeq	lr, r2, r8, lsl r1
     594:	00030500 	andeq	r0, r3, r0, lsl #10
     598:	1a0000a0 	bne	820 <__start-0x77e0>
     59c:	000002c0 	andeq	r0, r0, r0, asr #5
     5a0:	0002471b 	andeq	r4, r2, fp, lsl r7
     5a4:	1c230500 	cfstr32ne	mvfx0, [r3], #-0
     5a8:	00000057 	andeq	r0, r0, r7, asr r0
     5ac:	019c0000 	orrseq	r0, ip, r0
     5b0:	00040000 	andeq	r0, r4, r0
     5b4:	0000032d 	andeq	r0, r0, sp, lsr #6
     5b8:	01ce0104 	biceq	r0, lr, r4, lsl #2
     5bc:	a8010000 	stmdage	r1, {}	; <UNPREDICTABLE>
     5c0:	70000002 	andvc	r0, r0, r2
     5c4:	5c000000 	stcpl	0, cr0, [r0], {-0}
     5c8:	f8000086 			; <UNDEFINED> instruction: 0xf8000086
     5cc:	53000000 	movwpl	r0, #0
     5d0:	02000002 	andeq	r0, r0, #2
     5d4:	00620801 	rsbeq	r0, r2, r1, lsl #16
     5d8:	02020000 	andeq	r0, r2, #0
     5dc:	00012305 	andeq	r2, r1, r5, lsl #6
     5e0:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     5e4:	00746e69 	rsbseq	r6, r4, r9, ror #28
     5e8:	00050802 	andeq	r0, r5, r2, lsl #16
     5ec:	04000000 	streq	r0, [r0], #-0
     5f0:	00000051 	andeq	r0, r0, r1, asr r0
     5f4:	004c1602 	subeq	r1, ip, r2, lsl #12
     5f8:	01020000 	mrseq	r0, (UNDEF: 2)
     5fc:	00005908 	andeq	r5, r0, r8, lsl #18
     600:	07020200 	streq	r0, [r2, -r0, lsl #4]
     604:	000000fe 	strdeq	r0, [r0], -lr
     608:	00006704 	andeq	r6, r0, r4, lsl #14
     60c:	651a0200 	ldrvs	r0, [sl, #-512]	; 0xfffffe00
     610:	02000000 	andeq	r0, r0, #0
     614:	00340704 	eorseq	r0, r4, r4, lsl #14
     618:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     61c:	00002a07 	andeq	r2, r0, r7, lsl #20
     620:	01af0500 			; <UNDEFINED> instruction: 0x01af0500
     624:	26010000 	strcs	r0, [r1], -r0
     628:	0000865c 	andeq	r8, r0, ip, asr r6
     62c:	00000064 	andeq	r0, r0, r4, rrx
     630:	00e59c01 	rsceq	r9, r5, r1, lsl #24
     634:	6c060000 	stcvs	0, cr0, [r6], {-0}
     638:	52000086 	andpl	r0, r0, #134	; 0x86
     63c:	a0000001 	andge	r0, r0, r1
     640:	07000000 	streq	r0, [r0, -r0]
     644:	30015101 	andcc	r5, r1, r1, lsl #2
     648:	01500107 	cmpeq	r0, r7, lsl #2
     64c:	7806003f 	stmdavc	r6, {r0, r1, r2, r3, r4, r5}
     650:	52000086 	andpl	r0, r0, #134	; 0x86
     654:	b8000001 	stmdalt	r0, {r0}
     658:	07000000 	streq	r0, [r0, -r0]
     65c:	30015101 	andcc	r5, r1, r1, lsl #2
     660:	01500107 	cmpeq	r0, r7, lsl #2
     664:	8406003e 	strhi	r0, [r6], #-62	; 0xffffffc2
     668:	68000086 	stmdavs	r0, {r1, r2, r7}
     66c:	d0000001 	andle	r0, r0, r1
     670:	07000000 	streq	r0, [r0, -r0]
     674:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     678:	01500107 	cmpeq	r0, r7, lsl #2
     67c:	9008003f 	andls	r0, r8, pc, lsr r0
     680:	68000086 	stmdavs	r0, {r1, r2, r7}
     684:	07000001 	streq	r0, [r0, -r1]
     688:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     68c:	01500107 	cmpeq	r0, r7, lsl #2
     690:	0900003e 	stmdbeq	r0, {r1, r2, r3, r4, r5}
     694:	000002c7 	andeq	r0, r0, r7, asr #5
     698:	86c03c01 	strbhi	r3, [r0], r1, lsl #24
     69c:	00240000 	eoreq	r0, r4, r0
     6a0:	9c010000 	stcls	0, cr0, [r1], {-0}
     6a4:	00024705 	andeq	r4, r2, r5, lsl #14
     6a8:	e4460100 	strb	r0, [r6], #-256	; 0xffffff00
     6ac:	24000086 	strcs	r0, [r0], #-134	; 0xffffff7a
     6b0:	01000000 	mrseq	r0, (UNDEF: 0)
     6b4:	0001199c 	muleq	r1, ip, r9
     6b8:	01490a00 	cmpeq	r9, r0, lsl #20
     6bc:	46010000 	strmi	r0, [r1], -r0
     6c0:	00000041 	andeq	r0, r0, r1, asr #32
     6c4:	0b005001 	bleq	146d0 <__bss_end+0x86d0>
     6c8:	00000140 	andeq	r0, r0, r0, asr #2
     6cc:	00415201 	subeq	r5, r1, r1, lsl #4
     6d0:	87080000 	strhi	r0, [r8, -r0]
     6d4:	004c0000 	subeq	r0, ip, r0
     6d8:	9c010000 	stcls	0, cr0, [r1], {-0}
     6dc:	00000152 	andeq	r0, r0, r2, asr r1
     6e0:	0002a10c 	andeq	sl, r2, ip, lsl #2
     6e4:	33530100 	cmpcc	r3, #0, 2
     6e8:	d3000000 	movwle	r0, #0
     6ec:	08000001 	stmdaeq	r0, {r0}
     6f0:	00008734 	andeq	r8, r0, r4, lsr r7
     6f4:	0000017e 	andeq	r0, r0, lr, ror r1
     6f8:	02500107 	subseq	r0, r0, #-1073741823	; 0xc0000001
     6fc:	00000075 	andeq	r0, r0, r5, ror r0
     700:	00000e0d 	andeq	r0, r0, sp, lsl #28
     704:	684b0300 	stmdavs	fp, {r8, r9}^
     708:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     70c:	00000041 	andeq	r0, r0, r1, asr #32
     710:	0000410e 	andeq	r4, r0, lr, lsl #2
     714:	170d0000 	strne	r0, [sp, -r0]
     718:	03000001 	movweq	r0, #1
     71c:	00017e37 	andeq	r7, r1, r7, lsr lr
     720:	00410e00 	subeq	r0, r1, r0, lsl #28
     724:	410e0000 	mrsmi	r0, (UNDEF: 14)
     728:	00000000 	andeq	r0, r0, r0
     72c:	00017e0f 	andeq	r7, r1, pc, lsl #28
     730:	33130400 	tstcc	r3, #0, 8
     734:	94000000 	strls	r0, [r0], #-0
     738:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     73c:	00000194 	muleq	r0, r4, r1
     740:	04110010 	ldreq	r0, [r1], #-16
     744:	0000019a 	muleq	r0, sl, r1
     748:	00002512 	andeq	r2, r0, r2, lsl r5
     74c:	04f70000 	ldrbteq	r0, [r7], #0
     750:	00040000 	andeq	r0, r4, r0
     754:	00000438 	andeq	r0, r0, r8, lsr r4
     758:	01ce0104 	biceq	r0, lr, r4, lsl #2
     75c:	e8010000 	stmda	r1, {}	; <UNPREDICTABLE>
     760:	70000002 	andvc	r0, r0, r2
     764:	54000000 	strpl	r0, [r0], #-0
     768:	e0000087 	and	r0, r0, r7, lsl #1
     76c:	10000002 	andne	r0, r0, r2
     770:	02000003 	andeq	r0, r0, #3
     774:	00620801 	rsbeq	r0, r2, r1, lsl #16
     778:	02020000 	andeq	r0, r2, #0
     77c:	00012305 	andeq	r2, r1, r5, lsl #6
     780:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     784:	00746e69 	rsbseq	r6, r4, r9, ror #28
     788:	00050802 	andeq	r0, r5, r2, lsl #16
     78c:	04000000 	streq	r0, [r0], #-0
     790:	00000051 	andeq	r0, r0, r1, asr r0
     794:	004c1602 	subeq	r1, ip, r2, lsl #12
     798:	01020000 	mrseq	r0, (UNDEF: 2)
     79c:	00005908 	andeq	r5, r0, r8, lsl #18
     7a0:	01c50400 	biceq	r0, r5, r0, lsl #8
     7a4:	18020000 	stmdane	r2, {}	; <UNPREDICTABLE>
     7a8:	0000005e 	andeq	r0, r0, lr, asr r0
     7ac:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     7b0:	04000000 	streq	r0, [r0], #-0
     7b4:	00000067 	andeq	r0, r0, r7, rrx
     7b8:	00701a02 	rsbseq	r1, r0, r2, lsl #20
     7bc:	04020000 	streq	r0, [r2], #-0
     7c0:	00003407 	andeq	r3, r0, r7, lsl #8
     7c4:	07080200 	streq	r0, [r8, -r0, lsl #4]
     7c8:	0000002a 	andeq	r0, r0, sl, lsr #32
     7cc:	3c060105 	stfccs	f0, [r6], {5}
     7d0:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     7d4:	00039406 	andeq	r9, r3, r6, lsl #8
     7d8:	17060000 	strne	r0, [r6, -r0]
     7dc:	01000003 	tsteq	r0, r3
     7e0:	00037e06 	andeq	r7, r3, r6, lsl #28
     7e4:	42060200 	andmi	r0, r6, #0, 4
     7e8:	04000003 	streq	r0, [r0], #-3
     7ec:	015c0700 	cmpeq	ip, r0, lsl #14
     7f0:	11010000 	mrsne	r0, (UNDEF: 1)
     7f4:	00008754 	andeq	r8, r0, r4, asr r7
     7f8:	00000020 	andeq	r0, r0, r0, lsr #32
     7fc:	00f09c01 	rscseq	r9, r0, r1, lsl #24
     800:	63080000 	movwvs	r0, #32768	; 0x8000
     804:	01006b6c 	tsteq	r0, ip, ror #22
     808:	00005311 	andeq	r5, r0, r1, lsl r3
     80c:	00020900 	andeq	r0, r2, r0, lsl #18
     810:	87640900 	strbhi	r0, [r4, -r0, lsl #18]!
     814:	047d0000 	ldrbteq	r0, [sp], #-0
     818:	00db0000 	sbcseq	r0, fp, r0
     81c:	010a0000 	mrseq	r0, (UNDEF: 10)
     820:	0a340151 	beq	d00d6c <__user_program+0xa00d6c>
     824:	32015001 	andcc	r5, r1, #1
     828:	87700b00 	ldrbhi	r0, [r0, -r0, lsl #22]!
     82c:	047d0000 	ldrbteq	r0, [sp], #-0
     830:	010a0000 	mrseq	r0, (UNDEF: 10)
     834:	0a340151 	beq	d00d80 <__user_program+0xa00d80>
     838:	33015001 	movwcc	r5, #4097	; 0x1001
     83c:	6d0c0000 	stcvs	0, cr0, [ip, #-0]
     840:	01000003 	tsteq	r0, r3
     844:	0000411b 	andeq	r4, r0, fp, lsl r1
     848:	00877400 	addeq	r7, r7, r0, lsl #8
     84c:	00011400 	andeq	r1, r1, r0, lsl #8
     850:	659c0100 	ldrvs	r0, [ip, #256]	; 0x100
     854:	08000002 	stmdaeq	r0, {r1}
     858:	00667562 	rsbeq	r7, r6, r2, ror #10
     85c:	02651b01 	rsbeq	r1, r5, #1024	; 0x400
     860:	022a0000 	eoreq	r0, sl, #0
     864:	6c080000 	stcvs	0, cr0, [r8], {-0}
     868:	01006e65 	tsteq	r0, r5, ror #28
     86c:	0000531b 	andeq	r5, r0, fp, lsl r3
     870:	00026300 	andeq	r6, r2, r0, lsl #6
     874:	02d30d00 	sbcseq	r0, r3, #0, 26
     878:	1b010000 	blne	40880 <__bss_end+0x34880>
     87c:	00000041 	andeq	r0, r0, r1, asr #32
     880:	00000284 	andeq	r0, r0, r4, lsl #5
     884:	0003680e 	andeq	r6, r3, lr, lsl #16
     888:	6b1d0100 	blvs	740c90 <__user_program+0x440c90>
     88c:	08000002 	stmdaeq	r0, {r1}
     890:	0e3f8040 	cdpeq	0, 3, cr8, cr15, cr0, {2}
     894:	000002e3 	andeq	r0, r0, r3, ror #5
     898:	026b1e01 	rsbeq	r1, fp, #1, 28
     89c:	40100000 	andsmi	r0, r0, r0
     8a0:	100e3f80 	andne	r3, lr, r0, lsl #31
     8a4:	01000003 	tsteq	r0, r3
     8a8:	00026b1f 	andeq	r6, r2, pc, lsl fp
     8ac:	80400400 	subhi	r0, r0, r0, lsl #8
     8b0:	03a20e3f 			; <UNDEFINED> instruction: 0x03a20e3f
     8b4:	20010000 	andcs	r0, r1, r0
     8b8:	0000026b 	andeq	r0, r0, fp, ror #4
     8bc:	3f804000 	svccc	0x00804000
     8c0:	0002d20e 	andeq	sp, r2, lr, lsl #4
     8c4:	6b210100 	blvs	840ccc <__user_program+0x540ccc>
     8c8:	0c000002 	stceq	0, cr0, [r0], {2}
     8cc:	0f3f8040 	svceq	0x003f8040
     8d0:	000003aa 	andeq	r0, r0, sl, lsr #7
     8d4:	00652401 	rsbeq	r2, r5, r1, lsl #8
     8d8:	02a50000 	adceq	r0, r5, #0
     8dc:	69100000 	ldmdbvs	r0, {}	; <UNPREDICTABLE>
     8e0:	65250100 	strvs	r0, [r5, #-256]!	; 0xffffff00
     8e4:	e2000000 	and	r0, r0, #0
     8e8:	0f000002 	svceq	0x00000002
     8ec:	0000033b 	andeq	r0, r0, fp, lsr r3
     8f0:	00412601 	subeq	r2, r1, r1, lsl #12
     8f4:	03010000 	movweq	r0, #4096	; 0x1000
     8f8:	98090000 	stmdals	r9, {}	; <UNPREDICTABLE>
     8fc:	93000087 	movwls	r0, #135	; 0x87
     900:	c4000004 	strgt	r0, [r0], #-4
     904:	0a000001 	beq	910 <__start-0x76f0>
     908:	40015201 	andmi	r5, r1, r1, lsl #4
     90c:	0151010a 	cmpeq	r1, sl, lsl #2
     910:	a8090040 	stmdage	r9, {r6}
     914:	ae000087 	cdpge	0, 0, cr0, cr0, cr7, {4}
     918:	d9000004 	stmdble	r0, {r2}
     91c:	0a000001 	beq	928 <__start-0x76d8>
     920:	0a035101 	beq	d4d2c <__bss_end+0xc8d2c>
     924:	09000302 	stmdbeq	r0, {r1, r8, r9}
     928:	000087b8 			; <UNDEFINED> instruction: 0x000087b8
     92c:	000004ae 	andeq	r0, r0, lr, lsr #9
     930:	000001ed 	andeq	r0, r0, sp, ror #3
     934:	0251010a 	subseq	r0, r1, #-2147483646	; 0x80000002
     938:	09000076 	stmdbeq	r0, {r1, r2, r4, r5, r6}
     93c:	000087c8 	andeq	r8, r0, r8, asr #15
     940:	000004ae 	andeq	r0, r0, lr, lsr #9
     944:	00000201 	andeq	r0, r0, r1, lsl #4
     948:	0251010a 	subseq	r0, r1, #-2147483646	; 0x80000002
     94c:	09000074 	stmdbeq	r0, {r2, r4, r5, r6}
     950:	000087f0 	strdeq	r8, [r0], -r0
     954:	000004ae 	andeq	r0, r0, lr, lsr #9
     958:	00000215 	andeq	r0, r0, r5, lsl r2
     95c:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     960:	09000076 	stmdbeq	r0, {r1, r2, r4, r5, r6}
     964:	0000881c 	andeq	r8, r0, ip, lsl r8
     968:	000004ae 	andeq	r0, r0, lr, lsr #9
     96c:	0000022a 	andeq	r0, r0, sl, lsr #4
     970:	0351010a 	cmpeq	r1, #-2147483646	; 0x80000002
     974:	0080800a 	addeq	r8, r0, sl
     978:	00882811 	addeq	r2, r8, r1, lsl r8
     97c:	0004c400 	andeq	ip, r4, r0, lsl #8
     980:	88401100 	stmdahi	r0, {r8, ip}^
     984:	04c40000 	strbeq	r0, [r4], #0
     988:	64090000 	strvs	r0, [r9], #-0
     98c:	c4000088 	strgt	r0, [r0], #-136	; 0xffffff78
     990:	50000004 	andpl	r0, r0, r4
     994:	0a000002 	beq	9a4 <__start-0x765c>
     998:	74025001 	strvc	r5, [r2], #-1
     99c:	800b0000 	andhi	r0, fp, r0
     9a0:	93000088 	movwls	r0, #136	; 0x88
     9a4:	0a000004 	beq	9bc <__start-0x7644>
     9a8:	32015201 	andcc	r5, r1, #268435456	; 0x10000000
     9ac:	0151010a 	cmpeq	r1, sl, lsl #2
     9b0:	12000032 	andne	r0, r0, #50	; 0x32
     9b4:	00004104 	andeq	r4, r0, r4, lsl #2
     9b8:	71041200 	mrsvc	r1, R12_usr
     9bc:	13000002 	movwne	r0, #2
     9c0:	00000065 	andeq	r0, r0, r5, rrx
     9c4:	0003580c 	andeq	r5, r3, ip, lsl #16
     9c8:	41550100 	cmpmi	r5, r0, lsl #2
     9cc:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
     9d0:	ac000088 	stcge	0, cr0, [r0], {136}	; 0x88
     9d4:	01000001 	tsteq	r0, r1
     9d8:	00047d9c 	muleq	r4, ip, sp
     9dc:	75620800 	strbvc	r0, [r2, #-2048]!	; 0xfffff800
     9e0:	55010066 	strpl	r0, [r1, #-102]	; 0xffffff9a
     9e4:	00000265 	andeq	r0, r0, r5, ror #4
     9e8:	00000315 	andeq	r0, r0, r5, lsl r3
     9ec:	6e656c08 	cdpvs	12, 6, cr6, cr5, cr8, {0}
     9f0:	53550100 	cmppl	r5, #0, 2
     9f4:	33000000 	movwcc	r0, #0
     9f8:	0d000003 	stceq	0, cr0, [r0, #-12]
     9fc:	000002d3 	ldrdeq	r0, [r0], -r3
     a00:	00415501 	subeq	r5, r1, r1, lsl #10
     a04:	03540000 	cmpeq	r4, #0
     a08:	680e0000 	stmdavs	lr, {}	; <UNPREDICTABLE>
     a0c:	01000003 	tsteq	r0, r3
     a10:	00026b56 	andeq	r6, r2, r6, asr fp
     a14:	80400800 	subhi	r0, r0, r0, lsl #16
     a18:	02e30e3f 	rsceq	r0, r3, #1008	; 0x3f0
     a1c:	57010000 	strpl	r0, [r1, -r0]
     a20:	0000026b 	andeq	r0, r0, fp, ror #4
     a24:	3f804010 	svccc	0x00804010
     a28:	0003100e 	andeq	r1, r3, lr
     a2c:	6b580100 	blvs	1600e34 <__user_program+0x1300e34>
     a30:	04000002 	streq	r0, [r0], #-2
     a34:	0e3f8040 	cdpeq	0, 3, cr8, cr15, cr0, {2}
     a38:	000003a2 	andeq	r0, r0, r2, lsr #7
     a3c:	026b5901 	rsbeq	r5, fp, #16384	; 0x4000
     a40:	40000000 	andmi	r0, r0, r0
     a44:	d20e3f80 	andle	r3, lr, #128, 30	; 0x200
     a48:	01000002 	tsteq	r0, r2
     a4c:	00026b5a 	andeq	r6, r2, sl, asr fp
     a50:	80400c00 	subhi	r0, r0, r0, lsl #24
     a54:	03aa0f3f 			; <UNDEFINED> instruction: 0x03aa0f3f
     a58:	5c010000 	stcpl	0, cr0, [r1], {-0}
     a5c:	00000065 	andeq	r0, r0, r5, rrx
     a60:	00000375 	andeq	r0, r0, r5, ror r3
     a64:	01006910 	tsteq	r0, r0, lsl r9
     a68:	0000655d 	andeq	r6, r0, sp, asr r5
     a6c:	0003c300 	andeq	ip, r3, r0, lsl #6
     a70:	033b0f00 	teqeq	fp, #0, 30
     a74:	5e010000 	cdppl	0, 0, cr0, cr1, cr0, {0}
     a78:	00000041 	andeq	r0, r0, r1, asr #32
     a7c:	000003f2 	strdeq	r0, [r0], -r2
     a80:	0088b409 	addeq	fp, r8, r9, lsl #8
     a84:	00049300 	andeq	r9, r4, r0, lsl #6
     a88:	00035200 	andeq	r5, r3, r0, lsl #4
     a8c:	52010a00 	andpl	r0, r1, #0, 20
     a90:	0a200802 	beq	802aa0 <__user_program+0x502aa0>
     a94:	08025101 	stmdaeq	r2, {r0, r8, ip, lr}
     a98:	50010a20 	andpl	r0, r1, r0, lsr #20
     a9c:	00007502 	andeq	r7, r0, r2, lsl #10
     aa0:	0088c409 	addeq	ip, r8, r9, lsl #8
     aa4:	0004ae00 	andeq	sl, r4, r0, lsl #28
     aa8:	00036700 	andeq	r6, r3, r0, lsl #14
     aac:	51010a00 	tstpl	r1, r0, lsl #20
     ab0:	03020a03 	movweq	r0, #10755	; 0x2a03
     ab4:	88d40900 	ldmhi	r4, {r8, fp}^
     ab8:	04ae0000 	strteq	r0, [lr], #0
     abc:	037b0000 	cmneq	fp, #0
     ac0:	010a0000 	mrseq	r0, (UNDEF: 10)
     ac4:	00740251 	rsbseq	r0, r4, r1, asr r2
     ac8:	88e40900 	stmiahi	r4!, {r8, fp}^
     acc:	04ae0000 	strteq	r0, [lr], #0
     ad0:	038f0000 	orreq	r0, pc, #0
     ad4:	010a0000 	mrseq	r0, (UNDEF: 10)
     ad8:	00770251 	rsbseq	r0, r7, r1, asr r2
     adc:	88f00900 	ldmhi	r0!, {r8, fp}^
     ae0:	04ae0000 	strteq	r0, [lr], #0
     ae4:	03aa0000 			; <UNDEFINED> instruction: 0x03aa0000
     ae8:	010a0000 	mrseq	r0, (UNDEF: 10)
     aec:	810a0351 	tsthi	sl, r1, asr r3
     af0:	50010a80 	andpl	r0, r1, r0, lsl #21
     af4:	00007502 	andeq	r7, r0, r2, lsl #10
     af8:	00891009 	addeq	r1, r9, r9
     afc:	0004c400 	andeq	ip, r4, r0, lsl #8
     b00:	0003be00 	andeq	fp, r3, r0, lsl #28
     b04:	50010a00 	andpl	r0, r1, r0, lsl #20
     b08:	00007802 	andeq	r7, r0, r2, lsl #16
     b0c:	00892809 	addeq	r2, r9, r9, lsl #16
     b10:	0004c400 	andeq	ip, r4, r0, lsl #8
     b14:	0003d200 	andeq	sp, r3, r0, lsl #4
     b18:	50010a00 	andpl	r0, r1, r0, lsl #20
     b1c:	00007702 	andeq	r7, r0, r2, lsl #14
     b20:	00893809 	addeq	r3, r9, r9, lsl #16
     b24:	0004c400 	andeq	ip, r4, r0, lsl #8
     b28:	0003e600 	andeq	lr, r3, r0, lsl #12
     b2c:	50010a00 	andpl	r0, r1, r0, lsl #20
     b30:	00007702 	andeq	r7, r0, r2, lsl #14
     b34:	00896011 	addeq	r6, r9, r1, lsl r0
     b38:	0004c400 	andeq	ip, r4, r0, lsl #8
     b3c:	89740900 	ldmdbhi	r4!, {r8, fp}^
     b40:	04d90000 	ldrbeq	r0, [r9], #0
     b44:	04060000 	streq	r0, [r6], #-0
     b48:	010a0000 	mrseq	r0, (UNDEF: 10)
     b4c:	34030550 	strcc	r0, [r3], #-1360	; 0xfffffab0
     b50:	000000a0 	andeq	r0, r0, r0, lsr #1
     b54:	0089a409 	addeq	sl, r9, r9, lsl #8
     b58:	0004d900 	andeq	sp, r4, r0, lsl #18
     b5c:	00041a00 	andeq	r1, r4, r0, lsl #20
     b60:	50010a00 	andpl	r0, r1, r0, lsl #20
     b64:	00007602 	andeq	r7, r0, r2, lsl #12
     b68:	0089ac09 	addeq	sl, r9, r9, lsl #24
     b6c:	0004c400 	andeq	ip, r4, r0, lsl #8
     b70:	00042e00 	andeq	r2, r4, r0, lsl #28
     b74:	50010a00 	andpl	r0, r1, r0, lsl #20
     b78:	00007802 	andeq	r7, r0, r2, lsl #16
     b7c:	0089c009 	addeq	ip, r9, r9
     b80:	0004c400 	andeq	ip, r4, r0, lsl #8
     b84:	00044200 	andeq	r4, r4, r0, lsl #4
     b88:	50010a00 	andpl	r0, r1, r0, lsl #20
     b8c:	00007702 	andeq	r7, r0, r2, lsl #14
     b90:	0089d411 	addeq	sp, r9, r1, lsl r4
     b94:	0004c400 	andeq	ip, r4, r0, lsl #8
     b98:	89ec1100 	stmibhi	ip!, {r8, ip}^
     b9c:	04c40000 	strbeq	r0, [r4], #0
     ba0:	10090000 	andne	r0, r9, r0
     ba4:	c400008a 	strgt	r0, [r0], #-138	; 0xffffff76
     ba8:	68000004 	stmdavs	r0, {r2}
     bac:	0a000004 	beq	bc4 <__start-0x743c>
     bb0:	74025001 	strvc	r5, [r2], #-1
     bb4:	2c0b0000 	stccs	0, cr0, [fp], {-0}
     bb8:	9300008a 	movwls	r0, #138	; 0x8a
     bbc:	0a000004 	beq	bd4 <__start-0x742c>
     bc0:	32015201 	andcc	r5, r1, #268435456	; 0x10000000
     bc4:	0151010a 	cmpeq	r1, sl, lsl #2
     bc8:	14000032 	strne	r0, [r0], #-50	; 0xffffffce
     bcc:	00000117 	andeq	r0, r0, r7, lsl r1
     bd0:	04933703 	ldreq	r3, [r3], #1795	; 0x703
     bd4:	41150000 	tstmi	r5, r0
     bd8:	15000000 	strne	r0, [r0, #-0]
     bdc:	00000041 	andeq	r0, r0, r1, asr #32
     be0:	032d1400 			; <UNDEFINED> instruction: 0x032d1400
     be4:	0b040000 	bleq	100bec <__bss_end+0xf4bec>
     be8:	000004ae 	andeq	r0, r0, lr, lsr #9
     bec:	00026b15 	andeq	r6, r2, r5, lsl fp
     bf0:	00651500 	rsbeq	r1, r5, r0, lsl #10
     bf4:	65150000 	ldrvs	r0, [r5, #-0]
     bf8:	00000000 	andeq	r0, r0, r0
     bfc:	0002d814 	andeq	sp, r2, r4, lsl r8
     c00:	c4070400 	strgt	r0, [r7], #-1024	; 0xfffffc00
     c04:	15000004 	strne	r0, [r0, #-4]
     c08:	0000026b 	andeq	r0, r0, fp, ror #4
     c0c:	00006515 	andeq	r6, r0, r5, lsl r5
     c10:	06160000 	ldreq	r0, [r6], -r0
     c14:	04000003 	streq	r0, [r0], #-3
     c18:	00006504 	andeq	r6, r0, r4, lsl #10
     c1c:	0004d900 	andeq	sp, r4, r0, lsl #18
     c20:	026b1500 	rsbeq	r1, fp, #0, 10
     c24:	16000000 	strne	r0, [r0], -r0
     c28:	0000017e 	andeq	r0, r0, lr, ror r1
     c2c:	00331305 	eorseq	r1, r3, r5, lsl #6
     c30:	04ef0000 	strbteq	r0, [pc], #0	; c38 <__start-0x73c8>
     c34:	ef150000 	svc	0x00150000
     c38:	17000004 	strne	r0, [r0, -r4]
     c3c:	f5041200 			; <UNDEFINED> instruction: 0xf5041200
     c40:	18000004 	stmdane	r0, {r2}
     c44:	00000025 	andeq	r0, r0, r5, lsr #32
     c48:	0005e400 	andeq	lr, r5, r0, lsl #8
     c4c:	80000400 	andhi	r0, r0, r0, lsl #8
     c50:	04000005 	streq	r0, [r0], #-5
     c54:	0001ce01 	andeq	ip, r1, r1, lsl #28
     c58:	03fd0100 	mvnseq	r0, #0, 2
     c5c:	00700000 	rsbseq	r0, r0, r0
     c60:	8a340000 	bhi	d00c68 <__user_program+0xa00c68>
     c64:	034c0000 	movteq	r0, #49152	; 0xc000
     c68:	041a0000 	ldreq	r0, [sl], #-0
     c6c:	01020000 	mrseq	r0, (UNDEF: 2)
     c70:	00006208 	andeq	r6, r0, r8, lsl #4
     c74:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
     c78:	00000123 	andeq	r0, r0, r3, lsr #2
     c7c:	69050403 	stmdbvs	r5, {r0, r1, sl}
     c80:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     c84:	00000508 	andeq	r0, r0, r8, lsl #10
     c88:	51040000 	mrspl	r0, (UNDEF: 4)
     c8c:	02000000 	andeq	r0, r0, #0
     c90:	00004c16 	andeq	r4, r0, r6, lsl ip
     c94:	08010200 	stmdaeq	r1, {r9}
     c98:	00000059 	andeq	r0, r0, r9, asr r0
     c9c:	0001c504 	andeq	ip, r1, r4, lsl #10
     ca0:	5e180200 	cdppl	2, 1, cr0, cr8, cr0, {0}
     ca4:	02000000 	andeq	r0, r0, #0
     ca8:	00fe0702 	rscseq	r0, lr, r2, lsl #14
     cac:	67040000 	strvs	r0, [r4, -r0]
     cb0:	02000000 	andeq	r0, r0, #0
     cb4:	0000701a 	andeq	r7, r0, sl, lsl r0
     cb8:	07040200 	streq	r0, [r4, -r0, lsl #4]
     cbc:	00000034 	andeq	r0, r0, r4, lsr r0
     cc0:	2a070802 	bcs	1c2cd0 <__end+0x95cd0>
     cc4:	05000000 	streq	r0, [r0, #-0]
     cc8:	000003cd 	andeq	r0, r0, sp, asr #7
     ccc:	8a341001 	bhi	d04cd8 <__user_program+0xa04cd8>
     cd0:	00b80000 	adcseq	r0, r8, r0
     cd4:	9c010000 	stcls	0, cr0, [r1], {-0}
     cd8:	000001a9 	andeq	r0, r0, r9, lsr #3
     cdc:	0003f206 	andeq	pc, r3, r6, lsl #4
     ce0:	53100100 	tstpl	r0, #0, 2
     ce4:	06000000 	streq	r0, [r0], -r0
     ce8:	07000004 	streq	r0, [r0, -r4]
     cec:	00667562 	rsbeq	r7, r6, r2, ror #10
     cf0:	01a91201 			; <UNDEFINED> instruction: 0x01a91201
     cf4:	91020000 	mrsls	r0, (UNDEF: 2)
     cf8:	03de0874 	bicseq	r0, lr, #116, 16	; 0x740000
     cfc:	13010000 	movwne	r0, #4096	; 0x1000
     d00:	00000065 	andeq	r0, r0, r5, rrx
     d04:	00000427 	andeq	r0, r0, r7, lsr #8
     d08:	0003b409 	andeq	fp, r3, r9, lsl #8
     d0c:	c01b0100 	andsgt	r0, fp, r0, lsl #2
     d10:	02000001 	andeq	r0, r0, #1
     d14:	3b087091 	blcc	21cf60 <__end+0xeff60>
     d18:	01000003 	tsteq	r0, r3
     d1c:	0000411d 	andeq	r4, r0, sp, lsl r1
     d20:	00044b00 	andeq	r4, r4, r0, lsl #22
     d24:	8a600a00 	bhi	180352c <__user_program+0x150352c>
     d28:	05860000 	streq	r0, [r6]
     d2c:	00f30000 	rscseq	r0, r3, r0
     d30:	010b0000 	mrseq	r0, (UNDEF: 11)
     d34:	7c030550 	cfstr32vc	mvfx0, [r3], {80}	; 0x50
     d38:	000000a0 	andeq	r0, r0, r0, lsr #1
     d3c:	008a700a 	addeq	r7, sl, sl
     d40:	0005a700 	andeq	sl, r5, r0, lsl #14
     d44:	00011200 	andeq	r1, r1, r0, lsl #4
     d48:	52010b00 	andpl	r0, r1, #0, 22
     d4c:	0b490802 	bleq	1242d5c <__user_program+0xf42d5c>
     d50:	33015101 	movwcc	r5, #4353	; 0x1101
     d54:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     d58:	0a006c91 	beq	1bfa4 <__bss_end+0xffa4>
     d5c:	00008a84 	andeq	r8, r0, r4, lsl #21
     d60:	00000586 	andeq	r0, r0, r6, lsl #11
     d64:	00000129 	andeq	r0, r0, r9, lsr #2
     d68:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     d6c:	00a09403 	adceq	r9, r0, r3, lsl #8
     d70:	940a0000 	strls	r0, [sl], #-0
     d74:	8600008a 	strhi	r0, [r0], -sl, lsl #1
     d78:	40000005 	andmi	r0, r0, r5
     d7c:	0b000001 	bleq	d88 <__start-0x7278>
     d80:	03055001 	movweq	r5, #20481	; 0x5001
     d84:	0000a0a8 	andeq	sl, r0, r8, lsr #1
     d88:	8aa80a00 	bhi	fea03590 <__user_program+0xfe703590>
     d8c:	05a70000 	streq	r0, [r7, #0]!
     d90:	015f0000 	cmpeq	pc, r0
     d94:	010b0000 	mrseq	r0, (UNDEF: 11)
     d98:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
     d9c:	0151010b 	cmpeq	r1, fp, lsl #2
     da0:	50010b31 	andpl	r0, r1, r1, lsr fp
     da4:	006c9102 	rsbeq	r9, ip, r2, lsl #2
     da8:	008ab80a 	addeq	fp, sl, sl, lsl #16
     dac:	0005cc00 	andeq	ip, r5, r0, lsl #24
     db0:	00017e00 	andeq	r7, r1, r0, lsl #28
     db4:	52010b00 	andpl	r0, r1, #0, 22
     db8:	0b490802 	bleq	1242dc8 <__user_program+0xf42dc8>
     dbc:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     dc0:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     dc4:	0a00007d 	beq	fc0 <__start-0x7040>
     dc8:	00008acc 	andeq	r8, r0, ip, asr #21
     dcc:	00000586 	andeq	r0, r0, r6, lsl #11
     dd0:	00000195 	muleq	r0, r5, r1
     dd4:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     dd8:	00a0b803 	adceq	fp, r0, r3, lsl #16
     ddc:	e40c0000 	str	r0, [ip], #-0
     de0:	8600008a 	strhi	r0, [r0], -sl, lsl #1
     de4:	0b000005 	bleq	e00 <__start-0x7200>
     de8:	03055001 	movweq	r5, #20481	; 0x5001
     dec:	0000a0dc 	ldrdeq	sl, [r0], -ip
     df0:	410d0000 	mrsmi	r0, (UNDEF: 13)
     df4:	b9000000 	stmdblt	r0, {}	; <UNPREDICTABLE>
     df8:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     dfc:	000001b9 			; <UNDEFINED> instruction: 0x000001b9
     e00:	04020002 	streq	r0, [r2], #-2
     e04:	00029307 	andeq	r9, r2, r7, lsl #6
     e08:	00410d00 	subeq	r0, r1, r0, lsl #26
     e0c:	01d00000 	bicseq	r0, r0, r0
     e10:	b90e0000 	stmdblt	lr, {}	; <UNPREDICTABLE>
     e14:	01000001 	tsteq	r0, r1
     e18:	03b90f00 			; <UNDEFINED> instruction: 0x03b90f00
     e1c:	33010000 	movwcc	r0, #4096	; 0x1000
     e20:	00000053 	andeq	r0, r0, r3, asr r0
     e24:	00008aec 	andeq	r8, r0, ip, ror #21
     e28:	00000070 	andeq	r0, r0, r0, ror r0
     e2c:	028c9c01 	addeq	r9, ip, #256	; 0x100
     e30:	62070000 	andvs	r0, r7, #0
     e34:	01006675 	tsteq	r0, r5, ror r6
     e38:	00028c35 	andeq	r8, r2, r5, lsr ip
     e3c:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     e40:	00033b08 	andeq	r3, r3, r8, lsl #22
     e44:	41360100 	teqmi	r6, r0, lsl #2
     e48:	74000000 	strvc	r0, [r0], #-0
     e4c:	09000004 	stmdbeq	r0, {r2}
     e50:	000003b4 			; <UNDEFINED> instruction: 0x000003b4
     e54:	01c04001 	biceq	r4, r0, r1
     e58:	91020000 	mrsls	r0, (UNDEF: 2)
     e5c:	03de0870 	bicseq	r0, lr, #112, 16	; 0x700000
     e60:	47010000 	strmi	r0, [r1, -r0]
     e64:	00000053 	andeq	r0, r0, r3, asr r0
     e68:	00000492 	muleq	r0, r2, r4
     e6c:	008b0c0a 	addeq	r0, fp, sl, lsl #24
     e70:	0005a700 	andeq	sl, r5, r0, lsl #14
     e74:	00024200 	andeq	r4, r2, r0, lsl #4
     e78:	52010b00 	andpl	r0, r1, #0, 22
     e7c:	0b490802 	bleq	1242e8c <__user_program+0xf42e8c>
     e80:	31015101 	tstcc	r1, r1, lsl #2
     e84:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     e88:	0a006c91 	beq	1c0d4 <__bss_end+0x100d4>
     e8c:	00008b20 	andeq	r8, r0, r0, lsr #22
     e90:	00000586 	andeq	r0, r0, r6, lsl #11
     e94:	00000259 	andeq	r0, r0, r9, asr r2
     e98:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     e9c:	00a0f403 	adceq	pc, r0, r3, lsl #8
     ea0:	300a0000 	andcc	r0, sl, r0
     ea4:	cc00008b 	stcgt	0, cr0, [r0], {139}	; 0x8b
     ea8:	78000005 	stmdavc	r0, {r0, r2}
     eac:	0b000002 	bleq	ebc <__start-0x7144>
     eb0:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     eb4:	51010b49 	tstpl	r1, r9, asr #22
     eb8:	010b3201 	tsteq	fp, r1, lsl #4
     ebc:	007d0250 	rsbseq	r0, sp, r0, asr r2
     ec0:	8b440c00 	blhi	1103ec8 <__user_program+0xe03ec8>
     ec4:	05860000 	streq	r0, [r6]
     ec8:	010b0000 	mrseq	r0, (UNDEF: 11)
     ecc:	34030550 	strcc	r0, [r3], #-1360	; 0xfffffab0
     ed0:	000000a1 	andeq	r0, r0, r1, lsr #1
     ed4:	00410d00 	subeq	r0, r1, r0, lsl #26
     ed8:	029c0000 	addseq	r0, ip, #0
     edc:	b90e0000 	stmdblt	lr, {}	; <UNPREDICTABLE>
     ee0:	00000001 	andeq	r0, r0, r1
     ee4:	01850500 	orreq	r0, r5, r0, lsl #10
     ee8:	4d010000 	stcmi	0, cr0, [r1, #-0]
     eec:	00008b5c 	andeq	r8, r0, ip, asr fp
     ef0:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     ef4:	03ff9c01 	mvnseq	r9, #256	; 0x100
     ef8:	62070000 	andvs	r0, r7, #0
     efc:	01006675 	tsteq	r0, r5, ror r6
     f00:	00028c50 	andeq	r8, r2, r0, asr ip
     f04:	6c910200 	lfmvs	f0, 4, [r1], {0}
     f08:	0003b409 	andeq	fp, r3, r9, lsl #8
     f0c:	c0510100 	subsgt	r0, r1, r0, lsl #2
     f10:	02000001 	andeq	r0, r0, #1
     f14:	de086891 	mcrle	8, 0, r6, cr8, cr1, {4}
     f18:	01000003 	tsteq	r0, r3
     f1c:	00005352 	andeq	r5, r0, r2, asr r3
     f20:	0004d200 	andeq	sp, r4, r0, lsl #4
     f24:	033b0800 	teqeq	fp, #0, 16
     f28:	53010000 	movwpl	r0, #4096	; 0x1000
     f2c:	00000041 	andeq	r0, r0, r1, asr #32
     f30:	0000052e 	andeq	r0, r0, lr, lsr #10
     f34:	008b780a 	addeq	r7, fp, sl, lsl #16
     f38:	0005a700 	andeq	sl, r5, r0, lsl #14
     f3c:	00030a00 	andeq	r0, r3, r0, lsl #20
     f40:	52010b00 	andpl	r0, r1, #0, 22
     f44:	0b490802 	bleq	1242f54 <__user_program+0xf42f54>
     f48:	31015101 	tstcc	r1, r1, lsl #2
     f4c:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     f50:	0a006491 	beq	1a19c <__bss_end+0xe19c>
     f54:	00008b88 	andeq	r8, r0, r8, lsl #23
     f58:	000005cc 	andeq	r0, r0, ip, asr #11
     f5c:	00000329 	andeq	r0, r0, r9, lsr #6
     f60:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     f64:	010b4908 	tsteq	fp, r8, lsl #18
     f68:	0b320151 	bleq	c814b4 <__user_program+0x9814b4>
     f6c:	7d025001 	stcvc	0, cr5, [r2, #-4]
     f70:	9c0a0000 	stcls	0, cr0, [sl], {-0}
     f74:	8600008b 	strhi	r0, [r0], -fp, lsl #1
     f78:	40000005 	andmi	r0, r0, r5
     f7c:	0b000003 	bleq	f90 <__start-0x7070>
     f80:	03055001 	movweq	r5, #20481	; 0x5001
     f84:	0000a0b8 	strheq	sl, [r0], -r8
     f88:	8bb80a00 	blhi	fee03790 <__user_program+0xfeb03790>
     f8c:	05860000 	streq	r0, [r6]
     f90:	03570000 	cmpeq	r7, #0
     f94:	010b0000 	mrseq	r0, (UNDEF: 11)
     f98:	60030550 	andvs	r0, r3, r0, asr r5
     f9c:	000000a1 	andeq	r0, r0, r1, lsr #1
     fa0:	008bd40a 	addeq	sp, fp, sl, lsl #8
     fa4:	0005a700 	andeq	sl, r5, r0, lsl #14
     fa8:	00037600 	andeq	r7, r3, r0, lsl #12
     fac:	52010b00 	andpl	r0, r1, #0, 22
     fb0:	0b490802 	bleq	1242fc0 <__user_program+0xf42fc0>
     fb4:	31015101 	tstcc	r1, r1, lsl #2
     fb8:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     fbc:	0a000074 	beq	1194 <__start-0x6e6c>
     fc0:	00008be4 	andeq	r8, r0, r4, ror #23
     fc4:	000005cc 	andeq	r0, r0, ip, asr #11
     fc8:	00000395 	muleq	r0, r5, r3
     fcc:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     fd0:	010b4908 	tsteq	fp, r8, lsl #18
     fd4:	0b320151 	bleq	c81520 <__user_program+0x981520>
     fd8:	7d025001 	stcvc	0, cr5, [r2, #-4]
     fdc:	000a0000 	andeq	r0, sl, r0
     fe0:	8600008c 	strhi	r0, [r0], -ip, lsl #1
     fe4:	ac000005 	stcge	0, cr0, [r0], {5}
     fe8:	0b000003 	bleq	ffc <__start-0x7004>
     fec:	03055001 	movweq	r5, #20481	; 0x5001
     ff0:	0000a184 	andeq	sl, r0, r4, lsl #3
     ff4:	8c180a00 	ldchi	10, cr0, [r8], {-0}
     ff8:	05a70000 	streq	r0, [r7, #0]!
     ffc:	03cb0000 	biceq	r0, fp, #0
    1000:	010b0000 	mrseq	r0, (UNDEF: 11)
    1004:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
    1008:	0151010b 	cmpeq	r1, fp, lsl #2
    100c:	50010b31 	andpl	r0, r1, r1, lsr fp
    1010:	00007402 	andeq	r7, r0, r2, lsl #8
    1014:	008c280a 	addeq	r2, ip, sl, lsl #16
    1018:	0005cc00 	andeq	ip, r5, r0, lsl #24
    101c:	0003eb00 	andeq	lr, r3, r0, lsl #22
    1020:	52010b00 	andpl	r0, r1, #0, 22
    1024:	0b490802 	bleq	1243034 <__user_program+0xf43034>
    1028:	75025101 	strvc	r5, [r2, #-257]	; 0xfffffeff
    102c:	50010b00 	andpl	r0, r1, r0, lsl #22
    1030:	00007d02 	andeq	r7, r0, r2, lsl #26
    1034:	008c440c 	addeq	r4, ip, ip, lsl #8
    1038:	00058600 	andeq	r8, r5, r0, lsl #12
    103c:	50010b00 	andpl	r0, r1, r0, lsl #22
    1040:	a1940305 	orrsge	r0, r4, r5, lsl #6
    1044:	00000000 	andeq	r0, r0, r0
    1048:	00042b10 	andeq	r2, r4, r0, lsl fp
    104c:	53750100 	cmnpl	r5, #0, 2
    1050:	4c000000 	stcmi	0, cr0, [r0], {-0}
    1054:	7400008c 	strvc	r0, [r0], #-140	; 0xffffff74
    1058:	01000000 	mrseq	r0, (UNDEF: 0)
    105c:	00045a9c 	muleq	r4, ip, sl
    1060:	04230600 	strteq	r0, [r3], #-1536	; 0xfffffa00
    1064:	75010000 	strvc	r0, [r1, #-0]
    1068:	00000041 	andeq	r0, r0, r1, asr #32
    106c:	00000541 	andeq	r0, r0, r1, asr #10
    1070:	00041f09 	andeq	r1, r4, r9, lsl #30
    1074:	33780100 	cmncc	r8, #0, 2
    1078:	05000000 	streq	r0, [r0, #-0]
    107c:	00b00403 	adcseq	r0, r0, r3, lsl #8
    1080:	03e50800 	mvneq	r0, #0, 16
    1084:	79010000 	stmdbvc	r1, {}	; <UNPREDICTABLE>
    1088:	00000053 	andeq	r0, r0, r3, asr r0
    108c:	000005c6 	andeq	r0, r0, r6, asr #11
    1090:	008ca411 	addeq	sl, ip, r1, lsl r4
    1094:	00007e00 	andeq	r7, r0, r0, lsl #28
    1098:	8cb41100 	ldfhis	f1, [r4]
    109c:	01d00000 	bicseq	r0, r0, r0
    10a0:	12000000 	andne	r0, r0, #0
    10a4:	0000014e 	andeq	r0, r0, lr, asr #2
    10a8:	8cc09001 	stclhi	0, cr9, [r0], {1}
    10ac:	00200000 	eoreq	r0, r0, r0
    10b0:	9c010000 	stcls	0, cr0, [r1], {-0}
    10b4:	000004a5 	andeq	r0, r0, r5, lsr #9
    10b8:	6c617613 	stclvs	6, cr7, [r1], #-76	; 0xffffffb4
    10bc:	53910100 	orrspl	r0, r1, #0, 2
    10c0:	1f000000 	svcne	0x00000000
    10c4:	0a000006 	beq	10e4 <__start-0x6f1c>
    10c8:	00008ccc 	andeq	r8, r0, ip, asr #25
    10cc:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    10d0:	00000491 	muleq	r0, r1, r4
    10d4:	0150010b 	cmpeq	r0, fp, lsl #2
    10d8:	dc0c0033 	stcle	0, cr0, [ip], {51}	; 0x33
    10dc:	8600008c 	strhi	r0, [r0], -ip, lsl #1
    10e0:	0b000005 	bleq	10fc <__start-0x6f04>
    10e4:	03055001 	movweq	r5, #20481	; 0x5001
    10e8:	0000a018 	andeq	sl, r0, r8, lsl r0
    10ec:	6c120000 	ldcvs	0, cr0, [r2], {-0}
    10f0:	01000001 	tsteq	r0, r1
    10f4:	008ce094 	umulleq	lr, ip, r4, r0
    10f8:	0000a000 	andeq	sl, r0, r0
    10fc:	869c0100 	ldrhi	r0, [ip], r0, lsl #2
    1100:	13000005 	movwne	r0, #5
    1104:	006e696d 	rsbeq	r6, lr, sp, ror #18
    1108:	00339501 	eorseq	r9, r3, r1, lsl #10
    110c:	06320000 	ldrteq	r0, [r2], -r0
    1110:	6d130000 	ldcvs	0, cr0, [r3, #-0]
    1114:	01007861 	tsteq	r0, r1, ror #16
    1118:	00003396 	muleq	r0, r6, r3
    111c:	00067600 	andeq	r7, r6, r0, lsl #12
    1120:	61761300 	cmnvs	r6, r0, lsl #6
    1124:	9701006c 	strls	r0, [r1, -ip, rrx]
    1128:	00000033 	andeq	r0, r0, r3, lsr r0
    112c:	000006ae 	andeq	r0, r0, lr, lsr #13
    1130:	01006913 	tsteq	r0, r3, lsl r9
    1134:	00003397 	muleq	r0, r7, r3
    1138:	0006cc00 	andeq	ip, r6, r0, lsl #24
    113c:	61670700 	cmnvs	r7, r0, lsl #14
    1140:	97010070 	smlsdxls	r1, r0, r0, r0
    1144:	00000033 	andeq	r0, r0, r3, lsr r0
    1148:	100a5401 	andne	r5, sl, r1, lsl #8
    114c:	ff00008d 			; <UNDEFINED> instruction: 0xff00008d
    1150:	15000003 	strne	r0, [r0, #-3]
    1154:	0b000005 	bleq	1170 <__start-0x6e90>
    1158:	78025001 	stmdavc	r2, {r0, ip, lr}
    115c:	280a0000 	stmdacs	sl, {}	; <UNPREDICTABLE>
    1160:	8600008d 	strhi	r0, [r0], -sp, lsl #1
    1164:	2f000005 	svccs	0x00000005
    1168:	0b000005 	bleq	1184 <__start-0x6e7c>
    116c:	74025101 	strvc	r5, [r2], #-257	; 0xfffffeff
    1170:	50010b00 	andpl	r0, r1, r0, lsl #22
    1174:	00007902 	andeq	r7, r0, r2, lsl #18
    1178:	008d400a 	addeq	r4, sp, sl
    117c:	00058600 	andeq	r8, r5, r0, lsl #12
    1180:	00054900 	andeq	r4, r5, r0, lsl #18
    1184:	51010b00 	tstpl	r1, r0, lsl #22
    1188:	0b007402 	bleq	1e198 <__bss_end+0x12198>
    118c:	7a025001 	bvc	95198 <__bss_end+0x89198>
    1190:	680a0000 	stmdavs	sl, {}	; <UNPREDICTABLE>
    1194:	8600008d 	strhi	r0, [r0], -sp, lsl #1
    1198:	72000005 	andvc	r0, r0, #5
    119c:	0b000005 	bleq	11b8 <__start-0x6e48>
    11a0:	74025301 	strvc	r5, [r2], #-769	; 0xfffffcff
    11a4:	52010b00 	andpl	r0, r1, #0, 22
    11a8:	0b007602 	bleq	1e9b8 <__bss_end+0x129b8>
    11ac:	77025101 	strvc	r5, [r2, -r1, lsl #2]
    11b0:	50010b00 	andpl	r0, r1, r0, lsl #22
    11b4:	a1cc0305 	bicge	r0, ip, r5, lsl #6
    11b8:	0c000000 	stceq	0, cr0, [r0], {-0}
    11bc:	00008d7c 	andeq	r8, r0, ip, ror sp
    11c0:	00000586 	andeq	r0, r0, r6, lsl #11
    11c4:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
    11c8:	00a1e403 	adceq	lr, r1, r3, lsl #8
    11cc:	14000000 	strne	r0, [r0], #-0
    11d0:	0000017e 	andeq	r0, r0, lr, ror r1
    11d4:	00331303 	eorseq	r1, r3, r3, lsl #6
    11d8:	059c0000 	ldreq	r0, [ip]
    11dc:	9c150000 	ldcls	0, cr0, [r5], {-0}
    11e0:	16000005 	strne	r0, [r0], -r5
    11e4:	a2041700 	andge	r1, r4, #0, 14
    11e8:	18000005 	stmdane	r0, {r0, r2}
    11ec:	00000025 	andeq	r0, r0, r5, lsr #32
    11f0:	00036d14 	andeq	r6, r3, r4, lsl sp
    11f4:	41630400 	cmnmi	r3, r0, lsl #8
    11f8:	c6000000 	strgt	r0, [r0], -r0
    11fc:	15000005 	strne	r0, [r0, #-5]
    1200:	000005c6 	andeq	r0, r0, r6, asr #11
    1204:	00005315 	andeq	r5, r0, r5, lsl r3
    1208:	00411500 	subeq	r1, r1, r0, lsl #10
    120c:	17000000 	strne	r0, [r0, -r0]
    1210:	00004104 	andeq	r4, r0, r4, lsl #2
    1214:	03581900 	cmpeq	r8, #0, 18
    1218:	6c040000 	stcvs	0, cr0, [r4], {-0}
    121c:	00000041 	andeq	r0, r0, r1, asr #32
    1220:	0005c615 	andeq	ip, r5, r5, lsl r6
    1224:	00531500 	subseq	r1, r3, r0, lsl #10
    1228:	41150000 	tstmi	r5, r0
    122c:	00000000 	andeq	r0, r0, r0
    1230:	0001b200 	andeq	fp, r1, r0, lsl #4
    1234:	ef000400 	svc	0x00000400
    1238:	04000006 	streq	r0, [r0], #-6
    123c:	0001ce01 	andeq	ip, r1, r1, lsl #28
    1240:	04390100 	ldrteq	r0, [r9], #-256	; 0xffffff00
    1244:	00700000 	rsbseq	r0, r0, r0
    1248:	8d800000 	stchi	0, cr0, [r0]
    124c:	00380000 	eorseq	r0, r8, r0
    1250:	05180000 	ldreq	r0, [r8, #-0]
    1254:	01020000 	mrseq	r0, (UNDEF: 2)
    1258:	00006208 	andeq	r6, r0, r8, lsl #4
    125c:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
    1260:	00000123 	andeq	r0, r0, r3, lsr #2
    1264:	69050403 	stmdbvs	r5, {r0, r1, sl}
    1268:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    126c:	00000508 	andeq	r0, r0, r8, lsl #10
    1270:	01020000 	mrseq	r0, (UNDEF: 2)
    1274:	00005908 	andeq	r5, r0, r8, lsl #18
    1278:	07020200 	streq	r0, [r2, -r0, lsl #4]
    127c:	000000fe 	strdeq	r0, [r0], -lr
    1280:	00006704 	andeq	r6, r0, r4, lsl #14
    1284:	5a1a0200 	bpl	681a8c <__user_program+0x381a8c>
    1288:	02000000 	andeq	r0, r0, #0
    128c:	00340704 	eorseq	r0, r4, r4, lsl #14
    1290:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1294:	00002a07 	andeq	r2, r0, r7, lsl #20
    1298:	03060500 	movweq	r0, #25856	; 0x6500
    129c:	04010000 	streq	r0, [r1], #-0
    12a0:	0000004f 	andeq	r0, r0, pc, asr #32
    12a4:	00008401 	andeq	r8, r0, r1, lsl #8
    12a8:	02d20600 	sbcseq	r0, r2, #0, 12
    12ac:	04010000 	streq	r0, [r1], #-0
    12b0:	00000084 	andeq	r0, r0, r4, lsl #1
    12b4:	8a040700 	bhi	102ebc <__bss_end+0xf6ebc>
    12b8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    12bc:	0000004f 	andeq	r0, r0, pc, asr #32
    12c0:	00006809 	andeq	r6, r0, r9, lsl #16
    12c4:	008d8000 	addeq	r8, sp, r0
    12c8:	00000800 	andeq	r0, r0, r0, lsl #16
    12cc:	ac9c0100 	ldfges	f0, [ip], {0}
    12d0:	0a000000 	beq	12d8 <__start-0x6d28>
    12d4:	00000078 	andeq	r0, r0, r8, ror r0
    12d8:	00000713 	andeq	r0, r0, r3, lsl r7
    12dc:	02d80b00 	sbcseq	r0, r8, #0, 22
    12e0:	08010000 	stmdaeq	r1, {}	; <UNPREDICTABLE>
    12e4:	0000cf01 	andeq	ip, r0, r1, lsl #30
    12e8:	02d20600 	sbcseq	r0, r2, #0, 12
    12ec:	08010000 	stmdaeq	r1, {}	; <UNPREDICTABLE>
    12f0:	00000084 	andeq	r0, r0, r4, lsl #1
    12f4:	0003ec06 	andeq	lr, r3, r6, lsl #24
    12f8:	4f080100 	svcmi	0x00080100
    12fc:	00000000 	andeq	r0, r0, r0
    1300:	0000ac09 	andeq	sl, r0, r9, lsl #24
    1304:	008d8800 	addeq	r8, sp, r0, lsl #16
    1308:	00000800 	andeq	r0, r0, r0, lsl #16
    130c:	f19c0100 			; <UNDEFINED> instruction: 0xf19c0100
    1310:	0c000000 	stceq	0, cr0, [r0], {-0}
    1314:	000000b8 	strheq	r0, [r0], -r8
    1318:	c30c5001 	movwgt	r5, #49153	; 0xc001
    131c:	01000000 	mrseq	r0, (UNDEF: 0)
    1320:	2d0d0051 	stccs	0, cr0, [sp, #-324]	; 0xfffffebc
    1324:	01000003 	tsteq	r0, r3
    1328:	008d900c 	addeq	r9, sp, ip
    132c:	00001800 	andeq	r1, r0, r0, lsl #16
    1330:	769c0100 	ldrvc	r0, [ip], r0, lsl #2
    1334:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
    1338:	000002d2 	ldrdeq	r0, [r0], -r2
    133c:	00840c01 	addeq	r0, r4, r1, lsl #24
    1340:	50010000 	andpl	r0, r1, r0
    1344:	0003ec0f 	andeq	lr, r3, pc, lsl #24
    1348:	4f0c0100 	svcmi	0x000c0100
    134c:	34000000 	strcc	r0, [r0], #-0
    1350:	0f000007 	svceq	0x00000007
    1354:	00000434 	andeq	r0, r0, r4, lsr r4
    1358:	004f0c01 	subeq	r0, pc, r1, lsl #24
    135c:	07550000 	ldrbeq	r0, [r5, -r0]
    1360:	76100000 	ldrvc	r0, [r0], -r0
    1364:	4f0e0100 	svcmi	0x000e0100
    1368:	01000000 	mrseq	r0, (UNDEF: 0)
    136c:	00681152 	rsbeq	r1, r8, r2, asr r1
    1370:	8d900000 	ldchi	0, cr0, [r0]
    1374:	00040000 	andeq	r0, r4, r0
    1378:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
    137c:	00000157 	andeq	r0, r0, r7, asr r1
    1380:	0000780c 	andeq	r7, r0, ip, lsl #16
    1384:	00500100 	subseq	r0, r0, r0, lsl #2
    1388:	0000ac12 	andeq	sl, r0, r2, lsl ip
    138c:	008da000 	addeq	sl, sp, r0
    1390:	00000800 	andeq	r0, r0, r0, lsl #16
    1394:	0c100100 	ldfeqs	f0, [r0], {-0}
    1398:	000000c3 	andeq	r0, r0, r3, asr #1
    139c:	b80c5201 	stmdalt	ip, {r0, r9, ip, lr}
    13a0:	01000000 	mrseq	r0, (UNDEF: 0)
    13a4:	13000050 	movwne	r0, #80	; 0x50
    13a8:	00000332 	andeq	r0, r0, r2, lsr r3
    13ac:	004f1301 	subeq	r1, pc, r1, lsl #6
    13b0:	8da80000 	stchi	0, cr0, [r8]
    13b4:	00100000 	andseq	r0, r0, r0
    13b8:	9c010000 	stcls	0, cr0, [r1], {-0}
    13bc:	01007614 	tsteq	r0, r4, lsl r6
    13c0:	00004f13 	andeq	r4, r0, r3, lsl pc
    13c4:	00077600 	andeq	r7, r7, r0, lsl #12
    13c8:	03ec0f00 	mvneq	r0, #0, 30
    13cc:	13010000 	movwne	r0, #4096	; 0x1000
    13d0:	0000004f 	andeq	r0, r0, pc, asr #32
    13d4:	00000797 	muleq	r0, r7, r7
    13d8:	0004340e 	andeq	r3, r4, lr, lsl #8
    13dc:	4f130100 	svcmi	0x00130100
    13e0:	01000000 	mrseq	r0, (UNDEF: 0)
    13e4:	67000052 	smlsdvs	r0, r2, r0, r0
    13e8:	02000000 	andeq	r0, r0, #0
    13ec:	00081f00 	andeq	r1, r8, r0, lsl #30
    13f0:	95010400 	strls	r0, [r1, #-1024]	; 0xfffffc00
    13f4:	00000005 	andeq	r0, r0, r5
    13f8:	54000080 	strpl	r0, [r0], #-128	; 0xffffff80
    13fc:	33000080 	movwcc	r0, #128	; 0x80
    1400:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
    1404:	732f6b62 			; <UNDEFINED> instruction: 0x732f6b62
    1408:	622f6372 	eorvs	r6, pc, #-939524095	; 0xc8000001
    140c:	2e746f6f 	cdpcs	15, 7, cr6, cr4, cr15, {3}
    1410:	682f0053 	stmdavs	pc!, {r0, r1, r4, r6}	; <UNPREDICTABLE>
    1414:	2f656d6f 	svccs	0x00656d6f
    1418:	502f7a7a 	eorpl	r7, pc, sl, ror sl	; <UNPREDICTABLE>
    141c:	656a6f72 	strbvs	r6, [sl, #-3954]!	; 0xfffff08e
    1420:	2f737463 	svccs	0x00737463
    1424:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
    1428:	616c5f64 	cmnvs	ip, r4, ror #30
    142c:	6c2f3162 	stfvss	f3, [pc], #-392	; 12ac <__start-0x6d54>
    1430:	2d316261 	lfmcs	f6, 4, [r1, #-388]!	; 0xfffffe7c
    1434:	6e686f6a 	cdpvs	15, 6, cr6, cr8, cr10, {3}
    1438:	65737261 	ldrbvs	r7, [r3, #-609]!	; 0xfffffd9f
    143c:	632f6c61 			; <UNDEFINED> instruction: 0x632f6c61
    1440:	0065646f 	rsbeq	r6, r5, pc, ror #8
    1444:	20554e47 	subscs	r4, r5, r7, asr #28
    1448:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    144c:	0036322e 	eorseq	r3, r6, lr, lsr #4
    1450:	00668001 	rsbeq	r8, r6, r1
    1454:	00020000 	andeq	r0, r2, r0
    1458:	00000833 	andeq	r0, r0, r3, lsr r8
    145c:	05ed0104 	strbeq	r0, [sp, #260]!	; 0x104
    1460:	8db80000 	ldchi	0, cr0, [r8]
    1464:	8dfc0000 	ldclhi	0, cr0, [ip]
    1468:	34330000 	ldrtcc	r0, [r3], #-0
    146c:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
    1470:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
    1474:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
    1478:	00532e6d 	subseq	r2, r3, sp, ror #28
    147c:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; 13c8 <__start-0x6c38>
    1480:	7a7a2f65 	bvc	1e8d21c <__user_program+0x1b8d21c>
    1484:	6f72502f 	svcvs	0x0072502f
    1488:	7463656a 	strbtvc	r6, [r3], #-1386	; 0xfffffa96
    148c:	6d652f73 	stclvs	15, cr2, [r5, #-460]!	; 0xfffffe34
    1490:	5f646562 	svcpl	0x00646562
    1494:	3162616c 	cmncc	r2, ip, ror #2
    1498:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
    149c:	6f6a2d31 	svcvs	0x006a2d31
    14a0:	72616e68 	rsbvc	r6, r1, #104, 28	; 0x680
    14a4:	6c616573 	cfstr64vs	mvdx6, [r1], #-460	; 0xfffffe34
    14a8:	646f632f 	strbtvs	r6, [pc], #-815	; 14b0 <__start-0x6b50>
    14ac:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
    14b0:	53412055 	movtpl	r2, #4181	; 0x1055
    14b4:	322e3220 	eorcc	r3, lr, #32, 4
    14b8:	80010036 	andhi	r0, r1, r6, lsr r0
    14bc:	000000a6 	andeq	r0, r0, r6, lsr #1
    14c0:	08470002 	stmdaeq	r7, {r1}^
    14c4:	01040000 	mrseq	r0, (UNDEF: 4)
    14c8:	0000063e 	andeq	r0, r0, lr, lsr r6
    14cc:	00008dfc 	strdeq	r8, [r0], -ip
    14d0:	00008e38 	andeq	r8, r0, r8, lsr lr
    14d4:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    14d8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    14dc:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    14e0:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    14e4:	2f636367 	svccs	0x00636367
    14e8:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    14ec:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
    14f0:	622f6d72 	eorvs	r6, pc, #7296	; 0x1c80
    14f4:	69626170 	stmdbvs	r2!, {r4, r5, r6, r8, sp, lr}^
    14f8:	2f00532e 	svccs	0x0000532e
    14fc:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1500:	63672f64 	cmnvs	r7, #100, 30	; 0x190
    1504:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    1508:	6f6e2d6d 	svcvs	0x006e2d6d
    150c:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1510:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    1514:	6e525244 	cdpvs	2, 5, cr5, cr2, cr4, {2}
    1518:	672f414c 	strvs	r4, [pc, -ip, asr #2]!
    151c:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    1520:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1524:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1528:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    152c:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
    1530:	732b332e 			; <UNDEFINED> instruction: 0x732b332e
    1534:	33326e76 	teqcc	r2, #1888	; 0x760
    1538:	37373131 			; <UNDEFINED> instruction: 0x37373131
    153c:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1540:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
    1544:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1548:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    154c:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1550:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1554:	00636367 	rsbeq	r6, r3, r7, ror #6
    1558:	20554e47 	subscs	r4, r5, r7, asr #28
    155c:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    1560:	0035322e 	eorseq	r3, r5, lr, lsr #4
    1564:	01608001 	cmneq	r0, r1
    1568:	00040000 	andeq	r0, r4, r0
    156c:	0000085b 	andeq	r0, r0, fp, asr r8
    1570:	04fc0104 	ldrbteq	r0, [ip], #260	; 0x104
    1574:	d5010000 	strle	r0, [r1, #-0]
    1578:	62000004 	andvs	r0, r0, #4
    157c:	38000004 	stmdacc	r0, {r2}
    1580:	8400008e 	strhi	r0, [r0], #-142	; 0xffffff72
    1584:	9c000000 	stcls	0, cr0, [r0], {-0}
    1588:	02000006 	andeq	r0, r0, #6
    158c:	002a0708 	eoreq	r0, sl, r8, lsl #14
    1590:	b6030000 	strlt	r0, [r3], -r0
    1594:	01000005 	tsteq	r0, r5
    1598:	0000a623 	andeq	sl, r0, r3, lsr #12
    159c:	008e3800 	addeq	r3, lr, r0, lsl #16
    15a0:	00004400 	andeq	r4, r0, r0, lsl #8
    15a4:	a69c0100 	ldrge	r0, [ip], r0, lsl #2
    15a8:	04000000 	streq	r0, [r0], #-0
    15ac:	23010061 	movwcs	r0, #4193	; 0x1061
    15b0:	000000a6 	andeq	r0, r0, r6, lsr #1
    15b4:	000007b8 			; <UNDEFINED> instruction: 0x000007b8
    15b8:	01006204 	tsteq	r0, r4, lsl #4
    15bc:	0000a624 	andeq	sl, r0, r4, lsr #12
    15c0:	0007e000 	andeq	lr, r7, r0
    15c4:	05ac0500 	streq	r0, [ip, #1280]!	; 0x500
    15c8:	25010000 	strcs	r0, [r1, #-0]
    15cc:	000000ad 	andeq	r0, r0, sp, lsr #1
    15d0:	06009102 	streq	r9, [r0], -r2, lsl #2
    15d4:	000005d5 	ldrdeq	r0, [r0], -r5
    15d8:	00a62701 	adceq	r2, r6, r1, lsl #14
    15dc:	50060000 	andpl	r0, r6, r0
    15e0:	93510493 	cmpls	r1, #-1828716544	; 0x93000000
    15e4:	8e540704 	cdphi	7, 5, cr0, cr4, cr4, {0}
    15e8:	01330000 	teqeq	r3, r0
    15ec:	06080000 	streq	r0, [r8], -r0
    15f0:	53049352 	movwpl	r9, #17234	; 0x4352
    15f4:	f3050493 	vqshl.u8	d0, d3, d21
    15f8:	2502f503 	strcs	pc, [r2, #-1283]	; 0xfffffafd
    15fc:	93500608 	cmpls	r0, #8, 12	; 0x800000
    1600:	04935104 	ldreq	r5, [r3], #260	; 0x104
    1604:	f503f305 			; <UNDEFINED> instruction: 0xf503f305
    1608:	00002500 	andeq	r2, r0, r0, lsl #10
    160c:	00050802 	andeq	r0, r5, r2, lsl #16
    1610:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    1614:	0000a604 	andeq	sl, r0, r4, lsl #12
    1618:	04bf0300 	ldrteq	r0, [pc], #768	; 1620 <__start-0x69e0>
    161c:	2f010000 	svccs	0x00010000
    1620:	00000025 	andeq	r0, r0, r5, lsr #32
    1624:	00008e7c 	andeq	r8, r0, ip, ror lr
    1628:	00000040 	andeq	r0, r0, r0, asr #32
    162c:	012d9c01 			; <UNDEFINED> instruction: 0x012d9c01
    1630:	61040000 	mrsvs	r0, (UNDEF: 4)
    1634:	252f0100 	strcs	r0, [pc, #-256]!	; 153c <__start-0x6ac4>
    1638:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    163c:	04000008 	streq	r0, [r0], #-8
    1640:	30010062 	andcc	r0, r1, r2, rrx
    1644:	00000025 	andeq	r0, r0, r5, lsr #32
    1648:	00000830 	andeq	r0, r0, r0, lsr r8
    164c:	0005ac05 	andeq	sl, r5, r5, lsl #24
    1650:	2d310100 	ldfcss	f0, [r1, #-0]
    1654:	02000001 	andeq	r0, r0, #1
    1658:	d5060091 	strle	r0, [r6, #-145]	; 0xffffff6f
    165c:	01000005 	tsteq	r0, r5
    1660:	00002533 	andeq	r2, r0, r3, lsr r5
    1664:	93500600 	cmpls	r0, #0, 12
    1668:	04935104 	ldreq	r5, [r3], #260	; 0x104
    166c:	008e9807 	addeq	r9, lr, r7, lsl #16
    1670:	00014d00 	andeq	r4, r1, r0, lsl #26
    1674:	52060800 	andpl	r0, r6, #0, 16
    1678:	93530493 	cmpls	r3, #-1828716544	; 0x93000000
    167c:	03f30504 	mvnseq	r0, #4, 10	; 0x1000000
    1680:	082502f5 	stmdaeq	r5!, {r0, r2, r4, r5, r6, r7, r9}
    1684:	04935006 	ldreq	r5, [r3], #6
    1688:	05049351 	streq	r9, [r4, #-849]	; 0xfffffcaf
    168c:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
    1690:	09000025 	stmdbeq	r0, {r0, r2, r5}
    1694:	00002504 	andeq	r2, r0, r4, lsl #10
    1698:	04590a00 	ldrbeq	r0, [r9], #-2560	; 0xfffff600
    169c:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
    16a0:	000000a6 	andeq	r0, r0, r6, lsr #1
    16a4:	0000014d 	andeq	r0, r0, sp, asr #2
    16a8:	0000a60b 	andeq	sl, r0, fp, lsl #12
    16ac:	00a60b00 	adceq	r0, r6, r0, lsl #22
    16b0:	0c000000 	stceq	0, cr0, [r0], {-0}
    16b4:	000005cb 	andeq	r0, r0, fp, asr #11
    16b8:	00251a01 	eoreq	r1, r5, r1, lsl #20
    16bc:	250b0000 	strcs	r0, [fp, #-0]
    16c0:	0b000000 	bleq	16c8 <__start-0x6938>
    16c4:	00000025 	andeq	r0, r0, r5, lsr #32
    16c8:	00aa0000 	adceq	r0, sl, r0
    16cc:	00020000 	andeq	r0, r2, r0
    16d0:	00000912 	andeq	r0, r0, r2, lsl r9
    16d4:	06fb0104 	ldrbteq	r0, [fp], r4, lsl #2
    16d8:	8ebc0000 	cdphi	0, 11, cr0, cr12, cr0, {0}
    16dc:	8ec00000 	cdphi	0, 12, cr0, cr0, cr0, {0}
    16e0:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
    16e4:	2f2e2e2f 	svccs	0x002e2e2f
    16e8:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
    16ec:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 152c <__start-0x6ad4>
    16f0:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    16f4:	6f632f63 	svcvs	0x00632f63
    16f8:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    16fc:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1700:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1704:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
    1708:	532e7363 			; <UNDEFINED> instruction: 0x532e7363
    170c:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    1710:	2f646c69 	svccs	0x00646c69
    1714:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    1718:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    171c:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1720:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    1724:	52442d69 	subpl	r2, r4, #6720	; 0x1a40
    1728:	414c6e52 	cmpmi	ip, r2, asr lr
    172c:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    1730:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    1734:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1738:	61652d65 	cmnvs	r5, r5, ror #26
    173c:	342d6962 	strtcc	r6, [sp], #-2402	; 0xfffff69e
    1740:	332e392e 			; <UNDEFINED> instruction: 0x332e392e
    1744:	6e76732b 	cdpvs	3, 7, cr7, cr6, cr11, {1}
    1748:	31313332 	teqcc	r1, r2, lsr r3
    174c:	622f3737 	eorvs	r3, pc, #14417920	; 0xdc0000
    1750:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    1754:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1758:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    175c:	61652d65 	cmnvs	r5, r5, ror #26
    1760:	6c2f6962 	stcvs	9, cr6, [pc], #-392	; 15e0 <__start-0x6a20>
    1764:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1768:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
    176c:	53412055 	movtpl	r2, #4181	; 0x1055
    1770:	322e3220 	eorcc	r3, lr, #32, 4
    1774:	80010035 	andhi	r0, r1, r5, lsr r0
    1778:	00000265 	andeq	r0, r0, r5, ror #4
    177c:	09260004 	stmdbeq	r6!, {r2}
    1780:	01040000 	mrseq	r0, (UNDEF: 4)
    1784:	00000634 	andeq	r0, r0, r4, lsr r6
    1788:	0005f801 	andeq	pc, r5, r1, lsl #16
    178c:	00046200 	andeq	r6, r4, r0, lsl #4
    1790:	008ec000 	addeq	ip, lr, r0
    1794:	00017800 	andeq	r7, r1, r0, lsl #16
    1798:	00075600 	andeq	r5, r7, r0, lsl #12
    179c:	07080200 	streq	r0, [r8, -r0, lsl #4]
    17a0:	0000002a 	andeq	r0, r0, sl, lsr #32
    17a4:	69050403 	stmdbvs	r5, {r0, r1, sl}
    17a8:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    17ac:	00340704 	eorseq	r0, r4, r4, lsl #14
    17b0:	01020000 	mrseq	r0, (UNDEF: 2)
    17b4:	00005908 	andeq	r5, r0, r8, lsl #18
    17b8:	08010200 	stmdaeq	r1, {r9}
    17bc:	00000062 	andeq	r0, r0, r2, rrx
    17c0:	2f070402 	svccs	0x00070402
    17c4:	02000000 	andeq	r0, r0, #0
    17c8:	02930704 	addseq	r0, r3, #4, 14	; 0x100000
    17cc:	01020000 	mrseq	r0, (UNDEF: 2)
    17d0:	00005b06 	andeq	r5, r0, r6, lsl #22
    17d4:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
    17d8:	00000123 	andeq	r0, r0, r3, lsr #2
    17dc:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
    17e0:	04000000 	streq	r0, [r0], #-0
    17e4:	000005f1 	strdeq	r0, [r0], -r1
    17e8:	002c8102 	eoreq	r8, ip, r2, lsl #2
    17ec:	f0040000 			; <UNDEFINED> instruction: 0xf0040000
    17f0:	02000005 	andeq	r0, r0, #5
    17f4:	00003382 	andeq	r3, r0, r2, lsl #7
    17f8:	061f0400 	ldreq	r0, [pc], -r0, lsl #8
    17fc:	85020000 	strhi	r0, [r2, #-0]
    1800:	0000008c 	andeq	r0, r0, ip, lsl #1
    1804:	00050802 	andeq	r0, r5, r2, lsl #16
    1808:	04000000 	streq	r0, [r0], #-0
    180c:	0000061e 	andeq	r0, r0, lr, lsl r6
    1810:	00258602 	eoreq	r8, r5, r2, lsl #12
    1814:	04020000 	streq	r0, [r2], #-0
    1818:	00062e04 	andeq	r2, r6, r4, lsl #28
    181c:	03080200 	movweq	r0, #33280	; 0x8200
    1820:	00000626 	andeq	r0, r0, r6, lsr #12
    1824:	f9040802 			; <UNDEFINED> instruction: 0xf9040802
    1828:	02000006 	andeq	r0, r0, #6
    182c:	06f10310 	usateq	r0, #17, r0, lsl #6
    1830:	00050000 	andeq	r0, r5, r0
    1834:	08000007 	stmdaeq	r0, {r0, r1, r2}
    1838:	e201e302 	and	lr, r1, #134217728	; 0x8000000
    183c:	06000000 	streq	r0, [r0], -r0
    1840:	00776f6c 	rsbseq	r6, r7, ip, ror #30
    1844:	6b01e302 	blvs	7a454 <__bss_end+0x6e454>
    1848:	00000000 	andeq	r0, r0, r0
    184c:	0005de07 	andeq	sp, r5, r7, lsl #28
    1850:	01e30200 	mvneq	r0, r0, lsl #4
    1854:	0000006b 	andeq	r0, r0, fp, rrx
    1858:	08080004 	stmdaeq	r8, {r2}
    185c:	0101ea02 	tsteq	r1, r2, lsl #20
    1860:	09000001 	stmdbeq	r0, {r0}
    1864:	ec020073 	stc	0, cr0, [r2], {115}	; 0x73
    1868:	0000ba01 	andeq	fp, r0, r1, lsl #20
    186c:	6c6c0900 	stclvs	9, cr0, [ip], #-0
    1870:	01ed0200 	mvneq	r0, r0, lsl #4
    1874:	00000081 	andeq	r0, r0, r1, lsl #1
    1878:	06160a00 	ldreq	r0, [r6], -r0, lsl #20
    187c:	ee020000 	cdp	0, 0, cr0, cr2, cr0, {0}
    1880:	0000e201 	andeq	lr, r0, r1, lsl #4
    1884:	05e30b00 	strbeq	r0, [r3, #2816]!	; 0xb00
    1888:	b0010000 	andlt	r0, r1, r0
    188c:	00009303 	andeq	r9, r0, r3, lsl #6
    1890:	01880300 	orreq	r0, r8, r0, lsl #6
    1894:	6e0c0000 	cdpvs	0, 0, cr0, cr12, cr0, {0}
    1898:	03b00100 	movseq	r0, #0, 2
    189c:	00000093 	muleq	r0, r3, r0
    18a0:	0100640c 	tsteq	r0, ip, lsl #8
    18a4:	009303b0 			; <UNDEFINED> instruction: 0x009303b0
    18a8:	720c0000 	andvc	r0, ip, #0
    18ac:	b0010070 	andlt	r0, r1, r0, ror r0
    18b0:	00018803 	andeq	r8, r1, r3, lsl #16
    18b4:	00710d00 	rsbseq	r0, r1, r0, lsl #26
    18b8:	9303b201 	movwls	fp, #12801	; 0x3201
    18bc:	0d000000 	stceq	0, cr0, [r0, #-0]
    18c0:	b2010072 	andlt	r0, r1, #114	; 0x72
    18c4:	00009303 	andeq	r9, r0, r3, lsl #6
    18c8:	00790d00 	rsbseq	r0, r9, r0, lsl #26
    18cc:	9303b201 	movwls	fp, #12801	; 0x3201
    18d0:	0d000000 	stceq	0, cr0, [r0, #-0]
    18d4:	00317a6c 	eorseq	r7, r1, ip, ror #20
    18d8:	7603b301 	strvc	fp, [r3], -r1, lsl #6
    18dc:	0d000000 	stceq	0, cr0, [r0, #-0]
    18e0:	00327a6c 	eorseq	r7, r2, ip, ror #20
    18e4:	7603b301 	strvc	fp, [r3], -r1, lsl #6
    18e8:	0d000000 	stceq	0, cr0, [r0, #-0]
    18ec:	b3010069 	movwlt	r0, #4201	; 0x1069
    18f0:	00007603 	andeq	r7, r0, r3, lsl #12
    18f4:	006b0d00 	rsbeq	r0, fp, r0, lsl #26
    18f8:	7603b301 	strvc	fp, [r3], -r1, lsl #6
    18fc:	00000000 	andeq	r0, r0, r0
    1900:	0093040e 	addseq	r0, r3, lr, lsl #8
    1904:	590f0000 	stmdbpl	pc, {}	; <UNPREDICTABLE>
    1908:	01000004 	tsteq	r0, r4
    190c:	008104cb 	addeq	r0, r1, fp, asr #9
    1910:	8ec00000 	cdphi	0, 12, cr0, cr0, cr0, {0}
    1914:	01780000 	cmneq	r8, r0
    1918:	9c010000 	stcls	0, cr0, [r1], {-0}
    191c:	01007510 	tsteq	r0, r0, lsl r5
    1920:	008104cb 	addeq	r0, r1, fp, asr #9
    1924:	08580000 	ldmdaeq	r8, {}^	; <UNPREDICTABLE>
    1928:	76100000 	ldrvc	r0, [r0], -r0
    192c:	04cb0100 	strbeq	r0, [fp], #256	; 0x100
    1930:	00000081 	andeq	r0, r0, r1, lsl #1
    1934:	00000890 	muleq	r0, r0, r8
    1938:	01006311 	tsteq	r0, r1, lsl r3
    193c:	006b04cd 	rsbeq	r0, fp, sp, asr #9
    1940:	08c80000 	stmiaeq	r8, {}^	; <UNPREDICTABLE>
    1944:	750d0000 	strvc	r0, [sp, #-0]
    1948:	ce010075 	mcrgt	0, 0, r0, cr1, cr5, {3}
    194c:	00010104 	andeq	r0, r1, r4, lsl #2
    1950:	76760d00 	ldrbtvc	r0, [r6], -r0, lsl #26
    1954:	04cf0100 	strbeq	r0, [pc], #256	; 195c <__start-0x66a4>
    1958:	00000101 	andeq	r0, r0, r1, lsl #2
    195c:	01007711 	tsteq	r0, r1, lsl r7
    1960:	008104d0 	ldrdeq	r0, [r1], r0	; <UNPREDICTABLE>
    1964:	08ff0000 	ldmeq	pc!, {}^	; <UNPREDICTABLE>
    1968:	0d120000 	ldceq	0, cr0, [r2, #-0]
    196c:	e8000001 	stmda	r0, {r0}
    1970:	2000008e 	andcs	r0, r0, lr, lsl #1
    1974:	01000001 	tsteq	r0, r1
    1978:	321304d9 	andscc	r0, r3, #-654311424	; 0xd9000000
    197c:	2e000001 	cdpcs	0, 0, cr0, cr0, cr1, {0}
    1980:	13000009 	movwne	r0, #9
    1984:	00000128 	andeq	r0, r0, r8, lsr #2
    1988:	00000942 	andeq	r0, r0, r2, asr #18
    198c:	00011e13 	andeq	r1, r1, r3, lsl lr
    1990:	00095a00 	andeq	r5, r9, r0, lsl #20
    1994:	8ee81400 	cdphi	4, 14, cr1, cr8, cr0, {0}
    1998:	01200000 			; <UNDEFINED> instruction: 0x01200000
    199c:	3d150000 	ldccc	0, cr0, [r5, #-0]
    19a0:	72000001 	andvc	r0, r0, #1
    19a4:	15000009 	strne	r0, [r0, #-9]
    19a8:	00000147 	andeq	r0, r0, r7, asr #2
    19ac:	0000099e 	muleq	r0, lr, r9
    19b0:	00015115 	andeq	r5, r1, r5, lsl r1
    19b4:	0009e600 	andeq	lr, r9, r0, lsl #12
    19b8:	015b1500 	cmpeq	fp, r0, lsl #10
    19bc:	0a0e0000 	beq	3819c4 <__user_program+0x819c4>
    19c0:	67150000 	ldrvs	r0, [r5, -r0]
    19c4:	2c000001 	stccs	0, cr0, [r0], {1}
    19c8:	1500000a 	strne	r0, [r0, #-10]
    19cc:	00000173 	andeq	r0, r0, r3, ror r1
    19d0:	00000a3f 	andeq	r0, r0, pc, lsr sl
    19d4:	00017d15 	andeq	r7, r1, r5, lsl sp
    19d8:	000a8200 	andeq	r8, sl, r0, lsl #4
    19dc:	00000000 	andeq	r0, r0, r0
    19e0:	0001c300 	andeq	ip, r1, r0, lsl #6
    19e4:	49000400 	stmdbmi	r0, {sl}
    19e8:	0400000a 	streq	r0, [r0], #-10
    19ec:	00063401 	andeq	r3, r6, r1, lsl #8
    19f0:	05f80100 	ldrbeq	r0, [r8, #256]!	; 0x100
    19f4:	04620000 	strbteq	r0, [r2], #-0
    19f8:	90380000 	eorsls	r0, r8, r0
    19fc:	01200000 			; <UNDEFINED> instruction: 0x01200000
    1a00:	07ee0000 	strbeq	r0, [lr, r0]!
    1a04:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1a08:	00002a07 	andeq	r2, r0, r7, lsl #20
    1a0c:	07040200 	streq	r0, [r4, -r0, lsl #4]
    1a10:	00000034 	andeq	r0, r0, r4, lsr r0
    1a14:	69050403 	stmdbvs	r5, {r0, r1, sl}
    1a18:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    1a1c:	00590801 	subseq	r0, r9, r1, lsl #16
    1a20:	01020000 	mrseq	r0, (UNDEF: 2)
    1a24:	00006208 	andeq	r6, r0, r8, lsl #4
    1a28:	07040200 	streq	r0, [r4, -r0, lsl #4]
    1a2c:	0000002f 	andeq	r0, r0, pc, lsr #32
    1a30:	93070402 	movwls	r0, #29698	; 0x7402
    1a34:	02000002 	andeq	r0, r0, #2
    1a38:	005b0601 	subseq	r0, fp, r1, lsl #12
    1a3c:	02020000 	andeq	r0, r2, #0
    1a40:	00012305 	andeq	r2, r1, r5, lsl #6
    1a44:	07020200 	streq	r0, [r2, -r0, lsl #4]
    1a48:	000000fe 	strdeq	r0, [r0], -lr
    1a4c:	0005f004 	andeq	pc, r5, r4
    1a50:	2c820200 	sfmcs	f0, 4, [r2], {0}
    1a54:	02000000 	andeq	r0, r0, #0
    1a58:	00000508 	andeq	r0, r0, r8, lsl #10
    1a5c:	1e040000 	cdpne	0, 0, cr0, cr4, cr0, {0}
    1a60:	02000006 	andeq	r0, r0, #6
    1a64:	00002586 	andeq	r2, r0, r6, lsl #11
    1a68:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
    1a6c:	0000062e 	andeq	r0, r0, lr, lsr #12
    1a70:	26030802 	strcs	r0, [r3], -r2, lsl #16
    1a74:	02000006 	andeq	r0, r0, #6
    1a78:	06f90408 	ldrbteq	r0, [r9], r8, lsl #8
    1a7c:	10020000 	andne	r0, r2, r0
    1a80:	0006f103 	andeq	pc, r6, r3, lsl #2
    1a84:	05e30500 	strbeq	r0, [r3, #1280]!	; 0x500
    1a88:	b0010000 	andlt	r0, r1, r0
    1a8c:	00007d03 	andeq	r7, r0, r3, lsl #26
    1a90:	011f0300 	tsteq	pc, r0, lsl #6
    1a94:	6e060000 	cdpvs	0, 0, cr0, cr6, cr0, {0}
    1a98:	03b00100 	movseq	r0, #0, 2
    1a9c:	0000007d 	andeq	r0, r0, sp, ror r0
    1aa0:	01006406 	tsteq	r0, r6, lsl #8
    1aa4:	007d03b0 	ldrhteq	r0, [sp], #-48	; 0xffffffd0
    1aa8:	72060000 	andvc	r0, r6, #0
    1aac:	b0010070 	andlt	r0, r1, r0, ror r0
    1ab0:	00011f03 	andeq	r1, r1, r3, lsl #30
    1ab4:	00710700 	rsbseq	r0, r1, r0, lsl #14
    1ab8:	7d03b201 	sfmvc	f3, 1, [r3, #-4]
    1abc:	07000000 	streq	r0, [r0, -r0]
    1ac0:	b2010072 	andlt	r0, r1, #114	; 0x72
    1ac4:	00007d03 	andeq	r7, r0, r3, lsl #26
    1ac8:	00790700 	rsbseq	r0, r9, r0, lsl #14
    1acc:	7d03b201 	sfmvc	f3, 1, [r3, #-4]
    1ad0:	07000000 	streq	r0, [r0, -r0]
    1ad4:	00317a6c 	eorseq	r7, r1, ip, ror #20
    1ad8:	6b03b301 	blvs	ee6e4 <__bss_end+0xe26e4>
    1adc:	07000000 	streq	r0, [r0, -r0]
    1ae0:	00327a6c 	eorseq	r7, r2, ip, ror #20
    1ae4:	6b03b301 	blvs	ee6f0 <__bss_end+0xe26f0>
    1ae8:	07000000 	streq	r0, [r0, -r0]
    1aec:	b3010069 	movwlt	r0, #4201	; 0x1069
    1af0:	00006b03 	andeq	r6, r0, r3, lsl #22
    1af4:	006b0700 	rsbeq	r0, fp, r0, lsl #14
    1af8:	6b03b301 	blvs	ee704 <__bss_end+0xe2704>
    1afc:	00000000 	andeq	r0, r0, r0
    1b00:	007d0408 	rsbseq	r0, sp, r8, lsl #8
    1b04:	cb090000 	blgt	241b0c <__end+0x114b0c>
    1b08:	01000005 	tsteq	r0, r5
    1b0c:	007d0506 	rsbseq	r0, sp, r6, lsl #10
    1b10:	90380000 	eorsls	r0, r8, r0
    1b14:	01200000 			; <UNDEFINED> instruction: 0x01200000
    1b18:	9c010000 	stcls	0, cr0, [r1], {-0}
    1b1c:	01006e0a 	tsteq	r0, sl, lsl #28
    1b20:	007d0506 	rsbseq	r0, sp, r6, lsl #10
    1b24:	0aa00000 	beq	fe801b2c <__user_program+0xfe501b2c>
    1b28:	640a0000 	strvs	r0, [sl], #-0
    1b2c:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
    1b30:	0000007d 	andeq	r0, r0, sp, ror r0
    1b34:	00000ac8 	andeq	r0, r0, r8, asr #21
    1b38:	0000a40b 	andeq	sl, r0, fp, lsl #8
    1b3c:	00903800 	addseq	r3, r0, r0, lsl #16
    1b40:	00003000 	andeq	r3, r0, r0
    1b44:	05080100 	streq	r0, [r8, #-256]	; 0xffffff00
    1b48:	0000c90c 	andeq	ip, r0, ip, lsl #18
    1b4c:	bf0d0000 	svclt	0x000d0000
    1b50:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
    1b54:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
    1b58:	000000b5 	strheq	r0, [r0], -r5
    1b5c:	00000b08 	andeq	r0, r0, r8, lsl #22
    1b60:	0000300e 	andeq	r3, r0, lr
    1b64:	00d40f00 	sbcseq	r0, r4, r0, lsl #30
    1b68:	0b200000 	bleq	801b70 <__user_program+0x501b70>
    1b6c:	de0f0000 	cdple	0, 0, cr0, cr15, cr0, {0}
    1b70:	6c000000 	stcvs	0, cr0, [r0], {-0}
    1b74:	0f00000b 	svceq	0x0000000b
    1b78:	000000e8 	andeq	r0, r0, r8, ror #1
    1b7c:	00000bc9 	andeq	r0, r0, r9, asr #23
    1b80:	0000f20f 	andeq	pc, r0, pc, lsl #4
    1b84:	000bf100 	andeq	pc, fp, r0, lsl #2
    1b88:	00fe0f00 	rscseq	r0, lr, r0, lsl #30
    1b8c:	0c0f0000 	stceq	0, cr0, [pc], {-0}
    1b90:	0a0f0000 	beq	3c1b98 <__user_program+0xc1b98>
    1b94:	22000001 	andcs	r0, r0, #1
    1b98:	0f00000c 	svceq	0x0000000c
    1b9c:	00000114 	andeq	r0, r0, r4, lsl r1
    1ba0:	00000c65 	andeq	r0, r0, r5, ror #24
    1ba4:	00000000 	andeq	r0, r0, r0
    1ba8:	000000aa 	andeq	r0, r0, sl, lsr #1
    1bac:	0b100002 	bleq	401bbc <__user_program+0x101bbc>
    1bb0:	01040000 	mrseq	r0, (UNDEF: 4)
    1bb4:	00000880 	andeq	r0, r0, r0, lsl #17
    1bb8:	00009158 	andeq	r9, r0, r8, asr r1
    1bbc:	00009180 	andeq	r9, r0, r0, lsl #3
    1bc0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1bc4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1bc8:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    1bcc:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1bd0:	2f636367 	svccs	0x00636367
    1bd4:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    1bd8:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
    1bdc:	6c2f6d72 	stcvs	13, cr6, [pc], #-456	; 1a1c <__start-0x65e4>
    1be0:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
    1be4:	73636e75 	cmnvc	r3, #1872	; 0x750
    1be8:	2f00532e 	svccs	0x0000532e
    1bec:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1bf0:	63672f64 	cmnvs	r7, #100, 30	; 0x190
    1bf4:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    1bf8:	6f6e2d6d 	svcvs	0x006e2d6d
    1bfc:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1c00:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    1c04:	6e525244 	cdpvs	2, 5, cr5, cr2, cr4, {2}
    1c08:	672f414c 	strvs	r4, [pc, -ip, asr #2]!
    1c0c:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    1c10:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1c14:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1c18:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1c1c:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
    1c20:	732b332e 			; <UNDEFINED> instruction: 0x732b332e
    1c24:	33326e76 	teqcc	r2, #1888	; 0x760
    1c28:	37373131 			; <UNDEFINED> instruction: 0x37373131
    1c2c:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1c30:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
    1c34:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1c38:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1c3c:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1c40:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1c44:	00636367 	rsbeq	r6, r3, r7, ror #6
    1c48:	20554e47 	subscs	r4, r5, r7, asr #28
    1c4c:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    1c50:	0035322e 	eorseq	r3, r5, lr, lsr #4
    1c54:	00aa8001 	adceq	r8, sl, r1
    1c58:	00020000 	andeq	r0, r2, r0
    1c5c:	00000b24 	andeq	r0, r0, r4, lsr #22
    1c60:	08e50104 	stmiaeq	r5!, {r2, r8}^
    1c64:	91800000 	orrls	r0, r0, r0
    1c68:	91c80000 	bicls	r0, r8, r0
    1c6c:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
    1c70:	2f2e2e2f 	svccs	0x002e2e2f
    1c74:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
    1c78:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 1ab8 <__start-0x6548>
    1c7c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1c80:	6f632f63 	svcvs	0x00632f63
    1c84:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    1c88:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1c8c:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1c90:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
    1c94:	532e7363 			; <UNDEFINED> instruction: 0x532e7363
    1c98:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    1c9c:	2f646c69 	svccs	0x00646c69
    1ca0:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    1ca4:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    1ca8:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1cac:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    1cb0:	52442d69 	subpl	r2, r4, #6720	; 0x1a40
    1cb4:	414c6e52 	cmpmi	ip, r2, asr lr
    1cb8:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    1cbc:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    1cc0:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1cc4:	61652d65 	cmnvs	r5, r5, ror #26
    1cc8:	342d6962 	strtcc	r6, [sp], #-2402	; 0xfffff69e
    1ccc:	332e392e 			; <UNDEFINED> instruction: 0x332e392e
    1cd0:	6e76732b 	cdpvs	3, 7, cr7, cr6, cr11, {1}
    1cd4:	31313332 	teqcc	r1, r2, lsr r3
    1cd8:	622f3737 	eorvs	r3, pc, #14417920	; 0xdc0000
    1cdc:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    1ce0:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1ce4:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1ce8:	61652d65 	cmnvs	r5, r5, ror #26
    1cec:	6c2f6962 	stcvs	9, cr6, [pc], #-392	; 1b6c <__start-0x6494>
    1cf0:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1cf4:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
    1cf8:	53412055 	movtpl	r2, #4181	; 0x1055
    1cfc:	322e3220 	eorcc	r3, lr, #32, 4
    1d00:	80010035 	andhi	r0, r1, r5, lsr r0

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
 108:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 10c:	0b3b0b3a 	bleq	ec2dfc <__user_program+0xbc2dfc>
 110:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 114:	89070000 	stmdbhi	r7, {}	; <UNPREDICTABLE>
 118:	11000182 	smlabbne	r0, r2, r1, r0
 11c:	00133101 	andseq	r3, r3, r1, lsl #2
 120:	82890800 	addhi	r0, r9, #0, 16
 124:	01110101 	tsteq	r1, r1, lsl #2
 128:	13011331 	movwne	r1, #4913	; 0x1331
 12c:	8a090000 	bhi	240134 <__end+0x113134>
 130:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
 134:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
 138:	2e0a0000 	cdpcs	0, 0, cr0, cr10, cr0, {0}
 13c:	03193f00 	tsteq	r9, #0, 30
 140:	3b0b3a0e 	blcc	2ce980 <__end+0x1a1980>
 144:	3c19270b 	ldccc	7, cr2, [r9], {11}
 148:	0b000019 	bleq	1b4 <__start-0x7e4c>
 14c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 150:	0b3a0e03 	bleq	e83964 <__user_program+0xb83964>
 154:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 158:	1301193c 	movwne	r1, #6460	; 0x193c
 15c:	050c0000 	streq	r0, [ip, #-0]
 160:	00134900 	andseq	r4, r3, r0, lsl #18
 164:	002e0d00 	eoreq	r0, lr, r0, lsl #26
 168:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 16c:	0b3b0b3a 	bleq	ec2e5c <__user_program+0xbc2e5c>
 170:	13491927 	movtne	r1, #39207	; 0x9927
 174:	0000193c 	andeq	r1, r0, ip, lsr r9
 178:	3f012e0e 	svccc	0x00012e0e
 17c:	3a0e0319 	bcc	380de8 <__user_program+0x80de8>
 180:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 184:	3c134919 	ldccc	9, cr4, [r3], {25}
 188:	00130119 	andseq	r0, r3, r9, lsl r1
 18c:	00180f00 	andseq	r0, r8, r0, lsl #30
 190:	0f100000 	svceq	0x00100000
 194:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 198:	11000013 	tstne	r0, r3, lsl r0
 19c:	13490026 	movtne	r0, #36902	; 0x9026
 1a0:	2e120000 	cdpcs	0, 1, cr0, cr2, cr0, {0}
 1a4:	03193f01 	tsteq	r9, #1, 30
 1a8:	3b0b3a0e 	blcc	2ce9e8 <__end+0x1a19e8>
 1ac:	01193c0b 	tsteq	r9, fp, lsl #24
 1b0:	13000013 	movwne	r0, #19
 1b4:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 1b8:	0b3a0e03 	bleq	e839cc <__user_program+0xb839cc>
 1bc:	193c0b3b 	ldmdbne	ip!, {r0, r1, r3, r4, r5, r8, r9, fp}
 1c0:	01000000 	mrseq	r0, (UNDEF: 0)
 1c4:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 1c8:	0e030b13 	vmoveq.32	d3[0], r0
 1cc:	01110e1b 	tsteq	r1, fp, lsl lr
 1d0:	17100612 			; <UNDEFINED> instruction: 0x17100612
 1d4:	16020000 	strne	r0, [r2], -r0
 1d8:	3a0e0300 	bcc	380de0 <__user_program+0x80de0>
 1dc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 1e0:	03000013 	movweq	r0, #19
 1e4:	0b0b0024 	bleq	2c027c <__end+0x19327c>
 1e8:	0e030b3e 	vmoveq.16	d3[0], r0
 1ec:	24040000 	strcs	r0, [r4], #-0
 1f0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 1f4:	0008030b 	andeq	r0, r8, fp, lsl #6
 1f8:	01130500 	tsteq	r3, r0, lsl #10
 1fc:	0b0b0e03 	bleq	2c3a10 <__end+0x196a10>
 200:	0b3b0b3a 	bleq	ec2ef0 <__user_program+0xbc2ef0>
 204:	00001301 	andeq	r1, r0, r1, lsl #6
 208:	03000d06 	movweq	r0, #3334	; 0xd06
 20c:	3813490e 	ldmdacc	r3, {r1, r2, r3, r8, fp, lr}
 210:	0019340b 	andseq	r3, r9, fp, lsl #8
 214:	000f0700 	andeq	r0, pc, r0, lsl #14
 218:	00000b0b 	andeq	r0, r0, fp, lsl #22
 21c:	03012e08 	movweq	r2, #7688	; 0x1e08
 220:	3b0b3a0e 	blcc	2cea60 <__end+0x1a1a60>
 224:	1119270b 	tstne	r9, fp, lsl #14
 228:	40061201 	andmi	r1, r6, r1, lsl #4
 22c:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 230:	00001301 	andeq	r1, r0, r1, lsl #6
 234:	03000509 	movweq	r0, #1289	; 0x509
 238:	3b0b3a0e 	blcc	2cea78 <__end+0x1a1a78>
 23c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 240:	0a000017 	beq	2a4 <__start-0x7d5c>
 244:	08030005 	stmdaeq	r3, {r0, r2}
 248:	0b3b0b3a 	bleq	ec2f38 <__user_program+0xbc2f38>
 24c:	17021349 	strne	r1, [r2, -r9, asr #6]
 250:	340b0000 	strcc	r0, [fp], #-0
 254:	3a0e0300 	bcc	380e5c <__user_program+0x80e5c>
 258:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 25c:	00170213 	andseq	r0, r7, r3, lsl r2
 260:	00340c00 	eorseq	r0, r4, r0, lsl #24
 264:	0b3a0803 	bleq	e82278 <__user_program+0xb82278>
 268:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 26c:	00001802 	andeq	r1, r0, r2, lsl #16
 270:	0300340d 	movweq	r3, #1037	; 0x40d
 274:	3b0b3a08 	blcc	2cea9c <__end+0x1a1a9c>
 278:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 27c:	0e000017 	mcreq	0, 0, r0, cr0, cr7, {0}
 280:	00018289 	andeq	r8, r1, r9, lsl #5
 284:	13310111 	teqne	r1, #1073741828	; 0x40000004
 288:	0f0f0000 	svceq	0x000f0000
 28c:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 290:	10000013 	andne	r0, r0, r3, lsl r0
 294:	13490101 	movtne	r0, #37121	; 0x9101
 298:	00001301 	andeq	r1, r0, r1, lsl #6
 29c:	49002111 	stmdbmi	r0, {r0, r4, r8, sp}
 2a0:	000b2f13 	andeq	r2, fp, r3, lsl pc
 2a4:	012e1200 			; <UNDEFINED> instruction: 0x012e1200
 2a8:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 2ac:	0b3b0b3a 	bleq	ec2f9c <__user_program+0xbc2f9c>
 2b0:	13491927 	movtne	r1, #39207	; 0x9927
 2b4:	06120111 			; <UNDEFINED> instruction: 0x06120111
 2b8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 2bc:	00130119 	andseq	r0, r3, r9, lsl r1
 2c0:	00181300 	andseq	r1, r8, r0, lsl #6
 2c4:	34140000 	ldrcc	r0, [r4], #-0
 2c8:	3a0e0300 	bcc	380ed0 <__user_program+0x80ed0>
 2cc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 2d0:	00180213 	andseq	r0, r8, r3, lsl r2
 2d4:	010b1500 	tsteq	fp, r0, lsl #10
 2d8:	13011755 	movwne	r1, #5973	; 0x1755
 2dc:	89160000 	ldmdbhi	r6, {}	; <UNPREDICTABLE>
 2e0:	11010182 	smlabbne	r1, r2, r1, r0
 2e4:	00133101 	andseq	r3, r3, r1, lsl #2
 2e8:	828a1700 	addhi	r1, sl, #0, 14
 2ec:	18020001 	stmdane	r2, {r0}
 2f0:	00184291 	mulseq	r8, r1, r2
 2f4:	010b1800 	tsteq	fp, r0, lsl #16
 2f8:	06120111 			; <UNDEFINED> instruction: 0x06120111
 2fc:	00001301 	andeq	r1, r0, r1, lsl #6
 300:	01828919 	orreq	r8, r2, r9, lsl r9
 304:	31011101 	tstcc	r1, r1, lsl #2
 308:	00130113 	andseq	r0, r3, r3, lsl r1
 30c:	00261a00 	eoreq	r1, r6, r0, lsl #20
 310:	00001349 	andeq	r1, r0, r9, asr #6
 314:	3f012e1b 	svccc	0x00012e1b
 318:	3a0e0319 	bcc	380f84 <__user_program+0x80f84>
 31c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 320:	00193c19 	andseq	r3, r9, r9, lsl ip
 324:	00051c00 	andeq	r1, r5, r0, lsl #24
 328:	00001349 	andeq	r1, r0, r9, asr #6
 32c:	01110100 	tsteq	r1, r0, lsl #2
 330:	0b130e25 	bleq	4c3bcc <__user_program+0x1c3bcc>
 334:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 338:	06120111 			; <UNDEFINED> instruction: 0x06120111
 33c:	00001710 	andeq	r1, r0, r0, lsl r7
 340:	0b002402 	bleq	9350 <__clzsi2+0x1d0>
 344:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 348:	0300000e 	movweq	r0, #14
 34c:	0b0b0024 	bleq	2c03e4 <__end+0x1933e4>
 350:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 354:	16040000 	strne	r0, [r4], -r0
 358:	3a0e0300 	bcc	380f60 <__user_program+0x80f60>
 35c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 360:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 364:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 368:	0b3a0e03 	bleq	e83b7c <__user_program+0xb83b7c>
 36c:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 370:	06120111 			; <UNDEFINED> instruction: 0x06120111
 374:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 378:	00130119 	andseq	r0, r3, r9, lsl r1
 37c:	82890600 	addhi	r0, r9, #0, 12
 380:	01110101 	tsteq	r1, r1, lsl #2
 384:	13011331 	movwne	r1, #4913	; 0x1331
 388:	8a070000 	bhi	1c0390 <__end+0x93390>
 38c:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
 390:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
 394:	89080000 	stmdbhi	r8, {}	; <UNPREDICTABLE>
 398:	11010182 	smlabbne	r1, r2, r1, r0
 39c:	00133101 	andseq	r3, r3, r1, lsl #2
 3a0:	002e0900 	eoreq	r0, lr, r0, lsl #18
 3a4:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 3a8:	0b3b0b3a 	bleq	ec3098 <__user_program+0xbc3098>
 3ac:	01111927 	tsteq	r1, r7, lsr #18
 3b0:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 3b4:	00194297 	mulseq	r9, r7, r2
 3b8:	00050a00 	andeq	r0, r5, r0, lsl #20
 3bc:	0b3a0e03 	bleq	e83bd0 <__user_program+0xb83bd0>
 3c0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 3c4:	00001802 	andeq	r1, r0, r2, lsl #16
 3c8:	3f012e0b 	svccc	0x00012e0b
 3cc:	3a0e0319 	bcc	381038 <__user_program+0x81038>
 3d0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3d4:	11134919 	tstne	r3, r9, lsl r9
 3d8:	40061201 	andmi	r1, r6, r1, lsl #4
 3dc:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 3e0:	00001301 	andeq	r1, r0, r1, lsl #6
 3e4:	0300340c 	movweq	r3, #1036	; 0x40c
 3e8:	3b0b3a0e 	blcc	2cec28 <__end+0x1a1c28>
 3ec:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 3f0:	0d000017 	stceq	0, cr0, [r0, #-92]	; 0xffffffa4
 3f4:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 3f8:	0b3a0e03 	bleq	e83c0c <__user_program+0xb83c0c>
 3fc:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 400:	1301193c 	movwne	r1, #6460	; 0x193c
 404:	050e0000 	streq	r0, [lr, #-0]
 408:	00134900 	andseq	r4, r3, r0, lsl #18
 40c:	012e0f00 			; <UNDEFINED> instruction: 0x012e0f00
 410:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 414:	0b3b0b3a 	bleq	ec3104 <__user_program+0xbc3104>
 418:	13491927 	movtne	r1, #39207	; 0x9927
 41c:	1301193c 	movwne	r1, #6460	; 0x193c
 420:	18100000 	ldmdane	r0, {}	; <UNPREDICTABLE>
 424:	11000000 	mrsne	r0, (UNDEF: 0)
 428:	0b0b000f 	bleq	2c046c <__end+0x19346c>
 42c:	00001349 	andeq	r1, r0, r9, asr #6
 430:	49002612 	stmdbmi	r0, {r1, r4, r9, sl, sp}
 434:	00000013 	andeq	r0, r0, r3, lsl r0
 438:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 43c:	030b130e 	movweq	r1, #45838	; 0xb30e
 440:	110e1b0e 	tstne	lr, lr, lsl #22
 444:	10061201 	andne	r1, r6, r1, lsl #4
 448:	02000017 	andeq	r0, r0, #23
 44c:	0b0b0024 	bleq	2c04e4 <__end+0x1934e4>
 450:	0e030b3e 	vmoveq.16	d3[0], r0
 454:	24030000 	strcs	r0, [r3], #-0
 458:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 45c:	0008030b 	andeq	r0, r8, fp, lsl #6
 460:	00160400 	andseq	r0, r6, r0, lsl #8
 464:	0b3a0e03 	bleq	e83c78 <__user_program+0xb83c78>
 468:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 46c:	04050000 	streq	r0, [r5], #-0
 470:	3a0b0b01 	bcc	2c307c <__end+0x19607c>
 474:	010b3b0b 	tsteq	fp, fp, lsl #22
 478:	06000013 			; <UNDEFINED> instruction: 0x06000013
 47c:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
 480:	00000d1c 	andeq	r0, r0, ip, lsl sp
 484:	3f012e07 	svccc	0x00012e07
 488:	3a0e0319 	bcc	3810f4 <__user_program+0x810f4>
 48c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 490:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 494:	97184006 	ldrls	r4, [r8, -r6]
 498:	13011942 	movwne	r1, #6466	; 0x1942
 49c:	05080000 	streq	r0, [r8, #-0]
 4a0:	3a080300 	bcc	2010a8 <__end+0xd40a8>
 4a4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 4a8:	00170213 	andseq	r0, r7, r3, lsl r2
 4ac:	82890900 	addhi	r0, r9, #0, 18
 4b0:	01110101 	tsteq	r1, r1, lsl #2
 4b4:	13011331 	movwne	r1, #4913	; 0x1331
 4b8:	8a0a0000 	bhi	2804c0 <__end+0x1534c0>
 4bc:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
 4c0:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
 4c4:	890b0000 	stmdbhi	fp, {}	; <UNPREDICTABLE>
 4c8:	11010182 	smlabbne	r1, r2, r1, r0
 4cc:	00133101 	andseq	r3, r3, r1, lsl #2
 4d0:	012e0c00 			; <UNDEFINED> instruction: 0x012e0c00
 4d4:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 4d8:	0b3b0b3a 	bleq	ec31c8 <__user_program+0xbc31c8>
 4dc:	13491927 	movtne	r1, #39207	; 0x9927
 4e0:	06120111 			; <UNDEFINED> instruction: 0x06120111
 4e4:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 4e8:	00130119 	andseq	r0, r3, r9, lsl r1
 4ec:	00050d00 	andeq	r0, r5, r0, lsl #26
 4f0:	0b3a0e03 	bleq	e83d04 <__user_program+0xb83d04>
 4f4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 4f8:	00001702 	andeq	r1, r0, r2, lsl #14
 4fc:	0300340e 	movweq	r3, #1038	; 0x40e
 500:	3b0b3a0e 	blcc	2ced40 <__end+0x1a1d40>
 504:	1c13490b 	ldcne	9, cr4, [r3], {11}
 508:	0f000006 	svceq	0x00000006
 50c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 510:	0b3b0b3a 	bleq	ec3200 <__user_program+0xbc3200>
 514:	17021349 	strne	r1, [r2, -r9, asr #6]
 518:	34100000 	ldrcc	r0, [r0], #-0
 51c:	3a080300 	bcc	201124 <__end+0xd4124>
 520:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 524:	00170213 	andseq	r0, r7, r3, lsl r2
 528:	82891100 	addhi	r1, r9, #0, 2
 52c:	01110001 	tsteq	r1, r1
 530:	00001331 	andeq	r1, r0, r1, lsr r3
 534:	0b000f12 	bleq	4184 <__start-0x3e7c>
 538:	0013490b 	andseq	r4, r3, fp, lsl #18
 53c:	00351300 	eorseq	r1, r5, r0, lsl #6
 540:	00001349 	andeq	r1, r0, r9, asr #6
 544:	3f012e14 	svccc	0x00012e14
 548:	3a0e0319 	bcc	3811b4 <__user_program+0x811b4>
 54c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 550:	01193c19 	tsteq	r9, r9, lsl ip
 554:	15000013 	strne	r0, [r0, #-19]	; 0xffffffed
 558:	13490005 	movtne	r0, #36869	; 0x9005
 55c:	2e160000 	cdpcs	0, 1, cr0, cr6, cr0, {0}
 560:	03193f01 	tsteq	r9, #1, 30
 564:	3b0b3a0e 	blcc	2ceda4 <__end+0x1a1da4>
 568:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 56c:	01193c13 	tsteq	r9, r3, lsl ip
 570:	17000013 	smladne	r0, r3, r0, r0
 574:	00000018 	andeq	r0, r0, r8, lsl r0
 578:	49002618 	stmdbmi	r0, {r3, r4, r9, sl, sp}
 57c:	00000013 	andeq	r0, r0, r3, lsl r0
 580:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 584:	030b130e 	movweq	r1, #45838	; 0xb30e
 588:	110e1b0e 	tstne	lr, lr, lsl #22
 58c:	10061201 	andne	r1, r6, r1, lsl #4
 590:	02000017 	andeq	r0, r0, #23
 594:	0b0b0024 	bleq	2c062c <__end+0x19362c>
 598:	0e030b3e 	vmoveq.16	d3[0], r0
 59c:	24030000 	strcs	r0, [r3], #-0
 5a0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 5a4:	0008030b 	andeq	r0, r8, fp, lsl #6
 5a8:	00160400 	andseq	r0, r6, r0, lsl #8
 5ac:	0b3a0e03 	bleq	e83dc0 <__user_program+0xb83dc0>
 5b0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 5b4:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 5b8:	03193f01 	tsteq	r9, #1, 30
 5bc:	3b0b3a0e 	blcc	2cedfc <__end+0x1a1dfc>
 5c0:	1119270b 	tstne	r9, fp, lsl #14
 5c4:	40061201 	andmi	r1, r6, r1, lsl #4
 5c8:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 5cc:	00001301 	andeq	r1, r0, r1, lsl #6
 5d0:	03000506 	movweq	r0, #1286	; 0x506
 5d4:	3b0b3a0e 	blcc	2cee14 <__end+0x1a1e14>
 5d8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 5dc:	07000017 	smladeq	r0, r7, r0, r0
 5e0:	08030034 	stmdaeq	r3, {r2, r4, r5}
 5e4:	0b3b0b3a 	bleq	ec32d4 <__user_program+0xbc32d4>
 5e8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 5ec:	34080000 	strcc	r0, [r8], #-0
 5f0:	3a0e0300 	bcc	3811f8 <__user_program+0x811f8>
 5f4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 5f8:	00170213 	andseq	r0, r7, r3, lsl r2
 5fc:	00340900 	eorseq	r0, r4, r0, lsl #18
 600:	0b3a0e03 	bleq	e83e14 <__user_program+0xb83e14>
 604:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 608:	00001802 	andeq	r1, r0, r2, lsl #16
 60c:	0182890a 	orreq	r8, r2, sl, lsl #18
 610:	31011101 	tstcc	r1, r1, lsl #2
 614:	00130113 	andseq	r0, r3, r3, lsl r1
 618:	828a0b00 	addhi	r0, sl, #0, 22
 61c:	18020001 	stmdane	r2, {r0}
 620:	00184291 	mulseq	r8, r1, r2
 624:	82890c00 	addhi	r0, r9, #0, 24
 628:	01110101 	tsteq	r1, r1, lsl #2
 62c:	00001331 	andeq	r1, r0, r1, lsr r3
 630:	4901010d 	stmdbmi	r1, {r0, r2, r3, r8}
 634:	00130113 	andseq	r0, r3, r3, lsl r1
 638:	00210e00 	eoreq	r0, r1, r0, lsl #28
 63c:	0b2f1349 	bleq	bc5368 <__user_program+0x8c5368>
 640:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
 644:	03193f01 	tsteq	r9, #1, 30
 648:	3b0b3a0e 	blcc	2cee88 <__end+0x1a1e88>
 64c:	1113490b 	tstne	r3, fp, lsl #18
 650:	40061201 	andmi	r1, r6, r1, lsl #4
 654:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 658:	00001301 	andeq	r1, r0, r1, lsl #6
 65c:	3f012e10 	svccc	0x00012e10
 660:	3a0e0319 	bcc	3812cc <__user_program+0x812cc>
 664:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 668:	11134919 	tstne	r3, r9, lsl r9
 66c:	40061201 	andmi	r1, r6, r1, lsl #4
 670:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 674:	00001301 	andeq	r1, r0, r1, lsl #6
 678:	01828911 	orreq	r8, r2, r1, lsl r9
 67c:	31011100 	mrscc	r1, (UNDEF: 17)
 680:	12000013 	andne	r0, r0, #19
 684:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 688:	0b3a0e03 	bleq	e83e9c <__user_program+0xb83e9c>
 68c:	01110b3b 	tsteq	r1, fp, lsr fp
 690:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 694:	01194297 			; <UNDEFINED> instruction: 0x01194297
 698:	13000013 	movwne	r0, #19
 69c:	08030034 	stmdaeq	r3, {r2, r4, r5}
 6a0:	0b3b0b3a 	bleq	ec3390 <__user_program+0xbc3390>
 6a4:	17021349 	strne	r1, [r2, -r9, asr #6]
 6a8:	2e140000 	cdpcs	0, 1, cr0, cr4, cr0, {0}
 6ac:	03193f01 	tsteq	r9, #1, 30
 6b0:	3b0b3a0e 	blcc	2ceef0 <__end+0x1a1ef0>
 6b4:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 6b8:	01193c13 	tsteq	r9, r3, lsl ip
 6bc:	15000013 	strne	r0, [r0, #-19]	; 0xffffffed
 6c0:	13490005 	movtne	r0, #36869	; 0x9005
 6c4:	18160000 	ldmdane	r6, {}	; <UNPREDICTABLE>
 6c8:	17000000 	strne	r0, [r0, -r0]
 6cc:	0b0b000f 	bleq	2c0710 <__end+0x193710>
 6d0:	00001349 	andeq	r1, r0, r9, asr #6
 6d4:	49002618 	stmdbmi	r0, {r3, r4, r9, sl, sp}
 6d8:	19000013 	stmdbne	r0, {r0, r1, r4}
 6dc:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 6e0:	0b3a0e03 	bleq	e83ef4 <__user_program+0xb83ef4>
 6e4:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 6e8:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 6ec:	01000000 	mrseq	r0, (UNDEF: 0)
 6f0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 6f4:	0e030b13 	vmoveq.32	d3[0], r0
 6f8:	01110e1b 	tsteq	r1, fp, lsl lr
 6fc:	17100612 			; <UNDEFINED> instruction: 0x17100612
 700:	24020000 	strcs	r0, [r2], #-0
 704:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 708:	000e030b 	andeq	r0, lr, fp, lsl #6
 70c:	00240300 	eoreq	r0, r4, r0, lsl #6
 710:	0b3e0b0b 	bleq	f83344 <__user_program+0xc83344>
 714:	00000803 	andeq	r0, r0, r3, lsl #16
 718:	03001604 	movweq	r1, #1540	; 0x604
 71c:	3b0b3a0e 	blcc	2cef5c <__end+0x1a1f5c>
 720:	0013490b 	andseq	r4, r3, fp, lsl #18
 724:	012e0500 			; <UNDEFINED> instruction: 0x012e0500
 728:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 72c:	0b3b0b3a 	bleq	ec341c <__user_program+0xbc341c>
 730:	13491927 	movtne	r1, #39207	; 0x9927
 734:	13010b20 	movwne	r0, #6944	; 0x1b20
 738:	05060000 	streq	r0, [r6, #-0]
 73c:	3a0e0300 	bcc	381344 <__user_program+0x81344>
 740:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 744:	07000013 	smladeq	r0, r3, r0, r0
 748:	0b0b000f 	bleq	2c078c <__end+0x19378c>
 74c:	00001349 	andeq	r1, r0, r9, asr #6
 750:	49003508 	stmdbmi	r0, {r3, r8, sl, ip, sp}
 754:	09000013 	stmdbeq	r0, {r0, r1, r4}
 758:	1331012e 	teqne	r1, #-2147483637	; 0x8000000b
 75c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 760:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 764:	00130119 	andseq	r0, r3, r9, lsl r1
 768:	00050a00 	andeq	r0, r5, r0, lsl #20
 76c:	17021331 	smladxne	r2, r1, r3, r1
 770:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
 774:	03193f01 	tsteq	r9, #1, 30
 778:	3b0b3a0e 	blcc	2cefb8 <__end+0x1a1fb8>
 77c:	2019270b 	andscs	r2, r9, fp, lsl #14
 780:	0013010b 	andseq	r0, r3, fp, lsl #2
 784:	00050c00 	andeq	r0, r5, r0, lsl #24
 788:	18021331 	stmdane	r2, {r0, r4, r5, r8, r9, ip}
 78c:	2e0d0000 	cdpcs	0, 0, cr0, cr13, cr0, {0}
 790:	03193f01 	tsteq	r9, #1, 30
 794:	3b0b3a0e 	blcc	2cefd4 <__end+0x1a1fd4>
 798:	1119270b 	tstne	r9, fp, lsl #14
 79c:	40061201 	andmi	r1, r6, r1, lsl #4
 7a0:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 7a4:	00001301 	andeq	r1, r0, r1, lsl #6
 7a8:	0300050e 	movweq	r0, #1294	; 0x50e
 7ac:	3b0b3a0e 	blcc	2cefec <__end+0x1a1fec>
 7b0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 7b4:	0f000018 	svceq	0x00000018
 7b8:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 7bc:	0b3b0b3a 	bleq	ec34ac <__user_program+0xbc34ac>
 7c0:	17021349 	strne	r1, [r2, -r9, asr #6]
 7c4:	34100000 	ldrcc	r0, [r0], #-0
 7c8:	3a080300 	bcc	2013d0 <__end+0xd43d0>
 7cc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 7d0:	00180213 	andseq	r0, r8, r3, lsl r2
 7d4:	011d1100 	tsteq	sp, r0, lsl #2
 7d8:	01111331 	tsteq	r1, r1, lsr r3
 7dc:	0b580612 	bleq	160202c <__user_program+0x130202c>
 7e0:	13010b59 	movwne	r0, #7001	; 0x1b59
 7e4:	1d120000 	ldcne	0, cr0, [r2, #-0]
 7e8:	11133101 	tstne	r3, r1, lsl #2
 7ec:	58061201 	stmdapl	r6, {r0, r9, ip}
 7f0:	000b590b 	andeq	r5, fp, fp, lsl #18
 7f4:	012e1300 			; <UNDEFINED> instruction: 0x012e1300
 7f8:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 7fc:	0b3b0b3a 	bleq	ec34ec <__user_program+0xbc34ec>
 800:	13491927 	movtne	r1, #39207	; 0x9927
 804:	06120111 			; <UNDEFINED> instruction: 0x06120111
 808:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 80c:	14000019 	strne	r0, [r0], #-25	; 0xffffffe7
 810:	08030005 	stmdaeq	r3, {r0, r2}
 814:	0b3b0b3a 	bleq	ec3504 <__user_program+0xbc3504>
 818:	17021349 	strne	r1, [r2, -r9, asr #6]
 81c:	01000000 	mrseq	r0, (UNDEF: 0)
 820:	06100011 			; <UNDEFINED> instruction: 0x06100011
 824:	01120111 	tsteq	r2, r1, lsl r1
 828:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 82c:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 830:	01000000 	mrseq	r0, (UNDEF: 0)
 834:	06100011 			; <UNDEFINED> instruction: 0x06100011
 838:	01120111 	tsteq	r2, r1, lsl r1
 83c:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 840:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 844:	01000000 	mrseq	r0, (UNDEF: 0)
 848:	06100011 			; <UNDEFINED> instruction: 0x06100011
 84c:	01120111 	tsteq	r2, r1, lsl r1
 850:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 854:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 858:	01000000 	mrseq	r0, (UNDEF: 0)
 85c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 860:	0e030b13 	vmoveq.32	d3[0], r0
 864:	01110e1b 	tsteq	r1, fp, lsl lr
 868:	17100612 			; <UNDEFINED> instruction: 0x17100612
 86c:	24020000 	strcs	r0, [r2], #-0
 870:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 874:	000e030b 	andeq	r0, lr, fp, lsl #6
 878:	012e0300 			; <UNDEFINED> instruction: 0x012e0300
 87c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 880:	0b3b0b3a 	bleq	ec3570 <__user_program+0xbc3570>
 884:	13491927 	movtne	r1, #39207	; 0x9927
 888:	06120111 			; <UNDEFINED> instruction: 0x06120111
 88c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 890:	00130119 	andseq	r0, r3, r9, lsl r1
 894:	00050400 	andeq	r0, r5, r0, lsl #8
 898:	0b3a0803 	bleq	e828ac <__user_program+0xb828ac>
 89c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 8a0:	00001702 	andeq	r1, r0, r2, lsl #14
 8a4:	03000505 	movweq	r0, #1285	; 0x505
 8a8:	3b0b3a0e 	blcc	2cf0e8 <__end+0x1a20e8>
 8ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 8b0:	06000018 			; <UNDEFINED> instruction: 0x06000018
 8b4:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 8b8:	0b3b0b3a 	bleq	ec35a8 <__user_program+0xbc35a8>
 8bc:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 8c0:	89070000 	stmdbhi	r7, {}	; <UNPREDICTABLE>
 8c4:	11010182 	smlabbne	r1, r2, r1, r0
 8c8:	00133101 	andseq	r3, r3, r1, lsl #2
 8cc:	828a0800 	addhi	r0, sl, #0, 16
 8d0:	18020001 	stmdane	r2, {r0}
 8d4:	00184291 	mulseq	r8, r1, r2
 8d8:	000f0900 	andeq	r0, pc, r0, lsl #18
 8dc:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 8e0:	2e0a0000 	cdpcs	0, 0, cr0, cr10, cr0, {0}
 8e4:	03193f01 	tsteq	r9, #1, 30
 8e8:	3b0b3a0e 	blcc	2cf128 <__end+0x1a2128>
 8ec:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 8f0:	01193c13 	tsteq	r9, r3, lsl ip
 8f4:	0b000013 	bleq	948 <__start-0x76b8>
 8f8:	13490005 	movtne	r0, #36869	; 0x9005
 8fc:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 900:	03193f01 	tsteq	r9, #1, 30
 904:	3b0b3a0e 	blcc	2cf144 <__end+0x1a2144>
 908:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 90c:	00193c13 	andseq	r3, r9, r3, lsl ip
 910:	11010000 	mrsne	r0, (UNDEF: 1)
 914:	11061000 	mrsne	r1, (UNDEF: 6)
 918:	03011201 	movweq	r1, #4609	; 0x1201
 91c:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 920:	00051308 	andeq	r1, r5, r8, lsl #6
 924:	11010000 	mrsne	r0, (UNDEF: 1)
 928:	130e2501 	movwne	r2, #58625	; 0xe501
 92c:	1b0e030b 	blne	381560 <__user_program+0x81560>
 930:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 934:	00171006 	andseq	r1, r7, r6
 938:	00240200 	eoreq	r0, r4, r0, lsl #4
 93c:	0b3e0b0b 	bleq	f83570 <__user_program+0xc83570>
 940:	00000e03 	andeq	r0, r0, r3, lsl #28
 944:	0b002403 	bleq	9958 <__clzsi2+0x7d8>
 948:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 94c:	04000008 	streq	r0, [r0], #-8
 950:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 954:	0b3b0b3a 	bleq	ec3644 <__user_program+0xbc3644>
 958:	00001349 	andeq	r1, r0, r9, asr #6
 95c:	03011305 	movweq	r1, #4869	; 0x1305
 960:	3a0b0b0e 	bcc	2c35a0 <__end+0x1965a0>
 964:	01053b0b 	tsteq	r5, fp, lsl #22
 968:	06000013 			; <UNDEFINED> instruction: 0x06000013
 96c:	0803000d 	stmdaeq	r3, {r0, r2, r3}
 970:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 974:	0b381349 	bleq	e056a0 <__user_program+0xb056a0>
 978:	0d070000 	stceq	0, cr0, [r7, #-0]
 97c:	3a0e0300 	bcc	381584 <__user_program+0x81584>
 980:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 984:	000b3813 	andeq	r3, fp, r3, lsl r8
 988:	01170800 	tsteq	r7, r0, lsl #16
 98c:	0b3a0b0b 	bleq	e835c0 <__user_program+0xb835c0>
 990:	1301053b 	movwne	r0, #5435	; 0x153b
 994:	0d090000 	stceq	0, cr0, [r9, #-0]
 998:	3a080300 	bcc	2015a0 <__end+0xd45a0>
 99c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 9a0:	0a000013 	beq	9f4 <__start-0x760c>
 9a4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 9a8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9ac:	00001349 	andeq	r1, r0, r9, asr #6
 9b0:	03012e0b 	movweq	r2, #7691	; 0x1e0b
 9b4:	3b0b3a0e 	blcc	2cf1f4 <__end+0x1a21f4>
 9b8:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
 9bc:	010b2013 	tsteq	fp, r3, lsl r0
 9c0:	0c000013 	stceq	0, cr0, [r0], {19}
 9c4:	08030005 	stmdaeq	r3, {r0, r2}
 9c8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9cc:	00001349 	andeq	r1, r0, r9, asr #6
 9d0:	0300340d 	movweq	r3, #1037	; 0x40d
 9d4:	3b0b3a08 	blcc	2cf1fc <__end+0x1a21fc>
 9d8:	00134905 	andseq	r4, r3, r5, lsl #18
 9dc:	000f0e00 	andeq	r0, pc, r0, lsl #28
 9e0:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 9e4:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
 9e8:	03193f01 	tsteq	r9, #1, 30
 9ec:	3b0b3a0e 	blcc	2cf22c <__end+0x1a222c>
 9f0:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
 9f4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 9f8:	96184006 	ldrls	r4, [r8], -r6
 9fc:	00001942 	andeq	r1, r0, r2, asr #18
 a00:	03000510 	movweq	r0, #1296	; 0x510
 a04:	3b0b3a08 	blcc	2cf22c <__end+0x1a222c>
 a08:	02134905 	andseq	r4, r3, #81920	; 0x14000
 a0c:	11000017 	tstne	r0, r7, lsl r0
 a10:	08030034 	stmdaeq	r3, {r2, r4, r5}
 a14:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 a18:	17021349 	strne	r1, [r2, -r9, asr #6]
 a1c:	1d120000 	ldcne	0, cr0, [r2, #-0]
 a20:	11133101 	tstne	r3, r1, lsl #2
 a24:	58061201 	stmdapl	r6, {r0, r9, ip}
 a28:	0005590b 	andeq	r5, r5, fp, lsl #18
 a2c:	00051300 	andeq	r1, r5, r0, lsl #6
 a30:	17021331 	smladxne	r2, r1, r3, r1
 a34:	0b140000 	bleq	500a3c <__user_program+0x200a3c>
 a38:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 a3c:	15000006 	strne	r0, [r0, #-6]
 a40:	13310034 	teqne	r1, #52	; 0x34
 a44:	00001702 	andeq	r1, r0, r2, lsl #14
 a48:	01110100 	tsteq	r1, r0, lsl #2
 a4c:	0b130e25 	bleq	4c42e8 <__user_program+0x1c42e8>
 a50:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 a54:	06120111 			; <UNDEFINED> instruction: 0x06120111
 a58:	00001710 	andeq	r1, r0, r0, lsl r7
 a5c:	0b002402 	bleq	9a6c <__clzsi2+0x8ec>
 a60:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 a64:	0300000e 	movweq	r0, #14
 a68:	0b0b0024 	bleq	2c0b00 <__end+0x193b00>
 a6c:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 a70:	16040000 	strne	r0, [r4], -r0
 a74:	3a0e0300 	bcc	38167c <__user_program+0x8167c>
 a78:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 a7c:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 a80:	0e03012e 	adfeqsp	f0, f3, #0.5
 a84:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 a88:	13491927 	movtne	r1, #39207	; 0x9927
 a8c:	13010b20 	movwne	r0, #6944	; 0x1b20
 a90:	05060000 	streq	r0, [r6, #-0]
 a94:	3a080300 	bcc	20169c <__end+0xd469c>
 a98:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 a9c:	07000013 	smladeq	r0, r3, r0, r0
 aa0:	08030034 	stmdaeq	r3, {r2, r4, r5}
 aa4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 aa8:	00001349 	andeq	r1, r0, r9, asr #6
 aac:	0b000f08 	bleq	46d4 <__start-0x392c>
 ab0:	0013490b 	andseq	r4, r3, fp, lsl #18
 ab4:	012e0900 			; <UNDEFINED> instruction: 0x012e0900
 ab8:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 abc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 ac0:	13491927 	movtne	r1, #39207	; 0x9927
 ac4:	06120111 			; <UNDEFINED> instruction: 0x06120111
 ac8:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 acc:	0a000019 	beq	b38 <__start-0x74c8>
 ad0:	08030005 	stmdaeq	r3, {r0, r2}
 ad4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 ad8:	17021349 	strne	r1, [r2, -r9, asr #6]
 adc:	1d0b0000 	stcne	0, cr0, [fp, #-0]
 ae0:	52133101 	andspl	r3, r3, #1073741824	; 0x40000000
 ae4:	58175501 	ldmdapl	r7, {r0, r8, sl, ip, lr}
 ae8:	0005590b 	andeq	r5, r5, fp, lsl #18
 aec:	00050c00 	andeq	r0, r5, r0, lsl #24
 af0:	0b1c1331 	bleq	7057bc <__user_program+0x4057bc>
 af4:	050d0000 	streq	r0, [sp, #-0]
 af8:	02133100 	andseq	r3, r3, #0, 2
 afc:	0e000017 	mcreq	0, 0, r0, cr0, cr7, {0}
 b00:	1755010b 	ldrbne	r0, [r5, -fp, lsl #2]
 b04:	340f0000 	strcc	r0, [pc], #-0	; b0c <__start-0x74f4>
 b08:	02133100 	andseq	r3, r3, #0, 2
 b0c:	00000017 	andeq	r0, r0, r7, lsl r0
 b10:	10001101 	andne	r1, r0, r1, lsl #2
 b14:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 b18:	1b080301 	blne	201724 <__end+0xd4724>
 b1c:	13082508 	movwne	r2, #34056	; 0x8508
 b20:	00000005 	andeq	r0, r0, r5
 b24:	10001101 	andne	r1, r0, r1, lsl #2
 b28:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 b2c:	1b080301 	blne	201738 <__end+0xd4738>
 b30:	13082508 	movwne	r2, #34056	; 0x8508
 b34:	00000005 	andeq	r0, r0, r5

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
  34:	00000050 	andeq	r0, r0, r0, asr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02ba0002 	adcseq	r0, sl, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	000083c4 	andeq	r8, r0, r4, asr #7
  54:	00000298 	muleq	r0, r8, r2
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	05ae0002 	streq	r0, [lr, #2]!
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	0000865c 	andeq	r8, r0, ip, asr r6
  74:	000000f8 	strdeq	r0, [r0], -r8
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	074e0002 	strbeq	r0, [lr, -r2]
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	00008754 	andeq	r8, r0, r4, asr r7
  94:	000002e0 	andeq	r0, r0, r0, ror #5
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	0c490002 	mcrreq	0, 0, r0, r9, cr2
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008a34 	andeq	r8, r0, r4, lsr sl
  b4:	0000034c 	andeq	r0, r0, ip, asr #6
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	12310002 	eorsne	r0, r1, #2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008d80 	andeq	r8, r0, r0, lsl #27
  d4:	00000038 	andeq	r0, r0, r8, lsr r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	13e70002 	mvnne	r0, #2
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008000 	andeq	r8, r0, r0
  f4:	00000054 	andeq	r0, r0, r4, asr r0
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	14520002 	ldrbne	r0, [r2], #-2
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008db8 			; <UNDEFINED> instruction: 0x00008db8
 114:	00000044 	andeq	r0, r0, r4, asr #32
	...
 120:	0000001c 	andeq	r0, r0, ip, lsl r0
 124:	14bc0002 	ldrtne	r0, [ip], #2
 128:	00040000 	andeq	r0, r4, r0
 12c:	00000000 	andeq	r0, r0, r0
 130:	00008dfc 	strdeq	r8, [r0], -ip
 134:	0000003c 	andeq	r0, r0, ip, lsr r0
	...
 140:	0000001c 	andeq	r0, r0, ip, lsl r0
 144:	15660002 	strbne	r0, [r6, #-2]!
 148:	00040000 	andeq	r0, r4, r0
 14c:	00000000 	andeq	r0, r0, r0
 150:	00008e38 	andeq	r8, r0, r8, lsr lr
 154:	00000084 	andeq	r0, r0, r4, lsl #1
	...
 160:	0000001c 	andeq	r0, r0, ip, lsl r0
 164:	16ca0002 	strbne	r0, [sl], r2
 168:	00040000 	andeq	r0, r4, r0
 16c:	00000000 	andeq	r0, r0, r0
 170:	00008ebc 			; <UNDEFINED> instruction: 0x00008ebc
 174:	00000004 	andeq	r0, r0, r4
	...
 180:	0000001c 	andeq	r0, r0, ip, lsl r0
 184:	17780002 	ldrbne	r0, [r8, -r2]!
 188:	00040000 	andeq	r0, r4, r0
 18c:	00000000 	andeq	r0, r0, r0
 190:	00008ec0 	andeq	r8, r0, r0, asr #29
 194:	00000178 	andeq	r0, r0, r8, ror r1
	...
 1a0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1a4:	19e10002 	stmibne	r1!, {r1}^
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	00009038 	andeq	r9, r0, r8, lsr r0
 1b4:	00000120 	andeq	r0, r0, r0, lsr #2
	...
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	1ba80002 	blne	fea001d4 <__user_program+0xfe7001d4>
 1c8:	00040000 	andeq	r0, r4, r0
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	00009158 	andeq	r9, r0, r8, asr r1
 1d4:	00000028 	andeq	r0, r0, r8, lsr #32
	...
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	1c560002 	mrrcne	0, 0, r0, r6, cr2
 1e8:	00040000 	andeq	r0, r4, r0
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	00009180 	andeq	r9, r0, r0, lsl #3
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
  94:	00bb0101 	adcseq	r0, fp, r1, lsl #2
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
 148:	4b49324d 	blmi	124ca84 <__user_program+0xf4ca84>
 14c:	4b4d4b67 	blmi	1352ef0 <__user_program+0x1052ef0>
 150:	01000402 	tsteq	r0, r2, lsl #8
 154:	0000fa01 	andeq	pc, r0, r1, lsl #20
 158:	95000200 	strls	r0, [r0, #-512]	; 0xfffffe00
 15c:	02000000 	andeq	r0, r0, #0
 160:	0d0efb01 	vstreq	d15, [lr, #-4]
 164:	01010100 	mrseq	r0, (UNDEF: 17)
 168:	00000001 	andeq	r0, r0, r1
 16c:	01000001 	tsteq	r0, r1
 170:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 174:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 178:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 17c:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 180:	2f726f74 	svccs	0x00726f74
 184:	00637273 	rsbeq	r7, r3, r3, ror r2
 188:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 18c:	2f6b6269 	svccs	0x006b6269
 190:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 194:	00656475 	rsbeq	r6, r5, r5, ror r4
 198:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 19c:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 1a0:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 1a4:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 1a8:	2f726f74 	svccs	0x00726f74
 1ac:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 1b0:	00656475 	rsbeq	r6, r5, r5, ror r4
 1b4:	69727000 	ldmdbvs	r2!, {ip, sp, lr}^
 1b8:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 1bc:	00010063 	andeq	r0, r1, r3, rrx
 1c0:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xfffff500
 1c4:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 1c8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 1cc:	736b0000 	cmnvc	fp, #0
 1d0:	72616474 	rsbvc	r6, r1, #116, 8	; 0x74000000
 1d4:	00682e67 	rsbeq	r2, r8, r7, ror #28
 1d8:	3c000002 	stccc	0, cr0, [r0], {2}
 1dc:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 1e0:	6e692d74 	mcrvs	13, 3, r2, cr9, cr4, {3}
 1e4:	0000003e 	andeq	r0, r0, lr, lsr r0
 1e8:	72617500 	rsbvc	r7, r1, #0, 10
 1ec:	00682e74 	rsbeq	r2, r8, r4, ror lr
 1f0:	00000003 	andeq	r0, r0, r3
 1f4:	c4020500 	strgt	r0, [r2], #-1280	; 0xfffffb00
 1f8:	03000083 	movweq	r0, #131	; 0x83
 1fc:	4d880120 	stfmis	f0, [r8, #128]	; 0x80
 200:	0402009c 	streq	r0, [r2], #-156	; 0xffffff64
 204:	02004c01 	andeq	r4, r0, #256	; 0x100
 208:	00330104 	eorseq	r0, r3, r4, lsl #2
 20c:	08010402 	stmdaeq	r1, {r1, sl}
 210:	04020059 	streq	r0, [r2], #-89	; 0xffffffa7
 214:	4b4dd701 	blmi	1375e20 <__user_program+0x1075e20>
 218:	872d9b6a 	strhi	r9, [sp, -sl, ror #22]!
 21c:	854d6949 	strbhi	r6, [sp, #-2377]	; 0xfffff6b7
 220:	514a2003 	cmppl	sl, r3
 224:	302e5c03 	eorcc	r5, lr, r3, lsl #24
 228:	02324b4b 	eorseq	r4, r2, #76800	; 0x12c00
 22c:	4b83152c 	blmi	fe0c56e4 <__user_program+0xfddc56e4>
 230:	67a4a04b 	strvs	sl, [r4, fp, asr #32]!
 234:	83673283 	cmnhi	r7, #805306376	; 0x30000008
 238:	32836733 	addcc	r6, r3, #13369344	; 0xcc0000
 23c:	8a2d6783 	bhi	b5a050 <__user_program+0x85a050>
 240:	4b324b67 	blmi	c92fe4 <__user_program+0x992fe4>
 244:	bf034d33 	svclt	0x00034d33
 248:	c6032e7f 			; <UNDEFINED> instruction: 0xc6032e7f
 24c:	08026600 	stmdaeq	r2, {r9, sl, sp, lr}
 250:	b9010100 	stmdblt	r1, {r8}
 254:	02000000 	andeq	r0, r0, #0
 258:	00008400 	andeq	r8, r0, r0, lsl #8
 25c:	fb010200 	blx	40a66 <__bss_end+0x34a66>
 260:	01000d0e 	tsteq	r0, lr, lsl #26
 264:	00010101 	andeq	r0, r1, r1, lsl #2
 268:	00010000 	andeq	r0, r1, r0
 26c:	656b0100 	strbvs	r0, [fp, #-256]!	; 0xffffff00
 270:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 274:	616c635f 	cmnvs	ip, pc, asr r3
 278:	74656470 	strbtvc	r6, [r5], #-1136	; 0xfffffb90
 27c:	6f746365 	svcvs	0x00746365
 280:	72732f72 	rsbsvc	r2, r3, #456	; 0x1c8
 284:	34330063 	ldrtcc	r0, [r3], #-99	; 0xffffff9d
 288:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
 28c:	6e692f6b 	cdpvs	15, 6, cr2, cr9, cr11, {3}
 290:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 294:	656b0065 	strbvs	r0, [fp, #-101]!	; 0xffffff9b
 298:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 29c:	616c635f 	cmnvs	ip, pc, asr r3
 2a0:	74656470 	strbtvc	r6, [r5], #-1136	; 0xfffffb90
 2a4:	6f746365 	svcvs	0x00746365
 2a8:	6e692f72 	mcrvs	15, 3, r2, cr9, cr2, {3}
 2ac:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 2b0:	75000065 	strvc	r0, [r0, #-101]	; 0xffffff9b
 2b4:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
 2b8:	00010063 	andeq	r0, r1, r3, rrx
 2bc:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xfffff500
 2c0:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 2c4:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 2c8:	70670000 	rsbvc	r0, r7, r0
 2cc:	682e6f69 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}
 2d0:	00000200 	andeq	r0, r0, r0, lsl #4
 2d4:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 2d8:	682e6b74 	stmdavs	lr!, {r2, r4, r5, r6, r8, r9, fp, sp, lr}
 2dc:	00000300 	andeq	r0, r0, r0, lsl #6
 2e0:	02050000 	andeq	r0, r5, #0
 2e4:	0000865c 	andeq	r8, r0, ip, asr r6
 2e8:	31012503 	tstcc	r1, r3, lsl #10
 2ec:	69676967 	stmdbvs	r7!, {r0, r1, r2, r5, r6, r8, fp, sp, lr}^
 2f0:	6b4c4ca0 	blvs	1313578 <__user_program+0x1013578>
 2f4:	1587a015 	strne	sl, [r7, #21]
 2f8:	01040200 	mrseq	r0, R12_usr
 2fc:	6a064a06 	bvs	192b1c <__end+0x65b1c>
 300:	4c2f2f87 	stcmi	15, cr2, [pc], #-540	; ec <__start-0x7f14>
 304:	4b4b2f48 	blmi	12cc02c <__user_program+0xfcc02c>
 308:	02676d2b 	rsbeq	r6, r7, #2752	; 0xac0
 30c:	01010002 	tsteq	r1, r2
 310:	00000106 	andeq	r0, r0, r6, lsl #2
 314:	00970002 	addseq	r0, r7, r2
 318:	01020000 	mrseq	r0, (UNDEF: 2)
 31c:	000d0efb 	strdeq	r0, [sp], -fp
 320:	01010101 	tsteq	r1, r1, lsl #2
 324:	01000000 	mrseq	r0, (UNDEF: 0)
 328:	6b010000 	blvs	40330 <__bss_end+0x34330>
 32c:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 330:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 334:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 338:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 33c:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 340:	33006372 	movwcc	r6, #882	; 0x372
 344:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 348:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 34c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 350:	6b006564 	blvs	198e8 <__bss_end+0xd8e8>
 354:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 358:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 35c:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 360:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 364:	692f726f 	stmdbvs	pc!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
 368:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 36c:	00006564 	andeq	r6, r0, r4, ror #10
 370:	2e633269 	cdpcs	2, 6, cr3, cr3, cr9, {3}
 374:	00010063 	andeq	r0, r1, r3, rrx
 378:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xfffff500
 37c:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 380:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 384:	70670000 	rsbvc	r0, r7, r0
 388:	682e6f69 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}
 38c:	00000200 	andeq	r0, r0, r0, lsl #4
 390:	6c697475 	cfstrdvs	mvd7, [r9], #-468	; 0xfffffe2c
 394:	00682e73 	rsbeq	r2, r8, r3, ror lr
 398:	70000003 	andvc	r0, r0, r3
 39c:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
 3a0:	00682e6b 	rsbeq	r2, r8, fp, ror #28
 3a4:	69000003 	stmdbvs	r0, {r0, r1}
 3a8:	682e6332 	stmdavs	lr!, {r1, r4, r5, r8, r9, sp, lr}
 3ac:	00000300 	andeq	r0, r0, r0, lsl #6
 3b0:	02050000 	andeq	r0, r5, #0
 3b4:	00008754 	andeq	r8, r0, r4, asr r7
 3b8:	32011003 	andcc	r1, r1, #3
 3bc:	0f038767 	svceq	0x00038767
 3c0:	8484a082 	strhi	sl, [r4], #130	; 0x82
 3c4:	2aa0a085 	bcs	fe8285e0 <__user_program+0xfe5285e0>
 3c8:	86ba0903 	ldrthi	r0, [sl], r3, lsl #18
 3cc:	84342c84 	ldrthi	r2, [r4], #-3204	; 0xfffff37c
 3d0:	01040200 	mrseq	r0, R12_usr
 3d4:	4ca1be86 	stcmi	14, cr11, [r1], #536	; 0x218
 3d8:	84bc3589 	ldrthi	r3, [ip], #1417	; 0x589
 3dc:	70038684 	andvc	r8, r3, r4, lsl #13
 3e0:	2e140366 	cdpcs	3, 1, cr0, cr4, cr6, {3}
 3e4:	4a7a0350 	bmi	1e8112c <__user_program+0x1b8112c>
 3e8:	7a036934 	bvc	da8c0 <__bss_end+0xce8c0>
 3ec:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
 3f0:	064a0601 	strbeq	r0, [sl], -r1, lsl #12
 3f4:	0a03857f 	beq	e19f8 <__bss_end+0xd59f8>
 3f8:	a06b9f9e 	mlsge	fp, lr, pc, r9	; <UNPREDICTABLE>
 3fc:	624c644c 	subvs	r6, ip, #76, 8	; 0x4c000000
 400:	01040200 	mrseq	r0, R12_usr
 404:	03064a06 	movweq	r4, #27142	; 0x6a06
 408:	2c84820a 	sfmcs	f0, 1, [r4], {10}
 40c:	02008434 	andeq	r8, r0, #52, 8	; 0x34000000
 410:	be850104 	rmflts	f0, f5, f4
 414:	000402a2 	andeq	r0, r4, r2, lsr #5
 418:	00fa0101 	rscseq	r0, sl, r1, lsl #2
 41c:	00020000 	andeq	r0, r2, r0
 420:	00000086 	andeq	r0, r0, r6, lsl #1
 424:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 428:	0101000d 	tsteq	r1, sp
 42c:	00000101 	andeq	r0, r0, r1, lsl #2
 430:	00000100 	andeq	r0, r0, r0, lsl #2
 434:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 438:	5f6c656e 	svcpl	0x006c656e
 43c:	70616c63 	rsbvc	r6, r1, r3, ror #24
 440:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 444:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 448:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 44c:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 450:	6b62696c 	blvs	189aa08 <__user_program+0x159aa08>
 454:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 458:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 45c:	72656b00 	rsbvc	r6, r5, #0, 22
 460:	5f6c656e 	svcpl	0x006c656e
 464:	70616c63 	rsbvc	r6, r1, r3, ror #24
 468:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 46c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 470:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 474:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 478:	64610000 	strbtvs	r0, [r1], #-0
 47c:	31303173 	teqcc	r0, r3, ror r1
 480:	00632e35 	rsbeq	r2, r3, r5, lsr lr
 484:	6b000001 	blvs	490 <__start-0x7b70>
 488:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 48c:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 490:	00000200 	andeq	r0, r0, r0, lsl #4
 494:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 498:	682e6b74 	stmdavs	lr!, {r2, r4, r5, r6, r8, r9, fp, sp, lr}
 49c:	00000300 	andeq	r0, r0, r0, lsl #6
 4a0:	2e633269 	cdpcs	2, 6, cr3, cr3, cr9, {3}
 4a4:	00030068 	andeq	r0, r3, r8, rrx
 4a8:	05000000 	streq	r0, [r0, #-0]
 4ac:	008a3402 	addeq	r3, sl, r2, lsl #8
 4b0:	010f0300 	mrseq	r0, SP_hyp
 4b4:	2f4b4b6c 	svccs	0x004b4b6c
 4b8:	6b85bb6b 	blvs	fe16f26c <__user_program+0xfde6f26c>
 4bc:	68bb4b67 	ldmvs	fp!, {r0, r1, r2, r5, r6, r8, r9, fp, lr}
 4c0:	514e844b 	cmppl	lr, fp, asr #8
 4c4:	bb6c9f68 	bllt	1b2826c <__user_program+0x182826c>
 4c8:	03696969 	cmneq	r9, #1720320	; 0x1a4000
 4cc:	4b674a0a 	blmi	19d2cfc <__user_program+0x16d2cfc>
 4d0:	876768bb 			; <UNDEFINED> instruction: 0x876768bb
 4d4:	67838467 	strvs	r8, [r3, r7, ror #8]
 4d8:	83844b86 	orrhi	r4, r4, #137216	; 0x21800
 4dc:	4f4d8467 	svcmi	0x004d8467
 4e0:	2f4cd9a0 	svccs	0x004cd9a0
 4e4:	79032f2f 	stmdbvc	r3, {r0, r1, r2, r3, r5, r8, r9, sl, fp, sp}
 4e8:	2e0c032e 	cdpcs	3, 0, cr0, cr12, cr14, {1}
 4ec:	7a03682f 	bvc	da5b0 <__bss_end+0xce5b0>
 4f0:	2f30364a 	svccs	0x0030364a
 4f4:	49308467 	ldmdbmi	r0!, {r0, r1, r2, r5, r6, sl, pc}
 4f8:	462e0d03 	strtmi	r0, [lr], -r3, lsl #26
 4fc:	344a7703 	strbcc	r7, [sl], #-1795	; 0xfffff8fd
 500:	31654c83 	cmncc	r5, r3, lsl #25
 504:	0200654c 	andeq	r6, r0, #76, 10	; 0x13000000
 508:	79030204 	stmdbvc	r3, {r2, r9}
 50c:	4a0b032e 	bmi	2c11cc <__end+0x1941cc>
 510:	024bbb2f 	subeq	fp, fp, #48128	; 0xbc00
 514:	01010008 	tsteq	r1, r8
 518:	00000079 	andeq	r0, r0, r9, ror r0
 51c:	00530002 	subseq	r0, r3, r2
 520:	01020000 	mrseq	r0, (UNDEF: 2)
 524:	000d0efb 	strdeq	r0, [sp], -fp
 528:	01010101 	tsteq	r1, r1, lsl #2
 52c:	01000000 	mrseq	r0, (UNDEF: 0)
 530:	6b010000 	blvs	40538 <__bss_end+0x34538>
 534:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 538:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 53c:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 540:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 544:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 548:	33006372 	movwcc	r6, #882	; 0x372
 54c:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 550:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 554:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 558:	00006564 	andeq	r6, r0, r4, ror #10
 55c:	6c697475 	cfstrdvs	mvd7, [r9], #-468	; 0xfffffe2c
 560:	00632e73 	rsbeq	r2, r3, r3, ror lr
 564:	6b000001 	blvs	570 <__start-0x7a90>
 568:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 56c:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 570:	00000200 	andeq	r0, r0, r0, lsl #4
 574:	02050000 	andeq	r0, r5, #0
 578:	00008d80 	andeq	r8, r0, r0, lsl #27
 57c:	302f1315 	eorcc	r1, pc, r5, lsl r3	; <UNPREDICTABLE>
 580:	78034e13 	stmdavc	r3, {r0, r1, r4, r9, sl, fp, lr}
 584:	2e0a0301 	cdpcs	3, 0, cr0, cr10, cr1, {0}
 588:	03667a03 	cmneq	r6, #12288	; 0x3000
 58c:	4b134a0b 	blmi	4d2dc0 <__user_program+0x1d2dc0>
 590:	01000402 	tsteq	r0, r2, lsl #8
 594:	00005401 	andeq	r5, r0, r1, lsl #8
 598:	29000200 	stmdbcs	r0, {r9}
 59c:	02000000 	andeq	r0, r0, #0
 5a0:	0d0efb01 	vstreq	d15, [lr, #-4]
 5a4:	01010100 	mrseq	r0, (UNDEF: 17)
 5a8:	00000001 	andeq	r0, r0, r1
 5ac:	01000001 	tsteq	r0, r1
 5b0:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 5b4:	2f6b6269 	svccs	0x006b6269
 5b8:	00637273 	rsbeq	r7, r3, r3, ror r2
 5bc:	6f6f6200 	svcvs	0x006f6200
 5c0:	00532e74 	subseq	r2, r3, r4, ror lr
 5c4:	00000001 	andeq	r0, r0, r1
 5c8:	00020500 	andeq	r0, r2, r0, lsl #10
 5cc:	03000080 	movweq	r0, #128	; 0x80
 5d0:	2f2f011b 	svccs	0x002f011b
 5d4:	2f2f302f 	svccs	0x002f302f
 5d8:	2f2f2f2f 	svccs	0x002f2f2f
 5dc:	312f2f31 			; <UNDEFINED> instruction: 0x312f2f31
 5e0:	69032f33 	stmdbvs	r3, {r0, r1, r4, r5, r8, r9, sl, fp, sp}
 5e4:	2f2f312e 	svccs	0x002f312e
 5e8:	01000202 	tsteq	r0, r2, lsl #4
 5ec:	00004d01 	andeq	r4, r0, r1, lsl #26
 5f0:	28000200 	stmdacs	r0, {r9}
 5f4:	02000000 	andeq	r0, r0, #0
 5f8:	0d0efb01 	vstreq	d15, [lr, #-4]
 5fc:	01010100 	mrseq	r0, (UNDEF: 17)
 600:	00000001 	andeq	r0, r0, r1
 604:	01000001 	tsteq	r0, r1
 608:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 60c:	2f6b6269 	svccs	0x006b6269
 610:	00637273 	rsbeq	r7, r3, r3, ror r2
 614:	6d726100 	ldfvse	f6, [r2, #-0]
 618:	0100532e 	tsteq	r0, lr, lsr #6
 61c:	00000000 	andeq	r0, r0, r0
 620:	8db80205 	lfmhi	f0, 4, [r8, #20]!
 624:	10030000 	andne	r0, r3, r0
 628:	332f2f01 			; <UNDEFINED> instruction: 0x332f2f01
 62c:	332f332f 			; <UNDEFINED> instruction: 0x332f332f
 630:	2f2f2f2f 	svccs	0x002f2f2f
 634:	2f2f2f33 	svccs	0x002f2f33
 638:	0002022f 	andeq	r0, r2, pc, lsr #4
 63c:	005a0101 	subseq	r0, sl, r1, lsl #2
 640:	00020000 	andeq	r0, r2, r0
 644:	0000003d 	andeq	r0, r0, sp, lsr r0
 648:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 64c:	0101000d 	tsteq	r1, sp
 650:	00000101 	andeq	r0, r0, r1, lsl #2
 654:	00000100 	andeq	r0, r0, r0, lsl #2
 658:	2f2e2e01 	svccs	0x002e2e01
 65c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 660:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 664:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 668:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 66c:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 670:	2f676966 	svccs	0x00676966
 674:	006d7261 	rsbeq	r7, sp, r1, ror #4
 678:	61706200 	cmnvs	r0, r0, lsl #4
 67c:	532e6962 			; <UNDEFINED> instruction: 0x532e6962
 680:	00000100 	andeq	r0, r0, r0, lsl #2
 684:	02050000 	andeq	r0, r5, #0
 688:	00008dfc 	strdeq	r8, [r0], -ip
 68c:	01019b03 	tsteq	r1, r3, lsl #22
 690:	2f3133f4 	svccs	0x003133f4
 694:	022f2f2f 	eoreq	r2, pc, #47, 30	; 0xbc
 698:	01010002 	tsteq	r1, r2
 69c:	0000005b 	andeq	r0, r0, fp, asr r0
 6a0:	003d0002 	eorseq	r0, sp, r2
 6a4:	01020000 	mrseq	r0, (UNDEF: 2)
 6a8:	000d0efb 	strdeq	r0, [sp], -fp
 6ac:	01010101 	tsteq	r1, r1, lsl #2
 6b0:	01000000 	mrseq	r0, (UNDEF: 0)
 6b4:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 6b8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 6bc:	2f2e2e2f 	svccs	0x002e2e2f
 6c0:	2f637273 	svccs	0x00637273
 6c4:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 6c8:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 6cc:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 6d0:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 6d4:	6200006d 	andvs	r0, r0, #109	; 0x6d
 6d8:	69626170 	stmdbvs	r2!, {r4, r5, r6, r8, sp, lr}^
 6dc:	0100632e 	tsteq	r0, lr, lsr #6
 6e0:	00000000 	andeq	r0, r0, r0
 6e4:	8e380205 	cdphi	2, 3, cr0, cr8, cr5, {0}
 6e8:	25030000 	strcs	r0, [r3, #-0]
 6ec:	4ba12e01 	blmi	fe84bef8 <__user_program+0xfe54bef8>
 6f0:	a12e50d8 	ldrdge	r5, [lr, -r8]!
 6f4:	0402d82f 	streq	sp, [r2], #-2095	; 0xfffff7d1
 6f8:	57010100 	strpl	r0, [r1, -r0, lsl #2]
 6fc:	02000000 	andeq	r0, r0, #0
 700:	00004100 	andeq	r4, r0, r0, lsl #2
 704:	fb010200 	blx	40f0e <__bss_end+0x34f0e>
 708:	01000d0e 	tsteq	r0, lr, lsl #26
 70c:	00010101 	andeq	r0, r1, r1, lsl #2
 710:	00010000 	andeq	r0, r1, r0
 714:	2e2e0100 	sufcse	f0, f6, f0
 718:	2f2e2e2f 	svccs	0x002e2e2f
 71c:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 720:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 560 <__start-0x7aa0>
 724:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 728:	6f632f63 	svcvs	0x00632f63
 72c:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 730:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 734:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 738:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
 73c:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 740:	00010053 	andeq	r0, r1, r3, asr r0
 744:	05000000 	streq	r0, [r0, #-0]
 748:	008ebc02 	addeq	fp, lr, r2, lsl #24
 74c:	0bae0300 	bleq	feb81354 <__user_program+0xfe881354>
 750:	00020201 	andeq	r0, r2, r1, lsl #4
 754:	00940101 	addseq	r0, r4, r1, lsl #2
 758:	00020000 	andeq	r0, r2, r0
 75c:	00000041 	andeq	r0, r0, r1, asr #32
 760:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 764:	0101000d 	tsteq	r1, sp
 768:	00000101 	andeq	r0, r0, r1, lsl #2
 76c:	00000100 	andeq	r0, r0, r0, lsl #2
 770:	2f2e2e01 	svccs	0x002e2e01
 774:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 778:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 77c:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 780:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 784:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 788:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 78c:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 790:	6c000001 	stcvs	0, cr0, [r0], {1}
 794:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 798:	682e3263 	stmdavs	lr!, {r0, r1, r5, r6, r9, ip, sp}
 79c:	00000100 	andeq	r0, r0, r0, lsl #2
 7a0:	02050000 	andeq	r0, r5, #0
 7a4:	00008ec0 	andeq	r8, r0, r0, asr #29
 7a8:	0109cb03 	tsteq	r9, r3, lsl #22
 7ac:	2e7a0318 	mrccs	3, 3, r0, cr10, cr8, {0}
 7b0:	03313367 	teqeq	r1, #-1677721599	; 0x9c000001
 7b4:	a0827de8 	addge	r7, r2, r8, ror #27
 7b8:	4c2f2d67 	stcmi	13, cr2, [pc], #-412	; 624 <__start-0x79dc>
 7bc:	7903a52f 	stmdbvc	r3, {r0, r1, r2, r3, r5, r8, sl, sp, pc}
 7c0:	7903352e 	stmdbvc	r3, {r1, r2, r3, r5, r8, sl, ip, sp}
 7c4:	2e6f032e 	cdpcs	3, 6, cr0, cr15, cr14, {1}
 7c8:	314a1803 	cmpcc	sl, r3, lsl #16
 7cc:	2f492f2d 	svccs	0x00492f2d
 7d0:	be6e4c31 	mcrlt	12, 3, r4, cr14, cr1, {1}
 7d4:	4f4c6945 	svcmi	0x004c6945
 7d8:	64832f49 	strvs	r2, [r3], #3913	; 0xf49
 7dc:	01fa0330 	mvnseq	r0, r0, lsr r3
 7e0:	79033c08 	stmdbvc	r3, {r3, sl, fp, ip, sp}
 7e4:	472f2d82 	strmi	r2, [pc, -r2, lsl #27]!
 7e8:	00040249 	andeq	r0, r4, r9, asr #4
 7ec:	008e0101 	addeq	r0, lr, r1, lsl #2
 7f0:	00020000 	andeq	r0, r2, r0
 7f4:	00000041 	andeq	r0, r0, r1, asr #32
 7f8:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 7fc:	0101000d 	tsteq	r1, sp
 800:	00000101 	andeq	r0, r0, r1, lsl #2
 804:	00000100 	andeq	r0, r0, r0, lsl #2
 808:	2f2e2e01 	svccs	0x002e2e01
 80c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 810:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 814:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 818:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 81c:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 820:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 824:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 828:	6c000001 	stcvs	0, cr0, [r0], {1}
 82c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 830:	682e3263 	stmdavs	lr!, {r0, r1, r5, r6, r9, ip, sp}
 834:	00000100 	andeq	r0, r0, r0, lsl #2
 838:	02050000 	andeq	r0, r5, #0
 83c:	00009038 	andeq	r9, r0, r8, lsr r0
 840:	010a8603 	tsteq	sl, r3, lsl #12
 844:	017db603 	cmneq	sp, r3, lsl #12
 848:	4a02ca03 	bmi	b305c <__bss_end+0xa705c>
 84c:	7dab032e 	stcvc	3, cr0, [fp, #184]!	; 0xb8
 850:	4a0b0382 	bmi	2c1660 <__end+0x194660>
 854:	2f2d6730 	svccs	0x002d6730
 858:	03a52f4c 			; <UNDEFINED> instruction: 0x03a52f4c
 85c:	03352e79 	teqeq	r5, #1936	; 0x790
 860:	6f032e79 	svcvs	0x00032e79
 864:	4a18032e 	bmi	601524 <__user_program+0x301524>
 868:	492f2d31 	stmdbmi	pc!, {r0, r4, r5, r8, sl, fp, sp}	; <UNPREDICTABLE>
 86c:	6e4c312f 	dvfvsep	f3, f4, #10.0
 870:	4c6945be 	cfstr64mi	mvdx4, [r9], #-760	; 0xfffffd08
 874:	03bb4b4e 			; <UNDEFINED> instruction: 0x03bb4b4e
 878:	02ba02a5 	adcseq	r0, sl, #1342177290	; 0x5000000a
 87c:	01010004 	tsteq	r1, r4
 880:	00000061 	andeq	r0, r0, r1, rrx
 884:	00410002 	subeq	r0, r1, r2
 888:	01020000 	mrseq	r0, (UNDEF: 2)
 88c:	000d0efb 	strdeq	r0, [sp], -fp
 890:	01010101 	tsteq	r1, r1, lsl #2
 894:	01000000 	mrseq	r0, (UNDEF: 0)
 898:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 89c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 8a0:	2f2e2e2f 	svccs	0x002e2e2f
 8a4:	2f637273 	svccs	0x00637273
 8a8:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 8ac:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 8b0:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 8b4:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 8b8:	6c00006d 	stcvs	0, cr0, [r0], {109}	; 0x6d
 8bc:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
 8c0:	73636e75 	cmnvc	r3, #1872	; 0x750
 8c4:	0100532e 	tsteq	r0, lr, lsr #6
 8c8:	00000000 	andeq	r0, r0, r0
 8cc:	91580205 	cmpls	r8, r5, lsl #4
 8d0:	ae030000 	cdpge	0, 0, cr0, cr3, cr0, {0}
 8d4:	2f30010d 	svccs	0x0030010d
 8d8:	2f2e0903 	svccs	0x002e0903
 8dc:	342f302f 	strtcc	r3, [pc], #-47	; 8e4 <__start-0x771c>
 8e0:	01000402 	tsteq	r0, r2, lsl #8
 8e4:	00006401 	andeq	r6, r0, r1, lsl #8
 8e8:	41000200 	mrsmi	r0, R8_usr
 8ec:	02000000 	andeq	r0, r0, #0
 8f0:	0d0efb01 	vstreq	d15, [lr, #-4]
 8f4:	01010100 	mrseq	r0, (UNDEF: 17)
 8f8:	00000001 	andeq	r0, r0, r1
 8fc:	01000001 	tsteq	r0, r1
 900:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 904:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 908:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 90c:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 910:	2f636367 	svccs	0x00636367
 914:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 918:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 91c:	00006d72 	andeq	r6, r0, r2, ror sp
 920:	3162696c 	cmncc	r2, ip, ror #18
 924:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 928:	00532e73 	subseq	r2, r3, r3, ror lr
 92c:	00000001 	andeq	r0, r0, r1
 930:	80020500 	andhi	r0, r2, r0, lsl #10
 934:	03000091 	movweq	r0, #145	; 0x91
 938:	2f010d8d 	svccs	0x00010d8d
 93c:	302f2f30 	eorcc	r2, pc, r0, lsr pc	; <UNPREDICTABLE>
 940:	2f302f2f 	svccs	0x00302f2f
 944:	2f2f2f2f 	svccs	0x002f2f2f
 948:	01000a02 	tsteq	r0, r2, lsl #20
 94c:	Address 0x000000000000094c is out of bounds.


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
 14c:	69640065 	stmdbvs	r4!, {r0, r2, r5, r6}^
 150:	616c7073 	smcvs	50947	; 0xc703
 154:	696c5f79 	stmdbvs	ip!, {r0, r3, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 158:	00746867 	rsbseq	r6, r4, r7, ror #16
 15c:	5f633269 	svcpl	0x00633269
 160:	7473616d 	ldrbtvc	r6, [r3], #-365	; 0xfffffe93
 164:	695f7265 	ldmdbvs	pc, {r0, r2, r5, r6, r9, ip, sp, lr}^	; <UNPREDICTABLE>
 168:	0074696e 	rsbseq	r6, r4, lr, ror #18
 16c:	70616c63 	rsbvc	r6, r1, r3, ror #24
 170:	7465645f 	strbtvc	r6, [r5], #-1119	; 0xfffffba1
 174:	00746365 	rsbseq	r6, r4, r5, ror #6
 178:	75706e69 	ldrbvc	r6, [r0, #-3689]!	; 0xfffff197
 17c:	72700074 	rsbsvc	r0, r0, #116	; 0x74
 180:	6b746e69 	blvs	1d1bb2c <__user_program+0x1a1bb2c>
 184:	63646100 	cmnvs	r4, #0, 2
 188:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
 18c:	656b0074 	strbvs	r0, [fp, #-116]!	; 0xffffff8c
 190:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 194:	616c635f 	cmnvs	ip, pc, asr r3
 198:	74656470 	strbtvc	r6, [r5], #-1136	; 0xfffffb90
 19c:	6f746365 	svcvs	0x00746365
 1a0:	72732f72 	rsbsvc	r2, r3, #456	; 0x1c8
 1a4:	656b2f63 	strbvs	r2, [fp, #-3939]!	; 0xfffff09d
 1a8:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 1ac:	7500632e 	strvc	r6, [r0, #-814]	; 0xfffffcd2
 1b0:	5f747261 	svcpl	0x00747261
 1b4:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
 1b8:	72656b00 	rsbvc	r6, r5, #0, 22
 1bc:	5f6c656e 	svcpl	0x006c656e
 1c0:	6e69616d 	powvsez	f6, f1, #5.0
 1c4:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
 1c8:	5f363174 	svcpl	0x00363174
 1cc:	4e470074 	mcrmi	0, 2, r0, cr7, cr4, {3}
 1d0:	20432055 	subcs	r2, r3, r5, asr r0
 1d4:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
 1d8:	30322033 	eorscc	r2, r2, r3, lsr r0
 1dc:	35303531 	ldrcc	r3, [r0, #-1329]!	; 0xfffffacf
 1e0:	28203932 	stmdacs	r0!, {r1, r4, r5, r8, fp, ip, sp}
 1e4:	72657270 	rsbvc	r7, r5, #112, 4
 1e8:	61656c65 	cmnvs	r5, r5, ror #24
 1ec:	20296573 	eorcs	r6, r9, r3, ror r5
 1f0:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
 1f4:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
 1f8:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
 1fc:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
 200:	616d2d20 	cmnvs	sp, r0, lsr #26
 204:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 208:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 20c:	20612d37 	rsbcs	r2, r1, r7, lsr sp
 210:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 214:	2d20314f 	stfcss	f3, [r0, #-316]!	; 0xfffffec4
 218:	65726666 	ldrbvs	r6, [r2, #-1638]!	; 0xfffff99a
 21c:	61747365 	cmnvs	r4, r5, ror #6
 220:	6e69646e 	cdpvs	4, 6, cr6, cr9, cr14, {3}
 224:	79620067 	stmdbvc	r2!, {r0, r1, r2, r5, r6}^
 228:	705f6574 	subsvc	r6, pc, r4, ror r5	; <UNPREDICTABLE>
 22c:	75007274 	strvc	r7, [r0, #-628]	; 0xfffffd8c
 230:	36746e69 	ldrbtcc	r6, [r4], -r9, ror #28
 234:	00745f34 	rsbseq	r5, r4, r4, lsr pc
 238:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
 23c:	765f5f00 	ldrbvc	r5, [pc], -r0, lsl #30
 240:	696c5f61 	stmdbvs	ip!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
 244:	75007473 	strvc	r7, [r0, #-1139]	; 0xfffffb8d
 248:	5f747261 	svcpl	0x00747261
 24c:	5f747570 	svcpl	0x00747570
 250:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0xfffff69e
 254:	69727000 	ldmdbvs	r2!, {ip, sp, lr}^
 258:	756e746e 	strbvc	r7, [lr, #-1134]!	; 0xfffffb92
 25c:	64006b6d 	strvs	r6, [r0], #-2925	; 0xfffff493
 260:	74696769 	strbtvc	r6, [r9], #-1897	; 0xfffff897
 264:	72700073 	rsbsvc	r0, r0, #115	; 0x73
 268:	78696665 	stmdavc	r9!, {r0, r2, r5, r6, r9, sl, sp, lr}^
 26c:	72656b00 	rsbvc	r6, r5, #0, 22
 270:	5f6c656e 	svcpl	0x006c656e
 274:	70616c63 	rsbvc	r6, r1, r3, ror #24
 278:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 27c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 280:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 284:	6972702f 	ldmdbvs	r2!, {r0, r1, r2, r3, r5, ip, sp, lr}^
 288:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 28c:	72610063 	rsbvc	r0, r1, #99	; 0x63
 290:	73007367 	movwvc	r7, #871	; 0x367
 294:	74657a69 	strbtvc	r7, [r5], #-2665	; 0xfffff597
 298:	00657079 	rsbeq	r7, r5, r9, ror r0
 29c:	70615f5f 	rsbvc	r5, r1, pc, asr pc
 2a0:	6f727000 	svcvs	0x00727000
 2a4:	0074706d 	rsbseq	r7, r4, sp, rrx
 2a8:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 2ac:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 2b0:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 2b4:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 2b8:	2f726f74 	svccs	0x00726f74
 2bc:	2f637273 	svccs	0x00637273
 2c0:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 2c4:	7500632e 	strvc	r6, [r0, #-814]	; 0xfffffcd2
 2c8:	5f747261 	svcpl	0x00747261
 2cc:	736f6c63 	cmnvc	pc, #25344	; 0x6300
 2d0:	61700065 	cmnvs	r0, r5, rrx
 2d4:	00726464 	rsbseq	r6, r2, r4, ror #8
 2d8:	69726570 	ldmdbvs	r2!, {r4, r5, r6, r8, sl, sp, lr}^
 2dc:	6972775f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
 2e0:	66006574 			; <UNDEFINED> instruction: 0x66006574
 2e4:	006f6669 	rsbeq	r6, pc, r9, ror #12
 2e8:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 2ec:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 2f0:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 2f4:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 2f8:	2f726f74 	svccs	0x00726f74
 2fc:	2f637273 	svccs	0x00637273
 300:	2e633269 	cdpcs	2, 6, cr3, cr3, cr9, {3}
 304:	65700063 	ldrbvs	r0, [r0, #-99]!	; 0xffffff9d
 308:	725f6972 	subsvc	r6, pc, #1867776	; 0x1c8000
 30c:	00646165 	rsbeq	r6, r4, r5, ror #2
 310:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
 314:	49007375 	stmdbmi	r0, {r0, r2, r4, r5, r6, r8, r9, ip, sp, lr}
 318:	525f4332 	subspl	r4, pc, #-939524096	; 0xc8000000
 31c:	4f534145 	svcmi	0x00534145
 320:	52455f4e 	subpl	r5, r5, #312	; 0x138
 324:	5f524f52 	svcpl	0x00524f52
 328:	4b43414e 	blmi	10d0868 <__user_program+0xdd0868>
 32c:	72657000 	rsbvc	r7, r5, #0
 330:	65735f69 	ldrbvs	r5, [r3, #-3945]!	; 0xfffff097
 334:	69625f74 	stmdbvs	r2!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 338:	72007374 	andvc	r7, r0, #116, 6	; 0xd0000001
 33c:	6f736165 	svcvs	0x00736165
 340:	3249006e 	subcc	r0, r9, #110	; 0x6e
 344:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
 348:	4e4f5341 	cdpmi	3, 4, cr5, cr15, cr1, {2}
 34c:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
 350:	445f524f 	ldrbmi	r5, [pc], #-591	; 358 <__start-0x7ca8>
 354:	00415441 	subeq	r5, r1, r1, asr #8
 358:	5f633269 	svcpl	0x00633269
 35c:	7473616d 	ldrbtvc	r6, [r3], #-365	; 0xfffffe93
 360:	725f7265 	subsvc	r7, pc, #1342177286	; 0x50000006
 364:	00646165 	rsbeq	r6, r4, r5, ror #2
 368:	6e656c64 	cdpvs	12, 6, cr6, cr5, cr4, {3}
 36c:	63326900 	teqvs	r2, #0, 18
 370:	73616d5f 	cmnvc	r1, #6080	; 0x17c0
 374:	5f726574 	svcpl	0x00726574
 378:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
 37c:	32490065 	subcc	r0, r9, #101	; 0x65
 380:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
 384:	4e4f5341 	cdpmi	3, 4, cr5, cr15, cr1, {2}
 388:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
 38c:	435f524f 	cmpmi	pc, #-268435452	; 0xf0000004
 390:	00544b4c 	subseq	r4, r4, ip, asr #22
 394:	5f433249 	svcpl	0x00433249
 398:	53414552 	movtpl	r4, #5458	; 0x1552
 39c:	4f5f4e4f 	svcmi	0x005f4e4f
 3a0:	6f63004b 	svcvs	0x0063004b
 3a4:	6f72746e 	svcvs	0x0072746e
 3a8:	6572006c 	ldrbvs	r0, [r2, #-108]!	; 0xffffff94
 3ac:	6e69616d 	powvsez	f6, f1, #5.0
 3b0:	00676e69 	rsbeq	r6, r7, r9, ror #28
 3b4:	66756272 			; <UNDEFINED> instruction: 0x66756272
 3b8:	63646100 	cmnvs	r4, #0, 2
 3bc:	6165725f 	cmnvs	r5, pc, asr r2
 3c0:	6f635f64 	svcvs	0x00635f64
 3c4:	7265766e 	rsbvc	r7, r5, #115343360	; 0x6e00000
 3c8:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
 3cc:	63646100 	cmnvs	r4, #0, 2
 3d0:	6972775f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
 3d4:	635f6574 	cmpvs	pc, #116, 10	; 0x1d000000
 3d8:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 3dc:	65720067 	ldrbvs	r0, [r2, #-103]!	; 0xffffff99
 3e0:	6c615674 	stclvs	6, cr5, [r1], #-464	; 0xfffffe30
 3e4:	6e6f6300 	cdpvs	3, 6, cr6, cr15, cr0, {0}
 3e8:	5f676966 	svcpl	0x00676966
 3ec:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
 3f0:	6f630065 	svcvs	0x00630065
 3f4:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 3f8:	6c61765f 	stclvs	6, cr7, [r1], #-380	; 0xfffffe84
 3fc:	72656b00 	rsbvc	r6, r5, #0, 22
 400:	5f6c656e 	svcpl	0x006c656e
 404:	70616c63 	rsbvc	r6, r1, r3, ror #24
 408:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 40c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 410:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 414:	7364612f 	cmnvc	r4, #-1073741813	; 0xc000000b
 418:	35313031 	ldrcc	r3, [r1, #-49]!	; 0xffffffcf
 41c:	6300632e 	movwvs	r6, #814	; 0x32e
 420:	635f7275 	cmpvs	pc, #1342177287	; 0x50000007
 424:	6e6e6168 	powvsez	f6, f6, #0.0
 428:	61006c65 	tstvs	r0, r5, ror #24
 42c:	725f6364 	subsvc	r6, pc, #100, 6	; 0x90000001
 430:	00646165 	rsbeq	r6, r4, r5, ror #2
 434:	6b73616d 	blvs	1cd89f0 <__user_program+0x19d89f0>
 438:	72656b00 	rsbvc	r6, r5, #0, 22
 43c:	5f6c656e 	svcpl	0x006c656e
 440:	70616c63 	rsbvc	r6, r1, r3, ror #24
 444:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 448:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 44c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 450:	6974752f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r8, sl, ip, sp, lr}^
 454:	632e736c 			; <UNDEFINED> instruction: 0x632e736c
 458:	645f5f00 	ldrbvs	r5, [pc], #-3840	; 460 <__start-0x7ba0>
 45c:	69647669 	stmdbvs	r4!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
 460:	622f0033 	eorvs	r0, pc, #51	; 0x33
 464:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 468:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 46c:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
 470:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 474:	61652d65 	cmnvs	r5, r5, ror #26
 478:	442d6962 	strtmi	r6, [sp], #-2402	; 0xfffff69e
 47c:	4c6e5252 	sfmmi	f5, 2, [lr], #-328	; 0xfffffeb8
 480:	63672f41 	cmnvs	r7, #260	; 0x104
 484:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
 488:	6f6e2d6d 	svcvs	0x006e2d6d
 48c:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 490:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
 494:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
 498:	76732b33 			; <UNDEFINED> instruction: 0x76732b33
 49c:	3133326e 	teqcc	r3, lr, ror #4
 4a0:	2f373731 	svccs	0x00373731
 4a4:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 4a8:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
 4ac:	6f6e2d6d 	svcvs	0x006e2d6d
 4b0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 4b4:	2f696261 	svccs	0x00696261
 4b8:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 4bc:	5f006363 	svcpl	0x00006363
 4c0:	756e675f 	strbvc	r6, [lr, #-1887]!	; 0xfffff8a1
 4c4:	646c755f 	strbtvs	r7, [ip], #-1375	; 0xfffffaa1
 4c8:	6f6d7669 	svcvs	0x006d7669
 4cc:	65685f64 	strbvs	r5, [r8, #-3940]!	; 0xfffff09c
 4d0:	7265706c 	rsbvc	r7, r5, #108	; 0x6c
 4d4:	2f2e2e00 	svccs	0x002e2e00
 4d8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 4dc:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 4e0:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 4e4:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 4e8:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 4ec:	2f676966 	svccs	0x00676966
 4f0:	2f6d7261 	svccs	0x006d7261
 4f4:	62617062 	rsbvs	r7, r1, #98	; 0x62
 4f8:	00632e69 	rsbeq	r2, r3, r9, ror #28
 4fc:	20554e47 	subscs	r4, r5, r7, asr #28
 500:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
 504:	20332e39 	eorscs	r2, r3, r9, lsr lr
 508:	35313032 	ldrcc	r3, [r1, #-50]!	; 0xffffffce
 50c:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
 510:	72702820 	rsbsvc	r2, r0, #32, 16	; 0x200000
 514:	6c657265 	sfmvs	f7, 2, [r5], #-404	; 0xfffffe6c
 518:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 51c:	672d2029 	strvs	r2, [sp, -r9, lsr #32]!
 520:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 524:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 528:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 52c:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 530:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 534:	61747366 	cmnvs	r4, r6, ror #6
 538:	702d6b63 	eorvc	r6, sp, r3, ror #22
 53c:	65746f72 	ldrbvs	r6, [r4, #-3954]!	; 0xfffff08e
 540:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 544:	7274732d 	rsbsvc	r7, r4, #-1275068416	; 0xb4000000
 548:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 54c:	7473662d 	ldrbtvc	r6, [r3], #-1581	; 0xfffff9d3
 550:	2d6b6361 	stclcs	3, cr6, [fp, #-388]!	; 0xfffffe7c
 554:	746f7270 	strbtvc	r7, [pc], #-624	; 55c <__start-0x7aa4>
 558:	6f746365 	svcvs	0x00746365
 55c:	74732d72 	ldrbtvc	r2, [r3], #-3442	; 0xfffff28e
 560:	676e6f72 			; <UNDEFINED> instruction: 0x676e6f72
 564:	62662d20 	rsbvs	r2, r6, #32, 26	; 0x800
 568:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 56c:	2d676e69 	stclcs	14, cr6, [r7, #-420]!	; 0xfffffe5c
 570:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 574:	2d206363 	stccs	3, cr6, [r0, #-396]!	; 0xfffffe74
 578:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 3e8 <__start-0x7c18>
 57c:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 580:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 584:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 588:	20726f74 	rsbscs	r6, r2, r4, ror pc
 58c:	6f6e662d 	svcvs	0x006e662d
 590:	6c6e692d 	stclvs	9, cr6, [lr], #-180	; 0xffffff4c
 594:	20656e69 	rsbcs	r6, r5, r9, ror #28
 598:	6976662d 	ldmdbvs	r6!, {r0, r2, r3, r5, r9, sl, sp, lr}^
 59c:	69626973 	stmdbvs	r2!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
 5a0:	7974696c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, fp, sp, lr}^
 5a4:	6469683d 	strbtvs	r6, [r9], #-2109	; 0xfffff7c3
 5a8:	006e6564 	rsbeq	r6, lr, r4, ror #10
 5ac:	616d6572 	smcvs	54866	; 0xd652
 5b0:	65646e69 	strbvs	r6, [r4, #-3689]!	; 0xfffff197
 5b4:	5f5f0072 	svcpl	0x005f0072
 5b8:	5f756e67 	svcpl	0x00756e67
 5bc:	7669646c 	strbtvc	r6, [r9], -ip, ror #8
 5c0:	5f646f6d 	svcpl	0x00646f6d
 5c4:	706c6568 	rsbvc	r6, ip, r8, ror #10
 5c8:	5f007265 	svcpl	0x00007265
 5cc:	6964755f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp, lr}^
 5d0:	33696476 	cmncc	r9, #1979711488	; 0x76000000
 5d4:	6f757100 	svcvs	0x00757100
 5d8:	6e656974 	mcrvs	9, 3, r6, cr5, cr4, {3}
 5dc:	69680074 	stmdbvs	r8!, {r2, r4, r5, r6}^
 5e0:	5f006867 	svcpl	0x00006867
 5e4:	6964755f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp, lr}^
 5e8:	646f6d76 	strbtvs	r6, [pc], #-3446	; 5f0 <__start-0x7a10>
 5ec:	00346964 	eorseq	r6, r4, r4, ror #18
 5f0:	74495355 	strbvc	r5, [r9], #-853	; 0xfffffcab
 5f4:	00657079 	rsbeq	r7, r5, r9, ror r0
 5f8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 5fc:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 600:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 604:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 608:	2f636367 	svccs	0x00636367
 60c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 610:	2e326363 	cdpcs	3, 3, cr6, cr2, cr3, {3}
 614:	57440063 	strbpl	r0, [r4, -r3, rrx]
 618:	6f696e75 	svcvs	0x00696e75
 61c:	4455006e 	ldrbmi	r0, [r5], #-110	; 0xffffff92
 620:	70797449 	rsbsvc	r7, r9, r9, asr #8
 624:	6f630065 	svcvs	0x00630065
 628:	656c706d 	strbvs	r7, [ip, #-109]!	; 0xffffff93
 62c:	6c662078 	stclvs	0, cr2, [r6], #-480	; 0xfffffe20
 630:	0074616f 	rsbseq	r6, r4, pc, ror #2
 634:	20554e47 	subscs	r4, r5, r7, asr #28
 638:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
 63c:	20332e39 	eorscs	r2, r3, r9, lsr lr
 640:	35313032 	ldrcc	r3, [r1, #-50]!	; 0xffffffce
 644:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
 648:	72702820 	rsbsvc	r2, r0, #32, 16	; 0x200000
 64c:	6c657265 	sfmvs	f7, 2, [r5], #-404	; 0xfffffe6c
 650:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 654:	672d2029 	strvs	r2, [sp, -r9, lsr #32]!
 658:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 65c:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 660:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 664:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 668:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 66c:	61747366 	cmnvs	r4, r6, ror #6
 670:	702d6b63 	eorvc	r6, sp, r3, ror #22
 674:	65746f72 	ldrbvs	r6, [r4, #-3954]!	; 0xfffff08e
 678:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 67c:	7274732d 	rsbsvc	r7, r4, #-1275068416	; 0xb4000000
 680:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 684:	7473662d 	ldrbtvc	r6, [r3], #-1581	; 0xfffff9d3
 688:	2d6b6361 	stclcs	3, cr6, [fp, #-388]!	; 0xfffffe7c
 68c:	746f7270 	strbtvc	r7, [pc], #-624	; 694 <__start-0x796c>
 690:	6f746365 	svcvs	0x00746365
 694:	74732d72 	ldrbtvc	r2, [r3], #-3442	; 0xfffff28e
 698:	676e6f72 			; <UNDEFINED> instruction: 0x676e6f72
 69c:	62662d20 	rsbvs	r2, r6, #32, 26	; 0x800
 6a0:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 6a4:	2d676e69 	stclcs	14, cr6, [r7, #-420]!	; 0xfffffe5c
 6a8:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 6ac:	2d206363 	stccs	3, cr6, [r0, #-396]!	; 0xfffffe74
 6b0:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 520 <__start-0x7ae0>
 6b4:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 6b8:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 6bc:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 6c0:	20726f74 	rsbscs	r6, r2, r4, ror pc
 6c4:	6f6e662d 	svcvs	0x006e662d
 6c8:	6c6e692d 	stclvs	9, cr6, [lr], #-180	; 0xffffff4c
 6cc:	20656e69 	rsbcs	r6, r5, r9, ror #28
 6d0:	7865662d 	stmdavc	r5!, {r0, r2, r3, r5, r9, sl, sp, lr}^
 6d4:	74706563 	ldrbtvc	r6, [r0], #-1379	; 0xfffffa9d
 6d8:	736e6f69 	cmnvc	lr, #420	; 0x1a4
 6dc:	76662d20 	strbtvc	r2, [r6], -r0, lsr #26
 6e0:	62697369 	rsbvs	r7, r9, #-1543503871	; 0xa4000001
 6e4:	74696c69 	strbtvc	r6, [r9], #-3177	; 0xfffff397
 6e8:	69683d79 	stmdbvs	r8!, {r0, r3, r4, r5, r6, r8, sl, fp, ip, sp}^
 6ec:	6e656464 	cdpvs	4, 6, cr6, cr5, cr4, {3}
 6f0:	6d6f6300 	stclvs	3, cr6, [pc, #-0]	; 6f8 <__start-0x7908>
 6f4:	78656c70 	stmdavc	r5!, {r4, r5, r6, sl, fp, sp, lr}^
 6f8:	756f6420 	strbvc	r6, [pc, #-1056]!	; 2e0 <__start-0x7d20>
 6fc:	00656c62 	rsbeq	r6, r5, r2, ror #24
 700:	74735744 	ldrbtvc	r5, [r3], #-1860	; 0xfffff8bc
 704:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
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
  ac:	00000050 	andeq	r0, r0, r0, asr r0
  b0:	83100e42 	tsthi	r0, #1056	; 0x420
  b4:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
  b8:	00018e02 	andeq	r8, r1, r2, lsl #28
  bc:	0000000c 	andeq	r0, r0, ip
  c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c4:	7c020001 	stcvc	0, cr0, [r2], {1}
  c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  cc:	00000028 	andeq	r0, r0, r8, lsr #32
  d0:	000000bc 	strheq	r0, [r0], -ip
  d4:	000083c4 	andeq	r8, r0, r4, asr #7
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
 100:	000084a4 	andeq	r8, r0, r4, lsr #9
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
 154:	0000865c 	andeq	r8, r0, ip, asr r6
 158:	00000064 	andeq	r0, r0, r4, rrx
 15c:	83080e42 	movwhi	r0, #36418	; 0x8e42
 160:	00018e02 	andeq	r8, r1, r2, lsl #28
 164:	0000000c 	andeq	r0, r0, ip
 168:	0000013c 	andeq	r0, r0, ip, lsr r1
 16c:	000086c0 	andeq	r8, r0, r0, asr #13
 170:	00000024 	andeq	r0, r0, r4, lsr #32
 174:	0000000c 	andeq	r0, r0, ip
 178:	0000013c 	andeq	r0, r0, ip, lsr r1
 17c:	000086e4 	andeq	r8, r0, r4, ror #13
 180:	00000024 	andeq	r0, r0, r4, lsr #32
 184:	00000018 	andeq	r0, r0, r8, lsl r0
 188:	0000013c 	andeq	r0, r0, ip, lsr r1
 18c:	00008708 	andeq	r8, r0, r8, lsl #14
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
 1b8:	00008754 	andeq	r8, r0, r4, asr r7
 1bc:	00000020 	andeq	r0, r0, r0, lsr #32
 1c0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1c4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1c8:	0000001c 	andeq	r0, r0, ip, lsl r0
 1cc:	000001a0 	andeq	r0, r0, r0, lsr #3
 1d0:	00008774 	andeq	r8, r0, r4, ror r7
 1d4:	00000114 	andeq	r0, r0, r4, lsl r1
 1d8:	83180e42 	tsthi	r8, #1056	; 0x420
 1dc:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 1e0:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 1e4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1e8:	00000020 	andeq	r0, r0, r0, lsr #32
 1ec:	000001a0 	andeq	r0, r0, r0, lsr #3
 1f0:	00008888 	andeq	r8, r0, r8, lsl #17
 1f4:	000001ac 	andeq	r0, r0, ip, lsr #3
 1f8:	83200e42 			; <UNDEFINED> instruction: 0x83200e42
 1fc:	85078408 	strhi	r8, [r7, #-1032]	; 0xfffffbf8
 200:	87058606 	strhi	r8, [r5, -r6, lsl #12]
 204:	89038804 	stmdbhi	r3, {r2, fp, pc}
 208:	00018e02 	andeq	r8, r1, r2, lsl #28
 20c:	0000000c 	andeq	r0, r0, ip
 210:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 214:	7c020001 	stcvc	0, cr0, [r2], {1}
 218:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 21c:	00000018 	andeq	r0, r0, r8, lsl r0
 220:	0000020c 	andeq	r0, r0, ip, lsl #4
 224:	00008a34 	andeq	r8, r0, r4, lsr sl
 228:	000000b8 	strheq	r0, [r0], -r8
 22c:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 230:	100e4201 	andne	r4, lr, r1, lsl #4
 234:	040e5602 	streq	r5, [lr], #-1538	; 0xfffff9fe
 238:	00000018 	andeq	r0, r0, r8, lsl r0
 23c:	0000020c 	andeq	r0, r0, ip, lsl #4
 240:	00008aec 	andeq	r8, r0, ip, ror #21
 244:	00000070 	andeq	r0, r0, r0, ror r0
 248:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 24c:	100e4201 	andne	r4, lr, r1, lsl #4
 250:	00040e72 	andeq	r0, r4, r2, ror lr
 254:	0000001c 	andeq	r0, r0, ip, lsl r0
 258:	0000020c 	andeq	r0, r0, ip, lsl #4
 25c:	00008b5c 	andeq	r8, r0, ip, asr fp
 260:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 264:	840c0e42 	strhi	r0, [ip], #-3650	; 0xfffff1be
 268:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 26c:	180e4201 	stmdane	lr, {r0, r9, lr}
 270:	0c0e7202 	sfmeq	f7, 4, [lr], {2}
 274:	00000014 	andeq	r0, r0, r4, lsl r0
 278:	0000020c 	andeq	r0, r0, ip, lsl #4
 27c:	00008c4c 	andeq	r8, r0, ip, asr #24
 280:	00000074 	andeq	r0, r0, r4, ror r0
 284:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
 288:	00018e02 	andeq	r8, r1, r2, lsl #28
 28c:	00000014 	andeq	r0, r0, r4, lsl r0
 290:	0000020c 	andeq	r0, r0, ip, lsl #4
 294:	00008cc0 	andeq	r8, r0, r0, asr #25
 298:	00000020 	andeq	r0, r0, r0, lsr #32
 29c:	83080e42 	movwhi	r0, #36418	; 0x8e42
 2a0:	00018e02 	andeq	r8, r1, r2, lsl #28
 2a4:	00000020 	andeq	r0, r0, r0, lsr #32
 2a8:	0000020c 	andeq	r0, r0, ip, lsl #4
 2ac:	00008ce0 	andeq	r8, r0, r0, ror #25
 2b0:	000000a0 	andeq	r0, r0, r0, lsr #1
 2b4:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 2b8:	86078508 	strhi	r8, [r7], -r8, lsl #10
 2bc:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 2c0:	8a038904 	bhi	e26d8 <__bss_end+0xd66d8>
 2c4:	00018e02 	andeq	r8, r1, r2, lsl #28
 2c8:	0000000c 	andeq	r0, r0, ip
 2cc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2d0:	7c020001 	stcvc	0, cr0, [r2], {1}
 2d4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2d8:	0000000c 	andeq	r0, r0, ip
 2dc:	000002c8 	andeq	r0, r0, r8, asr #5
 2e0:	00008d80 	andeq	r8, r0, r0, lsl #27
 2e4:	00000008 	andeq	r0, r0, r8
 2e8:	0000000c 	andeq	r0, r0, ip
 2ec:	000002c8 	andeq	r0, r0, r8, asr #5
 2f0:	00008d88 	andeq	r8, r0, r8, lsl #27
 2f4:	00000008 	andeq	r0, r0, r8
 2f8:	0000000c 	andeq	r0, r0, ip
 2fc:	000002c8 	andeq	r0, r0, r8, asr #5
 300:	00008d90 	muleq	r0, r0, sp
 304:	00000018 	andeq	r0, r0, r8, lsl r0
 308:	0000000c 	andeq	r0, r0, ip
 30c:	000002c8 	andeq	r0, r0, r8, asr #5
 310:	00008da8 	andeq	r8, r0, r8, lsr #27
 314:	00000010 	andeq	r0, r0, r0, lsl r0
 318:	0000000c 	andeq	r0, r0, ip
 31c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 320:	7c010001 	stcvc	0, cr0, [r1], {1}
 324:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 328:	00000014 	andeq	r0, r0, r4, lsl r0
 32c:	00000318 	andeq	r0, r0, r8, lsl r3
 330:	00008dfc 	strdeq	r8, [r0], -ip
 334:	0000003c 	andeq	r0, r0, ip, lsr r0
 338:	0e038e68 	cdpeq	14, 0, cr8, cr3, cr8, {3}
 33c:	00000010 	andeq	r0, r0, r0, lsl r0
 340:	0000000c 	andeq	r0, r0, ip
 344:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 348:	7c020001 	stcvc	0, cr0, [r2], {1}
 34c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 350:	0000002c 	andeq	r0, r0, ip, lsr #32
 354:	00000340 	andeq	r0, r0, r0, asr #6
 358:	00008e38 	andeq	r8, r0, r8, lsr lr
 35c:	00000044 	andeq	r0, r0, r4, asr #32
 360:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 364:	86078508 	strhi	r8, [r7], -r8, lsl #10
 368:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 36c:	8a038904 	bhi	e2784 <__bss_end+0xd6784>
 370:	5e018e02 	cdppl	14, 0, cr8, cr1, cr2, {0}
 374:	c8c9cace 	stmiagt	r9, {r1, r2, r3, r6, r7, r9, fp, lr, pc}^
 378:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 37c:	0000000e 	andeq	r0, r0, lr
 380:	00000024 	andeq	r0, r0, r4, lsr #32
 384:	00000340 	andeq	r0, r0, r0, asr #6
 388:	00008e7c 	andeq	r8, r0, ip, ror lr
 38c:	00000040 	andeq	r0, r0, r0, asr #32
 390:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 394:	86058506 	strhi	r8, [r5], -r6, lsl #10
 398:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 39c:	5c018e02 	stcpl	14, cr8, [r1], {2}
 3a0:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 3a4:	000ec4c5 	andeq	ip, lr, r5, asr #9
 3a8:	0000000c 	andeq	r0, r0, ip
 3ac:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3b0:	7c020001 	stcvc	0, cr0, [r2], {1}
 3b4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3b8:	00000034 	andeq	r0, r0, r4, lsr r0
 3bc:	000003a8 	andeq	r0, r0, r8, lsr #7
 3c0:	00008ec0 	andeq	r8, r0, r0, asr #29
 3c4:	00000178 	andeq	r0, r0, r8, ror r1
 3c8:	83280e44 			; <UNDEFINED> instruction: 0x83280e44
 3cc:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
 3d0:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 3d4:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 3d8:	8b038a04 	blhi	e2bf0 <__bss_end+0xd6bf0>
 3dc:	02018e02 	andeq	r8, r1, #2, 28
 3e0:	cbce0aa6 	blgt	ff382e80 <__user_program+0xff082e80>
 3e4:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 3e8:	c3c4c5c6 	bicgt	ip, r4, #830472192	; 0x31800000
 3ec:	0b42000e 	bleq	108042c <__user_program+0xd8042c>
 3f0:	0000000c 	andeq	r0, r0, ip
 3f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3f8:	7c020001 	stcvc	0, cr0, [r2], {1}
 3fc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 400:	0000002c 	andeq	r0, r0, ip, lsr #32
 404:	000003f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 408:	00009038 	andeq	r9, r0, r8, lsr r0
 40c:	00000120 	andeq	r0, r0, r0, lsr #2
 410:	84200e46 	strthi	r0, [r0], #-3654	; 0xfffff1ba
 414:	86078508 	strhi	r8, [r7], -r8, lsl #10
 418:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 41c:	8a038904 	bhi	e2834 <__bss_end+0xd6834>
 420:	02018e02 	andeq	r8, r1, #2, 28
 424:	c9cace88 	stmibgt	sl, {r3, r7, r9, sl, fp, lr, pc}^
 428:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 42c:	00000ec4 	andeq	r0, r0, r4, asr #29

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000048 	andeq	r0, r0, r8, asr #32
   8:	48500001 	ldmdami	r0, {r0}^
   c:	e0000000 	and	r0, r0, r0
  10:	04000000 	streq	r0, [r0], #-0
  14:	5001f300 	andpl	pc, r1, r0, lsl #6
  18:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
  24:	00004800 	andeq	r4, r0, r0, lsl #16
  28:	52000600 	andpl	r0, r0, #0, 12
  2c:	93530493 	cmpls	r3, #-1828716544	; 0x93000000
  30:	00004804 	andeq	r4, r0, r4, lsl #16
  34:	00007c00 	andeq	r7, r0, r0, lsl #24
  38:	56000600 	strpl	r0, [r0], -r0, lsl #12
  3c:	93570493 	cmpls	r7, #-1828716544	; 0x93000000
  40:	00008004 	andeq	r8, r0, r4
  44:	0000e000 	andeq	lr, r0, r0
  48:	56000600 	strpl	r0, [r0], -r0, lsl #12
  4c:	93570493 	cmpls	r7, #-1828716544	; 0x93000000
  50:	00000004 	andeq	r0, r0, r4
  54:	00000000 	andeq	r0, r0, r0
  58:	00001000 	andeq	r1, r0, r0
  5c:	00004800 	andeq	r4, r0, r0, lsl #16
  60:	30000200 	andcc	r0, r0, r0, lsl #4
  64:	0000909f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
  68:	00009c00 	andeq	r9, r0, r0, lsl #24
  6c:	58000100 	stmdapl	r0, {r8}
  70:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  74:	000000b8 	strheq	r0, [r0], -r8
  78:	b8580001 	ldmdalt	r8, {r0}^
  7c:	c4000000 	strgt	r0, [r0], #-0
  80:	03000000 	movweq	r0, #0
  84:	9f7f7800 	svcls	0x007f7800
	...
  90:	00000010 	andeq	r0, r0, r0, lsl r0
  94:	00000038 	andeq	r0, r0, r8, lsr r0
  98:	57910003 	ldrpl	r0, [r1, r3]
  9c:	0000389f 	muleq	r0, pc, r8	; <UNPREDICTABLE>
  a0:	00006400 	andeq	r6, r0, r0, lsl #8
  a4:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
  a8:	00000064 	andeq	r0, r0, r4, rrx
  ac:	0000009c 	muleq	r0, ip, r0
  b0:	01740003 	cmneq	r4, r3
  b4:	00009c9f 	muleq	r0, pc, ip	; <UNPREDICTABLE>
  b8:	0000b000 	andeq	fp, r0, r0
  bc:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
  c0:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  c4:	000000c4 	andeq	r0, r0, r4, asr #1
  c8:	01740003 	cmneq	r4, r3
  cc:	0000c49f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
  d0:	0000c800 	andeq	ip, r0, r0, lsl #16
  d4:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
  d8:	000000c8 	andeq	r0, r0, r8, asr #1
  dc:	000000cc 	andeq	r0, r0, ip, asr #1
  e0:	7f740003 	svcvc	0x00740003
  e4:	0000cc9f 	muleq	r0, pc, ip	; <UNPREDICTABLE>
  e8:	0000e000 	andeq	lr, r0, r0
  ec:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
  f8:	000000e0 	andeq	r0, r0, r0, ror #1
  fc:	00000108 	andeq	r0, r0, r8, lsl #2
 100:	70910002 	addsvc	r0, r1, r2
 104:	00000108 	andeq	r0, r0, r8, lsl #2
 108:	0000011c 	andeq	r0, r0, ip, lsl r1
 10c:	1c540001 	mrrcne	0, 0, r0, r4, cr1
 110:	7c000001 	stcvc	0, cr0, [r0], {1}
 114:	03000002 	movweq	r0, #2
 118:	9f017400 	svcls	0x00017400
 11c:	0000027c 	andeq	r0, r0, ip, ror r2
 120:	00000288 	andeq	r0, r0, r8, lsl #5
 124:	00540001 	subseq	r0, r4, r1
 128:	00000000 	andeq	r0, r0, r0
 12c:	e8000000 	stmda	r0, {}	; <UNPREDICTABLE>
 130:	f4000001 	vst4.8	{d0-d3}, [r0], r1
 134:	02000001 	andeq	r0, r0, #1
 138:	f4007300 	vst2.8	{d7-d10}, [r0], r0
 13c:	f7000001 			; <UNDEFINED> instruction: 0xf7000001
 140:	01000001 	tsteq	r0, r1
 144:	00005200 	andeq	r5, r0, r0, lsl #4
 148:	00000000 	andeq	r0, r0, r0
 14c:	02080000 	andeq	r0, r8, #0
 150:	02140000 	andseq	r0, r4, #0
 154:	00020000 	andeq	r0, r2, r0
 158:	02140073 	andseq	r0, r4, #115	; 0x73
 15c:	02170000 	andseq	r0, r7, #0
 160:	00010000 	andeq	r0, r1, r0
 164:	00000052 	andeq	r0, r0, r2, asr r0
 168:	00000000 	andeq	r0, r0, r0
 16c:	00018400 	andeq	r8, r1, r0, lsl #8
 170:	0001bc00 	andeq	fp, r1, r0, lsl #24
 174:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
	...
 180:	000001c8 	andeq	r0, r0, r8, asr #3
 184:	000001d4 	ldrdeq	r0, [r0], -r4
 188:	00730002 	rsbseq	r0, r3, r2
 18c:	000001d4 	ldrdeq	r0, [r0], -r4
 190:	000001d7 	ldrdeq	r0, [r0], -r7
 194:	00520001 	subseq	r0, r2, r1
 198:	00000000 	andeq	r0, r0, r0
 19c:	2c000000 	stccs	0, cr0, [r0], {-0}
 1a0:	40000002 	andmi	r0, r0, r2
 1a4:	01000002 	tsteq	r0, r2
 1a8:	02405500 	subeq	r5, r0, #0, 10
 1ac:	024c0000 	subeq	r0, ip, #0
 1b0:	00030000 	andeq	r0, r3, r0
 1b4:	009f7f75 	addseq	r7, pc, r5, ror pc	; <UNPREDICTABLE>
 1b8:	00000000 	andeq	r0, r0, r0
 1bc:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
 1c0:	5f000002 	svcpl	0x00000002
 1c4:	02000002 	andeq	r0, r0, #2
 1c8:	00007300 	andeq	r7, r0, r0, lsl #6
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	b0000000 	andlt	r0, r0, r0
 1d4:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
 1d8:	02000000 	andeq	r0, r0, #0
 1dc:	c89f3000 	ldmgt	pc, {ip, sp}	; <UNPREDICTABLE>
 1e0:	d7000000 	strle	r0, [r0, -r0]
 1e4:	01000000 	mrseq	r0, (UNDEF: 0)
 1e8:	00d85200 	sbcseq	r5, r8, r0, lsl #4
 1ec:	00dc0000 	sbcseq	r0, ip, r0
 1f0:	00020000 	andeq	r0, r2, r0
 1f4:	00dc9f31 	sbcseq	r9, ip, r1, lsr pc
 1f8:	00f80000 	rscseq	r0, r8, r0
 1fc:	00010000 	andeq	r0, r1, r0
 200:	00000052 	andeq	r0, r0, r2, asr r0
	...
 20c:	00000800 	andeq	r0, r0, r0, lsl #16
 210:	50000100 	andpl	r0, r0, r0, lsl #2
 214:	00000008 	andeq	r0, r0, r8
 218:	00000020 	andeq	r0, r0, r0, lsr #32
 21c:	01f30004 	mvnseq	r0, r4
 220:	00009f50 	andeq	r9, r0, r0, asr pc
 224:	00000000 	andeq	r0, r0, r0
 228:	00200000 	eoreq	r0, r0, r0
 22c:	00340000 	eorseq	r0, r4, r0
 230:	00010000 	andeq	r0, r1, r0
 234:	00003450 	andeq	r3, r0, r0, asr r4
 238:	00008400 	andeq	r8, r0, r0, lsl #8
 23c:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
 240:	00000084 	andeq	r0, r0, r4, lsl #1
 244:	00000090 	muleq	r0, r0, r0
 248:	01750003 	cmneq	r5, r3
 24c:	0000909f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 250:	00013400 	andeq	r3, r1, r0, lsl #8
 254:	f3000400 	vshl.u8	d0, d0, d0
 258:	009f5001 	addseq	r5, pc, r1
 25c:	00000000 	andeq	r0, r0, r0
 260:	20000000 	andcs	r0, r0, r0
 264:	3c000000 	stccc	0, cr0, [r0], {-0}
 268:	01000000 	mrseq	r0, (UNDEF: 0)
 26c:	003c5100 	eorseq	r5, ip, r0, lsl #2
 270:	01340000 	teqeq	r4, r0
 274:	00040000 	andeq	r0, r4, r0
 278:	9f5101f3 	svcls	0x005101f3
	...
 284:	00000020 	andeq	r0, r0, r0, lsr #32
 288:	00000040 	andeq	r0, r0, r0, asr #32
 28c:	40520001 	subsmi	r0, r2, r1
 290:	34000000 	strcc	r0, [r0], #-0
 294:	04000001 	streq	r0, [r0], #-1
 298:	5201f300 	andpl	pc, r1, #0, 6
 29c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 2a0:	00000000 	andeq	r0, r0, r0
 2a4:	00003000 	andeq	r3, r0, r0
 2a8:	00003c00 	andeq	r3, r0, r0, lsl #24
 2ac:	51000100 	mrspl	r0, (UNDEF: 16)
 2b0:	0000003c 	andeq	r0, r0, ip, lsr r0
 2b4:	00000088 	andeq	r0, r0, r8, lsl #1
 2b8:	88540001 	ldmdahi	r4, {r0}^
 2bc:	90000000 	andls	r0, r0, r0
 2c0:	01000000 	mrseq	r0, (UNDEF: 0)
 2c4:	00905700 	addseq	r5, r0, r0, lsl #14
 2c8:	00b80000 	adcseq	r0, r8, r0
 2cc:	000a0000 	andeq	r0, sl, r0
 2d0:	ff0a0077 			; <UNDEFINED> instruction: 0xff0a0077
 2d4:	00741aff 	ldrshteq	r1, [r4], #-175	; 0xffffff51
 2d8:	00009f1c 	andeq	r9, r0, ip, lsl pc
 2dc:	00000000 	andeq	r0, r0, r0
 2e0:	00300000 	eorseq	r0, r0, r0
 2e4:	00900000 	addseq	r0, r0, r0
 2e8:	00020000 	andeq	r0, r2, r0
 2ec:	00909f30 	addseq	r9, r0, r0, lsr pc
 2f0:	00b80000 	adcseq	r0, r8, r0
 2f4:	00010000 	andeq	r0, r1, r0
 2f8:	00000054 	andeq	r0, r0, r4, asr r0
 2fc:	00000000 	andeq	r0, r0, r0
 300:	00003000 	andeq	r3, r0, r0
 304:	00010800 	andeq	r0, r1, r0, lsl #16
 308:	30000200 	andcc	r0, r0, r0, lsl #4
 30c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 310:	00000000 	andeq	r0, r0, r0
 314:	00013400 	andeq	r3, r1, r0, lsl #8
 318:	00015400 	andeq	r5, r1, r0, lsl #8
 31c:	50000100 	andpl	r0, r0, r0, lsl #2
 320:	00000154 	andeq	r0, r0, r4, asr r1
 324:	000002e0 	andeq	r0, r0, r0, ror #5
 328:	00590001 	subseq	r0, r9, r1
 32c:	00000000 	andeq	r0, r0, r0
 330:	34000000 	strcc	r0, [r0], #-0
 334:	58000001 	stmdapl	r0, {r0}
 338:	01000001 	tsteq	r0, r1
 33c:	01585100 	cmpeq	r8, r0, lsl #2
 340:	02e00000 	rsceq	r0, r0, #0
 344:	00040000 	andeq	r0, r4, r0
 348:	9f5101f3 	svcls	0x005101f3
	...
 354:	00000134 	andeq	r0, r0, r4, lsr r1
 358:	0000015c 	andeq	r0, r0, ip, asr r1
 35c:	5c520001 	mrrcpl	0, 0, r0, r2, cr1
 360:	e0000001 	and	r0, r0, r1
 364:	04000002 	streq	r0, [r0], #-2
 368:	5201f300 	andpl	pc, r1, #0, 6
 36c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 370:	00000000 	andeq	r0, r0, r0
 374:	00014800 	andeq	r4, r1, r0, lsl #16
 378:	00015800 	andeq	r5, r1, r0, lsl #16
 37c:	51000100 	mrspl	r0, (UNDEF: 16)
 380:	00000158 	andeq	r0, r0, r8, asr r1
 384:	000001c0 	andeq	r0, r0, r0, asr #3
 388:	c0540001 	subsgt	r0, r4, r1
 38c:	c8000001 	stmdagt	r0, {r0}
 390:	03000001 	movweq	r0, #1
 394:	9f7f7400 	svcls	0x007f7400
 398:	000001c8 	andeq	r0, r0, r8, asr #3
 39c:	0000025c 	andeq	r0, r0, ip, asr r2
 3a0:	5c540001 	mrrcpl	0, 0, r0, r4, cr1
 3a4:	60000002 	andvs	r0, r0, r2
 3a8:	03000002 	movweq	r0, #2
 3ac:	9f7f7400 	svcls	0x007f7400
 3b0:	00000260 	andeq	r0, r0, r0, ror #4
 3b4:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 3b8:	00540001 	subseq	r0, r4, r1
 3bc:	00000000 	andeq	r0, r0, r0
 3c0:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
 3c4:	b4000001 	strlt	r0, [r0], #-1
 3c8:	02000001 	andeq	r0, r0, #1
 3cc:	b49f3000 	ldrlt	r3, [pc], #0	; 3d4 <__start-0x7c2c>
 3d0:	2c000001 	stccs	0, cr0, [r0], {1}
 3d4:	01000002 	tsteq	r0, r2
 3d8:	02485500 	subeq	r5, r8, #0, 10
 3dc:	02740000 	rsbseq	r0, r4, #0
 3e0:	00060000 	andeq	r0, r6, r0
 3e4:	00790075 	rsbseq	r0, r9, r5, ror r0
 3e8:	00009f1c 	andeq	r9, r0, ip, lsl pc
 3ec:	00000000 	andeq	r0, r0, r0
 3f0:	01480000 	mrseq	r0, (UNDEF: 72)
 3f4:	02b40000 	adcseq	r0, r4, #0
 3f8:	00020000 	andeq	r0, r2, r0
 3fc:	00009f30 	andeq	r9, r0, r0, lsr pc
	...
 408:	00240000 	eoreq	r0, r4, r0
 40c:	00010000 	andeq	r0, r1, r0
 410:	00002450 	andeq	r2, r0, r0, asr r4
 414:	0000b800 	andeq	fp, r0, r0, lsl #16
 418:	f3000400 	vshl.u8	d0, d0, d0
 41c:	009f5001 	addseq	r5, pc, r1
 420:	00000000 	andeq	r0, r0, r0
 424:	98000000 	stmdals	r0, {}	; <UNPREDICTABLE>
 428:	af000000 	svcge	0x00000000
 42c:	12000000 	andne	r0, r0, #0
 430:	94007d00 	strls	r7, [r0], #-3328	; 0xfffff300
 434:	1aff0801 	bne	fffc2440 <__user_program+0xffcc2440>
 438:	69912438 	ldmibvs	r1, {r3, r4, r5, sl, sp}
 43c:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 440:	009f221a 	addseq	r2, pc, sl, lsl r2	; <UNPREDICTABLE>
 444:	00000000 	andeq	r0, r0, r0
 448:	3c000000 	stccc	0, cr0, [r0], {-0}
 44c:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
 450:	01000000 	mrseq	r0, (UNDEF: 0)
 454:	00545000 	subseq	r5, r4, r0
 458:	00580000 	subseq	r0, r8, r0
 45c:	00010000 	andeq	r0, r1, r0
 460:	00008450 	andeq	r8, r0, r0, asr r4
 464:	00009000 	andeq	r9, r0, r0
 468:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 474:	000000d8 	ldrdeq	r0, [r0], -r8
 478:	000000e4 	andeq	r0, r0, r4, ror #1
 47c:	fc500001 	mrrc2	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
 480:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 484:	01000001 	tsteq	r0, r1
 488:	00005000 	andeq	r5, r0, r0
 48c:	00000000 	andeq	r0, r0, r0
 490:	01100000 	tsteq	r0, r0
 494:	01240000 			; <UNDEFINED> instruction: 0x01240000
 498:	00120000 	andseq	r0, r2, r0
 49c:	0194007d 	orrseq	r0, r4, sp, ror r0
 4a0:	381aff08 	ldmdacc	sl, {r3, r8, r9, sl, fp, ip, sp, lr, pc}
 4a4:	94699124 	strbtls	r9, [r9], #-292	; 0xfffffedc
 4a8:	1aff0801 	bne	fffc24b4 <__user_program+0xffcc24b4>
 4ac:	01249f22 			; <UNDEFINED> instruction: 0x01249f22
 4b0:	01280000 			; <UNDEFINED> instruction: 0x01280000
 4b4:	00120000 	andseq	r0, r2, r0
 4b8:	01946891 			; <UNDEFINED> instruction: 0x01946891
 4bc:	381aff08 	ldmdacc	sl, {r3, r8, r9, sl, fp, ip, sp, lr, pc}
 4c0:	94699124 	strbtls	r9, [r9], #-292	; 0xfffffedc
 4c4:	1aff0801 	bne	fffc24d0 <__user_program+0xffcc24d0>
 4c8:	00009f22 	andeq	r9, r0, r2, lsr #30
 4cc:	00000000 	andeq	r0, r0, r0
 4d0:	01680000 	cmneq	r8, r0
 4d4:	01830000 	orreq	r0, r3, r0
 4d8:	00120000 	andseq	r0, r2, r0
 4dc:	0194007d 	orrseq	r0, r4, sp, ror r0
 4e0:	381aff08 	ldmdacc	sl, {r3, r8, r9, sl, fp, ip, sp, lr, pc}
 4e4:	94619124 	strbtls	r9, [r1], #-292	; 0xfffffedc
 4e8:	1aff0801 	bne	fffc24f4 <__user_program+0xffcc24f4>
 4ec:	01b09f22 	lsrseq	r9, r2, #30
 4f0:	01cb0000 	biceq	r0, fp, r0
 4f4:	00120000 	andseq	r0, r2, r0
 4f8:	0194007d 	orrseq	r0, r4, sp, ror r0
 4fc:	381aff08 	ldmdacc	sl, {r3, r8, r9, sl, fp, ip, sp, lr, pc}
 500:	94619124 	strbtls	r9, [r1], #-292	; 0xfffffedc
 504:	1aff0801 	bne	fffc2510 <__user_program+0xffcc2510>
 508:	01f49f22 	mvnseq	r9, r2, lsr #30
 50c:	020f0000 	andeq	r0, pc, #0
 510:	00120000 	andseq	r0, r2, r0
 514:	0194007d 	orrseq	r0, r4, sp, ror r0
 518:	381aff08 	ldmdacc	sl, {r3, r8, r9, sl, fp, ip, sp, lr, pc}
 51c:	94619124 	strbtls	r9, [r1], #-292	; 0xfffffedc
 520:	1aff0801 	bne	fffc252c <__user_program+0xffcc252c>
 524:	00009f22 	andeq	r9, r0, r2, lsr #30
 528:	00000000 	andeq	r0, r0, r0
 52c:	01540000 	cmpeq	r4, r0
 530:	01600000 	cmneq	r0, r0
 534:	00010000 	andeq	r0, r1, r0
 538:	00000050 	andeq	r0, r0, r0, asr r0
 53c:	00000000 	andeq	r0, r0, r0
 540:	00021800 	andeq	r1, r2, r0, lsl #16
 544:	00025400 	andeq	r5, r2, r0, lsl #8
 548:	50000100 	andpl	r0, r0, r0, lsl #2
 54c:	00000254 	andeq	r0, r0, r4, asr r2
 550:	00000258 	andeq	r0, r0, r8, asr r2
 554:	01f30004 	mvnseq	r0, r4
 558:	02589f50 	subseq	r9, r8, #80, 30	; 0x140
 55c:	025c0000 	subseq	r0, ip, #0
 560:	00010000 	andeq	r0, r1, r0
 564:	00025c50 	andeq	r5, r2, r0, asr ip
 568:	00026000 	andeq	r6, r2, r0
 56c:	f3000400 	vshl.u8	d0, d0, d0
 570:	609f5001 	addsvs	r5, pc, r1
 574:	64000002 	strvs	r0, [r0], #-2
 578:	01000002 	tsteq	r0, r2
 57c:	02645000 	rsbeq	r5, r4, #0
 580:	02680000 	rsbeq	r0, r8, #0
 584:	00040000 	andeq	r0, r4, r0
 588:	9f5001f3 	svcls	0x005001f3
 58c:	00000268 	andeq	r0, r0, r8, ror #4
 590:	0000026c 	andeq	r0, r0, ip, ror #4
 594:	6c500001 	mrrcvs	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
 598:	84000002 	strhi	r0, [r0], #-2
 59c:	04000002 	streq	r0, [r0], #-2
 5a0:	5001f300 	andpl	pc, r1, r0, lsl #6
 5a4:	0002849f 	muleq	r2, pc, r4	; <UNPREDICTABLE>
 5a8:	00028800 	andeq	r8, r2, r0, lsl #16
 5ac:	50000100 	andpl	r0, r0, r0, lsl #2
 5b0:	00000288 	andeq	r0, r0, r8, lsl #5
 5b4:	0000028c 	andeq	r0, r0, ip, lsl #5
 5b8:	01f30004 	mvnseq	r0, r4
 5bc:	00009f50 	andeq	r9, r0, r0, asr pc
 5c0:	00000000 	andeq	r0, r0, r0
 5c4:	02340000 	eorseq	r0, r4, #0
 5c8:	02580000 	subseq	r0, r8, #0
 5cc:	00040000 	andeq	r0, r4, r0
 5d0:	9f40830a 	svcls	0x0040830a
 5d4:	00000258 	andeq	r0, r0, r8, asr r2
 5d8:	00000260 	andeq	r0, r0, r0, ror #4
 5dc:	830a0004 	movwhi	r0, #40964	; 0xa004
 5e0:	02609f60 	rsbeq	r9, r0, #96, 30	; 0x180
 5e4:	02680000 	rsbeq	r0, r8, #0
 5e8:	00040000 	andeq	r0, r4, r0
 5ec:	9f70830a 	svcls	0x0070830a
 5f0:	00000268 	andeq	r0, r0, r8, ror #4
 5f4:	0000026c 	andeq	r0, r0, ip, ror #4
 5f8:	830a0004 	movwhi	r0, #40964	; 0xa004
 5fc:	026c9f40 	rsbeq	r9, ip, #64, 30	; 0x100
 600:	026f0000 	rsbeq	r0, pc, #0
 604:	00010000 	andeq	r0, r1, r0
 608:	00028450 	andeq	r8, r2, r0, asr r4
 60c:	00028c00 	andeq	r8, r2, r0, lsl #24
 610:	0a000400 	beq	1618 <__start-0x69e8>
 614:	009f4083 	addseq	r4, pc, r3, lsl #1
 618:	00000000 	andeq	r0, r0, r0
 61c:	9c000000 	stcls	0, cr0, [r0], {-0}
 620:	a7000002 	strge	r0, [r0, -r2]
 624:	01000002 	tsteq	r0, r2
 628:	00005100 	andeq	r5, r0, r0, lsl #2
 62c:	00000000 	andeq	r0, r0, r0
 630:	02b00000 	adcseq	r0, r0, #0
 634:	02cc0000 	sbceq	r0, ip, #0
 638:	00060000 	andeq	r0, r6, r0
 63c:	ffffff0c 			; <UNDEFINED> instruction: 0xffffff0c
 640:	02cc9f7f 	sbceq	r9, ip, #508	; 0x1fc
 644:	02e80000 	rsceq	r0, r8, #0
 648:	00010000 	andeq	r0, r1, r0
 64c:	0002e857 	andeq	lr, r2, r7, asr r8
 650:	0002ec00 	andeq	lr, r2, r0, lsl #24
 654:	50000100 	andpl	r0, r0, r0, lsl #2
 658:	000002ec 	andeq	r0, r0, ip, ror #5
 65c:	000002f8 	strdeq	r0, [r0], -r8
 660:	f8540001 			; <UNDEFINED> instruction: 0xf8540001
 664:	4c000002 	stcmi	0, cr0, [r0], {2}
 668:	01000003 	tsteq	r0, r3
 66c:	00005700 	andeq	r5, r0, r0, lsl #14
 670:	00000000 	andeq	r0, r0, r0
 674:	02b00000 	adcseq	r0, r0, #0
 678:	02b80000 	adcseq	r0, r8, #0
 67c:	00050000 	andeq	r0, r5, r0
 680:	42fbc111 	rscsmi	ip, fp, #1073741828	; 0x40000004
 684:	0002cc9f 	muleq	r2, pc, ip	; <UNPREDICTABLE>
 688:	00030000 	andeq	r0, r3, r0
 68c:	56000100 	strpl	r0, [r0], -r0, lsl #2
 690:	00000300 	andeq	r0, r0, r0, lsl #6
 694:	00000310 	andeq	r0, r0, r0, lsl r3
 698:	10540001 	subsne	r0, r4, r1
 69c:	4c000003 	stcmi	0, cr0, [r0], {3}
 6a0:	01000003 	tsteq	r0, r3
 6a4:	00005600 	andeq	r5, r0, r0, lsl #12
 6a8:	00000000 	andeq	r0, r0, r0
 6ac:	02e00000 	rsceq	r0, r0, #0
 6b0:	02ec0000 	rsceq	r0, ip, #0
 6b4:	00010000 	andeq	r0, r1, r0
 6b8:	0002ec50 	andeq	lr, r2, r0, asr ip
 6bc:	00031c00 	andeq	r1, r3, r0, lsl #24
 6c0:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
 6cc:	000002cc 	andeq	r0, r0, ip, asr #5
 6d0:	000002d4 	ldrdeq	r0, [r0], -r4
 6d4:	9f300002 	svcls	0x00300002
 6d8:	000002d4 	ldrdeq	r0, [r0], -r4
 6dc:	00000310 	andeq	r0, r0, r0, lsl r3
 6e0:	e80a0007 	stmda	sl, {r0, r1, r2}
 6e4:	1c007503 	cfstr32ne	mvfx7, [r0], {3}
 6e8:	0003109f 	muleq	r3, pc, r0	; <UNPREDICTABLE>
 6ec:	00031400 	andeq	r1, r3, r0, lsl #8
 6f0:	0a000700 	beq	22f8 <__start-0x5d08>
 6f4:	007503e9 	rsbseq	r0, r5, r9, ror #7
 6f8:	03149f1c 	tsteq	r4, #28, 30	; 0x70
 6fc:	034c0000 	movteq	r0, #49152	; 0xc000
 700:	00070000 	andeq	r0, r7, r0
 704:	7503e80a 	strvc	lr, [r3, #-2058]	; 0xfffff7f6
 708:	009f1c00 	addseq	r1, pc, r0, lsl #24
	...
 714:	04000000 	streq	r0, [r0], #-0
 718:	01000000 	mrseq	r0, (UNDEF: 0)
 71c:	00045000 	andeq	r5, r4, r0
 720:	00080000 	andeq	r0, r8, r0
 724:	00040000 	andeq	r0, r4, r0
 728:	9f5001f3 	svcls	0x005001f3
	...
 734:	00000010 	andeq	r0, r0, r0, lsl r0
 738:	0000001c 	andeq	r0, r0, ip, lsl r0
 73c:	1c510001 	mrrcne	0, 0, r0, r1, cr1
 740:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
 744:	04000000 	streq	r0, [r0], #-0
 748:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
 74c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 750:	00000000 	andeq	r0, r0, r0
 754:	00001000 	andeq	r1, r0, r0
 758:	00002000 	andeq	r2, r0, r0
 75c:	52000100 	andpl	r0, r0, #0, 2
 760:	00000020 	andeq	r0, r0, r0, lsr #32
 764:	00000028 	andeq	r0, r0, r8, lsr #32
 768:	01f30004 	mvnseq	r0, r4
 76c:	00009f52 	andeq	r9, r0, r2, asr pc
 770:	00000000 	andeq	r0, r0, r0
 774:	00280000 	eoreq	r0, r8, r0
 778:	002c0000 	eoreq	r0, ip, r0
 77c:	00010000 	andeq	r0, r1, r0
 780:	00002c50 	andeq	r2, r0, r0, asr ip
 784:	00003800 	andeq	r3, r0, r0, lsl #16
 788:	f3000400 	vshl.u8	d0, d0, d0
 78c:	009f5001 	addseq	r5, pc, r1
 790:	00000000 	andeq	r0, r0, r0
 794:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
 798:	30000000 	andcc	r0, r0, r0
 79c:	01000000 	mrseq	r0, (UNDEF: 0)
 7a0:	00305100 	eorseq	r5, r0, r0, lsl #2
 7a4:	00380000 	eorseq	r0, r8, r0
 7a8:	00040000 	andeq	r0, r4, r0
 7ac:	9f5101f3 	svcls	0x005101f3
	...
 7bc:	0000001b 	andeq	r0, r0, fp, lsl r0
 7c0:	93500006 	cmpls	r0, #6
 7c4:	04935104 	ldreq	r5, [r3], #260	; 0x104
 7c8:	0000001b 	andeq	r0, r0, fp, lsl r0
 7cc:	00000044 	andeq	r0, r0, r4, asr #32
 7d0:	03f30006 	mvnseq	r0, #6
 7d4:	9f2500f5 	svcls	0x002500f5
	...
 7e4:	0000001b 	andeq	r0, r0, fp, lsl r0
 7e8:	93520006 	cmpls	r2, #6
 7ec:	04935304 	ldreq	r5, [r3], #772	; 0x304
 7f0:	0000001b 	andeq	r0, r0, fp, lsl r0
 7f4:	00000044 	andeq	r0, r0, r4, asr #32
 7f8:	03f30006 	mvnseq	r0, #6
 7fc:	9f2502f5 	svcls	0x002502f5
	...
 808:	00000044 	andeq	r0, r0, r4, asr #32
 80c:	0000005f 	andeq	r0, r0, pc, asr r0
 810:	93500006 	cmpls	r0, #6
 814:	04935104 	ldreq	r5, [r3], #260	; 0x104
 818:	0000005f 	andeq	r0, r0, pc, asr r0
 81c:	00000084 	andeq	r0, r0, r4, lsl #1
 820:	03f30006 	mvnseq	r0, #6
 824:	9f2500f5 	svcls	0x002500f5
	...
 830:	00000044 	andeq	r0, r0, r4, asr #32
 834:	0000005f 	andeq	r0, r0, pc, asr r0
 838:	93520006 	cmpls	r2, #6
 83c:	04935304 	ldreq	r5, [r3], #772	; 0x304
 840:	0000005f 	andeq	r0, r0, pc, asr r0
 844:	00000084 	andeq	r0, r0, r4, lsl #1
 848:	03f30006 	mvnseq	r0, #6
 84c:	9f2502f5 	svcls	0x002502f5
	...
 85c:	00000044 	andeq	r0, r0, r4, asr #32
 860:	93500006 	cmpls	r0, #6
 864:	04935104 	ldreq	r5, [r3], #260	; 0x104
 868:	00000044 	andeq	r0, r0, r4, asr #32
 86c:	00000158 	andeq	r0, r0, r8, asr r1
 870:	03f30006 	mvnseq	r0, #6
 874:	9f2500f5 	svcls	0x002500f5
 878:	00000158 	andeq	r0, r0, r8, asr r1
 87c:	00000178 	andeq	r0, r0, r8, ror r1
 880:	93500006 	cmpls	r0, #6
 884:	04935104 	ldreq	r5, [r3], #260	; 0x104
	...
 894:	00000034 	andeq	r0, r0, r4, lsr r0
 898:	93520006 	cmpls	r2, #6
 89c:	04935304 	ldreq	r5, [r3], #772	; 0x304
 8a0:	00000034 	andeq	r0, r0, r4, lsr r0
 8a4:	00000158 	andeq	r0, r0, r8, asr r1
 8a8:	03f30006 	mvnseq	r0, #6
 8ac:	9f2502f5 	svcls	0x002502f5
 8b0:	00000158 	andeq	r0, r0, r8, asr r1
 8b4:	00000178 	andeq	r0, r0, r8, ror r1
 8b8:	93520006 	cmpls	r2, #6
 8bc:	04935304 	ldreq	r5, [r3], #772	; 0x304
	...
 8cc:	00000018 	andeq	r0, r0, r8, lsl r0
 8d0:	9f300002 	svcls	0x00300002
 8d4:	00000018 	andeq	r0, r0, r8, lsl r0
 8d8:	00000154 	andeq	r0, r0, r4, asr r1
 8dc:	585a0001 	ldmdapl	sl, {r0}^
 8e0:	68000001 	stmdavs	r0, {r0}
 8e4:	01000001 	tsteq	r0, r1
 8e8:	01685a00 	cmneq	r8, r0, lsl #20
 8ec:	01780000 	cmneq	r8, r0
 8f0:	00030000 	andeq	r0, r3, r0
 8f4:	009fff09 	addseq	pc, pc, r9, lsl #30
 8f8:	00000000 	andeq	r0, r0, r0
 8fc:	2c000000 	stccs	0, cr0, [r0], {-0}
 900:	38000001 	stmdacc	r0, {r0}
 904:	06000001 	streq	r0, [r0], -r1
 908:	04935200 	ldreq	r5, [r3], #512	; 0x200
 90c:	38049353 	stmdacc	r4, {r0, r1, r4, r6, r8, r9, ip, pc}
 910:	44000001 	strmi	r0, [r0], #-1
 914:	0d000001 	stceq	0, cr0, [r0, #-4]
 918:	2500f500 	strcs	pc, [r0, #-1280]	; 0xfffffb00
 91c:	2502f51f 	strcs	pc, [r2, #-1311]	; 0xfffffae1
 920:	2500f527 	strcs	pc, [r0, #-1319]	; 0xfffffad9
 924:	00009f22 	andeq	r9, r0, r2, lsr #30
 928:	00000000 	andeq	r0, r0, r0
 92c:	00280000 	eoreq	r0, r8, r0
 930:	01580000 	cmpeq	r8, r0
 934:	00020000 	andeq	r0, r2, r0
 938:	00009f30 	andeq	r9, r0, r0, lsr pc
 93c:	00000000 	andeq	r0, r0, r0
 940:	00280000 	eoreq	r0, r8, r0
 944:	00900000 	addseq	r0, r0, r0
 948:	00060000 	andeq	r0, r6, r0
 94c:	59049358 	stmdbpl	r4, {r3, r4, r6, r8, r9, ip, pc}
 950:	00000493 	muleq	r0, r3, r4
 954:	00000000 	andeq	r0, r0, r0
 958:	00280000 	eoreq	r0, r8, r0
 95c:	00940000 	addseq	r0, r4, r0
 960:	00060000 	andeq	r0, r6, r0
 964:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 968:	00000493 	muleq	r0, r3, r4
 96c:	00000000 	andeq	r0, r0, r0
 970:	00280000 	eoreq	r0, r8, r0
 974:	00a40000 	adceq	r0, r4, r0
 978:	000a0000 	andeq	r0, sl, r0
 97c:	0000089e 	muleq	r0, lr, r8
 980:	00000000 	andeq	r0, r0, r0
 984:	00a40000 	adceq	r0, r4, r0
 988:	01000000 	mrseq	r0, (UNDEF: 0)
 98c:	00060000 	andeq	r0, r6, r0
 990:	53049352 	movwpl	r9, #17234	; 0x4352
 994:	00000493 	muleq	r0, r3, r4
 998:	00000000 	andeq	r0, r0, r0
 99c:	00280000 	eoreq	r0, r8, r0
 9a0:	00940000 	addseq	r0, r4, r0
 9a4:	00060000 	andeq	r0, r6, r0
 9a8:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 9ac:	00a00493 	umlaleq	r0, r0, r3, r4	; <UNPREDICTABLE>
 9b0:	00bc0000 	adcseq	r0, ip, r0
 9b4:	00060000 	andeq	r0, r6, r0
 9b8:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 9bc:	00d00493 	smullseq	r0, r0, r3, r4	; <UNPREDICTABLE>
 9c0:	00e80000 	rsceq	r0, r8, r0
 9c4:	00060000 	andeq	r0, r6, r0
 9c8:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 9cc:	00ec0493 	smlaleq	r0, ip, r3, r4
 9d0:	010c0000 	mrseq	r0, (UNDEF: 12)
 9d4:	00060000 	andeq	r0, r6, r0
 9d8:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 9dc:	00000493 	muleq	r0, r3, r4
 9e0:	00000000 	andeq	r0, r0, r0
 9e4:	00280000 	eoreq	r0, r8, r0
 9e8:	00780000 	rsbseq	r0, r8, r0
 9ec:	00060000 	andeq	r0, r6, r0
 9f0:	59049358 	stmdbpl	r4, {r3, r4, r6, r8, r9, ip, pc}
 9f4:	00780493 			; <UNDEFINED> instruction: 0x00780493
 9f8:	011c0000 	tsteq	ip, r0
 9fc:	00060000 	andeq	r0, r6, r0
 a00:	57049356 	smlsdpl	r4, r6, r3, r9
 a04:	00000493 	muleq	r0, r3, r4
 a08:	00000000 	andeq	r0, r0, r0
 a0c:	00500000 	subseq	r0, r0, r0
 a10:	00540000 	subseq	r0, r4, r0
 a14:	00010000 	andeq	r0, r1, r0
 a18:	00005450 	andeq	r5, r0, r0, asr r4
 a1c:	00012c00 	andeq	r2, r1, r0, lsl #24
 a20:	5b000100 	blpl	e28 <__start-0x71d8>
	...
 a2c:	00000058 	andeq	r0, r0, r8, asr r0
 a30:	0000005c 	andeq	r0, r0, ip, asr r0
 a34:	00500001 	subseq	r0, r0, r1
 a38:	00000000 	andeq	r0, r0, r0
 a3c:	b4000000 	strlt	r0, [r0], #-0
 a40:	d0000000 	andle	r0, r0, r0
 a44:	01000000 	mrseq	r0, (UNDEF: 0)
 a48:	00d05000 	sbcseq	r5, r0, r0
 a4c:	00d40000 	sbcseq	r0, r4, r0
 a50:	00030000 	andeq	r0, r3, r0
 a54:	d49f7f70 	ldrle	r7, [pc], #3952	; a5c <__start-0x75a4>
 a58:	ec000000 	stc	0, cr0, [r0], {-0}
 a5c:	01000000 	mrseq	r0, (UNDEF: 0)
 a60:	00ec5000 	rsceq	r5, ip, r0
 a64:	00f00000 	rscseq	r0, r0, r0
 a68:	00030000 	andeq	r0, r3, r0
 a6c:	f09f7f70 			; <UNDEFINED> instruction: 0xf09f7f70
 a70:	fc000000 	stc2	0, cr0, [r0], {-0}
 a74:	01000000 	mrseq	r0, (UNDEF: 0)
 a78:	00005000 	andeq	r5, r0, r0
 a7c:	00000000 	andeq	r0, r0, r0
 a80:	005c0000 	subseq	r0, ip, r0
 a84:	00b80000 	adcseq	r0, r8, r0
 a88:	00010000 	andeq	r0, r1, r0
 a8c:	0000b850 	andeq	fp, r0, r0, asr r8
 a90:	00012c00 	andeq	r2, r1, r0, lsl #24
 a94:	51000100 	mrspl	r0, (UNDEF: 16)
	...
 aa4:	00000020 	andeq	r0, r0, r0, lsr #32
 aa8:	93500006 	cmpls	r0, #6
 aac:	04935104 	ldreq	r5, [r3], #260	; 0x104
 ab0:	00000020 	andeq	r0, r0, r0, lsr #32
 ab4:	00000120 	andeq	r0, r0, r0, lsr #2
 ab8:	03f30006 	mvnseq	r0, #6
 abc:	9f2500f5 	svcls	0x002500f5
	...
 acc:	00000033 	andeq	r0, r0, r3, lsr r0
 ad0:	93520006 	cmpls	r2, #6
 ad4:	04935304 	ldreq	r5, [r3], #772	; 0x304
 ad8:	00000033 	andeq	r0, r0, r3, lsr r0
 adc:	00000120 	andeq	r0, r0, r0, lsr #2
 ae0:	03f30006 	mvnseq	r0, #6
 ae4:	9f2502f5 	svcls	0x002502f5
	...
 af0:	0000001c 	andeq	r0, r0, ip, lsl r0
 af4:	0000007c 	andeq	r0, r0, ip, ror r0
 af8:	93580006 	cmpls	r8, #6
 afc:	04935904 	ldreq	r5, [r3], #2308	; 0x904
	...
 b08:	00000014 	andeq	r0, r0, r4, lsl r0
 b0c:	00000080 	andeq	r0, r0, r0, lsl #1
 b10:	93540006 	cmpls	r4, #6
 b14:	04935504 	ldreq	r5, [r3], #1284	; 0x504
	...
 b20:	0000001c 	andeq	r0, r0, ip, lsl r0
 b24:	00000090 	muleq	r0, r0, r0
 b28:	089e000a 	ldmeq	lr, {r1, r3}
	...
 b34:	00000090 	muleq	r0, r0, r0
 b38:	000000e8 	andeq	r0, r0, r8, ror #1
 b3c:	93500006 	cmpls	r0, #6
 b40:	04935104 	ldreq	r5, [r3], #260	; 0x104
 b44:	000000e8 	andeq	r0, r0, r8, ror #1
 b48:	00000118 	andeq	r0, r0, r8, lsl r1
 b4c:	93580006 	cmpls	r8, #6
 b50:	04935904 	ldreq	r5, [r3], #2308	; 0x904
 b54:	00000118 	andeq	r0, r0, r8, lsl r1
 b58:	00000120 	andeq	r0, r0, r0, lsr #2
 b5c:	93500006 	cmpls	r0, #6
 b60:	04935104 	ldreq	r5, [r3], #260	; 0x104
	...
 b6c:	0000001c 	andeq	r0, r0, ip, lsl r0
 b70:	00000080 	andeq	r0, r0, r0, lsl #1
 b74:	93540006 	cmpls	r4, #6
 b78:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 b7c:	0000008c 	andeq	r0, r0, ip, lsl #1
 b80:	000000a8 	andeq	r0, r0, r8, lsr #1
 b84:	93540006 	cmpls	r4, #6
 b88:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 b8c:	000000bc 	strheq	r0, [r0], -ip
 b90:	000000d4 	ldrdeq	r0, [r0], -r4
 b94:	93540006 	cmpls	r4, #6
 b98:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 b9c:	000000d8 	ldrdeq	r0, [r0], -r8
 ba0:	000000e8 	andeq	r0, r0, r8, ror #1
 ba4:	93540006 	cmpls	r4, #6
 ba8:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 bac:	000000e8 	andeq	r0, r0, r8, ror #1
 bb0:	00000118 	andeq	r0, r0, r8, lsl r1
 bb4:	04f5000b 	ldrbteq	r0, [r5], #11
 bb8:	f7007225 			; <UNDEFINED> instruction: 0xf7007225
 bbc:	2525f72c 	strcs	pc, [r5, #-1836]!	; 0xfffff8d4
 bc0:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 bc4:	00000000 	andeq	r0, r0, r0
 bc8:	00001c00 	andeq	r1, r0, r0, lsl #24
 bcc:	00006400 	andeq	r6, r0, r0, lsl #8
 bd0:	58000600 	stmdapl	r0, {r9, sl}
 bd4:	93590493 	cmpls	r9, #-1828716544	; 0x93000000
 bd8:	00006404 	andeq	r6, r0, r4, lsl #8
 bdc:	00010c00 	andeq	r0, r1, r0, lsl #24
 be0:	56000600 	strpl	r0, [r0], -r0, lsl #12
 be4:	93570493 	cmpls	r7, #-1828716544	; 0x93000000
 be8:	00000004 	andeq	r0, r0, r4
 bec:	00000000 	andeq	r0, r0, r0
 bf0:	00003c00 	andeq	r3, r0, r0, lsl #24
 bf4:	00004000 	andeq	r4, r0, r0
 bf8:	50000100 	andpl	r0, r0, r0, lsl #2
 bfc:	00000040 	andeq	r0, r0, r0, asr #32
 c00:	00000118 	andeq	r0, r0, r8, lsl r1
 c04:	005a0001 	subseq	r0, sl, r1
 c08:	00000000 	andeq	r0, r0, r0
 c0c:	44000000 	strmi	r0, [r0], #-0
 c10:	70000000 	andvc	r0, r0, r0
 c14:	01000000 	mrseq	r0, (UNDEF: 0)
 c18:	00005000 	andeq	r5, r0, r0
 c1c:	00000000 	andeq	r0, r0, r0
 c20:	00a00000 	adceq	r0, r0, r0
 c24:	00bc0000 	adcseq	r0, ip, r0
 c28:	00010000 	andeq	r0, r1, r0
 c2c:	0000bc53 	andeq	fp, r0, r3, asr ip
 c30:	0000c000 	andeq	ip, r0, r0
 c34:	73000300 	movwvc	r0, #768	; 0x300
 c38:	00c09f7f 	sbceq	r9, r0, pc, ror pc
 c3c:	00d80000 	sbcseq	r0, r8, r0
 c40:	00010000 	andeq	r0, r1, r0
 c44:	0000d853 	andeq	sp, r0, r3, asr r8
 c48:	0000dc00 	andeq	sp, r0, r0, lsl #24
 c4c:	73000300 	movwvc	r0, #768	; 0x300
 c50:	00dc9f7f 	sbcseq	r9, ip, pc, ror pc
 c54:	00ec0000 	rsceq	r0, ip, r0
 c58:	00010000 	andeq	r0, r1, r0
 c5c:	00000053 	andeq	r0, r0, r3, asr r0
 c60:	00000000 	andeq	r0, r0, r0
 c64:	00004800 	andeq	r4, r0, r0, lsl #16
 c68:	0000a400 	andeq	sl, r0, r0, lsl #8
 c6c:	53000100 	movwpl	r0, #256	; 0x100
 c70:	000000a4 	andeq	r0, r0, r4, lsr #1
 c74:	00000118 	andeq	r0, r0, r8, lsl r1
 c78:	00520001 	subseq	r0, r2, r1
 c7c:	00000000 	andeq	r0, r0, r0
 c80:	Address 0x0000000000000c80 is out of bounds.


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
