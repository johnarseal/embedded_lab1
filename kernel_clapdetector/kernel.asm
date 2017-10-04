
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
    82d4:	eb0002a4 	bl	8d6c <delay_cycles>
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
    830c:	eb000296 	bl	8d6c <delay_cycles>
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
    8350:	eb000285 	bl	8d6c <delay_cycles>
    8354:	e30b3000 	movw	r3, #45056	; 0xb000
    8358:	e3403000 	movt	r3, #0
    835c:	e5933000 	ldr	r3, [r3]
    8360:	e2833098 	add	r3, r3, #152	; 0x98
    8364:	e3a02000 	mov	r2, #0
    8368:	e5832000 	str	r2, [r3]
    836c:	e24bd004 	sub	sp, fp, #4
    8370:	e8bd8800 	pop	{fp, pc}

00008374 <kernel_main>:
    8374:	e92d4008 	push	{r3, lr}
    8378:	eb0000b1 	bl	8644 <uart_init>
    837c:	e30005dc 	movw	r0, #1500	; 0x5dc
    8380:	eb0000ed 	bl	873c <i2c_master_init>
    8384:	eb0001e7 	bl	8b28 <adc_init>
    8388:	eb0000d8 	bl	86f0 <uart_get_byte>
    838c:	e3500030 	cmp	r0, #48	; 0x30
    8390:	1a000001 	bne	839c <kernel_main+0x28>
    8394:	eb00023c 	bl	8c8c <display_light>
    8398:	eafffffa 	b	8388 <kernel_main+0x14>
    839c:	e3500031 	cmp	r0, #49	; 0x31
    83a0:	1afffff8 	bne	8388 <kernel_main+0x14>
    83a4:	eb000240 	bl	8cac <clap_detect>
    83a8:	eafffff6 	b	8388 <kernel_main+0x14>

000083ac <printnumk>:
    83ac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    83b0:	e24dd008 	sub	sp, sp, #8
    83b4:	e1a06002 	mov	r6, r2
    83b8:	e1a07003 	mov	r7, r3
    83bc:	e3500008 	cmp	r0, #8
    83c0:	0a000004 	beq	83d8 <printnumk+0x2c>
    83c4:	e30a8018 	movw	r8, #40984	; 0xa018
    83c8:	e3408000 	movt	r8, #0
    83cc:	e3500010 	cmp	r0, #16
    83d0:	13a08000 	movne	r8, #0
    83d4:	ea000001 	b	83e0 <printnumk+0x34>
    83d8:	e30a8014 	movw	r8, #40980	; 0xa014
    83dc:	e3408000 	movt	r8, #0
    83e0:	e28d4007 	add	r4, sp, #7
    83e4:	e1a05000 	mov	r5, r0
    83e8:	e3a09000 	mov	r9, #0
    83ec:	e30aa000 	movw	sl, #40960	; 0xa000
    83f0:	e340a000 	movt	sl, #0
    83f4:	e1a00006 	mov	r0, r6
    83f8:	e1a01007 	mov	r1, r7
    83fc:	e1a02005 	mov	r2, r5
    8400:	e1a03009 	mov	r3, r9
    8404:	eb000269 	bl	8db0 <__aeabi_uldivmod>
    8408:	e7da3002 	ldrb	r3, [sl, r2]
    840c:	e4443001 	strb	r3, [r4], #-1
    8410:	e1a00006 	mov	r0, r6
    8414:	e1a01007 	mov	r1, r7
    8418:	e1a02005 	mov	r2, r5
    841c:	e1a03009 	mov	r3, r9
    8420:	eb000262 	bl	8db0 <__aeabi_uldivmod>
    8424:	e1a06000 	mov	r6, r0
    8428:	e1a07001 	mov	r7, r1
    842c:	e1963007 	orrs	r3, r6, r7
    8430:	1affffef 	bne	83f4 <printnumk+0x48>
    8434:	e3580000 	cmp	r8, #0
    8438:	0a000002 	beq	8448 <printnumk+0x9c>
    843c:	e5d80000 	ldrb	r0, [r8]
    8440:	e3500000 	cmp	r0, #0
    8444:	1a000004 	bne	845c <printnumk+0xb0>
    8448:	e2844001 	add	r4, r4, #1
    844c:	e28d3008 	add	r3, sp, #8
    8450:	e1540003 	cmp	r4, r3
    8454:	1a000005 	bne	8470 <printnumk+0xc4>
    8458:	ea000009 	b	8484 <printnumk+0xd8>
    845c:	eb00009a 	bl	86cc <uart_put_byte>
    8460:	e5f80001 	ldrb	r0, [r8, #1]!
    8464:	e3500000 	cmp	r0, #0
    8468:	1afffffb 	bne	845c <printnumk+0xb0>
    846c:	eafffff5 	b	8448 <printnumk+0x9c>
    8470:	e4d40001 	ldrb	r0, [r4], #1
    8474:	eb000094 	bl	86cc <uart_put_byte>
    8478:	e28d3008 	add	r3, sp, #8
    847c:	e1540003 	cmp	r4, r3
    8480:	1afffffa 	bne	8470 <printnumk+0xc4>
    8484:	e28dd008 	add	sp, sp, #8
    8488:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0000848c <printk>:
    848c:	e92d000f 	push	{r0, r1, r2, r3}
    8490:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8494:	e24dd008 	sub	sp, sp, #8
    8498:	e59d4020 	ldr	r4, [sp, #32]
    849c:	e28d3024 	add	r3, sp, #36	; 0x24
    84a0:	e58d3004 	str	r3, [sp, #4]
    84a4:	e3a06000 	mov	r6, #0
    84a8:	e3a08008 	mov	r8, #8
    84ac:	e3a07010 	mov	r7, #16
    84b0:	ea00005c 	b	8628 <printk+0x19c>
    84b4:	e3500025 	cmp	r0, #37	; 0x25
    84b8:	0a000002 	beq	84c8 <printk+0x3c>
    84bc:	e2844001 	add	r4, r4, #1
    84c0:	eb000081 	bl	86cc <uart_put_byte>
    84c4:	ea000057 	b	8628 <printk+0x19c>
    84c8:	e5d43001 	ldrb	r3, [r4, #1]
    84cc:	e353006f 	cmp	r3, #111	; 0x6f
    84d0:	0a00002c 	beq	8588 <printk+0xfc>
    84d4:	8a000006 	bhi	84f4 <printk+0x68>
    84d8:	e3530063 	cmp	r3, #99	; 0x63
    84dc:	0a000045 	beq	85f8 <printk+0x16c>
    84e0:	e3530064 	cmp	r3, #100	; 0x64
    84e4:	0a00000d 	beq	8520 <printk+0x94>
    84e8:	e3530025 	cmp	r3, #37	; 0x25
    84ec:	1a00004a 	bne	861c <printk+0x190>
    84f0:	ea000046 	b	8610 <printk+0x184>
    84f4:	e3530073 	cmp	r3, #115	; 0x73
    84f8:	0a000032 	beq	85c8 <printk+0x13c>
    84fc:	8a000002 	bhi	850c <printk+0x80>
    8500:	e3530070 	cmp	r3, #112	; 0x70
    8504:	0a000027 	beq	85a8 <printk+0x11c>
    8508:	ea000043 	b	861c <printk+0x190>
    850c:	e3530075 	cmp	r3, #117	; 0x75
    8510:	0a000014 	beq	8568 <printk+0xdc>
    8514:	e3530078 	cmp	r3, #120	; 0x78
    8518:	0a000022 	beq	85a8 <printk+0x11c>
    851c:	ea00003e 	b	861c <printk+0x190>
    8520:	e59d3004 	ldr	r3, [sp, #4]
    8524:	e2832004 	add	r2, r3, #4
    8528:	e58d2004 	str	r2, [sp, #4]
    852c:	e5935000 	ldr	r5, [r3]
    8530:	e3550000 	cmp	r5, #0
    8534:	aa000006 	bge	8554 <printk+0xc8>
    8538:	e3a0002d 	mov	r0, #45	; 0x2d
    853c:	eb000062 	bl	86cc <uart_put_byte>
    8540:	e2652000 	rsb	r2, r5, #0
    8544:	e3a0000a 	mov	r0, #10
    8548:	e1a03fc2 	asr	r3, r2, #31
    854c:	ebffff96 	bl	83ac <printnumk>
    8550:	ea000033 	b	8624 <printk+0x198>
    8554:	e3a0000a 	mov	r0, #10
    8558:	e1a02005 	mov	r2, r5
    855c:	e1a03fc5 	asr	r3, r5, #31
    8560:	ebffff91 	bl	83ac <printnumk>
    8564:	ea00002e 	b	8624 <printk+0x198>
    8568:	e59d3004 	ldr	r3, [sp, #4]
    856c:	e2832004 	add	r2, r3, #4
    8570:	e58d2004 	str	r2, [sp, #4]
    8574:	e3a0000a 	mov	r0, #10
    8578:	e5932000 	ldr	r2, [r3]
    857c:	e1a03006 	mov	r3, r6
    8580:	ebffff89 	bl	83ac <printnumk>
    8584:	ea000026 	b	8624 <printk+0x198>
    8588:	e59d3004 	ldr	r3, [sp, #4]
    858c:	e2832004 	add	r2, r3, #4
    8590:	e58d2004 	str	r2, [sp, #4]
    8594:	e1a00008 	mov	r0, r8
    8598:	e5932000 	ldr	r2, [r3]
    859c:	e1a03006 	mov	r3, r6
    85a0:	ebffff81 	bl	83ac <printnumk>
    85a4:	ea00001e 	b	8624 <printk+0x198>
    85a8:	e59d3004 	ldr	r3, [sp, #4]
    85ac:	e2832004 	add	r2, r3, #4
    85b0:	e58d2004 	str	r2, [sp, #4]
    85b4:	e1a00007 	mov	r0, r7
    85b8:	e5932000 	ldr	r2, [r3]
    85bc:	e1a03006 	mov	r3, r6
    85c0:	ebffff79 	bl	83ac <printnumk>
    85c4:	ea000016 	b	8624 <printk+0x198>
    85c8:	e59d3004 	ldr	r3, [sp, #4]
    85cc:	e2832004 	add	r2, r3, #4
    85d0:	e58d2004 	str	r2, [sp, #4]
    85d4:	e5935000 	ldr	r5, [r3]
    85d8:	e5d50000 	ldrb	r0, [r5]
    85dc:	e3500000 	cmp	r0, #0
    85e0:	0a00000f 	beq	8624 <printk+0x198>
    85e4:	eb000038 	bl	86cc <uart_put_byte>
    85e8:	e5f50001 	ldrb	r0, [r5, #1]!
    85ec:	e3500000 	cmp	r0, #0
    85f0:	1afffffb 	bne	85e4 <printk+0x158>
    85f4:	ea00000a 	b	8624 <printk+0x198>
    85f8:	e59d3004 	ldr	r3, [sp, #4]
    85fc:	e2832004 	add	r2, r3, #4
    8600:	e58d2004 	str	r2, [sp, #4]
    8604:	e5d30000 	ldrb	r0, [r3]
    8608:	eb00002f 	bl	86cc <uart_put_byte>
    860c:	ea000004 	b	8624 <printk+0x198>
    8610:	e3a00025 	mov	r0, #37	; 0x25
    8614:	eb00002c 	bl	86cc <uart_put_byte>
    8618:	ea000001 	b	8624 <printk+0x198>
    861c:	e3e00000 	mvn	r0, #0
    8620:	ea000003 	b	8634 <printk+0x1a8>
    8624:	e2844002 	add	r4, r4, #2
    8628:	e5d40000 	ldrb	r0, [r4]
    862c:	e3500000 	cmp	r0, #0
    8630:	1affff9f 	bne	84b4 <printk+0x28>
    8634:	e28dd008 	add	sp, sp, #8
    8638:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    863c:	e28dd010 	add	sp, sp, #16
    8640:	e12fff1e 	bx	lr

00008644 <uart_init>:
    8644:	e92d4008 	push	{r3, lr}
    8648:	e3a0000f 	mov	r0, #15
    864c:	e3a01000 	mov	r1, #0
    8650:	ebffff09 	bl	827c <gpio_set_pull>
    8654:	e3a0000e 	mov	r0, #14
    8658:	e3a01000 	mov	r1, #0
    865c:	ebffff06 	bl	827c <gpio_set_pull>
    8660:	e3a0000f 	mov	r0, #15
    8664:	e3a01002 	mov	r1, #2
    8668:	ebfffe79 	bl	8054 <gpio_config>
    866c:	e3a0000e 	mov	r0, #14
    8670:	e3a01002 	mov	r1, #2
    8674:	ebfffe76 	bl	8054 <gpio_config>
    8678:	e3a03a05 	mov	r3, #20480	; 0x5000
    867c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8680:	e5932004 	ldr	r2, [r3, #4]
    8684:	e3822001 	orr	r2, r2, #1
    8688:	e5832004 	str	r2, [r3, #4]
    868c:	e3a02003 	mov	r2, #3
    8690:	e583204c 	str	r2, [r3, #76]	; 0x4c
    8694:	e3a02000 	mov	r2, #0
    8698:	e5832044 	str	r2, [r3, #68]	; 0x44
    869c:	e300210e 	movw	r2, #270	; 0x10e
    86a0:	e5832068 	str	r2, [r3, #104]	; 0x68
    86a4:	e8bd8008 	pop	{r3, pc}

000086a8 <uart_close>:
    86a8:	e3a03a05 	mov	r3, #20480	; 0x5000
    86ac:	e3433f21 	movt	r3, #16161	; 0x3f21
    86b0:	e5932048 	ldr	r2, [r3, #72]	; 0x48
    86b4:	e3822006 	orr	r2, r2, #6
    86b8:	e5832048 	str	r2, [r3, #72]	; 0x48
    86bc:	e5932004 	ldr	r2, [r3, #4]
    86c0:	e3c22001 	bic	r2, r2, #1
    86c4:	e5832004 	str	r2, [r3, #4]
    86c8:	e12fff1e 	bx	lr

000086cc <uart_put_byte>:
    86cc:	e3a02a05 	mov	r2, #20480	; 0x5000
    86d0:	e3432f21 	movt	r2, #16161	; 0x3f21
    86d4:	e5923054 	ldr	r3, [r2, #84]	; 0x54
    86d8:	e3130020 	tst	r3, #32
    86dc:	0afffffc 	beq	86d4 <uart_put_byte+0x8>
    86e0:	e3a03a05 	mov	r3, #20480	; 0x5000
    86e4:	e3433f21 	movt	r3, #16161	; 0x3f21
    86e8:	e5c30040 	strb	r0, [r3, #64]	; 0x40
    86ec:	e12fff1e 	bx	lr

000086f0 <uart_get_byte>:
    86f0:	e92d4038 	push	{r3, r4, r5, lr}
    86f4:	e3a02000 	mov	r2, #0
    86f8:	e3a04a05 	mov	r4, #20480	; 0x5000
    86fc:	e3434f21 	movt	r4, #16161	; 0x3f21
    8700:	e30a501c 	movw	r5, #40988	; 0xa01c
    8704:	e3405000 	movt	r5, #0
    8708:	ea000004 	b	8720 <uart_get_byte+0x30>
    870c:	e3520000 	cmp	r2, #0
    8710:	1a000002 	bne	8720 <uart_get_byte+0x30>
    8714:	e1a00005 	mov	r0, r5
    8718:	ebffff5b 	bl	848c <printk>
    871c:	e3a02001 	mov	r2, #1
    8720:	e5943054 	ldr	r3, [r4, #84]	; 0x54
    8724:	e3130001 	tst	r3, #1
    8728:	0afffff7 	beq	870c <uart_get_byte+0x1c>
    872c:	e3a03a05 	mov	r3, #20480	; 0x5000
    8730:	e3433f21 	movt	r3, #16161	; 0x3f21
    8734:	e5d30040 	ldrb	r0, [r3, #64]	; 0x40
    8738:	e8bd8038 	pop	{r3, r4, r5, pc}

0000873c <i2c_master_init>:
    873c:	e92d4008 	push	{r3, lr}
    8740:	e3a03901 	mov	r3, #16384	; 0x4000
    8744:	e3433f80 	movt	r3, #16256	; 0x3f80
    8748:	e5830014 	str	r0, [r3, #20]
    874c:	e3a00002 	mov	r0, #2
    8750:	e3a01004 	mov	r1, #4
    8754:	ebfffe3e 	bl	8054 <gpio_config>
    8758:	e3a00003 	mov	r0, #3
    875c:	e3a01004 	mov	r1, #4
    8760:	ebfffe3b 	bl	8054 <gpio_config>
    8764:	e8bd8008 	pop	{r3, pc}

00008768 <i2c_master_write>:
    8768:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    876c:	e1a06000 	mov	r6, r0
    8770:	e1a05001 	mov	r5, r1
    8774:	e1a07002 	mov	r7, r2
    8778:	e3a04901 	mov	r4, #16384	; 0x4000
    877c:	e3434f80 	movt	r4, #16256	; 0x3f80
    8780:	e1a00004 	mov	r0, r4
    8784:	e3a01010 	mov	r1, #16
    8788:	e1a02001 	mov	r2, r1
    878c:	eb00016c 	bl	8d44 <ptr_set_bits>
    8790:	e3003302 	movw	r3, #770	; 0x302
    8794:	e5843004 	str	r3, [r4, #4]
    8798:	e584700c 	str	r7, [r4, #12]
    879c:	e1a07005 	mov	r7, r5
    87a0:	e5845008 	str	r5, [r4, #8]
    87a4:	e2463001 	sub	r3, r6, #1
    87a8:	e286000f 	add	r0, r6, #15
    87ac:	e3a01901 	mov	r1, #16384	; 0x4000
    87b0:	e3431f80 	movt	r1, #16256	; 0x3f80
    87b4:	e5f32001 	ldrb	r2, [r3, #1]!
    87b8:	e5812010 	str	r2, [r1, #16]
    87bc:	e1530000 	cmp	r3, r0
    87c0:	1afffffb 	bne	87b4 <i2c_master_write+0x4c>
    87c4:	e3a03901 	mov	r3, #16384	; 0x4000
    87c8:	e3433f80 	movt	r3, #16256	; 0x3f80
    87cc:	e3082080 	movw	r2, #32896	; 0x8080
    87d0:	e5832000 	str	r2, [r3]
    87d4:	e3550010 	cmp	r5, #16
    87d8:	9a000012 	bls	8828 <i2c_master_write+0xc0>
    87dc:	e3a04010 	mov	r4, #16
    87e0:	e30a8038 	movw	r8, #41016	; 0xa038
    87e4:	e3408000 	movt	r8, #0
    87e8:	e3a05901 	mov	r5, #16384	; 0x4000
    87ec:	e3435f80 	movt	r5, #16256	; 0x3f80
    87f0:	e1a00008 	mov	r0, r8
    87f4:	ebffff24 	bl	848c <printk>
    87f8:	e5953004 	ldr	r3, [r5, #4]
    87fc:	e3130010 	tst	r3, #16
    8800:	0a000006 	beq	8820 <i2c_master_write+0xb8>
    8804:	e0863004 	add	r3, r6, r4
    8808:	e2844001 	add	r4, r4, #1
    880c:	e4d32001 	ldrb	r2, [r3], #1
    8810:	e5852010 	str	r2, [r5, #16]
    8814:	e5952004 	ldr	r2, [r5, #4]
    8818:	e3120010 	tst	r2, #16
    881c:	1afffff9 	bne	8808 <i2c_master_write+0xa0>
    8820:	e1570004 	cmp	r7, r4
    8824:	8afffff1 	bhi	87f0 <i2c_master_write+0x88>
    8828:	e3a03901 	mov	r3, #16384	; 0x4000
    882c:	e3433f80 	movt	r3, #16256	; 0x3f80
    8830:	e5933004 	ldr	r3, [r3, #4]
    8834:	e3130c01 	tst	r3, #256	; 0x100
    8838:	13a04001 	movne	r4, #1
    883c:	1a000007 	bne	8860 <i2c_master_write+0xf8>
    8840:	e3a03901 	mov	r3, #16384	; 0x4000
    8844:	e3433f80 	movt	r3, #16256	; 0x3f80
    8848:	e5933004 	ldr	r3, [r3, #4]
    884c:	e2033c02 	and	r3, r3, #512	; 0x200
    8850:	e3530000 	cmp	r3, #0
    8854:	03a04000 	moveq	r4, #0
    8858:	13a04002 	movne	r4, #2
    885c:	eaffffff 	b	8860 <i2c_master_write+0xf8>
    8860:	e3a02901 	mov	r2, #16384	; 0x4000
    8864:	e3432f80 	movt	r2, #16256	; 0x3f80
    8868:	e5923004 	ldr	r3, [r2, #4]
    886c:	e3130002 	tst	r3, #2
    8870:	0afffffc 	beq	8868 <i2c_master_write+0x100>
    8874:	e3a00901 	mov	r0, #16384	; 0x4000
    8878:	e3430f80 	movt	r0, #16256	; 0x3f80
    887c:	e3a01002 	mov	r1, #2
    8880:	e1a02001 	mov	r2, r1
    8884:	eb00012e 	bl	8d44 <ptr_set_bits>
    8888:	e1a00004 	mov	r0, r4
    888c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00008890 <i2c_master_read>:
    8890:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8894:	e1a05000 	mov	r5, r0
    8898:	e1a07001 	mov	r7, r1
    889c:	e1a08002 	mov	r8, r2
    88a0:	e3a04901 	mov	r4, #16384	; 0x4000
    88a4:	e3434f80 	movt	r4, #16256	; 0x3f80
    88a8:	e1a00004 	mov	r0, r4
    88ac:	e3a01020 	mov	r1, #32
    88b0:	e1a02001 	mov	r2, r1
    88b4:	eb000122 	bl	8d44 <ptr_set_bits>
    88b8:	e3003302 	movw	r3, #770	; 0x302
    88bc:	e5843004 	str	r3, [r4, #4]
    88c0:	e1a06007 	mov	r6, r7
    88c4:	e5847008 	str	r7, [r4, #8]
    88c8:	e584800c 	str	r8, [r4, #12]
    88cc:	e3083081 	movw	r3, #32897	; 0x8081
    88d0:	e5843000 	str	r3, [r4]
    88d4:	e3a04000 	mov	r4, #0
    88d8:	e3a03901 	mov	r3, #16384	; 0x4000
    88dc:	e3433f80 	movt	r3, #16256	; 0x3f80
    88e0:	ea000005 	b	88fc <i2c_master_read+0x6c>
    88e4:	e2844001 	add	r4, r4, #1
    88e8:	e5931010 	ldr	r1, [r3, #16]
    88ec:	e4c21001 	strb	r1, [r2], #1
    88f0:	e5931004 	ldr	r1, [r3, #4]
    88f4:	e3110020 	tst	r1, #32
    88f8:	1afffff9 	bne	88e4 <i2c_master_read+0x54>
    88fc:	e5932004 	ldr	r2, [r3, #4]
    8900:	e3120002 	tst	r2, #2
    8904:	1a000004 	bne	891c <i2c_master_read+0x8c>
    8908:	e5932004 	ldr	r2, [r3, #4]
    890c:	e3120020 	tst	r2, #32
    8910:	0afffff9 	beq	88fc <i2c_master_read+0x6c>
    8914:	e0852004 	add	r2, r5, r4
    8918:	eafffff1 	b	88e4 <i2c_master_read+0x54>
    891c:	e1a08004 	mov	r8, r4
    8920:	e3a03901 	mov	r3, #16384	; 0x4000
    8924:	e3433f80 	movt	r3, #16256	; 0x3f80
    8928:	e5933004 	ldr	r3, [r3, #4]
    892c:	e3130020 	tst	r3, #32
    8930:	0a000002 	beq	8940 <i2c_master_read+0xb0>
    8934:	e30a0050 	movw	r0, #41040	; 0xa050
    8938:	e3400000 	movt	r0, #0
    893c:	ebfffed2 	bl	848c <printk>
    8940:	e1570008 	cmp	r7, r8
    8944:	9a000013 	bls	8998 <i2c_master_read+0x108>
    8948:	e3a03901 	mov	r3, #16384	; 0x4000
    894c:	e3433f80 	movt	r3, #16256	; 0x3f80
    8950:	e5933004 	ldr	r3, [r3, #4]
    8954:	e3130020 	tst	r3, #32
    8958:	0a00000e 	beq	8998 <i2c_master_read+0x108>
    895c:	e0855008 	add	r5, r5, r8
    8960:	e30a8070 	movw	r8, #41072	; 0xa070
    8964:	e3408000 	movt	r8, #0
    8968:	e3a07901 	mov	r7, #16384	; 0x4000
    896c:	e3437f80 	movt	r7, #16256	; 0x3f80
    8970:	e1a00008 	mov	r0, r8
    8974:	ebfffec4 	bl	848c <printk>
    8978:	e2844001 	add	r4, r4, #1
    897c:	e5973010 	ldr	r3, [r7, #16]
    8980:	e4c53001 	strb	r3, [r5], #1
    8984:	e1560004 	cmp	r6, r4
    8988:	9a000002 	bls	8998 <i2c_master_read+0x108>
    898c:	e5973004 	ldr	r3, [r7, #4]
    8990:	e3130020 	tst	r3, #32
    8994:	1afffff5 	bne	8970 <i2c_master_read+0xe0>
    8998:	e3a03901 	mov	r3, #16384	; 0x4000
    899c:	e3433f80 	movt	r3, #16256	; 0x3f80
    89a0:	e5933004 	ldr	r3, [r3, #4]
    89a4:	e3130c01 	tst	r3, #256	; 0x100
    89a8:	13a04001 	movne	r4, #1
    89ac:	1a000007 	bne	89d0 <i2c_master_read+0x140>
    89b0:	e3a03901 	mov	r3, #16384	; 0x4000
    89b4:	e3433f80 	movt	r3, #16256	; 0x3f80
    89b8:	e5933004 	ldr	r3, [r3, #4]
    89bc:	e2033c02 	and	r3, r3, #512	; 0x200
    89c0:	e3530000 	cmp	r3, #0
    89c4:	03a04000 	moveq	r4, #0
    89c8:	13a04002 	movne	r4, #2
    89cc:	eaffffff 	b	89d0 <i2c_master_read+0x140>
    89d0:	e3a02901 	mov	r2, #16384	; 0x4000
    89d4:	e3432f80 	movt	r2, #16256	; 0x3f80
    89d8:	e5923004 	ldr	r3, [r2, #4]
    89dc:	e3130002 	tst	r3, #2
    89e0:	0afffffc 	beq	89d8 <i2c_master_read+0x148>
    89e4:	e3a00901 	mov	r0, #16384	; 0x4000
    89e8:	e3430f80 	movt	r0, #16256	; 0x3f80
    89ec:	e3a01002 	mov	r1, #2
    89f0:	e1a02001 	mov	r2, r1
    89f4:	eb0000d2 	bl	8d44 <ptr_set_bits>
    89f8:	e1a00004 	mov	r0, r4
    89fc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00008a00 <adc_write_config>:
    8a00:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8a04:	e24dd00c 	sub	sp, sp, #12
    8a08:	e1a01000 	mov	r1, r0
    8a0c:	e3a03001 	mov	r3, #1
    8a10:	e5cd3004 	strb	r3, [sp, #4]
    8a14:	e1a03420 	lsr	r3, r0, #8
    8a18:	e5cd3005 	strb	r3, [sp, #5]
    8a1c:	e5cd0006 	strb	r0, [sp, #6]
    8a20:	e30a0098 	movw	r0, #41112	; 0xa098
    8a24:	e3400000 	movt	r0, #0
    8a28:	ebfffe97 	bl	848c <printk>
    8a2c:	e28d0004 	add	r0, sp, #4
    8a30:	e3a01003 	mov	r1, #3
    8a34:	e3a02049 	mov	r2, #73	; 0x49
    8a38:	ebffff4a 	bl	8768 <i2c_master_write>
    8a3c:	e2501000 	subs	r1, r0, #0
    8a40:	0a000003 	beq	8a54 <adc_write_config+0x54>
    8a44:	e30a00b0 	movw	r0, #41136	; 0xa0b0
    8a48:	e3400000 	movt	r0, #0
    8a4c:	ebfffe8e 	bl	848c <printk>
    8a50:	ea000002 	b	8a60 <adc_write_config+0x60>
    8a54:	e30a00c4 	movw	r0, #41156	; 0xa0c4
    8a58:	e3400000 	movt	r0, #0
    8a5c:	ebfffe8a 	bl	848c <printk>
    8a60:	e3a01001 	mov	r1, #1
    8a64:	e28d0008 	add	r0, sp, #8
    8a68:	e5601004 	strb	r1, [r0, #-4]!
    8a6c:	e3a02049 	mov	r2, #73	; 0x49
    8a70:	ebffff3c 	bl	8768 <i2c_master_write>
    8a74:	e1a0000d 	mov	r0, sp
    8a78:	e3a01002 	mov	r1, #2
    8a7c:	e3a02049 	mov	r2, #73	; 0x49
    8a80:	ebffff82 	bl	8890 <i2c_master_read>
    8a84:	e2501000 	subs	r1, r0, #0
    8a88:	0a000002 	beq	8a98 <adc_write_config+0x98>
    8a8c:	e30a00d4 	movw	r0, #41172	; 0xa0d4
    8a90:	e3400000 	movt	r0, #0
    8a94:	ebfffe7c 	bl	848c <printk>
    8a98:	e5dd1000 	ldrb	r1, [sp]
    8a9c:	e5dd3001 	ldrb	r3, [sp, #1]
    8aa0:	e30a00f8 	movw	r0, #41208	; 0xa0f8
    8aa4:	e3400000 	movt	r0, #0
    8aa8:	e0831401 	add	r1, r3, r1, lsl #8
    8aac:	ebfffe76 	bl	848c <printk>
    8ab0:	e28dd00c 	add	sp, sp, #12
    8ab4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008ab8 <adc_read_conversion>:
    8ab8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8abc:	e24dd00c 	sub	sp, sp, #12
    8ac0:	e28d0008 	add	r0, sp, #8
    8ac4:	e3a03000 	mov	r3, #0
    8ac8:	e5603004 	strb	r3, [r0, #-4]!
    8acc:	e3a01001 	mov	r1, #1
    8ad0:	e3a02049 	mov	r2, #73	; 0x49
    8ad4:	ebffff23 	bl	8768 <i2c_master_write>
    8ad8:	e2501000 	subs	r1, r0, #0
    8adc:	0a000002 	beq	8aec <adc_read_conversion+0x34>
    8ae0:	e30a0110 	movw	r0, #41232	; 0xa110
    8ae4:	e3400000 	movt	r0, #0
    8ae8:	ebfffe67 	bl	848c <printk>
    8aec:	e1a0000d 	mov	r0, sp
    8af0:	e3a01002 	mov	r1, #2
    8af4:	e3a02049 	mov	r2, #73	; 0x49
    8af8:	ebffff64 	bl	8890 <i2c_master_read>
    8afc:	e2501000 	subs	r1, r0, #0
    8b00:	0a000002 	beq	8b10 <adc_read_conversion+0x58>
    8b04:	e30a0150 	movw	r0, #41296	; 0xa150
    8b08:	e3400000 	movt	r0, #0
    8b0c:	ebfffe5e 	bl	848c <printk>
    8b10:	e5dd0000 	ldrb	r0, [sp]
    8b14:	e5dd3001 	ldrb	r3, [sp, #1]
    8b18:	e0830400 	add	r0, r3, r0, lsl #8
    8b1c:	e7eb0250 	ubfx	r0, r0, #4, #12
    8b20:	e28dd00c 	add	sp, sp, #12
    8b24:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008b28 <adc_init>:
    8b28:	e92d4030 	push	{r4, r5, lr}
    8b2c:	e24dd00c 	sub	sp, sp, #12
    8b30:	e3a01001 	mov	r1, #1
    8b34:	e28d0008 	add	r0, sp, #8
    8b38:	e5601004 	strb	r1, [r0, #-4]!
    8b3c:	e3a02049 	mov	r2, #73	; 0x49
    8b40:	ebffff08 	bl	8768 <i2c_master_write>
    8b44:	e1a0000d 	mov	r0, sp
    8b48:	e3a01002 	mov	r1, #2
    8b4c:	e3a02049 	mov	r2, #73	; 0x49
    8b50:	ebffff4e 	bl	8890 <i2c_master_read>
    8b54:	e2501000 	subs	r1, r0, #0
    8b58:	0a000002 	beq	8b68 <adc_init+0x40>
    8b5c:	e30a00d4 	movw	r0, #41172	; 0xa0d4
    8b60:	e3400000 	movt	r0, #0
    8b64:	ebfffe48 	bl	848c <printk>
    8b68:	e5dd1000 	ldrb	r1, [sp]
    8b6c:	e5dd3001 	ldrb	r3, [sp, #1]
    8b70:	e0831401 	add	r1, r3, r1, lsl #8
    8b74:	e30a017c 	movw	r0, #41340	; 0xa17c
    8b78:	e3400000 	movt	r0, #0
    8b7c:	e6ff1071 	uxth	r1, r1
    8b80:	ebfffe41 	bl	848c <printk>
    8b84:	e28d4008 	add	r4, sp, #8
    8b88:	e3a03003 	mov	r3, #3
    8b8c:	e5643004 	strb	r3, [r4, #-4]!
    8b90:	e1a00004 	mov	r0, r4
    8b94:	e3a01001 	mov	r1, #1
    8b98:	e3a02049 	mov	r2, #73	; 0x49
    8b9c:	ebfffef1 	bl	8768 <i2c_master_write>
    8ba0:	e1a0000d 	mov	r0, sp
    8ba4:	e3a01002 	mov	r1, #2
    8ba8:	e3a02049 	mov	r2, #73	; 0x49
    8bac:	ebffff37 	bl	8890 <i2c_master_read>
    8bb0:	e5dd1000 	ldrb	r1, [sp]
    8bb4:	e5dd3001 	ldrb	r3, [sp, #1]
    8bb8:	e0831401 	add	r1, r3, r1, lsl #8
    8bbc:	e30a01a0 	movw	r0, #41376	; 0xa1a0
    8bc0:	e3400000 	movt	r0, #0
    8bc4:	e6ff1071 	uxth	r1, r1
    8bc8:	ebfffe2f 	bl	848c <printk>
    8bcc:	e3a05002 	mov	r5, #2
    8bd0:	e5cd5004 	strb	r5, [sp, #4]
    8bd4:	e1a00004 	mov	r0, r4
    8bd8:	e3a01001 	mov	r1, #1
    8bdc:	e3a02049 	mov	r2, #73	; 0x49
    8be0:	ebfffee0 	bl	8768 <i2c_master_write>
    8be4:	e1a0000d 	mov	r0, sp
    8be8:	e1a01005 	mov	r1, r5
    8bec:	e3a02049 	mov	r2, #73	; 0x49
    8bf0:	ebffff26 	bl	8890 <i2c_master_read>
    8bf4:	e5dd1000 	ldrb	r1, [sp]
    8bf8:	e5dd3001 	ldrb	r3, [sp, #1]
    8bfc:	e0831401 	add	r1, r3, r1, lsl #8
    8c00:	e30a01b0 	movw	r0, #41392	; 0xa1b0
    8c04:	e3400000 	movt	r0, #0
    8c08:	e6ff1071 	uxth	r1, r1
    8c0c:	ebfffe1e 	bl	848c <printk>
    8c10:	e28dd00c 	add	sp, sp, #12
    8c14:	e8bd8030 	pop	{r4, r5, pc}

00008c18 <adc_read>:
    8c18:	e92d4010 	push	{r4, lr}
    8c1c:	e1a04000 	mov	r4, r0
    8c20:	e30b3004 	movw	r3, #45060	; 0xb004
    8c24:	e3403000 	movt	r3, #0
    8c28:	e5933000 	ldr	r3, [r3]
    8c2c:	e1500003 	cmp	r0, r3
    8c30:	0a000011 	beq	8c7c <adc_read+0x64>
    8c34:	e3500003 	cmp	r0, #3
    8c38:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
    8c3c:	ea000010 	b	8c84 <adc_read+0x6c>
    8c40:	00008c68 	andeq	r8, r0, r8, ror #24
    8c44:	00008c50 	andeq	r8, r0, r0, asr ip
    8c48:	00008c58 	andeq	r8, r0, r8, asr ip
    8c4c:	00008c60 	andeq	r8, r0, r0, ror #24
    8c50:	e3050083 	movw	r0, #20611	; 0x5083
    8c54:	ea000004 	b	8c6c <adc_read+0x54>
    8c58:	e3060083 	movw	r0, #24707	; 0x6083
    8c5c:	ea000002 	b	8c6c <adc_read+0x54>
    8c60:	e3070083 	movw	r0, #28803	; 0x7083
    8c64:	ea000000 	b	8c6c <adc_read+0x54>
    8c68:	e3040083 	movw	r0, #16515	; 0x4083
    8c6c:	ebffff63 	bl	8a00 <adc_write_config>
    8c70:	e30b3004 	movw	r3, #45060	; 0xb004
    8c74:	e3403000 	movt	r3, #0
    8c78:	e5834000 	str	r4, [r3]
    8c7c:	ebffff8d 	bl	8ab8 <adc_read_conversion>
    8c80:	e8bd8010 	pop	{r4, pc}
    8c84:	e3a00000 	mov	r0, #0
    8c88:	e8bd8010 	pop	{r4, pc}

00008c8c <display_light>:
    8c8c:	e92d4008 	push	{r3, lr}
    8c90:	e3a00003 	mov	r0, #3
    8c94:	ebffffdf 	bl	8c18 <adc_read>
    8c98:	e1a01000 	mov	r1, r0
    8c9c:	e30a01c0 	movw	r0, #41408	; 0xa1c0
    8ca0:	e3400000 	movt	r0, #0
    8ca4:	ebfffdf8 	bl	848c <printk>
    8ca8:	e8bd8008 	pop	{r3, pc}

00008cac <clap_detect>:
    8cac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8cb0:	e30b6dc1 	movw	r6, #48577	; 0xbdc1
    8cb4:	e34f6ff0 	movt	r6, #65520	; 0xfff0
    8cb8:	e3e07102 	mvn	r7, #-2147483648	; 0x80000000
    8cbc:	e30aa1e0 	movw	sl, #41440	; 0xa1e0
    8cc0:	e340a000 	movt	sl, #0
    8cc4:	e30a91cc 	movw	r9, #41420	; 0xa1cc
    8cc8:	e3409000 	movt	r9, #0
    8ccc:	e3a05ffa 	mov	r5, #1000	; 0x3e8
    8cd0:	e3a08002 	mov	r8, #2
    8cd4:	e1a00008 	mov	r0, r8
    8cd8:	ebffffce 	bl	8c18 <adc_read>
    8cdc:	e1a04000 	mov	r4, r0
    8ce0:	e1500007 	cmp	r0, r7
    8ce4:	aa000003 	bge	8cf8 <clap_detect+0x4c>
    8ce8:	e1a00009 	mov	r0, r9
    8cec:	e1a01004 	mov	r1, r4
    8cf0:	ebfffde5 	bl	848c <printk>
    8cf4:	e1a07004 	mov	r7, r4
    8cf8:	e1540006 	cmp	r4, r6
    8cfc:	da000003 	ble	8d10 <clap_detect+0x64>
    8d00:	e1a0000a 	mov	r0, sl
    8d04:	e1a01004 	mov	r1, r4
    8d08:	ebfffddf 	bl	848c <printk>
    8d0c:	e1a06004 	mov	r6, r4
    8d10:	e2555001 	subs	r5, r5, #1
    8d14:	1affffee 	bne	8cd4 <clap_detect+0x28>
    8d18:	e0674006 	rsb	r4, r7, r6
    8d1c:	e30a01f4 	movw	r0, #41460	; 0xa1f4
    8d20:	e3400000 	movt	r0, #0
    8d24:	e1a01004 	mov	r1, r4
    8d28:	ebfffdd7 	bl	848c <printk>
    8d2c:	e3540e19 	cmp	r4, #400	; 0x190
    8d30:	daffffe5 	ble	8ccc <clap_detect+0x20>
    8d34:	e30a0200 	movw	r0, #41472	; 0xa200
    8d38:	e3400000 	movt	r0, #0
    8d3c:	ebfffdd2 	bl	848c <printk>
    8d40:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

00008d44 <ptr_set_bits>:
    8d44:	e5903000 	ldr	r3, [r0]
    8d48:	e1c33002 	bic	r3, r3, r2
    8d4c:	e0011002 	and	r1, r1, r2
    8d50:	e1832001 	orr	r2, r3, r1
    8d54:	e5802000 	str	r2, [r0]
    8d58:	e12fff1e 	bx	lr

00008d5c <set_bits>:
    8d5c:	e1c00002 	bic	r0, r0, r2
    8d60:	e0011002 	and	r1, r1, r2
    8d64:	e1800001 	orr	r0, r0, r1
    8d68:	e12fff1e 	bx	lr

00008d6c <delay_cycles>:
    8d6c:	e2500001 	subs	r0, r0, #1
    8d70:	1afffffd 	bne	8d6c <delay_cycles>
    8d74:	e1a0f00e 	mov	pc, lr

00008d78 <read_cpsr>:
    8d78:	e10f0000 	mrs	r0, CPSR
    8d7c:	e1a0f00e 	mov	pc, lr

00008d80 <write_cpsr>:
    8d80:	e129f000 	msr	CPSR_fc, r0
    8d84:	e1a0f00e 	mov	pc, lr

00008d88 <disable_interrupts>:
    8d88:	e10f0000 	mrs	r0, CPSR
    8d8c:	e3a01d07 	mov	r1, #448	; 0x1c0
    8d90:	e1800001 	orr	r0, r0, r1
    8d94:	e129f000 	msr	CPSR_fc, r0
    8d98:	e1a0f00e 	mov	pc, lr

00008d9c <enable_interrupts>:
    8d9c:	e10f0000 	mrs	r0, CPSR
    8da0:	e3a01d07 	mov	r1, #448	; 0x1c0
    8da4:	e1c00001 	bic	r0, r0, r1
    8da8:	e129f000 	msr	CPSR_fc, r0
    8dac:	e1a0f00e 	mov	pc, lr

00008db0 <__aeabi_uldivmod>:
    8db0:	e3530000 	cmp	r3, #0
    8db4:	03520000 	cmpeq	r2, #0
    8db8:	1a000004 	bne	8dd0 <__aeabi_uldivmod+0x20>
    8dbc:	e3510000 	cmp	r1, #0
    8dc0:	03500000 	cmpeq	r0, #0
    8dc4:	13e01000 	mvnne	r1, #0
    8dc8:	13e00000 	mvnne	r0, #0
    8dcc:	ea000027 	b	8e70 <__aeabi_idiv0>
    8dd0:	e24dd008 	sub	sp, sp, #8
    8dd4:	e92d6000 	push	{sp, lr}
    8dd8:	eb000014 	bl	8e30 <__gnu_uldivmod_helper>
    8ddc:	e59de004 	ldr	lr, [sp, #4]
    8de0:	e28dd008 	add	sp, sp, #8
    8de4:	e8bd000c 	pop	{r2, r3}
    8de8:	e12fff1e 	bx	lr

00008dec <__gnu_ldivmod_helper>:
    8dec:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8df0:	e59d6020 	ldr	r6, [sp, #32]
    8df4:	e1a07002 	mov	r7, r2
    8df8:	e1a0a003 	mov	sl, r3
    8dfc:	e1a04000 	mov	r4, r0
    8e00:	e1a05001 	mov	r5, r1
    8e04:	eb00001a 	bl	8e74 <__divdi3>
    8e08:	e1a03000 	mov	r3, r0
    8e0c:	e0020197 	mul	r2, r7, r1
    8e10:	e0898097 	umull	r8, r9, r7, r0
    8e14:	e023239a 	mla	r3, sl, r3, r2
    8e18:	e0544008 	subs	r4, r4, r8
    8e1c:	e0839009 	add	r9, r3, r9
    8e20:	e0c55009 	sbc	r5, r5, r9
    8e24:	e8860030 	stm	r6, {r4, r5}
    8e28:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8e2c:	e12fff1e 	bx	lr

00008e30 <__gnu_uldivmod_helper>:
    8e30:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8e34:	e59d5018 	ldr	r5, [sp, #24]
    8e38:	e1a04002 	mov	r4, r2
    8e3c:	e1a08003 	mov	r8, r3
    8e40:	e1a06000 	mov	r6, r0
    8e44:	e1a07001 	mov	r7, r1
    8e48:	eb000067 	bl	8fec <__udivdi3>
    8e4c:	e0080890 	mul	r8, r0, r8
    8e50:	e0832490 	umull	r2, r3, r0, r4
    8e54:	e0248491 	mla	r4, r1, r4, r8
    8e58:	e0566002 	subs	r6, r6, r2
    8e5c:	e0843003 	add	r3, r4, r3
    8e60:	e0c77003 	sbc	r7, r7, r3
    8e64:	e88500c0 	stm	r5, {r6, r7}
    8e68:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8e6c:	e12fff1e 	bx	lr

00008e70 <__aeabi_idiv0>:
    8e70:	e12fff1e 	bx	lr

00008e74 <__divdi3>:
    8e74:	e3510000 	cmp	r1, #0
    8e78:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8e7c:	a1a04000 	movge	r4, r0
    8e80:	a1a05001 	movge	r5, r1
    8e84:	a3a0a000 	movge	sl, #0
    8e88:	ba000053 	blt	8fdc <__divdi3+0x168>
    8e8c:	e3530000 	cmp	r3, #0
    8e90:	a1a08002 	movge	r8, r2
    8e94:	a1a09003 	movge	r9, r3
    8e98:	ba00004b 	blt	8fcc <__divdi3+0x158>
    8e9c:	e1550009 	cmp	r5, r9
    8ea0:	01540008 	cmpeq	r4, r8
    8ea4:	33a02000 	movcc	r2, #0
    8ea8:	33a03000 	movcc	r3, #0
    8eac:	3a00003b 	bcc	8fa0 <__divdi3+0x12c>
    8eb0:	e1a01009 	mov	r1, r9
    8eb4:	e1a00008 	mov	r0, r8
    8eb8:	eb000093 	bl	910c <__clzdi2>
    8ebc:	e1a01005 	mov	r1, r5
    8ec0:	e1a0b000 	mov	fp, r0
    8ec4:	e1a00004 	mov	r0, r4
    8ec8:	eb00008f 	bl	910c <__clzdi2>
    8ecc:	e060000b 	rsb	r0, r0, fp
    8ed0:	e240e020 	sub	lr, r0, #32
    8ed4:	e1a07019 	lsl	r7, r9, r0
    8ed8:	e1877e18 	orr	r7, r7, r8, lsl lr
    8edc:	e260c020 	rsb	ip, r0, #32
    8ee0:	e1877c38 	orr	r7, r7, r8, lsr ip
    8ee4:	e1550007 	cmp	r5, r7
    8ee8:	e1a06018 	lsl	r6, r8, r0
    8eec:	01540006 	cmpeq	r4, r6
    8ef0:	e1a01000 	mov	r1, r0
    8ef4:	33a02000 	movcc	r2, #0
    8ef8:	33a03000 	movcc	r3, #0
    8efc:	3a000005 	bcc	8f18 <__divdi3+0xa4>
    8f00:	e3a08001 	mov	r8, #1
    8f04:	e0544006 	subs	r4, r4, r6
    8f08:	e1a03e18 	lsl	r3, r8, lr
    8f0c:	e1833c38 	orr	r3, r3, r8, lsr ip
    8f10:	e0c55007 	sbc	r5, r5, r7
    8f14:	e1a02018 	lsl	r2, r8, r0
    8f18:	e3500000 	cmp	r0, #0
    8f1c:	0a00001f 	beq	8fa0 <__divdi3+0x12c>
    8f20:	e1b070a7 	lsrs	r7, r7, #1
    8f24:	e1a06066 	rrx	r6, r6
    8f28:	ea000007 	b	8f4c <__divdi3+0xd8>
    8f2c:	e0544006 	subs	r4, r4, r6
    8f30:	e0c55007 	sbc	r5, r5, r7
    8f34:	e0944004 	adds	r4, r4, r4
    8f38:	e0a55005 	adc	r5, r5, r5
    8f3c:	e2944001 	adds	r4, r4, #1
    8f40:	e2a55000 	adc	r5, r5, #0
    8f44:	e2500001 	subs	r0, r0, #1
    8f48:	0a000006 	beq	8f68 <__divdi3+0xf4>
    8f4c:	e1570005 	cmp	r7, r5
    8f50:	01560004 	cmpeq	r6, r4
    8f54:	9afffff4 	bls	8f2c <__divdi3+0xb8>
    8f58:	e0944004 	adds	r4, r4, r4
    8f5c:	e0a55005 	adc	r5, r5, r5
    8f60:	e2500001 	subs	r0, r0, #1
    8f64:	1afffff8 	bne	8f4c <__divdi3+0xd8>
    8f68:	e261c020 	rsb	ip, r1, #32
    8f6c:	e1a00134 	lsr	r0, r4, r1
    8f70:	e0922004 	adds	r2, r2, r4
    8f74:	e241e020 	sub	lr, r1, #32
    8f78:	e1800c15 	orr	r0, r0, r5, lsl ip
    8f7c:	e1a04135 	lsr	r4, r5, r1
    8f80:	e1800e35 	orr	r0, r0, r5, lsr lr
    8f84:	e1a07114 	lsl	r7, r4, r1
    8f88:	e1877e10 	orr	r7, r7, r0, lsl lr
    8f8c:	e1a06110 	lsl	r6, r0, r1
    8f90:	e0a33005 	adc	r3, r3, r5
    8f94:	e1877c30 	orr	r7, r7, r0, lsr ip
    8f98:	e0522006 	subs	r2, r2, r6
    8f9c:	e0c33007 	sbc	r3, r3, r7
    8fa0:	e29a0000 	adds	r0, sl, #0
    8fa4:	13a00001 	movne	r0, #1
    8fa8:	e3a01000 	mov	r1, #0
    8fac:	e2704000 	rsbs	r4, r0, #0
    8fb0:	e2e15000 	rsc	r5, r1, #0
    8fb4:	e0222004 	eor	r2, r2, r4
    8fb8:	e0233005 	eor	r3, r3, r5
    8fbc:	e0900002 	adds	r0, r0, r2
    8fc0:	e0a11003 	adc	r1, r1, r3
    8fc4:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8fc8:	e12fff1e 	bx	lr
    8fcc:	e2728000 	rsbs	r8, r2, #0
    8fd0:	e1e0a00a 	mvn	sl, sl
    8fd4:	e2e39000 	rsc	r9, r3, #0
    8fd8:	eaffffaf 	b	8e9c <__divdi3+0x28>
    8fdc:	e2704000 	rsbs	r4, r0, #0
    8fe0:	e2e15000 	rsc	r5, r1, #0
    8fe4:	e3e0a000 	mvn	sl, #0
    8fe8:	eaffffa7 	b	8e8c <__divdi3+0x18>

00008fec <__udivdi3>:
    8fec:	e1510003 	cmp	r1, r3
    8ff0:	01500002 	cmpeq	r0, r2
    8ff4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8ff8:	e1a04000 	mov	r4, r0
    8ffc:	e1a05001 	mov	r5, r1
    9000:	e1a08002 	mov	r8, r2
    9004:	e1a09003 	mov	r9, r3
    9008:	33a00000 	movcc	r0, #0
    900c:	33a01000 	movcc	r1, #0
    9010:	3a00003b 	bcc	9104 <__udivdi3+0x118>
    9014:	e1a01003 	mov	r1, r3
    9018:	e1a00002 	mov	r0, r2
    901c:	eb00003a 	bl	910c <__clzdi2>
    9020:	e1a01005 	mov	r1, r5
    9024:	e1a0a000 	mov	sl, r0
    9028:	e1a00004 	mov	r0, r4
    902c:	eb000036 	bl	910c <__clzdi2>
    9030:	e060300a 	rsb	r3, r0, sl
    9034:	e243e020 	sub	lr, r3, #32
    9038:	e1a07319 	lsl	r7, r9, r3
    903c:	e1877e18 	orr	r7, r7, r8, lsl lr
    9040:	e263c020 	rsb	ip, r3, #32
    9044:	e1877c38 	orr	r7, r7, r8, lsr ip
    9048:	e1550007 	cmp	r5, r7
    904c:	e1a06318 	lsl	r6, r8, r3
    9050:	01540006 	cmpeq	r4, r6
    9054:	e1a02003 	mov	r2, r3
    9058:	33a00000 	movcc	r0, #0
    905c:	33a01000 	movcc	r1, #0
    9060:	3a000005 	bcc	907c <__udivdi3+0x90>
    9064:	e3a08001 	mov	r8, #1
    9068:	e0544006 	subs	r4, r4, r6
    906c:	e1a01e18 	lsl	r1, r8, lr
    9070:	e1811c38 	orr	r1, r1, r8, lsr ip
    9074:	e0c55007 	sbc	r5, r5, r7
    9078:	e1a00318 	lsl	r0, r8, r3
    907c:	e3530000 	cmp	r3, #0
    9080:	0a00001f 	beq	9104 <__udivdi3+0x118>
    9084:	e1b070a7 	lsrs	r7, r7, #1
    9088:	e1a06066 	rrx	r6, r6
    908c:	ea000007 	b	90b0 <__udivdi3+0xc4>
    9090:	e0544006 	subs	r4, r4, r6
    9094:	e0c55007 	sbc	r5, r5, r7
    9098:	e0944004 	adds	r4, r4, r4
    909c:	e0a55005 	adc	r5, r5, r5
    90a0:	e2944001 	adds	r4, r4, #1
    90a4:	e2a55000 	adc	r5, r5, #0
    90a8:	e2533001 	subs	r3, r3, #1
    90ac:	0a000006 	beq	90cc <__udivdi3+0xe0>
    90b0:	e1570005 	cmp	r7, r5
    90b4:	01560004 	cmpeq	r6, r4
    90b8:	9afffff4 	bls	9090 <__udivdi3+0xa4>
    90bc:	e0944004 	adds	r4, r4, r4
    90c0:	e0a55005 	adc	r5, r5, r5
    90c4:	e2533001 	subs	r3, r3, #1
    90c8:	1afffff8 	bne	90b0 <__udivdi3+0xc4>
    90cc:	e0948000 	adds	r8, r4, r0
    90d0:	e0a59001 	adc	r9, r5, r1
    90d4:	e1a03234 	lsr	r3, r4, r2
    90d8:	e2621020 	rsb	r1, r2, #32
    90dc:	e2420020 	sub	r0, r2, #32
    90e0:	e1833115 	orr	r3, r3, r5, lsl r1
    90e4:	e1a0c235 	lsr	ip, r5, r2
    90e8:	e1833035 	orr	r3, r3, r5, lsr r0
    90ec:	e1a0721c 	lsl	r7, ip, r2
    90f0:	e1877013 	orr	r7, r7, r3, lsl r0
    90f4:	e1a06213 	lsl	r6, r3, r2
    90f8:	e1877133 	orr	r7, r7, r3, lsr r1
    90fc:	e0580006 	subs	r0, r8, r6
    9100:	e0c91007 	sbc	r1, r9, r7
    9104:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    9108:	e12fff1e 	bx	lr

0000910c <__clzdi2>:
    910c:	e92d4010 	push	{r4, lr}
    9110:	e3510000 	cmp	r1, #0
    9114:	1a000002 	bne	9124 <__clzdi2+0x18>
    9118:	eb000005 	bl	9134 <__clzsi2>
    911c:	e2800020 	add	r0, r0, #32
    9120:	ea000001 	b	912c <__clzdi2+0x20>
    9124:	e1a00001 	mov	r0, r1
    9128:	eb000001 	bl	9134 <__clzsi2>
    912c:	e8bd4010 	pop	{r4, lr}
    9130:	e12fff1e 	bx	lr

00009134 <__clzsi2>:
    9134:	e3a0101c 	mov	r1, #28
    9138:	e3500801 	cmp	r0, #65536	; 0x10000
    913c:	21a00820 	lsrcs	r0, r0, #16
    9140:	22411010 	subcs	r1, r1, #16
    9144:	e3500c01 	cmp	r0, #256	; 0x100
    9148:	21a00420 	lsrcs	r0, r0, #8
    914c:	22411008 	subcs	r1, r1, #8
    9150:	e3500010 	cmp	r0, #16
    9154:	21a00220 	lsrcs	r0, r0, #4
    9158:	22411004 	subcs	r1, r1, #4
    915c:	e28f2008 	add	r2, pc, #8
    9160:	e7d20000 	ldrb	r0, [r2, r0]
    9164:	e0800001 	add	r0, r0, r1
    9168:	e12fff1e 	bx	lr
    916c:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    9170:	01010101 	tsteq	r1, r1, lsl #2
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
    a014:	00000030 	andeq	r0, r0, r0, lsr r0
    a018:	00007830 	andeq	r7, r0, r0, lsr r8
    a01c:	65746e45 	ldrbvs	r6, [r4, #-3653]!	; 0xfffff1bb
    a020:	20612072 	rsbcs	r2, r1, r2, ror r0
    a024:	736e6573 	cmnvc	lr, #482344960	; 0x1cc00000
    a028:	7420726f 	strtvc	r7, [r0], #-623	; 0xfffffd91
    a02c:	6173206f 	cmnvs	r3, pc, rrx
    a030:	656c706d 	strbvs	r7, [ip, #-109]!	; 0xffffff93
    a034:	00000a3a 	andeq	r0, r0, sl, lsr sl
    a038:	756f6873 	strbvc	r6, [pc, #-2163]!	; 97cd <__clzsi2+0x699>
    a03c:	6e20646c 	cdpvs	4, 2, cr6, cr0, cr12, {3}
    a040:	7220746f 	eorvc	r7, r0, #1862270976	; 0x6f000000
    a044:	68636165 	stmdavs	r3!, {r0, r2, r5, r6, r8, sp, lr}^
    a048:	72656820 	rsbvc	r6, r5, #32, 16	; 0x200000
    a04c:	00000a65 	andeq	r0, r0, r5, ror #20
    a050:	72656874 	rsbvc	r6, r5, #116, 16	; 0x740000
    a054:	72612065 	rsbvc	r2, r1, #101	; 0x65
    a058:	6f6d2065 	svcvs	0x006d2065
    a05c:	64206572 	strtvs	r6, [r0], #-1394	; 0xfffffa8e
    a060:	20617461 	rsbcs	r7, r1, r1, ror #8
    a064:	46206e69 	strtmi	r6, [r0], -r9, ror #28
    a068:	0a4f4649 	beq	13db994 <__user_program+0x10db994>
    a06c:	00000000 	andeq	r0, r0, r0
    a070:	65636572 	strbvs	r6, [r3, #-1394]!	; 0xfffffa8e
    a074:	6e697669 	cdpvs	6, 6, cr7, cr9, cr9, {3}
    a078:	61642067 	cmnvs	r4, r7, rrx
    a07c:	61206174 			; <UNDEFINED> instruction: 0x61206174
    a080:	72657466 	rsbvc	r7, r5, #1711276032	; 0x66000000
    a084:	61727420 	cmnvs	r2, r0, lsr #8
    a088:	6566736e 	strbvs	r7, [r6, #-878]!	; 0xfffffc92
    a08c:	73692072 	cmnvc	r9, #114	; 0x72
    a090:	4e4f4420 	cdpmi	4, 4, cr4, cr15, cr0, {1}
    a094:	00000a45 	andeq	r0, r0, r5, asr #20
    a098:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a09c:	72756769 	rsbsvc	r6, r5, #27525120	; 0x1a40000
    a0a0:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a0a4:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    a0a8:	25203a65 	strcs	r3, [r0, #-2661]!	; 0xfffff59b
    a0ac:	00000a78 	andeq	r0, r0, r8, ror sl
    a0b0:	6f727265 	svcvs	0x00727265
    a0b4:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a0b8:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a0bc:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0c0:	000a6769 	andeq	r6, sl, r9, ror #14
    a0c4:	63637573 	cmnvs	r3, #482344960	; 0x1cc00000
    a0c8:	20737365 	rsbscs	r7, r3, r5, ror #6
    a0cc:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0d0:	000a6769 	andeq	r6, sl, r9, ror #14
    a0d4:	6f727265 	svcvs	0x00727265
    a0d8:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a0dc:	65687720 	strbvs	r7, [r8, #-1824]!	; 0xfffff8e0
    a0e0:	6572206e 	ldrbvs	r2, [r2, #-110]!	; 0xffffff92
    a0e4:	6e696461 	cdpvs	4, 6, cr6, cr9, cr1, {3}
    a0e8:	6f632067 	svcvs	0x00632067
    a0ec:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    a0f0:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a0f4:	0000000a 	andeq	r0, r0, sl
    a0f8:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0fc:	72206769 	eorvc	r6, r0, #27525120	; 0x1a40000
    a100:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    a104:	20726574 	rsbscs	r6, r2, r4, ror r5
    a108:	25207369 	strcs	r7, [r0, #-873]!	; 0xfffffc97
    a10c:	00000a78 	andeq	r0, r0, r8, ror sl
    a110:	6f727265 	svcvs	0x00727265
    a114:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a118:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a11c:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
    a120:	676e6967 	strbvs	r6, [lr, -r7, ror #18]!
    a124:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a128:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    a12c:	6f702072 	svcvs	0x00702072
    a130:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
    a134:	6f662072 	svcvs	0x00662072
    a138:	6f632072 	svcvs	0x00632072
    a13c:	7265766e 	rsbvc	r7, r5, #115343360	; 0x6e00000
    a140:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
    a144:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a148:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    a14c:	00000a72 	andeq	r0, r0, r2, ror sl
    a150:	6f727265 	svcvs	0x00727265
    a154:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a158:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a15c:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
    a160:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a164:	766e6f63 	strbtvc	r6, [lr], -r3, ror #30
    a168:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    a16c:	72206e6f 	eorvc	r6, r0, #1776	; 0x6f0
    a170:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    a174:	0a726574 	beq	1ca374c <__user_program+0x19a374c>
    a178:	00000000 	andeq	r0, r0, r0
    a17c:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xfffff1b7
    a180:	6c6c6169 	stfvse	f6, [ip], #-420	; 0xfffffe5c
    a184:	63202c79 			; <UNDEFINED> instruction: 0x63202c79
    a188:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
    a18c:	65722067 	ldrbvs	r2, [r2, #-103]!	; 0xffffff99
    a190:	74736967 	ldrbtvc	r6, [r3], #-2407	; 0xfffff699
    a194:	69207265 	stmdbvs	r0!, {r0, r2, r5, r6, r9, ip, sp, lr}
    a198:	78252073 	stmdavc	r5!, {r0, r1, r4, r5, r6, sp}
    a19c:	0000000a 	andeq	r0, r0, sl
    a1a0:	74206948 	strtvc	r6, [r0], #-2376	; 0xfffff6b8
    a1a4:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    a1a8:	20736920 	rsbscs	r6, r3, r0, lsr #18
    a1ac:	000a7825 	andeq	r7, sl, r5, lsr #16
    a1b0:	74206f4c 	strtvc	r6, [r0], #-3916	; 0xfffff0b4
    a1b4:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    a1b8:	20736920 	rsbscs	r6, r3, r0, lsr #18
    a1bc:	000a7825 	andeq	r7, sl, r5, lsr #16
    a1c0:	6867694c 	stmdavs	r7!, {r2, r3, r6, r8, fp, sp, lr}^
    a1c4:	25203a74 	strcs	r3, [r0, #-2676]!	; 0xfffff58c
    a1c8:	00000a64 	andeq	r0, r0, r4, ror #20
    a1cc:	206e696d 	rsbcs	r6, lr, sp, ror #18
    a1d0:	61647075 	smcvs	18181	; 0x4705
    a1d4:	2c646574 	cfstr64cs	mvdx6, [r4], #-464	; 0xfffffe30
    a1d8:	0a642520 	beq	1913660 <__user_program+0x1613660>
    a1dc:	00000000 	andeq	r0, r0, r0
    a1e0:	2078616d 	rsbscs	r6, r8, sp, ror #2
    a1e4:	61647075 	smcvs	18181	; 0x4705
    a1e8:	2c646574 	cfstr64cs	mvdx6, [r4], #-464	; 0xfffffe30
    a1ec:	0a642520 	beq	1913674 <__user_program+0x1613674>
    a1f0:	00000000 	andeq	r0, r0, r0
    a1f4:	69647541 	stmdbvs	r4!, {r0, r6, r8, sl, ip, sp, lr}^
    a1f8:	25203a6f 	strcs	r3, [r0, #-2671]!	; 0xfffff591
    a1fc:	00000a64 	andeq	r0, r0, r4, ror #20
    a200:	70616c63 	rsbvc	r6, r1, r3, ror #24
    a204:	74656420 	strbtvc	r6, [r5], #-1056	; 0xfffffbe0
    a208:	65746365 	ldrbvs	r6, [r4, #-869]!	; 0xfffffc9b
    a20c:	000a2164 	andeq	r2, sl, r4, ror #2

Disassembly of section .ARM.exidx:

0000a210 <.ARM.exidx>:
    a210:	7fffec64 	svcvc	0x00ffec64
    a214:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

0000b000 <__data_start>:
    b000:	3f200000 	svccc	0x00200000

0000b004 <cur_channel.3676>:
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
      78:	80545501 	subshi	r5, r4, r1, lsl #10
      7c:	01200000 			; <UNDEFINED> instruction: 0x01200000
      80:	9c010000 	stcls	0, cr0, [r1], {-0}
      84:	000000cf 	andeq	r0, r0, pc, asr #1
      88:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
      8c:	41550100 	cmpmi	r5, r0, lsl #2
      90:	02000000 	andeq	r0, r0, #0
      94:	66066791 			; <UNDEFINED> instruction: 0x66066791
      98:	01006e75 	tsteq	r0, r5, ror lr
      9c:	00004155 	andeq	r4, r0, r5, asr r1
      a0:	66910200 	ldrvs	r0, [r1], r0, lsl #4
      a4:	67657207 	strbvs	r7, [r5, -r7, lsl #4]!
      a8:	5a5a0100 	bpl	16804b0 <__user_program+0x13804b0>
      ac:	02000000 	andeq	r0, r0, #0
      b0:	90087491 	mulls	r8, r1, r4
      b4:	01000003 	tsteq	r0, r3
      b8:	00005a5c 	andeq	r5, r0, ip, asr sl
      bc:	70910200 	addsvc	r0, r1, r0, lsl #4
      c0:	00004a08 	andeq	r4, r0, r8, lsl #20
      c4:	5a5e0100 	bpl	17804cc <__user_program+0x14804cc>
      c8:	02000000 	andeq	r0, r0, #0
      cc:	05006c91 	streq	r6, [r0, #-3217]	; 0xfffff36f
      d0:	00000021 	andeq	r0, r0, r1, lsr #32
      d4:	81746501 	cmnhi	r4, r1, lsl #10
      d8:	00840000 	addeq	r0, r4, r0
      dc:	9c010000 	stcls	0, cr0, [r1], {-0}
      e0:	000000f3 	strdeq	r0, [r0], -r3
      e4:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
      e8:	41650100 	cmnmi	r5, r0, lsl #2
      ec:	02000000 	andeq	r0, r0, #0
      f0:	05007791 	streq	r7, [r0, #-1937]	; 0xfffff86f
      f4:	00000041 	andeq	r0, r0, r1, asr #32
      f8:	81f87101 	mvnshi	r7, r1, lsl #2
      fc:	00840000 	addeq	r0, r4, r0
     100:	9c010000 	stcls	0, cr0, [r1], {-0}
     104:	00000117 	andeq	r0, r0, r7, lsl r1
     108:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
     10c:	41710100 	cmnmi	r1, r0, lsl #2
     110:	02000000 	andeq	r0, r0, #0
     114:	09007791 	stmdbeq	r0, {r0, r4, r7, r8, r9, sl, ip, sp, lr}
     118:	0000000e 	andeq	r0, r0, lr
     11c:	827c7d01 	rsbshi	r7, ip, #1, 26	; 0x40
     120:	00f80000 	rscseq	r0, r8, r0
     124:	9c010000 	stcls	0, cr0, [r1], {-0}
     128:	00000149 	andeq	r0, r0, r9, asr #2
     12c:	6e697006 	cdpvs	0, 6, cr7, cr9, cr6, {0}
     130:	417d0100 	cmnmi	sp, r0, lsl #2
     134:	02000000 	andeq	r0, r0, #0
     138:	110a7791 			; <UNDEFINED> instruction: 0x110a7791
     13c:	01000001 	tsteq	r0, r1
     140:	0000417d 	andeq	r4, r0, sp, ror r1
     144:	76910200 	ldrvc	r0, [r1], r0, lsl #4
     148:	001c0800 	andseq	r0, ip, r0, lsl #16
     14c:	52010000 	andpl	r0, r1, #0
     150:	0000015a 	andeq	r0, r0, sl, asr r1
     154:	b0000305 	andlt	r0, r0, r5, lsl #6
     158:	040b0000 	streq	r0, [fp], #-0
     15c:	00000160 	andeq	r0, r0, r0, ror #2
     160:	00005a0c 	andeq	r5, r0, ip, lsl #20
     164:	01170000 	tsteq	r7, r0
     168:	00040000 	andeq	r0, r4, r0
     16c:	000000b7 	strheq	r0, [r0], -r7
     170:	01c70104 	biceq	r0, r7, r4, lsl #2
     174:	87010000 	strhi	r0, [r1, -r0]
     178:	70000001 	andvc	r0, r0, r1
     17c:	74000000 	strvc	r0, [r0], #-0
     180:	38000083 	stmdacc	r0, {r0, r1, r7}
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
     1b8:	01be0400 			; <UNDEFINED> instruction: 0x01be0400
     1bc:	18020000 	stmdane	r2, {}	; <UNPREDICTABLE>
     1c0:	0000005e 	andeq	r0, r0, lr, asr r0
     1c4:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     1c8:	02000000 	andeq	r0, r0, #0
     1cc:	00340704 	eorseq	r0, r4, r4, lsl #14
     1d0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     1d4:	00002a07 	andeq	r2, r0, r7, lsl #20
     1d8:	01b20500 			; <UNDEFINED> instruction: 0x01b20500
     1dc:	13010000 	movwne	r0, #4096	; 0x1000
     1e0:	00008374 	andeq	r8, r0, r4, ror r3
     1e4:	00000038 	andeq	r0, r0, r8, lsr r0
     1e8:	00da9c01 	sbcseq	r9, sl, r1, lsl #24
     1ec:	78060000 	stmdavc	r6, {}	; <UNPREDICTABLE>
     1f0:	01000001 	tsteq	r0, r1
     1f4:	0000411b 	andeq	r4, r0, fp, lsl r1
     1f8:	00000000 	andeq	r0, r0, r0
     1fc:	837c0700 	cmnhi	ip, #0, 14
     200:	00da0000 	sbcseq	r0, sl, r0
     204:	84080000 	strhi	r0, [r8], #-0
     208:	e1000083 	smlabb	r0, r3, r0, r0
     20c:	b5000000 	strlt	r0, [r0, #-0]
     210:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
     214:	0a035001 	beq	d4220 <__bss_end+0xc8220>
     218:	070005dc 			; <UNDEFINED> instruction: 0x070005dc
     21c:	00008388 	andeq	r8, r0, r8, lsl #7
     220:	000000f2 	strdeq	r0, [r0], -r2
     224:	00838c07 	addeq	r8, r3, r7, lsl #24
     228:	0000f900 	andeq	pc, r0, r0, lsl #18
     22c:	83980700 	orrshi	r0, r8, #0, 14
     230:	01040000 	mrseq	r0, (UNDEF: 4)
     234:	a8070000 	stmdage	r7, {}	; <UNPREDICTABLE>
     238:	11000083 	smlabbne	r0, r3, r0, r0
     23c:	00000001 	andeq	r0, r0, r1
     240:	0001a80a 	andeq	sl, r1, sl, lsl #16
     244:	0b170300 	bleq	5c0e4c <__user_program+0x2c0e4c>
     248:	0000015c 	andeq	r0, r0, ip, asr r1
     24c:	00f25605 	rscseq	r5, r2, r5, lsl #12
     250:	530c0000 	movwpl	r0, #49152	; 0xc000
     254:	00000000 	andeq	r0, r0, r0
     258:	00017e0a 	andeq	r7, r1, sl, lsl #28
     25c:	0d260400 	cfstrseq	mvf0, [r6, #-0]
     260:	00000140 	andeq	r0, r0, r0, asr #2
     264:	00412a03 	subeq	r2, r1, r3, lsl #20
     268:	4e0e0000 	cdpmi	0, 0, cr0, cr14, cr0, {0}
     26c:	04000001 	streq	r0, [r0], #-1
     270:	00011130 	andeq	r1, r1, r0, lsr r1
     274:	10000f00 	andne	r0, r0, r0, lsl #30
     278:	0000016c 	andeq	r0, r0, ip, ror #2
     27c:	000f3204 	andeq	r3, pc, r4, lsl #4
     280:	0002f000 	andeq	pc, r2, r0
     284:	9e000400 	cfcpysls	mvf0, mvf0
     288:	04000001 	streq	r0, [r0], #-1
     28c:	0001c701 	andeq	ip, r1, r1, lsl #14
     290:	026d0100 	rsbeq	r0, sp, #0, 2
     294:	00700000 	rsbseq	r0, r0, r0
     298:	83ac0000 			; <UNDEFINED> instruction: 0x83ac0000
     29c:	02980000 	addseq	r0, r8, #0
     2a0:	01470000 	mrseq	r0, (UNDEF: 71)
     2a4:	52020000 	andpl	r0, r2, #0
     2a8:	02000000 	andeq	r0, r0, #0
     2ac:	0000300e 	andeq	r3, r0, lr
     2b0:	08010300 	stmdaeq	r1, {r8, r9}
     2b4:	00000062 	andeq	r0, r0, r2, rrx
     2b8:	23050203 	movwcs	r0, #20995	; 0x5203
     2bc:	02000001 	andeq	r0, r0, #1
     2c0:	00000068 	andeq	r0, r0, r8, rrx
     2c4:	00491202 	subeq	r1, r9, r2, lsl #4
     2c8:	04040000 	streq	r0, [r4], #-0
     2cc:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     2d0:	05080300 	streq	r0, [r8, #-768]	; 0xfffffd00
     2d4:	00000000 	andeq	r0, r0, r0
     2d8:	00005102 	andeq	r5, r0, r2, lsl #2
     2dc:	62160200 	andsvs	r0, r6, #0, 4
     2e0:	03000000 	movweq	r0, #0
     2e4:	00590801 	subseq	r0, r9, r1, lsl #16
     2e8:	02030000 	andeq	r0, r3, #0
     2ec:	0000fe07 	andeq	pc, r0, r7, lsl #28
     2f0:	00670200 	rsbeq	r0, r7, r0, lsl #4
     2f4:	1a020000 	bne	802fc <__bss_end+0x742fc>
     2f8:	0000007b 	andeq	r0, r0, fp, ror r0
     2fc:	34070403 	strcc	r0, [r7], #-1027	; 0xfffffbfd
     300:	02000000 	andeq	r0, r0, #0
     304:	00000228 	andeq	r0, r0, r8, lsr #4
     308:	008d1c02 	addeq	r1, sp, r2, lsl #24
     30c:	08030000 	stmdaeq	r3, {}	; <UNPREDICTABLE>
     310:	00002a07 	andeq	r2, r0, r7, lsl #20
     314:	02380200 	eorseq	r0, r8, #0, 4
     318:	13030000 	movwne	r0, #12288	; 0x3000
     31c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     320:	00023605 	andeq	r3, r2, r5, lsl #12
     324:	00040400 	andeq	r0, r4, r0, lsl #8
     328:	000000b6 	strheq	r0, [r0], -r6
     32c:	00029c06 	andeq	r9, r2, r6, lsl #24
     330:	0000b600 	andeq	fp, r0, r0, lsl #12
     334:	07000000 	streq	r0, [r0, -r0]
     338:	024e0804 	subeq	r0, lr, #4, 16	; 0x40000
     33c:	21010000 	mrscs	r0, (UNDEF: 1)
     340:	000083ac 	andeq	r8, r0, ip, lsr #7
     344:	000000e0 	andeq	r0, r0, r0, ror #1
     348:	012a9c01 			; <UNDEFINED> instruction: 0x012a9c01
     34c:	31090000 	mrscc	r0, (UNDEF: 9)
     350:	01000002 	tsteq	r0, r2
     354:	00005721 	andeq	r5, r0, r1, lsr #14
     358:	00001e00 	andeq	r1, r0, r0, lsl #28
     35c:	756e0a00 	strbvc	r0, [lr, #-2560]!	; 0xfffff600
     360:	2101006d 	tstcs	r1, sp, rrx
     364:	00000082 	andeq	r0, r0, r2, lsl #1
     368:	0000003f 	andeq	r0, r0, pc, lsr r0
     36c:	00025f0b 	andeq	r5, r2, fp, lsl #30
     370:	2a220100 	bcs	880778 <__user_program+0x580778>
     374:	77000001 	strvc	r0, [r0, -r1]
     378:	0c000000 	stceq	0, cr0, [r0], {-0}
     37c:	00667562 	rsbeq	r7, r6, r2, ror #10
     380:	01302301 	teqeq	r0, r1, lsl #6
     384:	91020000 	mrsls	r0, (UNDEF: 2)
     388:	74700d58 	ldrbtvc	r0, [r0], #-3416	; 0xfffff2a8
     38c:	24010072 	strcs	r0, [r1], #-114	; 0xffffff8e
     390:	0000012a 	andeq	r0, r0, sl, lsr #2
     394:	000000ae 	andeq	r0, r0, lr, lsr #1
     398:	0084600e 	addeq	r6, r4, lr
     39c:	0002e600 	andeq	lr, r2, r0, lsl #12
     3a0:	84780e00 	ldrbthi	r0, [r8], #-3584	; 0xfffff200
     3a4:	02e60000 	rsceq	r0, r6, #0
     3a8:	0f000000 	svceq	0x00000000
     3ac:	00002504 	andeq	r2, r0, r4, lsl #10
     3b0:	00251000 	eoreq	r1, r5, r0
     3b4:	01400000 	mrseq	r0, (UNDEF: 64)
     3b8:	40110000 	andsmi	r0, r1, r0
     3bc:	07000001 	streq	r0, [r0, -r1]
     3c0:	07040300 	streq	r0, [r4, -r0, lsl #6]
     3c4:	00000293 	muleq	r0, r3, r2
     3c8:	00026612 	andeq	r6, r2, r2, lsl r6
     3cc:	493f0100 	ldmdbmi	pc!, {r8}	; <UNPREDICTABLE>
     3d0:	8c000000 	stchi	0, cr0, [r0], {-0}
     3d4:	b8000084 	stmdalt	r0, {r2, r7}
     3d8:	01000001 	tsteq	r0, r1
     3dc:	0002b59c 	muleq	r2, ip, r5
     3e0:	6d660a00 	vstmdbvs	r6!, {s1-s0}
     3e4:	3f010074 	svccc	0x00010074
     3e8:	000002b5 			; <UNDEFINED> instruction: 0x000002b5
     3ec:	00000116 	andeq	r0, r0, r6, lsl r1
     3f0:	028e1413 	addeq	r1, lr, #318767104	; 0x13000000
     3f4:	40010000 	andmi	r0, r1, r0
     3f8:	00000094 	muleq	r0, r4, r0
     3fc:	15549102 	ldrbne	r9, [r4, #-258]	; 0xfffffefe
     400:	00000000 	andeq	r0, r0, r0
     404:	000001a7 	andeq	r0, r0, r7, lsr #3
     408:	6d756e0d 	ldclvs	14, cr6, [r5, #-52]!	; 0xffffffcc
     40c:	70610100 	rsbvc	r0, r1, r0, lsl #2
     410:	4d000000 	stcmi	0, cr0, [r0, #-0]
     414:	16000001 	strne	r0, [r0], -r1
     418:	000085a4 	andeq	r8, r0, r4, lsr #11
     41c:	000000b8 	strheq	r0, [r0], -r8
     420:	02500117 	subseq	r0, r0, #-1073741819	; 0xc0000005
     424:	00000078 	andeq	r0, r0, r8, ror r0
     428:	00001815 	andeq	r1, r0, r5, lsl r8
     42c:	0001d000 	andeq	sp, r1, r0
     430:	756e0d00 	strbvc	r0, [lr, #-3328]!	; 0xfffff300
     434:	6801006d 	stmdavs	r1, {r0, r2, r3, r5, r6}
     438:	00000070 	andeq	r0, r0, r0, ror r0
     43c:	0000016c 	andeq	r0, r0, ip, ror #2
     440:	0085c416 	addeq	ip, r5, r6, lsl r4
     444:	0000b800 	andeq	fp, r0, r0, lsl #16
     448:	50011700 	andpl	r1, r1, r0, lsl #14
     44c:	00007702 	andeq	r7, r0, r2, lsl #14
     450:	85201800 	strhi	r1, [r0, #-2048]!	; 0xfffff800
     454:	00480000 	subeq	r0, r8, r0
     458:	02230000 	eoreq	r0, r3, #0
     45c:	6e0d0000 	cdpvs	0, 0, cr0, cr13, cr0, {0}
     460:	01006d75 	tsteq	r0, r5, ror sp
     464:	00003e50 	andeq	r3, r0, r0, asr lr
     468:	00018b00 	andeq	r8, r1, r0, lsl #22
     46c:	85401900 	strbhi	r1, [r0, #-2304]	; 0xfffff700
     470:	02e60000 	rsceq	r0, r6, #0
     474:	02000000 	andeq	r0, r0, #0
     478:	01170000 	tsteq	r7, r0
     47c:	2d080250 	sfmcs	f0, 4, [r8, #-320]	; 0xfffffec0
     480:	85501900 	ldrbhi	r1, [r0, #-2304]	; 0xfffff700
     484:	00b80000 	adcseq	r0, r8, r0
     488:	02130000 	andseq	r0, r3, #0
     48c:	01170000 	tsteq	r7, r0
     490:	003a0150 	eorseq	r0, sl, r0, asr r1
     494:	00856416 	addeq	r6, r5, r6, lsl r4
     498:	0000b800 	andeq	fp, r0, r0, lsl #16
     49c:	50011700 	andpl	r1, r1, r0, lsl #14
     4a0:	00003a01 	andeq	r3, r0, r1, lsl #20
     4a4:	00856818 	addeq	r6, r5, r8, lsl r8
     4a8:	00002000 	andeq	r2, r0, r0
     4ac:	00024f00 	andeq	r4, r2, r0, lsl #30
     4b0:	756e0d00 	strbvc	r0, [lr, #-3328]!	; 0xfffff300
     4b4:	5b01006d 	blpl	40670 <__bss_end+0x34670>
     4b8:	00000070 	andeq	r0, r0, r0, ror r0
     4bc:	0000019e 	muleq	r0, lr, r1
     4c0:	00858416 	addeq	r8, r5, r6, lsl r4
     4c4:	0000b800 	andeq	fp, r0, r0, lsl #16
     4c8:	50011700 	andpl	r1, r1, r0, lsl #14
     4cc:	00003a01 	andeq	r3, r0, r1, lsl #20
     4d0:	0085c818 	addeq	ip, r5, r8, lsl r8
     4d4:	00003000 	andeq	r3, r0, r0
     4d8:	00027500 	andeq	r7, r2, r0, lsl #10
     4dc:	021f0b00 	andseq	r0, pc, #0, 22
     4e0:	6e010000 	cdpvs	0, 0, cr0, cr1, cr0, {0}
     4e4:	0000012a 	andeq	r0, r0, sl, lsr #2
     4e8:	000001bd 			; <UNDEFINED> instruction: 0x000001bd
     4ec:	0085e80e 	addeq	lr, r5, lr, lsl #16
     4f0:	0002e600 	andeq	lr, r2, r0, lsl #12
     4f4:	f8180000 			; <UNDEFINED> instruction: 0xf8180000
     4f8:	18000085 	stmdane	r0, {r0, r2, r7}
     4fc:	9b000000 	blls	504 <__start-0x7afc>
     500:	0b000002 	bleq	510 <__start-0x7af0>
     504:	00000149 	andeq	r0, r0, r9, asr #2
     508:	003e7701 	eorseq	r7, lr, r1, lsl #14
     50c:	01dd0000 	bicseq	r0, sp, r0
     510:	0c0e0000 	stceq	0, cr0, [lr], {-0}
     514:	e6000086 	str	r0, [r0], -r6, lsl #1
     518:	00000002 	andeq	r0, r0, r2
     51c:	0084c40e 	addeq	ip, r4, lr, lsl #8
     520:	0002e600 	andeq	lr, r2, r0, lsl #12
     524:	86181600 	ldrhi	r1, [r8], -r0, lsl #12
     528:	02e60000 	rsceq	r0, r6, #0
     52c:	01170000 	tsteq	r7, r0
     530:	25080250 	strcs	r0, [r8, #-592]	; 0xfffffdb0
     534:	040f0000 	streq	r0, [pc], #-0	; 53c <__start-0x7ac4>
     538:	000002bb 			; <UNDEFINED> instruction: 0x000002bb
     53c:	0000301a 	andeq	r3, r0, sl, lsl r0
     540:	00301000 	eorseq	r1, r0, r0
     544:	02d00000 	sbcseq	r0, r0, #0
     548:	40110000 	andsmi	r0, r1, r0
     54c:	10000001 	andne	r0, r0, r1
     550:	02581400 	subseq	r1, r8, #0, 8
     554:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
     558:	000002e1 	andeq	r0, r0, r1, ror #5
     55c:	a0000305 	andge	r0, r0, r5, lsl #6
     560:	c01a0000 	andsgt	r0, sl, r0
     564:	1b000002 	blne	574 <__start-0x7a8c>
     568:	00000240 	andeq	r0, r0, r0, asr #4
     56c:	571c2305 	ldrpl	r2, [ip, -r5, lsl #6]
     570:	00000000 	andeq	r0, r0, r0
     574:	00019c00 	andeq	r9, r1, r0, lsl #24
     578:	08000400 	stmdaeq	r0, {sl}
     57c:	04000003 	streq	r0, [r0], #-3
     580:	0001c701 	andeq	ip, r1, r1, lsl #14
     584:	02a80100 	adceq	r0, r8, #0, 2
     588:	00700000 	rsbseq	r0, r0, r0
     58c:	86440000 	strbhi	r0, [r4], -r0
     590:	00f80000 	rscseq	r0, r8, r0
     594:	02450000 	subeq	r0, r5, #0
     598:	01020000 	mrseq	r0, (UNDEF: 2)
     59c:	00006208 	andeq	r6, r0, r8, lsl #4
     5a0:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
     5a4:	00000123 	andeq	r0, r0, r3, lsr #2
     5a8:	69050403 	stmdbvs	r5, {r0, r1, sl}
     5ac:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     5b0:	00000508 	andeq	r0, r0, r8, lsl #10
     5b4:	51040000 	mrspl	r0, (UNDEF: 4)
     5b8:	02000000 	andeq	r0, r0, #0
     5bc:	00004c16 	andeq	r4, r0, r6, lsl ip
     5c0:	08010200 	stmdaeq	r1, {r9}
     5c4:	00000059 	andeq	r0, r0, r9, asr r0
     5c8:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     5cc:	04000000 	streq	r0, [r0], #-0
     5d0:	00000067 	andeq	r0, r0, r7, rrx
     5d4:	00651a02 	rsbeq	r1, r5, r2, lsl #20
     5d8:	04020000 	streq	r0, [r2], #-0
     5dc:	00003407 	andeq	r3, r0, r7, lsl #8
     5e0:	07080200 	streq	r0, [r8, -r0, lsl #4]
     5e4:	0000002a 	andeq	r0, r0, sl, lsr #32
     5e8:	0001a805 	andeq	sl, r1, r5, lsl #16
     5ec:	44260100 	strtmi	r0, [r6], #-256	; 0xffffff00
     5f0:	64000086 	strvs	r0, [r0], #-134	; 0xffffff7a
     5f4:	01000000 	mrseq	r0, (UNDEF: 0)
     5f8:	0000e59c 	muleq	r0, ip, r5
     5fc:	86540600 	ldrbhi	r0, [r4], -r0, lsl #12
     600:	01520000 	cmpeq	r2, r0
     604:	00a00000 	adceq	r0, r0, r0
     608:	01070000 	mrseq	r0, (UNDEF: 7)
     60c:	07300151 			; <UNDEFINED> instruction: 0x07300151
     610:	3f015001 	svccc	0x00015001
     614:	86600600 	strbthi	r0, [r0], -r0, lsl #12
     618:	01520000 	cmpeq	r2, r0
     61c:	00b80000 	adcseq	r0, r8, r0
     620:	01070000 	mrseq	r0, (UNDEF: 7)
     624:	07300151 			; <UNDEFINED> instruction: 0x07300151
     628:	3e015001 	cdpcc	0, 0, cr5, cr1, cr1, {0}
     62c:	866c0600 	strbthi	r0, [ip], -r0, lsl #12
     630:	01680000 	cmneq	r8, r0
     634:	00d00000 	sbcseq	r0, r0, r0
     638:	01070000 	mrseq	r0, (UNDEF: 7)
     63c:	07320151 			; <UNDEFINED> instruction: 0x07320151
     640:	3f015001 	svccc	0x00015001
     644:	86780800 	ldrbthi	r0, [r8], -r0, lsl #16
     648:	01680000 	cmneq	r8, r0
     64c:	01070000 	mrseq	r0, (UNDEF: 7)
     650:	07320151 			; <UNDEFINED> instruction: 0x07320151
     654:	3e015001 	cdpcc	0, 0, cr5, cr1, cr1, {0}
     658:	c7090000 	strgt	r0, [r9, -r0]
     65c:	01000002 	tsteq	r0, r2
     660:	0086a83c 	addeq	sl, r6, ip, lsr r8
     664:	00002400 	andeq	r2, r0, r0, lsl #8
     668:	059c0100 	ldreq	r0, [ip, #256]	; 0x100
     66c:	00000240 	andeq	r0, r0, r0, asr #4
     670:	86cc4601 	strbhi	r4, [ip], r1, lsl #12
     674:	00240000 	eoreq	r0, r4, r0
     678:	9c010000 	stcls	0, cr0, [r1], {-0}
     67c:	00000119 	andeq	r0, r0, r9, lsl r1
     680:	0001490a 	andeq	r4, r1, sl, lsl #18
     684:	41460100 	mrsmi	r0, (UNDEF: 86)
     688:	01000000 	mrseq	r0, (UNDEF: 0)
     68c:	400b0050 	andmi	r0, fp, r0, asr r0
     690:	01000001 	tsteq	r0, r1
     694:	00004152 	andeq	r4, r0, r2, asr r1
     698:	0086f000 	addeq	pc, r6, r0
     69c:	00004c00 	andeq	r4, r0, r0, lsl #24
     6a0:	529c0100 	addspl	r0, ip, #0, 2
     6a4:	0c000001 	stceq	0, cr0, [r0], {1}
     6a8:	000002a1 	andeq	r0, r0, r1, lsr #5
     6ac:	00335301 	eorseq	r5, r3, r1, lsl #6
     6b0:	01f10000 	mvnseq	r0, r0
     6b4:	1c080000 	stcne	0, cr0, [r8], {-0}
     6b8:	7e000087 	cdpvc	0, 0, cr0, cr0, cr7, {4}
     6bc:	07000001 	streq	r0, [r0, -r1]
     6c0:	75025001 	strvc	r5, [r2, #-1]
     6c4:	0d000000 	stceq	0, cr0, [r0, #-0]
     6c8:	0000000e 	andeq	r0, r0, lr
     6cc:	01684b03 	cmneq	r8, r3, lsl #22
     6d0:	410e0000 	mrsmi	r0, (UNDEF: 14)
     6d4:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     6d8:	00000041 	andeq	r0, r0, r1, asr #32
     6dc:	01170d00 	tsteq	r7, r0, lsl #26
     6e0:	37030000 	strcc	r0, [r3, -r0]
     6e4:	0000017e 	andeq	r0, r0, lr, ror r1
     6e8:	0000410e 	andeq	r4, r0, lr, lsl #2
     6ec:	00410e00 	subeq	r0, r1, r0, lsl #28
     6f0:	0f000000 	svceq	0x00000000
     6f4:	00000266 	andeq	r0, r0, r6, ror #4
     6f8:	00331304 	eorseq	r1, r3, r4, lsl #6
     6fc:	01940000 	orrseq	r0, r4, r0
     700:	940e0000 	strls	r0, [lr], #-0
     704:	10000001 	andne	r0, r0, r1
     708:	9a041100 	bls	104b10 <__bss_end+0xf8b10>
     70c:	12000001 	andne	r0, r0, #1
     710:	00000025 	andeq	r0, r0, r5, lsr #32
     714:	00029a00 	andeq	r9, r2, r0, lsl #20
     718:	13000400 	movwne	r0, #1024	; 0x400
     71c:	04000004 	streq	r0, [r0], #-4
     720:	0001c701 	andeq	ip, r1, r1, lsl #14
     724:	02df0100 	sbcseq	r0, pc, #0, 2
     728:	00700000 	rsbseq	r0, r0, r0
     72c:	873c0000 	ldrhi	r0, [ip, -r0]!
     730:	02c40000 	sbceq	r0, r4, #0
     734:	03020000 	movweq	r0, #8192	; 0x2000
     738:	01020000 	mrseq	r0, (UNDEF: 2)
     73c:	00006208 	andeq	r6, r0, r8, lsl #4
     740:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
     744:	00000123 	andeq	r0, r0, r3, lsr #2
     748:	69050403 	stmdbvs	r5, {r0, r1, sl}
     74c:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     750:	00000508 	andeq	r0, r0, r8, lsl #10
     754:	51040000 	mrspl	r0, (UNDEF: 4)
     758:	02000000 	andeq	r0, r0, #0
     75c:	00004c16 	andeq	r4, r0, r6, lsl ip
     760:	08010200 	stmdaeq	r1, {r9}
     764:	00000059 	andeq	r0, r0, r9, asr r0
     768:	0001be04 	andeq	fp, r1, r4, lsl #28
     76c:	5e180200 	cdppl	2, 1, cr0, cr8, cr0, {0}
     770:	02000000 	andeq	r0, r0, #0
     774:	00fe0702 	rscseq	r0, lr, r2, lsl #14
     778:	67040000 	strvs	r0, [r4, -r0]
     77c:	02000000 	andeq	r0, r0, #0
     780:	0000701a 	andeq	r7, r0, sl, lsl r0
     784:	07040200 	streq	r0, [r4, -r0, lsl #4]
     788:	00000034 	andeq	r0, r0, r4, lsr r0
     78c:	2a070802 	bcs	1c279c <__end+0x9579c>
     790:	05000000 	streq	r0, [r0, #-0]
     794:	0000015c 	andeq	r0, r0, ip, asr r1
     798:	873c1101 	ldrhi	r1, [ip, -r1, lsl #2]!
     79c:	002c0000 	eoreq	r0, ip, r0
     7a0:	9c010000 	stcls	0, cr0, [r1], {-0}
     7a4:	000000cf 	andeq	r0, r0, pc, asr #1
     7a8:	6b6c6306 	blvs	1b193c8 <__user_program+0x18193c8>
     7ac:	53110100 	tstpl	r1, #0, 2
     7b0:	27000000 	strcs	r0, [r0, -r0]
     7b4:	07000002 	streq	r0, [r0, -r2]
     7b8:	00008758 	andeq	r8, r0, r8, asr r7
     7bc:	00000240 	andeq	r0, r0, r0, asr #4
     7c0:	000000ba 	strheq	r0, [r0], -sl
     7c4:	01510108 	cmpeq	r1, r8, lsl #2
     7c8:	50010834 	andpl	r0, r1, r4, lsr r8
     7cc:	09003201 	stmdbeq	r0, {r0, r9, ip, sp}
     7d0:	00008764 	andeq	r8, r0, r4, ror #14
     7d4:	00000240 	andeq	r0, r0, r0, asr #4
     7d8:	01510108 	cmpeq	r1, r8, lsl #2
     7dc:	50010834 	andpl	r0, r1, r4, lsr r8
     7e0:	00003301 	andeq	r3, r0, r1, lsl #6
     7e4:	0003140a 	andeq	r1, r3, sl, lsl #8
     7e8:	411c0100 	tstmi	ip, r0, lsl #2
     7ec:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
     7f0:	28000087 	stmdacs	r0, {r0, r1, r2, r7}
     7f4:	01000001 	tsteq	r0, r1
     7f8:	0001789c 	muleq	r1, ip, r8
     7fc:	75620600 	strbvc	r0, [r2, #-1536]!	; 0xfffffa00
     800:	1c010066 	stcne	0, cr0, [r1], {102}	; 0x66
     804:	00000178 	andeq	r0, r0, r8, ror r1
     808:	00000248 	andeq	r0, r0, r8, asr #4
     80c:	6e656c06 	cdpvs	12, 6, cr6, cr5, cr6, {0}
     810:	531c0100 	tstpl	ip, #0, 2
     814:	66000000 	strvs	r0, [r0], -r0
     818:	0b000002 	bleq	828 <__start-0x77d8>
     81c:	000003a6 	andeq	r0, r0, r6, lsr #7
     820:	00411c01 	subeq	r1, r1, r1, lsl #24
     824:	02870000 	addeq	r0, r7, #0
     828:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
     82c:	651e0100 	ldrvs	r0, [lr, #-256]	; 0xffffff00
     830:	a8000000 	stmdage	r0, {}	; <UNPREDICTABLE>
     834:	0d000002 	stceq	0, cr0, [r0, #-8]
     838:	000002fd 	strdeq	r0, [r0], -sp
     83c:	00411f01 	subeq	r1, r1, r1, lsl #30
     840:	02d30000 	sbcseq	r0, r3, #0
     844:	90070000 	andls	r0, r7, r0
     848:	56000087 	strpl	r0, [r0], -r7, lsl #1
     84c:	4f000002 	svcmi	0x00000002
     850:	08000001 	stmdaeq	r0, {r0}
     854:	40015201 	andmi	r5, r1, r1, lsl #4
     858:	01510108 	cmpeq	r1, r8, lsl #2
     85c:	50010840 	andpl	r0, r1, r0, asr #16
     860:	00007402 	andeq	r7, r0, r2, lsl #8
     864:	0087f807 	addeq	pc, r7, r7, lsl #16
     868:	00027c00 	andeq	r7, r2, r0, lsl #24
     86c:	00016300 	andeq	r6, r1, r0, lsl #6
     870:	50010800 	andpl	r0, r1, r0, lsl #16
     874:	00007802 	andeq	r7, r0, r2, lsl #16
     878:	00888809 	addeq	r8, r8, r9, lsl #16
     87c:	00025600 	andeq	r5, r2, r0, lsl #12
     880:	52010800 	andpl	r0, r1, #0, 16
     884:	01083201 	tsteq	r8, r1, lsl #4
     888:	00320151 	eorseq	r0, r2, r1, asr r1
     88c:	41040e00 	tstmi	r4, r0, lsl #28
     890:	0a000000 	beq	898 <__start-0x7768>
     894:	00000304 	andeq	r0, r0, r4, lsl #6
     898:	00415401 	subeq	r5, r1, r1, lsl #8
     89c:	88900000 	ldmhi	r0, {}	; <UNPREDICTABLE>
     8a0:	01700000 	cmneq	r0, r0
     8a4:	9c010000 	stcls	0, cr0, [r1], {-0}
     8a8:	00000240 	andeq	r0, r0, r0, asr #4
     8ac:	66756206 	ldrbtvs	r6, [r5], -r6, lsl #4
     8b0:	78540100 	ldmdavc	r4, {r8}^
     8b4:	e7000001 	str	r0, [r0, -r1]
     8b8:	06000002 	streq	r0, [r0], -r2
     8bc:	006e656c 	rsbeq	r6, lr, ip, ror #10
     8c0:	00535401 	subseq	r5, r3, r1, lsl #8
     8c4:	03130000 	tsteq	r3, #0
     8c8:	a60b0000 	strge	r0, [fp], -r0
     8cc:	01000003 	tsteq	r0, r3
     8d0:	00004154 	andeq	r4, r0, r4, asr r1
     8d4:	00033400 	andeq	r3, r3, r0, lsl #8
     8d8:	00690c00 	rsbeq	r0, r9, r0, lsl #24
     8dc:	00655601 	rsbeq	r5, r5, r1, lsl #12
     8e0:	03550000 	cmpeq	r5, #0
     8e4:	fd0d0000 	stc2	0, cr0, [sp, #-0]
     8e8:	01000002 	tsteq	r0, r2
     8ec:	00004157 	andeq	r4, r0, r7, asr r1
     8f0:	00037400 	andeq	r7, r3, r0, lsl #8
     8f4:	88b80700 	ldmhi	r8!, {r8, r9, sl}
     8f8:	02560000 	subseq	r0, r6, #0
     8fc:	02000000 	andeq	r0, r0, #0
     900:	01080000 	mrseq	r0, (UNDEF: 8)
     904:	20080252 	andcs	r0, r8, r2, asr r2
     908:	02510108 	subseq	r0, r1, #8, 2
     90c:	01082008 	tsteq	r8, r8
     910:	00740250 	rsbseq	r0, r4, r0, asr r2
     914:	89400700 	stmdbhi	r0, {r8, r9, sl}^
     918:	027c0000 	rsbseq	r0, ip, #0
     91c:	02170000 	andseq	r0, r7, #0
     920:	01080000 	mrseq	r0, (UNDEF: 8)
     924:	50030550 	andpl	r0, r3, r0, asr r5
     928:	000000a0 	andeq	r0, r0, r0, lsr #1
     92c:	00897807 	addeq	r7, r9, r7, lsl #16
     930:	00027c00 	andeq	r7, r2, r0, lsl #24
     934:	00022b00 	andeq	r2, r2, r0, lsl #22
     938:	50010800 	andpl	r0, r1, r0, lsl #16
     93c:	00007802 	andeq	r7, r0, r2, lsl #16
     940:	0089f809 	addeq	pc, r9, r9, lsl #16
     944:	00025600 	andeq	r5, r2, r0, lsl #12
     948:	52010800 	andpl	r0, r1, #0, 16
     94c:	01083201 	tsteq	r8, r1, lsl #4
     950:	00320151 	eorseq	r0, r2, r1, asr r1
     954:	01170f00 	tsteq	r7, r0, lsl #30
     958:	37030000 	strcc	r0, [r3, -r0]
     95c:	00000256 	andeq	r0, r0, r6, asr r2
     960:	00004110 	andeq	r4, r0, r0, lsl r1
     964:	00411000 	subeq	r1, r1, r0
     968:	0f000000 	svceq	0x00000000
     96c:	000002d2 	ldrdeq	r0, [r0], -r2
     970:	02710504 	rsbseq	r0, r1, #4, 10	; 0x1000000
     974:	71100000 	tstvc	r0, r0
     978:	10000002 	andne	r0, r0, r2
     97c:	00000065 	andeq	r0, r0, r5, rrx
     980:	00006510 	andeq	r6, r0, r0, lsl r5
     984:	040e0000 	streq	r0, [lr], #-0
     988:	00000277 	andeq	r0, r0, r7, ror r2
     98c:	00006511 	andeq	r6, r0, r1, lsl r5
     990:	02661200 	rsbeq	r1, r6, #0, 4
     994:	13050000 	movwne	r0, #20480	; 0x5000
     998:	00000033 	andeq	r0, r0, r3, lsr r0
     99c:	00000292 	muleq	r0, r2, r2
     9a0:	00029210 	andeq	r9, r2, r0, lsl r2
     9a4:	0e001300 	cdpeq	3, 0, cr1, cr0, cr0, {0}
     9a8:	00029804 	andeq	r9, r2, r4, lsl #16
     9ac:	00251400 	eoreq	r1, r5, r0, lsl #8
     9b0:	d8000000 	stmdale	r0, {}	; <UNPREDICTABLE>
     9b4:	04000005 	streq	r0, [r0], #-5
     9b8:	00052b00 	andeq	r2, r5, r0, lsl #22
     9bc:	c7010400 	strgt	r0, [r1, -r0, lsl #8]
     9c0:	01000001 	tsteq	r0, r1
     9c4:	00000325 	andeq	r0, r0, r5, lsr #6
     9c8:	00000070 	andeq	r0, r0, r0, ror r0
     9cc:	00008a00 	andeq	r8, r0, r0, lsl #20
     9d0:	00000344 	andeq	r0, r0, r4, asr #6
     9d4:	000003f5 	strdeq	r0, [r0], -r5
     9d8:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
     9dc:	02000000 	andeq	r0, r0, #0
     9e0:	01230502 			; <UNDEFINED> instruction: 0x01230502
     9e4:	04030000 	streq	r0, [r3], #-0
     9e8:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     9ec:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     9f0:	00000000 	andeq	r0, r0, r0
     9f4:	00005104 	andeq	r5, r0, r4, lsl #2
     9f8:	4c160200 	lfmmi	f0, 4, [r6], {-0}
     9fc:	02000000 	andeq	r0, r0, #0
     a00:	00590801 	subseq	r0, r9, r1, lsl #16
     a04:	be040000 	cdplt	0, 0, cr0, cr4, cr0, {0}
     a08:	02000001 	andeq	r0, r0, #1
     a0c:	00005e18 	andeq	r5, r0, r8, lsl lr
     a10:	07020200 	streq	r0, [r2, -r0, lsl #4]
     a14:	000000fe 	strdeq	r0, [r0], -lr
     a18:	00006704 	andeq	r6, r0, r4, lsl #14
     a1c:	701a0200 	andsvc	r0, sl, r0, lsl #4
     a20:	02000000 	andeq	r0, r0, #0
     a24:	00340704 	eorseq	r0, r4, r4, lsl #14
     a28:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     a2c:	00002a07 	andeq	r2, r0, r7, lsl #20
     a30:	03860500 	orreq	r0, r6, #0, 10
     a34:	10010000 	andne	r0, r1, r0
     a38:	00008a00 	andeq	r8, r0, r0, lsl #20
     a3c:	000000b8 	strheq	r0, [r0], -r8
     a40:	01a99c01 			; <UNDEFINED> instruction: 0x01a99c01
     a44:	7b060000 	blvc	180a4c <__end+0x53a4c>
     a48:	01000003 	tsteq	r0, r3
     a4c:	00005310 	andeq	r5, r0, r0, lsl r3
     a50:	00038800 	andeq	r8, r3, r0, lsl #16
     a54:	75620700 	strbvc	r0, [r2, #-1792]!	; 0xfffff900
     a58:	12010066 	andne	r0, r1, #102	; 0x66
     a5c:	000001a9 	andeq	r0, r0, r9, lsr #3
     a60:	08749102 	ldmdaeq	r4!, {r1, r8, ip, pc}^
     a64:	00000374 	andeq	r0, r0, r4, ror r3
     a68:	00651301 	rsbeq	r1, r5, r1, lsl #6
     a6c:	03a90000 			; <UNDEFINED> instruction: 0x03a90000
     a70:	a0090000 	andge	r0, r9, r0
     a74:	01000003 	tsteq	r0, r3
     a78:	0001c01b 	andeq	ip, r1, fp, lsl r0
     a7c:	70910200 	addsvc	r0, r1, r0, lsl #4
     a80:	0002fd08 	andeq	pc, r2, r8, lsl #26
     a84:	411d0100 	tstmi	sp, r0, lsl #2
     a88:	cd000000 	stcgt	0, cr0, [r0, #-0]
     a8c:	0a000003 	beq	aa0 <__start-0x7560>
     a90:	00008a2c 	andeq	r8, r0, ip, lsr #20
     a94:	0000057a 	andeq	r0, r0, sl, ror r5
     a98:	000000f3 	strdeq	r0, [r0], -r3
     a9c:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     aa0:	00a09803 	adceq	r9, r0, r3, lsl #16
     aa4:	3c0a0000 	stccc	0, cr0, [sl], {-0}
     aa8:	9b00008a 	blls	cd8 <__start-0x7328>
     aac:	12000005 	andne	r0, r0, #5
     ab0:	0b000001 	bleq	abc <__start-0x7544>
     ab4:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     ab8:	51010b49 	tstpl	r1, r9, asr #22
     abc:	010b3301 	tsteq	fp, r1, lsl #6
     ac0:	6c910250 	lfmvs	f0, 4, [r1], {80}	; 0x50
     ac4:	8a500a00 	bhi	14032cc <__user_program+0x11032cc>
     ac8:	057a0000 	ldrbeq	r0, [sl, #-0]!
     acc:	01290000 			; <UNDEFINED> instruction: 0x01290000
     ad0:	010b0000 	mrseq	r0, (UNDEF: 11)
     ad4:	b0030550 	andlt	r0, r3, r0, asr r5
     ad8:	000000a0 	andeq	r0, r0, r0, lsr #1
     adc:	008a600a 	addeq	r6, sl, sl
     ae0:	00057a00 	andeq	r7, r5, r0, lsl #20
     ae4:	00014000 	andeq	r4, r1, r0
     ae8:	50010b00 	andpl	r0, r1, r0, lsl #22
     aec:	a0c40305 	sbcge	r0, r4, r5, lsl #6
     af0:	0a000000 	beq	af8 <__start-0x7508>
     af4:	00008a74 	andeq	r8, r0, r4, ror sl
     af8:	0000059b 	muleq	r0, fp, r5
     afc:	0000015f 	andeq	r0, r0, pc, asr r1
     b00:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     b04:	010b4908 	tsteq	fp, r8, lsl #18
     b08:	0b310151 	bleq	c41054 <__user_program+0x941054>
     b0c:	91025001 	tstls	r2, r1
     b10:	840a006c 	strhi	r0, [sl], #-108	; 0xffffff94
     b14:	c000008a 	andgt	r0, r0, sl, lsl #1
     b18:	7e000005 	cdpvc	0, 0, cr0, cr0, cr5, {0}
     b1c:	0b000001 	bleq	b28 <__start-0x74d8>
     b20:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     b24:	51010b49 	tstpl	r1, r9, asr #22
     b28:	010b3201 	tsteq	fp, r1, lsl #4
     b2c:	007d0250 	rsbseq	r0, sp, r0, asr r2
     b30:	8a980a00 	bhi	fe603338 <__user_program+0xfe303338>
     b34:	057a0000 	ldrbeq	r0, [sl, #-0]!
     b38:	01950000 	orrseq	r0, r5, r0
     b3c:	010b0000 	mrseq	r0, (UNDEF: 11)
     b40:	d4030550 	strle	r0, [r3], #-1360	; 0xfffffab0
     b44:	000000a0 	andeq	r0, r0, r0, lsr #1
     b48:	008ab00c 	addeq	fp, sl, ip
     b4c:	00057a00 	andeq	r7, r5, r0, lsl #20
     b50:	50010b00 	andpl	r0, r1, r0, lsl #22
     b54:	a0f80305 	rscsge	r0, r8, r5, lsl #6
     b58:	00000000 	andeq	r0, r0, r0
     b5c:	0000410d 	andeq	r4, r0, sp, lsl #2
     b60:	0001b900 	andeq	fp, r1, r0, lsl #18
     b64:	01b90e00 			; <UNDEFINED> instruction: 0x01b90e00
     b68:	00020000 	andeq	r0, r2, r0
     b6c:	93070402 	movwls	r0, #29698	; 0x7402
     b70:	0d000002 	stceq	0, cr0, [r0, #-8]
     b74:	00000041 	andeq	r0, r0, r1, asr #32
     b78:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     b7c:	0001b90e 	andeq	fp, r1, lr, lsl #18
     b80:	0f000100 	svceq	0x00000100
     b84:	00000354 	andeq	r0, r0, r4, asr r3
     b88:	00533301 	subseq	r3, r3, r1, lsl #6
     b8c:	8ab80000 	bhi	fee00b94 <__user_program+0xfeb00b94>
     b90:	00700000 	rsbseq	r0, r0, r0
     b94:	9c010000 	stcls	0, cr0, [r1], {-0}
     b98:	0000028c 	andeq	r0, r0, ip, lsl #5
     b9c:	66756207 	ldrbtvs	r6, [r5], -r7, lsl #4
     ba0:	8c350100 	ldfhis	f0, [r5], #-0
     ba4:	02000002 	andeq	r0, r0, #2
     ba8:	fd087491 	stc2	4, cr7, [r8, #-580]	; 0xfffffdbc
     bac:	01000002 	tsteq	r0, r2
     bb0:	00004136 	andeq	r4, r0, r6, lsr r1
     bb4:	0003f600 	andeq	pc, r3, r0, lsl #12
     bb8:	03a00900 	moveq	r0, #0, 18
     bbc:	40010000 	andmi	r0, r1, r0
     bc0:	000001c0 	andeq	r0, r0, r0, asr #3
     bc4:	08709102 	ldmdaeq	r0!, {r1, r8, ip, pc}^
     bc8:	00000374 	andeq	r0, r0, r4, ror r3
     bcc:	00534701 	subseq	r4, r3, r1, lsl #14
     bd0:	04140000 	ldreq	r0, [r4], #-0
     bd4:	d80a0000 	stmdale	sl, {}	; <UNPREDICTABLE>
     bd8:	9b00008a 	blls	e08 <__start-0x71f8>
     bdc:	42000005 	andmi	r0, r0, #5
     be0:	0b000002 	bleq	bf0 <__start-0x7410>
     be4:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     be8:	51010b49 	tstpl	r1, r9, asr #22
     bec:	010b3101 	tsteq	fp, r1, lsl #2
     bf0:	6c910250 	lfmvs	f0, 4, [r1], {80}	; 0x50
     bf4:	8aec0a00 	bhi	ffb033fc <__user_program+0xff8033fc>
     bf8:	057a0000 	ldrbeq	r0, [sl, #-0]!
     bfc:	02590000 	subseq	r0, r9, #0
     c00:	010b0000 	mrseq	r0, (UNDEF: 11)
     c04:	10030550 	andne	r0, r3, r0, asr r5
     c08:	000000a1 	andeq	r0, r0, r1, lsr #1
     c0c:	008afc0a 	addeq	pc, sl, sl, lsl #24
     c10:	0005c000 	andeq	ip, r5, r0
     c14:	00027800 	andeq	r7, r2, r0, lsl #16
     c18:	52010b00 	andpl	r0, r1, #0, 22
     c1c:	0b490802 	bleq	1242c2c <__user_program+0xf42c2c>
     c20:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     c24:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     c28:	0c00007d 	stceq	0, cr0, [r0], {125}	; 0x7d
     c2c:	00008b10 	andeq	r8, r0, r0, lsl fp
     c30:	0000057a 	andeq	r0, r0, sl, ror r5
     c34:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     c38:	00a15003 	adceq	r5, r1, r3
     c3c:	0d000000 	stceq	0, cr0, [r0, #-0]
     c40:	00000041 	andeq	r0, r0, r1, asr #32
     c44:	0000029c 	muleq	r0, ip, r2
     c48:	0001b90e 	andeq	fp, r1, lr, lsl #18
     c4c:	05000000 	streq	r0, [r0, #-0]
     c50:	0000017e 	andeq	r0, r0, lr, ror r1
     c54:	8b284d01 	blhi	a14060 <__user_program+0x714060>
     c58:	00f00000 	rscseq	r0, r0, r0
     c5c:	9c010000 	stcls	0, cr0, [r1], {-0}
     c60:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
     c64:	66756207 	ldrbtvs	r6, [r5], -r7, lsl #4
     c68:	8c4e0100 	stfhie	f0, [lr], {-0}
     c6c:	02000002 	andeq	r0, r0, #2
     c70:	a0096c91 	mulge	r9, r1, ip
     c74:	01000003 	tsteq	r0, r3
     c78:	0001c04f 	andeq	ip, r1, pc, asr #32
     c7c:	68910200 	ldmvs	r1, {r9}
     c80:	00037408 	andeq	r7, r3, r8, lsl #8
     c84:	53500100 	cmppl	r0, #0, 2
     c88:	54000000 	strpl	r0, [r0], #-0
     c8c:	08000004 	stmdaeq	r0, {r2}
     c90:	000002fd 	strdeq	r0, [r0], -sp
     c94:	00415101 	subeq	r5, r1, r1, lsl #2
     c98:	04b00000 	ldrteq	r0, [r0], #0
     c9c:	440a0000 	strmi	r0, [sl], #-0
     ca0:	9b00008b 	blls	ed4 <__start-0x712c>
     ca4:	0a000005 	beq	cc0 <__start-0x7340>
     ca8:	0b000003 	bleq	cbc <__start-0x7344>
     cac:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     cb0:	51010b49 	tstpl	r1, r9, asr #22
     cb4:	010b3101 	tsteq	fp, r1, lsl #2
     cb8:	64910250 	ldrvs	r0, [r1], #592	; 0x250
     cbc:	8b540a00 	blhi	15034c4 <__user_program+0x12034c4>
     cc0:	05c00000 	strbeq	r0, [r0]
     cc4:	03290000 			; <UNDEFINED> instruction: 0x03290000
     cc8:	010b0000 	mrseq	r0, (UNDEF: 11)
     ccc:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
     cd0:	0151010b 	cmpeq	r1, fp, lsl #2
     cd4:	50010b32 	andpl	r0, r1, r2, lsr fp
     cd8:	00007d02 	andeq	r7, r0, r2, lsl #26
     cdc:	008b680a 	addeq	r6, fp, sl, lsl #16
     ce0:	00057a00 	andeq	r7, r5, r0, lsl #20
     ce4:	00034000 	andeq	r4, r3, r0
     ce8:	50010b00 	andpl	r0, r1, r0, lsl #22
     cec:	a0d40305 	sbcsge	r0, r4, r5, lsl #6
     cf0:	0a000000 	beq	cf8 <__start-0x7308>
     cf4:	00008b84 	andeq	r8, r0, r4, lsl #23
     cf8:	0000057a 	andeq	r0, r0, sl, ror r5
     cfc:	00000357 	andeq	r0, r0, r7, asr r3
     d00:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     d04:	00a17c03 	adceq	r7, r1, r3, lsl #24
     d08:	a00a0000 	andge	r0, sl, r0
     d0c:	9b00008b 	blls	f40 <__start-0x70c0>
     d10:	76000005 	strvc	r0, [r0], -r5
     d14:	0b000003 	bleq	d28 <__start-0x72d8>
     d18:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     d1c:	51010b49 	tstpl	r1, r9, asr #22
     d20:	010b3101 	tsteq	fp, r1, lsl #2
     d24:	00740250 	rsbseq	r0, r4, r0, asr r2
     d28:	8bb00a00 	blhi	fec03530 <__user_program+0xfe903530>
     d2c:	05c00000 	strbeq	r0, [r0]
     d30:	03950000 	orrseq	r0, r5, #0
     d34:	010b0000 	mrseq	r0, (UNDEF: 11)
     d38:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
     d3c:	0151010b 	cmpeq	r1, fp, lsl #2
     d40:	50010b32 	andpl	r0, r1, r2, lsr fp
     d44:	00007d02 	andeq	r7, r0, r2, lsl #26
     d48:	008bcc0a 	addeq	ip, fp, sl, lsl #24
     d4c:	00057a00 	andeq	r7, r5, r0, lsl #20
     d50:	0003ac00 	andeq	sl, r3, r0, lsl #24
     d54:	50010b00 	andpl	r0, r1, r0, lsl #22
     d58:	a1a00305 	lslge	r0, r5, #6
     d5c:	0a000000 	beq	d64 <__start-0x729c>
     d60:	00008be4 	andeq	r8, r0, r4, ror #23
     d64:	0000059b 	muleq	r0, fp, r5
     d68:	000003cb 	andeq	r0, r0, fp, asr #7
     d6c:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     d70:	010b4908 	tsteq	fp, r8, lsl #18
     d74:	0b310151 	bleq	c412c0 <__user_program+0x9412c0>
     d78:	74025001 	strvc	r5, [r2], #-1
     d7c:	f40a0000 	vst4.8	{d0-d3}, [sl], r0
     d80:	c000008b 	andgt	r0, r0, fp, lsl #1
     d84:	eb000005 	bl	da0 <__start-0x7260>
     d88:	0b000003 	bleq	d9c <__start-0x7264>
     d8c:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     d90:	51010b49 	tstpl	r1, r9, asr #22
     d94:	0b007502 	bleq	1e1a4 <__bss_end+0x121a4>
     d98:	7d025001 	stcvc	0, cr5, [r2, #-4]
     d9c:	100c0000 	andne	r0, ip, r0
     da0:	7a00008c 	bvc	fd8 <__start-0x7028>
     da4:	0b000005 	bleq	dc0 <__start-0x7240>
     da8:	03055001 	movweq	r5, #20481	; 0x5001
     dac:	0000a1b0 			; <UNDEFINED> instruction: 0x0000a1b0
     db0:	97100000 	ldrls	r0, [r0, -r0]
     db4:	01000003 	tsteq	r0, r3
     db8:	00005373 	andeq	r5, r0, r3, ror r3
     dbc:	008c1800 	addeq	r1, ip, r0, lsl #16
     dc0:	00007400 	andeq	r7, r0, r0, lsl #8
     dc4:	5a9c0100 	bpl	fe7011cc <__user_program+0xfe4011cc>
     dc8:	06000004 	streq	r0, [r0], -r4
     dcc:	0000036c 	andeq	r0, r0, ip, ror #6
     dd0:	00417301 	subeq	r7, r1, r1, lsl #6
     dd4:	04c30000 	strbeq	r0, [r3], #0
     dd8:	68090000 	stmdavs	r9, {}	; <UNPREDICTABLE>
     ddc:	01000003 	tsteq	r0, r3
     de0:	00003376 	andeq	r3, r0, r6, ror r3
     de4:	04030500 	streq	r0, [r3], #-1280	; 0xfffffb00
     de8:	080000b0 	stmdaeq	r0, {r4, r5, r7}
     dec:	00000347 	andeq	r0, r0, r7, asr #6
     df0:	00537701 	subseq	r7, r3, r1, lsl #14
     df4:	05480000 	strbeq	r0, [r8, #-0]
     df8:	70110000 	andsvc	r0, r1, r0
     dfc:	7e00008c 	cdpvc	0, 0, cr0, cr0, cr12, {4}
     e00:	11000000 	mrsne	r0, (UNDEF: 0)
     e04:	00008c80 	andeq	r8, r0, r0, lsl #25
     e08:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     e0c:	014e1200 	mrseq	r1, SPSR_fiq
     e10:	8f010000 	svchi	0x00010000
     e14:	00008c8c 	andeq	r8, r0, ip, lsl #25
     e18:	00000020 	andeq	r0, r0, r0, lsr #32
     e1c:	04a59c01 	strteq	r9, [r5], #3073	; 0xc01
     e20:	76130000 	ldrvc	r0, [r3], -r0
     e24:	01006c61 	tsteq	r0, r1, ror #24
     e28:	00005390 	muleq	r0, r0, r3
     e2c:	0005a100 	andeq	sl, r5, r0, lsl #2
     e30:	8c980a00 	vldmiahi	r8, {s0-s-1}
     e34:	03ff0000 	mvnseq	r0, #0
     e38:	04910000 	ldreq	r0, [r1], #0
     e3c:	010b0000 	mrseq	r0, (UNDEF: 11)
     e40:	00330150 	eorseq	r0, r3, r0, asr r1
     e44:	008ca80c 	addeq	sl, ip, ip, lsl #16
     e48:	00057a00 	andeq	r7, r5, r0, lsl #20
     e4c:	50010b00 	andpl	r0, r1, r0, lsl #22
     e50:	a1c00305 	bicge	r0, r0, r5, lsl #6
     e54:	00000000 	andeq	r0, r0, r0
     e58:	00016c12 	andeq	r6, r1, r2, lsl ip
     e5c:	ac950100 	ldfges	f0, [r5], {0}
     e60:	9800008c 	stmdals	r0, {r2, r3, r7}
     e64:	01000000 	mrseq	r0, (UNDEF: 0)
     e68:	00057a9c 	muleq	r5, ip, sl
     e6c:	696d1300 	stmdbvs	sp!, {r8, r9, ip}^
     e70:	9601006e 	strls	r0, [r1], -lr, rrx
     e74:	00000033 	andeq	r0, r0, r3, lsr r0
     e78:	000005b4 			; <UNDEFINED> instruction: 0x000005b4
     e7c:	78616d13 	stmdavc	r1!, {r0, r1, r4, r8, sl, fp, sp, lr}^
     e80:	33970100 	orrscc	r0, r7, #0, 2
     e84:	f8000000 			; <UNDEFINED> instruction: 0xf8000000
     e88:	13000005 	movwne	r0, #5
     e8c:	006c6176 	rsbeq	r6, ip, r6, ror r1
     e90:	00339801 	eorseq	r9, r3, r1, lsl #16
     e94:	06300000 	ldrteq	r0, [r0], -r0
     e98:	69130000 	ldmdbvs	r3, {}	; <UNPREDICTABLE>
     e9c:	33980100 	orrscc	r0, r8, #0, 2
     ea0:	4e000000 	cdpmi	0, 0, cr0, cr0, cr0, {0}
     ea4:	07000006 	streq	r0, [r0, -r6]
     ea8:	00706167 	rsbseq	r6, r0, r7, ror #2
     eac:	00339801 	eorseq	r9, r3, r1, lsl #16
     eb0:	54010000 	strpl	r0, [r1], #-0
     eb4:	008cdc0a 	addeq	sp, ip, sl, lsl #24
     eb8:	0003ff00 	andeq	pc, r3, r0, lsl #30
     ebc:	00051500 	andeq	r1, r5, r0, lsl #10
     ec0:	50010b00 	andpl	r0, r1, r0, lsl #22
     ec4:	00007802 	andeq	r7, r0, r2, lsl #16
     ec8:	008cf40a 	addeq	pc, ip, sl, lsl #8
     ecc:	00057a00 	andeq	r7, r5, r0, lsl #20
     ed0:	00052f00 	andeq	r2, r5, r0, lsl #30
     ed4:	51010b00 	tstpl	r1, r0, lsl #22
     ed8:	0b007402 	bleq	1dee8 <__bss_end+0x11ee8>
     edc:	79025001 	stmdbvc	r2, {r0, ip, lr}
     ee0:	0c0a0000 	stceq	0, cr0, [sl], {-0}
     ee4:	7a00008d 	bvc	1120 <__start-0x6ee0>
     ee8:	49000005 	stmdbmi	r0, {r0, r2}
     eec:	0b000005 	bleq	f08 <__start-0x70f8>
     ef0:	74025101 	strvc	r5, [r2], #-257	; 0xfffffeff
     ef4:	50010b00 	andpl	r0, r1, r0, lsl #22
     ef8:	00007a02 	andeq	r7, r0, r2, lsl #20
     efc:	008d2c0a 	addeq	r2, sp, sl, lsl #24
     f00:	00057a00 	andeq	r7, r5, r0, lsl #20
     f04:	00056600 	andeq	r6, r5, r0, lsl #12
     f08:	51010b00 	tstpl	r1, r0, lsl #22
     f0c:	0b007402 	bleq	1df1c <__bss_end+0x11f1c>
     f10:	03055001 	movweq	r5, #20481	; 0x5001
     f14:	0000a1f4 	strdeq	sl, [r0], -r4
     f18:	8d400c00 	stclhi	12, cr0, [r0, #-0]
     f1c:	057a0000 	ldrbeq	r0, [sl, #-0]!
     f20:	010b0000 	mrseq	r0, (UNDEF: 11)
     f24:	00030550 	andeq	r0, r3, r0, asr r5
     f28:	000000a2 	andeq	r0, r0, r2, lsr #1
     f2c:	02661400 	rsbeq	r1, r6, #0, 8
     f30:	13030000 	movwne	r0, #12288	; 0x3000
     f34:	00000033 	andeq	r0, r0, r3, lsr r0
     f38:	00000590 	muleq	r0, r0, r5
     f3c:	00059015 	andeq	r9, r5, r5, lsl r0
     f40:	17001600 	strne	r1, [r0, -r0, lsl #12]
     f44:	00059604 	andeq	r9, r5, r4, lsl #12
     f48:	00251800 	eoreq	r1, r5, r0, lsl #16
     f4c:	14140000 	ldrne	r0, [r4], #-0
     f50:	04000003 	streq	r0, [r0], #-3
     f54:	0000415e 	andeq	r4, r0, lr, asr r1
     f58:	0005ba00 	andeq	fp, r5, r0, lsl #20
     f5c:	05ba1500 	ldreq	r1, [sl, #1280]!	; 0x500
     f60:	53150000 	tstpl	r5, #0
     f64:	15000000 	strne	r0, [r0, #-0]
     f68:	00000041 	andeq	r0, r0, r1, asr #32
     f6c:	41041700 	tstmi	r4, r0, lsl #14
     f70:	19000000 	stmdbne	r0, {}	; <UNPREDICTABLE>
     f74:	00000304 	andeq	r0, r0, r4, lsl #6
     f78:	00416704 	subeq	r6, r1, r4, lsl #14
     f7c:	ba150000 	blt	540f84 <__user_program+0x240f84>
     f80:	15000005 	strne	r0, [r0, #-5]
     f84:	00000053 	andeq	r0, r0, r3, asr r0
     f88:	00004115 	andeq	r4, r0, r5, lsl r1
     f8c:	fd000000 	stc2	0, cr0, [r0, #-0]
     f90:	04000000 	streq	r0, [r0], #-0
     f94:	00069a00 	andeq	r9, r6, r0, lsl #20
     f98:	c7010400 	strgt	r0, [r1, -r0, lsl #8]
     f9c:	01000001 	tsteq	r0, r1
     fa0:	000003b0 			; <UNDEFINED> instruction: 0x000003b0
     fa4:	00000070 	andeq	r0, r0, r0, ror r0
     fa8:	00008d44 	andeq	r8, r0, r4, asr #26
     fac:	00000028 	andeq	r0, r0, r8, lsr #32
     fb0:	000004f1 	strdeq	r0, [r0], -r1
     fb4:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
     fb8:	02000000 	andeq	r0, r0, #0
     fbc:	01230502 			; <UNDEFINED> instruction: 0x01230502
     fc0:	04030000 	streq	r0, [r3], #-0
     fc4:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     fc8:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     fcc:	00000000 	andeq	r0, r0, r0
     fd0:	59080102 	stmdbpl	r8, {r1, r8}
     fd4:	02000000 	andeq	r0, r0, #0
     fd8:	00fe0702 	rscseq	r0, lr, r2, lsl #14
     fdc:	67040000 	strvs	r0, [r4, -r0]
     fe0:	02000000 	andeq	r0, r0, #0
     fe4:	00005a1a 	andeq	r5, r0, sl, lsl sl
     fe8:	07040200 	streq	r0, [r4, -r0, lsl #4]
     fec:	00000034 	andeq	r0, r0, r4, lsr r0
     ff0:	2a070802 	bcs	1c3000 <__end+0x96000>
     ff4:	05000000 	streq	r0, [r0, #-0]
     ff8:	000002d2 	ldrdeq	r0, [r0], -r2
     ffc:	8d440401 	cfstrdhi	mvd0, [r4, #-4]
    1000:	00180000 	andseq	r0, r8, r0
    1004:	9c010000 	stcls	0, cr0, [r1], {-0}
    1008:	000000b6 	strheq	r0, [r0], -r6
    100c:	0003a506 	andeq	sl, r3, r6, lsl #10
    1010:	b6040100 	strlt	r0, [r4], -r0, lsl #2
    1014:	01000000 	mrseq	r0, (UNDEF: 0)
    1018:	034e0750 	movteq	r0, #59216	; 0xe750
    101c:	04010000 	streq	r0, [r1], #-0
    1020:	0000004f 	andeq	r0, r0, pc, asr #32
    1024:	00000695 	muleq	r0, r5, r6
    1028:	0003ab07 	andeq	sl, r3, r7, lsl #22
    102c:	4f040100 	svcmi	0x00040100
    1030:	b6000000 	strlt	r0, [r0], -r0
    1034:	08000006 	stmdaeq	r0, {r1, r2}
    1038:	06010076 			; <UNDEFINED> instruction: 0x06010076
    103c:	0000004f 	andeq	r0, r0, pc, asr #32
    1040:	000006d7 	ldrdeq	r0, [r0], -r7
    1044:	bc040900 	stclt	9, cr0, [r4], {-0}
    1048:	0a000000 	beq	1050 <__start-0x6fb0>
    104c:	0000004f 	andeq	r0, r0, pc, asr #32
    1050:	0002d60b 	andeq	sp, r2, fp, lsl #12
    1054:	4f0b0100 	svcmi	0x000b0100
    1058:	5c000000 	stcpl	0, cr0, [r0], {-0}
    105c:	1000008d 	andne	r0, r0, sp, lsl #1
    1060:	01000000 	mrseq	r0, (UNDEF: 0)
    1064:	00760c9c 			; <UNDEFINED> instruction: 0x00760c9c
    1068:	004f0b01 	subeq	r0, pc, r1, lsl #22
    106c:	06f50000 	ldrbteq	r0, [r5], r0
    1070:	4e070000 	cdpmi	0, 0, cr0, cr7, cr0, {0}
    1074:	01000003 	tsteq	r0, r3
    1078:	00004f0b 	andeq	r4, r0, fp, lsl #30
    107c:	00071600 	andeq	r1, r7, r0, lsl #12
    1080:	03ab0600 			; <UNDEFINED> instruction: 0x03ab0600
    1084:	0b010000 	bleq	4108c <__bss_end+0x3508c>
    1088:	0000004f 	andeq	r0, r0, pc, asr #32
    108c:	00005201 	andeq	r5, r0, r1, lsl #4
    1090:	00000067 	andeq	r0, r0, r7, rrx
    1094:	07510002 	ldrbeq	r0, [r1, -r2]
    1098:	01040000 	mrseq	r0, (UNDEF: 4)
    109c:	00000561 	andeq	r0, r0, r1, ror #10
    10a0:	00008000 	andeq	r8, r0, r0
    10a4:	00008054 	andeq	r8, r0, r4, asr r0
    10a8:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
    10ac:	2f6b6269 	svccs	0x006b6269
    10b0:	2f637273 	svccs	0x00637273
    10b4:	746f6f62 	strbtvc	r6, [pc], #-3938	; 10bc <__start-0x6f44>
    10b8:	2f00532e 	svccs	0x0000532e
    10bc:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xfffff098
    10c0:	2f7a7a2f 	svccs	0x007a7a2f
    10c4:	6a6f7250 	bvs	1bdda0c <__user_program+0x18dda0c>
    10c8:	73746365 	cmnvc	r4, #-1811939327	; 0x94000001
    10cc:	626d652f 	rsbvs	r6, sp, #197132288	; 0xbc00000
    10d0:	6c5f6465 	cfldrdvs	mvd6, [pc], {101}	; 0x65
    10d4:	2f316261 	svccs	0x00316261
    10d8:	3162616c 	cmncc	r2, ip, ror #2
    10dc:	686f6a2d 	stmdavs	pc!, {r0, r2, r3, r5, r9, fp, sp, lr}^	; <UNPREDICTABLE>
    10e0:	7372616e 	cmnvc	r2, #-2147483621	; 0x8000001b
    10e4:	2f6c6165 	svccs	0x006c6165
    10e8:	65646f63 	strbvs	r6, [r4, #-3939]!	; 0xfffff09d
    10ec:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    10f0:	20534120 	subscs	r4, r3, r0, lsr #2
    10f4:	36322e32 			; <UNDEFINED> instruction: 0x36322e32
    10f8:	66800100 	strvs	r0, [r0], r0, lsl #2
    10fc:	02000000 	andeq	r0, r0, #0
    1100:	00076500 	andeq	r6, r7, r0, lsl #10
    1104:	b9010400 	stmdblt	r1, {sl}
    1108:	6c000005 	stcvs	0, cr0, [r0], {5}
    110c:	b000008d 	andlt	r0, r0, sp, lsl #1
    1110:	3300008d 	movwcc	r0, #141	; 0x8d
    1114:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
    1118:	732f6b62 			; <UNDEFINED> instruction: 0x732f6b62
    111c:	612f6372 			; <UNDEFINED> instruction: 0x612f6372
    1120:	532e6d72 			; <UNDEFINED> instruction: 0x532e6d72
    1124:	6f682f00 	svcvs	0x00682f00
    1128:	7a2f656d 	bvc	bda6e4 <__user_program+0x8da6e4>
    112c:	72502f7a 	subsvc	r2, r0, #488	; 0x1e8
    1130:	63656a6f 	cmnvs	r5, #454656	; 0x6f000
    1134:	652f7374 	strvs	r7, [pc, #-884]!	; dc8 <__start-0x7238>
    1138:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
    113c:	62616c5f 	rsbvs	r6, r1, #24320	; 0x5f00
    1140:	616c2f31 	cmnvs	ip, r1, lsr pc
    1144:	6a2d3162 	bvs	b4d6d4 <__user_program+0x84d6d4>
    1148:	616e686f 	cmnvs	lr, pc, ror #16
    114c:	61657372 	smcvs	22322	; 0x5732
    1150:	6f632f6c 	svcvs	0x00632f6c
    1154:	47006564 	strmi	r6, [r0, -r4, ror #10]
    1158:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
    115c:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
    1160:	01003632 	tsteq	r0, r2, lsr r6
    1164:	0000a680 	andeq	sl, r0, r0, lsl #13
    1168:	79000200 	stmdbvc	r0, {r9}
    116c:	04000007 	streq	r0, [r0], #-7
    1170:	00060a01 	andeq	r0, r6, r1, lsl #20
    1174:	008db000 	addeq	fp, sp, r0
    1178:	008dec00 	addeq	lr, sp, r0, lsl #24
    117c:	2f2e2e00 	svccs	0x002e2e00
    1180:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1184:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
    1188:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
    118c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    1190:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
    1194:	2f676966 	svccs	0x00676966
    1198:	2f6d7261 	svccs	0x006d7261
    119c:	62617062 	rsbvs	r7, r1, #98	; 0x62
    11a0:	00532e69 	subseq	r2, r3, r9, ror #28
    11a4:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    11a8:	672f646c 	strvs	r6, [pc, -ip, ror #8]!
    11ac:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    11b0:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    11b4:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    11b8:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    11bc:	5252442d 	subspl	r4, r2, #754974720	; 0x2d000000
    11c0:	2f414c6e 	svccs	0x00414c6e
    11c4:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    11c8:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    11cc:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    11d0:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    11d4:	2e342d69 	cdpcs	13, 3, cr2, cr4, cr9, {3}
    11d8:	2b332e39 	blcs	cccac4 <__user_program+0x9ccac4>
    11dc:	326e7673 	rsbcc	r7, lr, #120586240	; 0x7300000
    11e0:	37313133 			; <UNDEFINED> instruction: 0x37313133
    11e4:	75622f37 	strbvc	r2, [r2, #-3895]!	; 0xfffff0c9
    11e8:	2f646c69 	svccs	0x00646c69
    11ec:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    11f0:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    11f4:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    11f8:	696c2f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, sp}^
    11fc:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    1200:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    1204:	20534120 	subscs	r4, r3, r0, lsr #2
    1208:	35322e32 	ldrcc	r2, [r2, #-3634]!	; 0xfffff1ce
    120c:	60800100 	addvs	r0, r0, r0, lsl #2
    1210:	04000001 	streq	r0, [r0], #-1
    1214:	00078d00 	andeq	r8, r7, r0, lsl #26
    1218:	73010400 	movwvc	r0, #5120	; 0x1400
    121c:	01000004 	tsteq	r0, r4
    1220:	0000044c 	andeq	r0, r0, ip, asr #8
    1224:	000003d9 	ldrdeq	r0, [r0], -r9
    1228:	00008dec 	andeq	r8, r0, ip, ror #27
    122c:	00000084 	andeq	r0, r0, r4, lsl #1
    1230:	00000668 	andeq	r0, r0, r8, ror #12
    1234:	2a070802 	bcs	1c3244 <__end+0x96244>
    1238:	03000000 	movweq	r0, #0
    123c:	0000052d 	andeq	r0, r0, sp, lsr #10
    1240:	00a62301 	adceq	r2, r6, r1, lsl #6
    1244:	8dec0000 	stclhi	0, cr0, [ip]
    1248:	00440000 	subeq	r0, r4, r0
    124c:	9c010000 	stcls	0, cr0, [r1], {-0}
    1250:	000000a6 	andeq	r0, r0, r6, lsr #1
    1254:	01006104 	tsteq	r0, r4, lsl #2
    1258:	0000a623 	andeq	sl, r0, r3, lsr #12
    125c:	00073700 	andeq	r3, r7, r0, lsl #14
    1260:	00620400 	rsbeq	r0, r2, r0, lsl #8
    1264:	00a62401 	adceq	r2, r6, r1, lsl #8
    1268:	075f0000 	ldrbeq	r0, [pc, -r0]
    126c:	23050000 	movwcs	r0, #20480	; 0x5000
    1270:	01000005 	tsteq	r0, r5
    1274:	0000ad25 	andeq	sl, r0, r5, lsr #26
    1278:	00910200 	addseq	r0, r1, r0, lsl #4
    127c:	00054c06 	andeq	r4, r5, r6, lsl #24
    1280:	a6270100 	strtge	r0, [r7], -r0, lsl #2
    1284:	06000000 	streq	r0, [r0], -r0
    1288:	51049350 	tstpl	r4, r0, asr r3
    128c:	08070493 	stmdaeq	r7, {r0, r1, r4, r7, sl}
    1290:	3300008e 	movwcc	r0, #142	; 0x8e
    1294:	08000001 	stmdaeq	r0, {r0}
    1298:	04935206 	ldreq	r5, [r3], #518	; 0x206
    129c:	05049353 	streq	r9, [r4, #-851]	; 0xfffffcad
    12a0:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
    12a4:	50060825 	andpl	r0, r6, r5, lsr #16
    12a8:	93510493 	cmpls	r1, #-1828716544	; 0x93000000
    12ac:	03f30504 	mvnseq	r0, #4, 10	; 0x1000000
    12b0:	002500f5 	strdeq	r0, [r5], -r5	; <UNPREDICTABLE>
    12b4:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    12b8:	00000000 	andeq	r0, r0, r0
    12bc:	00a60409 	adceq	r0, r6, r9, lsl #8
    12c0:	36030000 	strcc	r0, [r3], -r0
    12c4:	01000004 	tsteq	r0, r4
    12c8:	0000252f 	andeq	r2, r0, pc, lsr #10
    12cc:	008e3000 	addeq	r3, lr, r0
    12d0:	00004000 	andeq	r4, r0, r0
    12d4:	2d9c0100 	ldfcss	f0, [ip]
    12d8:	04000001 	streq	r0, [r0], #-1
    12dc:	2f010061 	svccs	0x00010061
    12e0:	00000025 	andeq	r0, r0, r5, lsr #32
    12e4:	00000787 	andeq	r0, r0, r7, lsl #15
    12e8:	01006204 	tsteq	r0, r4, lsl #4
    12ec:	00002530 	andeq	r2, r0, r0, lsr r5
    12f0:	0007af00 	andeq	sl, r7, r0, lsl #30
    12f4:	05230500 	streq	r0, [r3, #-1280]!	; 0xfffffb00
    12f8:	31010000 	mrscc	r0, (UNDEF: 1)
    12fc:	0000012d 	andeq	r0, r0, sp, lsr #2
    1300:	06009102 	streq	r9, [r0], -r2, lsl #2
    1304:	0000054c 	andeq	r0, r0, ip, asr #10
    1308:	00253301 	eoreq	r3, r5, r1, lsl #6
    130c:	50060000 	andpl	r0, r6, r0
    1310:	93510493 	cmpls	r1, #-1828716544	; 0x93000000
    1314:	8e4c0704 	cdphi	7, 4, cr0, cr12, cr4, {0}
    1318:	014d0000 	mrseq	r0, (UNDEF: 77)
    131c:	06080000 	streq	r0, [r8], -r0
    1320:	53049352 	movwpl	r9, #17234	; 0x4352
    1324:	f3050493 	vqshl.u8	d0, d3, d21
    1328:	2502f503 	strcs	pc, [r2, #-1283]	; 0xfffffafd
    132c:	93500608 	cmpls	r0, #8, 12	; 0x800000
    1330:	04935104 	ldreq	r5, [r3], #260	; 0x104
    1334:	f503f305 			; <UNDEFINED> instruction: 0xf503f305
    1338:	00002500 	andeq	r2, r0, r0, lsl #10
    133c:	00250409 	eoreq	r0, r5, r9, lsl #8
    1340:	d00a0000 	andle	r0, sl, r0
    1344:	01000003 	tsteq	r0, r3
    1348:	0000a619 	andeq	sl, r0, r9, lsl r6
    134c:	00014d00 	andeq	r4, r1, r0, lsl #26
    1350:	00a60b00 	adceq	r0, r6, r0, lsl #22
    1354:	a60b0000 	strge	r0, [fp], -r0
    1358:	00000000 	andeq	r0, r0, r0
    135c:	0005420c 	andeq	r4, r5, ip, lsl #4
    1360:	251a0100 	ldrcs	r0, [sl, #-256]	; 0xffffff00
    1364:	0b000000 	bleq	136c <__start-0x6c94>
    1368:	00000025 	andeq	r0, r0, r5, lsr #32
    136c:	0000250b 	andeq	r2, r0, fp, lsl #10
    1370:	aa000000 	bge	1378 <__start-0x6c88>
    1374:	02000000 	andeq	r0, r0, #0
    1378:	00084400 	andeq	r4, r8, r0, lsl #8
    137c:	c7010400 	strgt	r0, [r1, -r0, lsl #8]
    1380:	70000006 	andvc	r0, r0, r6
    1384:	7400008e 	strvc	r0, [r0], #-142	; 0xffffff72
    1388:	2e00008e 	cdpcs	0, 0, cr0, cr0, cr14, {4}
    138c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1390:	2f2e2e2f 	svccs	0x002e2e2f
    1394:	2f637273 	svccs	0x00637273
    1398:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    139c:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
    13a0:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
    13a4:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
    13a8:	696c2f6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp}^
    13ac:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
    13b0:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
    13b4:	622f0053 	eorvs	r0, pc, #83	; 0x53
    13b8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    13bc:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    13c0:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    13c4:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    13c8:	61652d65 	cmnvs	r5, r5, ror #26
    13cc:	442d6962 	strtmi	r6, [sp], #-2402	; 0xfffff69e
    13d0:	4c6e5252 	sfmmi	f5, 2, [lr], #-328	; 0xfffffeb8
    13d4:	63672f41 	cmnvs	r7, #260	; 0x104
    13d8:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    13dc:	6f6e2d6d 	svcvs	0x006e2d6d
    13e0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    13e4:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    13e8:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
    13ec:	76732b33 			; <UNDEFINED> instruction: 0x76732b33
    13f0:	3133326e 	teqcc	r3, lr, ror #4
    13f4:	2f373731 	svccs	0x00373731
    13f8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    13fc:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
    1400:	6f6e2d6d 	svcvs	0x006e2d6d
    1404:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1408:	2f696261 	svccs	0x00696261
    140c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    1410:	47006363 	strmi	r6, [r0, -r3, ror #6]
    1414:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
    1418:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
    141c:	01003532 	tsteq	r0, r2, lsr r5
    1420:	00026580 	andeq	r6, r2, r0, lsl #11
    1424:	58000400 	stmdapl	r0, {sl}
    1428:	04000008 	streq	r0, [r0], #-8
    142c:	0005ab01 	andeq	sl, r5, r1, lsl #22
    1430:	056f0100 	strbeq	r0, [pc, #-256]!	; 1338 <__start-0x6cc8>
    1434:	03d90000 	bicseq	r0, r9, #0
    1438:	8e740000 	cdphi	0, 7, cr0, cr4, cr0, {0}
    143c:	01780000 	cmneq	r8, r0
    1440:	07220000 	streq	r0, [r2, -r0]!
    1444:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1448:	00002a07 	andeq	r2, r0, r7, lsl #20
    144c:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
    1450:	00746e69 	rsbseq	r6, r4, r9, ror #28
    1454:	34070402 	strcc	r0, [r7], #-1026	; 0xfffffbfe
    1458:	02000000 	andeq	r0, r0, #0
    145c:	00590801 	subseq	r0, r9, r1, lsl #16
    1460:	01020000 	mrseq	r0, (UNDEF: 2)
    1464:	00006208 	andeq	r6, r0, r8, lsl #4
    1468:	07040200 	streq	r0, [r4, -r0, lsl #4]
    146c:	0000002f 	andeq	r0, r0, pc, lsr #32
    1470:	93070402 	movwls	r0, #29698	; 0x7402
    1474:	02000002 	andeq	r0, r0, #2
    1478:	005b0601 	subseq	r0, fp, r1, lsl #12
    147c:	02020000 	andeq	r0, r2, #0
    1480:	00012305 	andeq	r2, r1, r5, lsl #6
    1484:	07020200 	streq	r0, [r2, -r0, lsl #4]
    1488:	000000fe 	strdeq	r0, [r0], -lr
    148c:	00056804 	andeq	r6, r5, r4, lsl #16
    1490:	2c810200 	sfmcs	f0, 4, [r1], {0}
    1494:	04000000 	streq	r0, [r0], #-0
    1498:	00000567 	andeq	r0, r0, r7, ror #10
    149c:	00338202 	eorseq	r8, r3, r2, lsl #4
    14a0:	96040000 	strls	r0, [r4], -r0
    14a4:	02000005 	andeq	r0, r0, #5
    14a8:	00008c85 	andeq	r8, r0, r5, lsl #25
    14ac:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    14b0:	00000000 	andeq	r0, r0, r0
    14b4:	00059504 	andeq	r9, r5, r4, lsl #10
    14b8:	25860200 	strcs	r0, [r6, #512]	; 0x200
    14bc:	02000000 	andeq	r0, r0, #0
    14c0:	05a50404 	streq	r0, [r5, #1028]!	; 0x404
    14c4:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    14c8:	00059d03 	andeq	r9, r5, r3, lsl #26
    14cc:	04080200 	streq	r0, [r8], #-512	; 0xfffffe00
    14d0:	00000670 	andeq	r0, r0, r0, ror r6
    14d4:	68031002 	stmdavs	r3, {r1, ip}
    14d8:	05000006 	streq	r0, [r0, #-6]
    14dc:	00000677 	andeq	r0, r0, r7, ror r6
    14e0:	01e30208 	mvneq	r0, r8, lsl #4
    14e4:	000000e2 	andeq	r0, r0, r2, ror #1
    14e8:	776f6c06 	strbvc	r6, [pc, -r6, lsl #24]!
    14ec:	01e30200 	mvneq	r0, r0, lsl #4
    14f0:	0000006b 	andeq	r0, r0, fp, rrx
    14f4:	05550700 	ldrbeq	r0, [r5, #-1792]	; 0xfffff900
    14f8:	e3020000 	movw	r0, #8192	; 0x2000
    14fc:	00006b01 	andeq	r6, r0, r1, lsl #22
    1500:	08000400 	stmdaeq	r0, {sl}
    1504:	01ea0208 	mvneq	r0, r8, lsl #4
    1508:	00000101 	andeq	r0, r0, r1, lsl #2
    150c:	02007309 	andeq	r7, r0, #603979776	; 0x24000000
    1510:	00ba01ec 	adcseq	r0, sl, ip, ror #3
    1514:	6c090000 	stcvs	0, cr0, [r9], {-0}
    1518:	ed02006c 	stc	0, cr0, [r2, #-432]	; 0xfffffe50
    151c:	00008101 	andeq	r8, r0, r1, lsl #2
    1520:	8d0a0000 	stchi	0, cr0, [sl, #-0]
    1524:	02000005 	andeq	r0, r0, #5
    1528:	00e201ee 	rsceq	r0, r2, lr, ror #3
    152c:	5a0b0000 	bpl	2c1534 <__end+0x194534>
    1530:	01000005 	tsteq	r0, r5
    1534:	009303b0 			; <UNDEFINED> instruction: 0x009303b0
    1538:	88030000 	stmdahi	r3, {}	; <UNPREDICTABLE>
    153c:	0c000001 	stceq	0, cr0, [r0], {1}
    1540:	b001006e 	andlt	r0, r1, lr, rrx
    1544:	00009303 	andeq	r9, r0, r3, lsl #6
    1548:	00640c00 	rsbeq	r0, r4, r0, lsl #24
    154c:	9303b001 	movwls	fp, #12289	; 0x3001
    1550:	0c000000 	stceq	0, cr0, [r0], {-0}
    1554:	01007072 	tsteq	r0, r2, ror r0
    1558:	018803b0 			; <UNDEFINED> instruction: 0x018803b0
    155c:	710d0000 	mrsvc	r0, (UNDEF: 13)
    1560:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
    1564:	00000093 	muleq	r0, r3, r0
    1568:	0100720d 	tsteq	r0, sp, lsl #4
    156c:	009303b2 			; <UNDEFINED> instruction: 0x009303b2
    1570:	790d0000 	stmdbvc	sp, {}	; <UNPREDICTABLE>
    1574:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
    1578:	00000093 	muleq	r0, r3, r0
    157c:	317a6c0d 	cmncc	sl, sp, lsl #24
    1580:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    1584:	00000076 	andeq	r0, r0, r6, ror r0
    1588:	327a6c0d 	rsbscc	r6, sl, #3328	; 0xd00
    158c:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    1590:	00000076 	andeq	r0, r0, r6, ror r0
    1594:	0100690d 	tsteq	r0, sp, lsl #18
    1598:	007603b3 	ldrhteq	r0, [r6], #-51	; 0xffffffcd
    159c:	6b0d0000 	blvs	3415a4 <__user_program+0x415a4>
    15a0:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    15a4:	00000076 	andeq	r0, r0, r6, ror r0
    15a8:	93040e00 	movwls	r0, #19968	; 0x4e00
    15ac:	0f000000 	svceq	0x00000000
    15b0:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    15b4:	8104cb01 	tsthi	r4, r1, lsl #22
    15b8:	74000000 	strvc	r0, [r0], #-0
    15bc:	7800008e 	stmdavc	r0, {r1, r2, r3, r7}
    15c0:	01000001 	tsteq	r0, r1
    15c4:	0075109c 			; <UNDEFINED> instruction: 0x0075109c
    15c8:	8104cb01 	tsthi	r4, r1, lsl #22
    15cc:	d7000000 	strle	r0, [r0, -r0]
    15d0:	10000007 	andne	r0, r0, r7
    15d4:	cb010076 	blgt	417b4 <__bss_end+0x357b4>
    15d8:	00008104 	andeq	r8, r0, r4, lsl #2
    15dc:	00080f00 	andeq	r0, r8, r0, lsl #30
    15e0:	00631100 	rsbeq	r1, r3, r0, lsl #2
    15e4:	6b04cd01 	blvs	1349f0 <__end+0x79f0>
    15e8:	47000000 	strmi	r0, [r0, -r0]
    15ec:	0d000008 	stceq	0, cr0, [r0, #-32]	; 0xffffffe0
    15f0:	01007575 	tsteq	r0, r5, ror r5
    15f4:	010104ce 	smlabteq	r1, lr, r4, r0
    15f8:	760d0000 	strvc	r0, [sp], -r0
    15fc:	cf010076 	svcgt	0x00010076
    1600:	00010104 	andeq	r0, r1, r4, lsl #2
    1604:	00771100 	rsbseq	r1, r7, r0, lsl #2
    1608:	8104d001 	tsthi	r4, r1
    160c:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    1610:	12000008 	andne	r0, r0, #8
    1614:	0000010d 	andeq	r0, r0, sp, lsl #2
    1618:	00008e9c 	muleq	r0, ip, lr
    161c:	00000120 	andeq	r0, r0, r0, lsr #2
    1620:	1304d901 	movwne	sp, #18689	; 0x4901
    1624:	00000132 	andeq	r0, r0, r2, lsr r1
    1628:	000008ad 	andeq	r0, r0, sp, lsr #17
    162c:	00012813 	andeq	r2, r1, r3, lsl r8
    1630:	0008c100 	andeq	ip, r8, r0, lsl #2
    1634:	011e1300 	tsteq	lr, r0, lsl #6
    1638:	08d90000 	ldmeq	r9, {}^	; <UNPREDICTABLE>
    163c:	9c140000 	ldcls	0, cr0, [r4], {-0}
    1640:	2000008e 	andcs	r0, r0, lr, lsl #1
    1644:	15000001 	strne	r0, [r0, #-1]
    1648:	0000013d 	andeq	r0, r0, sp, lsr r1
    164c:	000008f1 	strdeq	r0, [r0], -r1
    1650:	00014715 	andeq	r4, r1, r5, lsl r7
    1654:	00091d00 	andeq	r1, r9, r0, lsl #26
    1658:	01511500 	cmpeq	r1, r0, lsl #10
    165c:	09650000 	stmdbeq	r5!, {}^	; <UNPREDICTABLE>
    1660:	5b150000 	blpl	541668 <__user_program+0x241668>
    1664:	8d000001 	stchi	0, cr0, [r0, #-4]
    1668:	15000009 	strne	r0, [r0, #-9]
    166c:	00000167 	andeq	r0, r0, r7, ror #2
    1670:	000009ab 	andeq	r0, r0, fp, lsr #19
    1674:	00017315 	andeq	r7, r1, r5, lsl r3
    1678:	0009be00 	andeq	fp, r9, r0, lsl #28
    167c:	017d1500 	cmneq	sp, r0, lsl #10
    1680:	0a010000 	beq	41688 <__bss_end+0x35688>
    1684:	00000000 	andeq	r0, r0, r0
    1688:	01c30000 	biceq	r0, r3, r0
    168c:	00040000 	andeq	r0, r4, r0
    1690:	0000097b 	andeq	r0, r0, fp, ror r9
    1694:	05ab0104 	streq	r0, [fp, #260]!	; 0x104
    1698:	6f010000 	svcvs	0x00010000
    169c:	d9000005 	stmdble	r0, {r0, r2}
    16a0:	ec000003 	stc	0, cr0, [r0], {3}
    16a4:	2000008f 	andcs	r0, r0, pc, lsl #1
    16a8:	ba000001 	blt	16b4 <__start-0x694c>
    16ac:	02000007 	andeq	r0, r0, #7
    16b0:	002a0708 	eoreq	r0, sl, r8, lsl #14
    16b4:	04020000 	streq	r0, [r2], #-0
    16b8:	00003407 	andeq	r3, r0, r7, lsl #8
    16bc:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
    16c0:	00746e69 	rsbseq	r6, r4, r9, ror #28
    16c4:	59080102 	stmdbpl	r8, {r1, r8}
    16c8:	02000000 	andeq	r0, r0, #0
    16cc:	00620801 	rsbeq	r0, r2, r1, lsl #16
    16d0:	04020000 	streq	r0, [r2], #-0
    16d4:	00002f07 	andeq	r2, r0, r7, lsl #30
    16d8:	07040200 	streq	r0, [r4, -r0, lsl #4]
    16dc:	00000293 	muleq	r0, r3, r2
    16e0:	5b060102 	blpl	181af0 <__end+0x54af0>
    16e4:	02000000 	andeq	r0, r0, #0
    16e8:	01230502 			; <UNDEFINED> instruction: 0x01230502
    16ec:	02020000 	andeq	r0, r2, #0
    16f0:	0000fe07 	andeq	pc, r0, r7, lsl #28
    16f4:	05670400 	strbeq	r0, [r7, #-1024]!	; 0xfffffc00
    16f8:	82020000 	andhi	r0, r2, #0
    16fc:	0000002c 	andeq	r0, r0, ip, lsr #32
    1700:	00050802 	andeq	r0, r5, r2, lsl #16
    1704:	04000000 	streq	r0, [r0], #-0
    1708:	00000595 	muleq	r0, r5, r5
    170c:	00258602 	eoreq	r8, r5, r2, lsl #12
    1710:	04020000 	streq	r0, [r2], #-0
    1714:	0005a504 	andeq	sl, r5, r4, lsl #10
    1718:	03080200 	movweq	r0, #33280	; 0x8200
    171c:	0000059d 	muleq	r0, sp, r5
    1720:	70040802 	andvc	r0, r4, r2, lsl #16
    1724:	02000006 	andeq	r0, r0, #6
    1728:	06680310 			; <UNDEFINED> instruction: 0x06680310
    172c:	5a050000 	bpl	141734 <__end+0x14734>
    1730:	01000005 	tsteq	r0, r5
    1734:	007d03b0 	ldrhteq	r0, [sp], #-48	; 0xffffffd0
    1738:	1f030000 	svcne	0x00030000
    173c:	06000001 	streq	r0, [r0], -r1
    1740:	b001006e 	andlt	r0, r1, lr, rrx
    1744:	00007d03 	andeq	r7, r0, r3, lsl #26
    1748:	00640600 	rsbeq	r0, r4, r0, lsl #12
    174c:	7d03b001 	stcvc	0, cr11, [r3, #-4]
    1750:	06000000 	streq	r0, [r0], -r0
    1754:	01007072 	tsteq	r0, r2, ror r0
    1758:	011f03b0 			; <UNDEFINED> instruction: 0x011f03b0
    175c:	71070000 	mrsvc	r0, (UNDEF: 7)
    1760:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
    1764:	0000007d 	andeq	r0, r0, sp, ror r0
    1768:	01007207 	tsteq	r0, r7, lsl #4
    176c:	007d03b2 	ldrhteq	r0, [sp], #-50	; 0xffffffce
    1770:	79070000 	stmdbvc	r7, {}	; <UNPREDICTABLE>
    1774:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
    1778:	0000007d 	andeq	r0, r0, sp, ror r0
    177c:	317a6c07 	cmncc	sl, r7, lsl #24
    1780:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    1784:	0000006b 	andeq	r0, r0, fp, rrx
    1788:	327a6c07 	rsbscc	r6, sl, #1792	; 0x700
    178c:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    1790:	0000006b 	andeq	r0, r0, fp, rrx
    1794:	01006907 	tsteq	r0, r7, lsl #18
    1798:	006b03b3 	strhteq	r0, [fp], #-51	; 0xffffffcd
    179c:	6b070000 	blvs	1c17a4 <__end+0x947a4>
    17a0:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    17a4:	0000006b 	andeq	r0, r0, fp, rrx
    17a8:	7d040800 	stcvc	8, cr0, [r4, #-0]
    17ac:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    17b0:	00000542 	andeq	r0, r0, r2, asr #10
    17b4:	7d050601 	stcvc	6, cr0, [r5, #-4]
    17b8:	ec000000 	stc	0, cr0, [r0], {-0}
    17bc:	2000008f 	andcs	r0, r0, pc, lsl #1
    17c0:	01000001 	tsteq	r0, r1
    17c4:	006e0a9c 	mlseq	lr, ip, sl, r0
    17c8:	7d050601 	stcvc	6, cr0, [r5, #-4]
    17cc:	1f000000 	svcne	0x00000000
    17d0:	0a00000a 	beq	1800 <__start-0x6800>
    17d4:	06010064 	streq	r0, [r1], -r4, rrx
    17d8:	00007d05 	andeq	r7, r0, r5, lsl #26
    17dc:	000a4700 	andeq	r4, sl, r0, lsl #14
    17e0:	00a40b00 	adceq	r0, r4, r0, lsl #22
    17e4:	8fec0000 	svchi	0x00ec0000
    17e8:	00300000 	eorseq	r0, r0, r0
    17ec:	08010000 	stmdaeq	r1, {}	; <UNPREDICTABLE>
    17f0:	00c90c05 	sbceq	r0, r9, r5, lsl #24
    17f4:	0d000000 	stceq	0, cr0, [r0, #-0]
    17f8:	000000bf 	strheq	r0, [r0], -pc	; <UNPREDICTABLE>
    17fc:	00000a6f 	andeq	r0, r0, pc, ror #20
    1800:	0000b50d 	andeq	fp, r0, sp, lsl #10
    1804:	000a8700 	andeq	r8, sl, r0, lsl #14
    1808:	00300e00 	eorseq	r0, r0, r0, lsl #28
    180c:	d40f0000 	strle	r0, [pc], #-0	; 1814 <__start-0x67ec>
    1810:	9f000000 	svcls	0x00000000
    1814:	0f00000a 	svceq	0x0000000a
    1818:	000000de 	ldrdeq	r0, [r0], -lr
    181c:	00000aeb 	andeq	r0, r0, fp, ror #21
    1820:	0000e80f 	andeq	lr, r0, pc, lsl #16
    1824:	000b4800 	andeq	r4, fp, r0, lsl #16
    1828:	00f20f00 	rscseq	r0, r2, r0, lsl #30
    182c:	0b700000 	bleq	1c01834 <__user_program+0x1901834>
    1830:	fe0f0000 	cdp2	0, 0, cr0, cr15, cr0, {0}
    1834:	8e000000 	cdphi	0, 0, cr0, cr0, cr0, {0}
    1838:	0f00000b 	svceq	0x0000000b
    183c:	0000010a 	andeq	r0, r0, sl, lsl #2
    1840:	00000ba1 	andeq	r0, r0, r1, lsr #23
    1844:	0001140f 	andeq	r1, r1, pc, lsl #8
    1848:	000be400 	andeq	lr, fp, r0, lsl #8
    184c:	00000000 	andeq	r0, r0, r0
    1850:	0000aa00 	andeq	sl, r0, r0, lsl #20
    1854:	42000200 	andmi	r0, r0, #0, 4
    1858:	0400000a 	streq	r0, [r0], #-10
    185c:	00084c01 	andeq	r4, r8, r1, lsl #24
    1860:	00910c00 	addseq	r0, r1, r0, lsl #24
    1864:	00913400 	addseq	r3, r1, r0, lsl #8
    1868:	2f2e2e00 	svccs	0x002e2e00
    186c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1870:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
    1874:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
    1878:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    187c:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
    1880:	2f676966 	svccs	0x00676966
    1884:	2f6d7261 	svccs	0x006d7261
    1888:	3162696c 	cmncc	r2, ip, ror #18
    188c:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
    1890:	00532e73 	subseq	r2, r3, r3, ror lr
    1894:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1898:	672f646c 	strvs	r6, [pc, -ip, ror #8]!
    189c:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    18a0:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    18a4:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    18a8:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    18ac:	5252442d 	subspl	r4, r2, #754974720	; 0x2d000000
    18b0:	2f414c6e 	svccs	0x00414c6e
    18b4:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    18b8:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    18bc:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    18c0:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    18c4:	2e342d69 	cdpcs	13, 3, cr2, cr4, cr9, {3}
    18c8:	2b332e39 	blcs	ccd1b4 <__user_program+0x9cd1b4>
    18cc:	326e7673 	rsbcc	r7, lr, #120586240	; 0x7300000
    18d0:	37313133 			; <UNDEFINED> instruction: 0x37313133
    18d4:	75622f37 	strbvc	r2, [r2, #-3895]!	; 0xfffff0c9
    18d8:	2f646c69 	svccs	0x00646c69
    18dc:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    18e0:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    18e4:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    18e8:	696c2f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, sp}^
    18ec:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    18f0:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    18f4:	20534120 	subscs	r4, r3, r0, lsr #2
    18f8:	35322e32 	ldrcc	r2, [r2, #-3634]!	; 0xfffff1ce
    18fc:	aa800100 	bge	fe001d04 <__user_program+0xfdd01d04>
    1900:	02000000 	andeq	r0, r0, #0
    1904:	000a5600 	andeq	r5, sl, r0, lsl #12
    1908:	b1010400 	tstlt	r1, r0, lsl #8
    190c:	34000008 	strcc	r0, [r0], #-8
    1910:	7c000091 	stcvc	0, cr0, [r0], {145}	; 0x91
    1914:	2e000091 	mcrcs	0, 0, r0, cr0, cr1, {4}
    1918:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    191c:	2f2e2e2f 	svccs	0x002e2e2f
    1920:	2f637273 	svccs	0x00637273
    1924:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    1928:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
    192c:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
    1930:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
    1934:	696c2f6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp}^
    1938:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
    193c:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
    1940:	622f0053 	eorvs	r0, pc, #83	; 0x53
    1944:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    1948:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    194c:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    1950:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1954:	61652d65 	cmnvs	r5, r5, ror #26
    1958:	442d6962 	strtmi	r6, [sp], #-2402	; 0xfffff69e
    195c:	4c6e5252 	sfmmi	f5, 2, [lr], #-328	; 0xfffffeb8
    1960:	63672f41 	cmnvs	r7, #260	; 0x104
    1964:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    1968:	6f6e2d6d 	svcvs	0x006e2d6d
    196c:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1970:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    1974:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
    1978:	76732b33 			; <UNDEFINED> instruction: 0x76732b33
    197c:	3133326e 	teqcc	r3, lr, ror #4
    1980:	2f373731 	svccs	0x00373731
    1984:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1988:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
    198c:	6f6e2d6d 	svcvs	0x006e2d6d
    1990:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1994:	2f696261 	svccs	0x00696261
    1998:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    199c:	47006363 	strmi	r6, [r0, -r3, ror #6]
    19a0:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
    19a4:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
    19a8:	01003532 	tsteq	r0, r2, lsr r5
    19ac:	Address 0x00000000000019ac is out of bounds.


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
 110:	17021349 	strne	r1, [r2, -r9, asr #6]
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
 180:	3c0b3b0b 	stccc	11, cr3, [fp], {11}
 184:	00130119 	andseq	r0, r3, r9, lsl r1
 188:	00180f00 	andseq	r0, r8, r0, lsl #30
 18c:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
 190:	03193f01 	tsteq	r9, #1, 30
 194:	3b0b3a0e 	blcc	2ce9d4 <__end+0x1a19d4>
 198:	00193c0b 	andseq	r3, r9, fp, lsl #24
 19c:	11010000 	mrsne	r0, (UNDEF: 1)
 1a0:	130e2501 	movwne	r2, #58625	; 0xe501
 1a4:	1b0e030b 	blne	380dd8 <__user_program+0x80dd8>
 1a8:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 1ac:	00171006 	andseq	r1, r7, r6
 1b0:	00160200 	andseq	r0, r6, r0, lsl #4
 1b4:	0b3a0e03 	bleq	e839c8 <__user_program+0xb839c8>
 1b8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 1bc:	24030000 	strcs	r0, [r3], #-0
 1c0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 1c4:	000e030b 	andeq	r0, lr, fp, lsl #6
 1c8:	00240400 	eoreq	r0, r4, r0, lsl #8
 1cc:	0b3e0b0b 	bleq	f82e00 <__user_program+0xc82e00>
 1d0:	00000803 	andeq	r0, r0, r3, lsl #16
 1d4:	03011305 	movweq	r1, #4869	; 0x1305
 1d8:	3a0b0b0e 	bcc	2c2e18 <__end+0x195e18>
 1dc:	010b3b0b 	tsteq	fp, fp, lsl #22
 1e0:	06000013 			; <UNDEFINED> instruction: 0x06000013
 1e4:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 1e8:	0b381349 	bleq	e04f14 <__user_program+0xb04f14>
 1ec:	00001934 	andeq	r1, r0, r4, lsr r9
 1f0:	0b000f07 	bleq	3e14 <__start-0x41ec>
 1f4:	0800000b 	stmdaeq	r0, {r0, r1, r3}
 1f8:	0e03012e 	adfeqsp	f0, f3, #0.5
 1fc:	0b3b0b3a 	bleq	ec2eec <__user_program+0xbc2eec>
 200:	01111927 	tsteq	r1, r7, lsr #18
 204:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 208:	01194296 			; <UNDEFINED> instruction: 0x01194296
 20c:	09000013 	stmdbeq	r0, {r0, r1, r4}
 210:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 214:	0b3b0b3a 	bleq	ec2f04 <__user_program+0xbc2f04>
 218:	17021349 	strne	r1, [r2, -r9, asr #6]
 21c:	050a0000 	streq	r0, [sl, #-0]
 220:	3a080300 	bcc	200e28 <__end+0xd3e28>
 224:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 228:	00170213 	andseq	r0, r7, r3, lsl r2
 22c:	00340b00 	eorseq	r0, r4, r0, lsl #22
 230:	0b3a0e03 	bleq	e83a44 <__user_program+0xb83a44>
 234:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 238:	00001702 	andeq	r1, r0, r2, lsl #14
 23c:	0300340c 	movweq	r3, #1036	; 0x40c
 240:	3b0b3a08 	blcc	2cea68 <__end+0x1a1a68>
 244:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 248:	0d000018 	stceq	0, cr0, [r0, #-96]	; 0xffffffa0
 24c:	08030034 	stmdaeq	r3, {r2, r4, r5}
 250:	0b3b0b3a 	bleq	ec2f40 <__user_program+0xbc2f40>
 254:	17021349 	strne	r1, [r2, -r9, asr #6]
 258:	890e0000 	stmdbhi	lr, {}	; <UNPREDICTABLE>
 25c:	11000182 	smlabbne	r0, r2, r1, r0
 260:	00133101 	andseq	r3, r3, r1, lsl #2
 264:	000f0f00 	andeq	r0, pc, r0, lsl #30
 268:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 26c:	01100000 	tsteq	r0, r0
 270:	01134901 	tsteq	r3, r1, lsl #18
 274:	11000013 	tstne	r0, r3, lsl r0
 278:	13490021 	movtne	r0, #36897	; 0x9021
 27c:	00000b2f 	andeq	r0, r0, pc, lsr #22
 280:	3f012e12 	svccc	0x00012e12
 284:	3a0e0319 	bcc	380ef0 <__user_program+0x80ef0>
 288:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 28c:	11134919 	tstne	r3, r9, lsl r9
 290:	40061201 	andmi	r1, r6, r1, lsl #4
 294:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 298:	00001301 	andeq	r1, r0, r1, lsl #6
 29c:	00001813 	andeq	r1, r0, r3, lsl r8
 2a0:	00341400 	eorseq	r1, r4, r0, lsl #8
 2a4:	0b3a0e03 	bleq	e83ab8 <__user_program+0xb83ab8>
 2a8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 2ac:	00001802 	andeq	r1, r0, r2, lsl #16
 2b0:	55010b15 	strpl	r0, [r1, #-2837]	; 0xfffff4eb
 2b4:	00130117 	andseq	r0, r3, r7, lsl r1
 2b8:	82891600 	addhi	r1, r9, #0, 12
 2bc:	01110101 	tsteq	r1, r1, lsl #2
 2c0:	00001331 	andeq	r1, r0, r1, lsr r3
 2c4:	01828a17 	orreq	r8, r2, r7, lsl sl
 2c8:	91180200 	tstls	r8, r0, lsl #4
 2cc:	00001842 	andeq	r1, r0, r2, asr #16
 2d0:	11010b18 	tstne	r1, r8, lsl fp
 2d4:	01061201 	tsteq	r6, r1, lsl #4
 2d8:	19000013 	stmdbne	r0, {r0, r1, r4}
 2dc:	01018289 	smlabbeq	r1, r9, r2, r8
 2e0:	13310111 	teqne	r1, #1073741828	; 0x40000004
 2e4:	00001301 	andeq	r1, r0, r1, lsl #6
 2e8:	4900261a 	stmdbmi	r0, {r1, r3, r4, r9, sl, sp}
 2ec:	1b000013 	blne	340 <__start-0x7cc0>
 2f0:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 2f4:	0b3a0e03 	bleq	e83b08 <__user_program+0xb83b08>
 2f8:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 2fc:	0000193c 	andeq	r1, r0, ip, lsr r9
 300:	4900051c 	stmdbmi	r0, {r2, r3, r4, r8, sl}
 304:	00000013 	andeq	r0, r0, r3, lsl r0
 308:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 30c:	030b130e 	movweq	r1, #45838	; 0xb30e
 310:	110e1b0e 	tstne	lr, lr, lsl #22
 314:	10061201 	andne	r1, r6, r1, lsl #4
 318:	02000017 	andeq	r0, r0, #23
 31c:	0b0b0024 	bleq	2c03b4 <__end+0x1933b4>
 320:	0e030b3e 	vmoveq.16	d3[0], r0
 324:	24030000 	strcs	r0, [r3], #-0
 328:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 32c:	0008030b 	andeq	r0, r8, fp, lsl #6
 330:	00160400 	andseq	r0, r6, r0, lsl #8
 334:	0b3a0e03 	bleq	e83b48 <__user_program+0xb83b48>
 338:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 33c:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 340:	03193f01 	tsteq	r9, #1, 30
 344:	3b0b3a0e 	blcc	2ceb84 <__end+0x1a1b84>
 348:	1119270b 	tstne	r9, fp, lsl #14
 34c:	40061201 	andmi	r1, r6, r1, lsl #4
 350:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 354:	00001301 	andeq	r1, r0, r1, lsl #6
 358:	01828906 	orreq	r8, r2, r6, lsl #18
 35c:	31011101 	tstcc	r1, r1, lsl #2
 360:	00130113 	andseq	r0, r3, r3, lsl r1
 364:	828a0700 	addhi	r0, sl, #0, 14
 368:	18020001 	stmdane	r2, {r0}
 36c:	00184291 	mulseq	r8, r1, r2
 370:	82890800 	addhi	r0, r9, #0, 16
 374:	01110101 	tsteq	r1, r1, lsl #2
 378:	00001331 	andeq	r1, r0, r1, lsr r3
 37c:	3f002e09 	svccc	0x00002e09
 380:	3a0e0319 	bcc	380fec <__user_program+0x80fec>
 384:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 388:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 38c:	97184006 	ldrls	r4, [r8, -r6]
 390:	00001942 	andeq	r1, r0, r2, asr #18
 394:	0300050a 	movweq	r0, #1290	; 0x50a
 398:	3b0b3a0e 	blcc	2cebd8 <__end+0x1a1bd8>
 39c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 3a0:	0b000018 	bleq	408 <__start-0x7bf8>
 3a4:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 3a8:	0b3a0e03 	bleq	e83bbc <__user_program+0xb83bbc>
 3ac:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 3b0:	01111349 	tsteq	r1, r9, asr #6
 3b4:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 3b8:	01194297 			; <UNDEFINED> instruction: 0x01194297
 3bc:	0c000013 	stceq	0, cr0, [r0], {19}
 3c0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 3c4:	0b3b0b3a 	bleq	ec30b4 <__user_program+0xbc30b4>
 3c8:	17021349 	strne	r1, [r2, -r9, asr #6]
 3cc:	2e0d0000 	cdpcs	0, 0, cr0, cr13, cr0, {0}
 3d0:	03193f01 	tsteq	r9, #1, 30
 3d4:	3b0b3a0e 	blcc	2cec14 <__end+0x1a1c14>
 3d8:	3c19270b 	ldccc	7, cr2, [r9], {11}
 3dc:	00130119 	andseq	r0, r3, r9, lsl r1
 3e0:	00050e00 	andeq	r0, r5, r0, lsl #28
 3e4:	00001349 	andeq	r1, r0, r9, asr #6
 3e8:	3f012e0f 	svccc	0x00012e0f
 3ec:	3a0e0319 	bcc	381058 <__user_program+0x81058>
 3f0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3f4:	3c134919 	ldccc	9, cr4, [r3], {25}
 3f8:	00130119 	andseq	r0, r3, r9, lsl r1
 3fc:	00181000 	andseq	r1, r8, r0
 400:	0f110000 	svceq	0x00110000
 404:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 408:	12000013 	andne	r0, r0, #19
 40c:	13490026 	movtne	r0, #36902	; 0x9026
 410:	01000000 	mrseq	r0, (UNDEF: 0)
 414:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 418:	0e030b13 	vmoveq.32	d3[0], r0
 41c:	01110e1b 	tsteq	r1, fp, lsl lr
 420:	17100612 			; <UNDEFINED> instruction: 0x17100612
 424:	24020000 	strcs	r0, [r2], #-0
 428:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 42c:	000e030b 	andeq	r0, lr, fp, lsl #6
 430:	00240300 	eoreq	r0, r4, r0, lsl #6
 434:	0b3e0b0b 	bleq	f83068 <__user_program+0xc83068>
 438:	00000803 	andeq	r0, r0, r3, lsl #16
 43c:	03001604 	movweq	r1, #1540	; 0x604
 440:	3b0b3a0e 	blcc	2cec80 <__end+0x1a1c80>
 444:	0013490b 	andseq	r4, r3, fp, lsl #18
 448:	012e0500 			; <UNDEFINED> instruction: 0x012e0500
 44c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 450:	0b3b0b3a 	bleq	ec3140 <__user_program+0xbc3140>
 454:	01111927 	tsteq	r1, r7, lsr #18
 458:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 45c:	01194297 			; <UNDEFINED> instruction: 0x01194297
 460:	06000013 			; <UNDEFINED> instruction: 0x06000013
 464:	08030005 	stmdaeq	r3, {r0, r2}
 468:	0b3b0b3a 	bleq	ec3158 <__user_program+0xbc3158>
 46c:	17021349 	strne	r1, [r2, -r9, asr #6]
 470:	89070000 	stmdbhi	r7, {}	; <UNPREDICTABLE>
 474:	11010182 	smlabbne	r1, r2, r1, r0
 478:	01133101 	tsteq	r3, r1, lsl #2
 47c:	08000013 	stmdaeq	r0, {r0, r1, r4}
 480:	0001828a 	andeq	r8, r1, sl, lsl #5
 484:	42911802 	addsmi	r1, r1, #131072	; 0x20000
 488:	09000018 	stmdbeq	r0, {r3, r4}
 48c:	01018289 	smlabbeq	r1, r9, r2, r8
 490:	13310111 	teqne	r1, #1073741828	; 0x40000004
 494:	2e0a0000 	cdpcs	0, 0, cr0, cr10, cr0, {0}
 498:	03193f01 	tsteq	r9, #1, 30
 49c:	3b0b3a0e 	blcc	2cecdc <__end+0x1a1cdc>
 4a0:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 4a4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 4a8:	97184006 	ldrls	r4, [r8, -r6]
 4ac:	13011942 	movwne	r1, #6466	; 0x1942
 4b0:	050b0000 	streq	r0, [fp, #-0]
 4b4:	3a0e0300 	bcc	3810bc <__user_program+0x810bc>
 4b8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 4bc:	00170213 	andseq	r0, r7, r3, lsl r2
 4c0:	00340c00 	eorseq	r0, r4, r0, lsl #24
 4c4:	0b3a0803 	bleq	e824d8 <__user_program+0xb824d8>
 4c8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 4cc:	00001702 	andeq	r1, r0, r2, lsl #14
 4d0:	0300340d 	movweq	r3, #1037	; 0x40d
 4d4:	3b0b3a0e 	blcc	2ced14 <__end+0x1a1d14>
 4d8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 4dc:	0e000017 	mcreq	0, 0, r0, cr0, cr7, {0}
 4e0:	0b0b000f 	bleq	2c0524 <__end+0x193524>
 4e4:	00001349 	andeq	r1, r0, r9, asr #6
 4e8:	3f012e0f 	svccc	0x00012e0f
 4ec:	3a0e0319 	bcc	381158 <__user_program+0x81158>
 4f0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 4f4:	01193c19 	tsteq	r9, r9, lsl ip
 4f8:	10000013 	andne	r0, r0, r3, lsl r0
 4fc:	13490005 	movtne	r0, #36869	; 0x9005
 500:	35110000 	ldrcc	r0, [r1, #-0]
 504:	00134900 	andseq	r4, r3, r0, lsl #18
 508:	012e1200 			; <UNDEFINED> instruction: 0x012e1200
 50c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 510:	0b3b0b3a 	bleq	ec3200 <__user_program+0xbc3200>
 514:	13491927 	movtne	r1, #39207	; 0x9927
 518:	1301193c 	movwne	r1, #6460	; 0x193c
 51c:	18130000 	ldmdane	r3, {}	; <UNPREDICTABLE>
 520:	14000000 	strne	r0, [r0], #-0
 524:	13490026 	movtne	r0, #36902	; 0x9026
 528:	01000000 	mrseq	r0, (UNDEF: 0)
 52c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 530:	0e030b13 	vmoveq.32	d3[0], r0
 534:	01110e1b 	tsteq	r1, fp, lsl lr
 538:	17100612 			; <UNDEFINED> instruction: 0x17100612
 53c:	24020000 	strcs	r0, [r2], #-0
 540:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 544:	000e030b 	andeq	r0, lr, fp, lsl #6
 548:	00240300 	eoreq	r0, r4, r0, lsl #6
 54c:	0b3e0b0b 	bleq	f83180 <__user_program+0xc83180>
 550:	00000803 	andeq	r0, r0, r3, lsl #16
 554:	03001604 	movweq	r1, #1540	; 0x604
 558:	3b0b3a0e 	blcc	2ced98 <__end+0x1a1d98>
 55c:	0013490b 	andseq	r4, r3, fp, lsl #18
 560:	012e0500 			; <UNDEFINED> instruction: 0x012e0500
 564:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 568:	0b3b0b3a 	bleq	ec3258 <__user_program+0xbc3258>
 56c:	01111927 	tsteq	r1, r7, lsr #18
 570:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 574:	01194297 			; <UNDEFINED> instruction: 0x01194297
 578:	06000013 			; <UNDEFINED> instruction: 0x06000013
 57c:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 580:	0b3b0b3a 	bleq	ec3270 <__user_program+0xbc3270>
 584:	17021349 	strne	r1, [r2, -r9, asr #6]
 588:	34070000 	strcc	r0, [r7], #-0
 58c:	3a080300 	bcc	201194 <__end+0xd4194>
 590:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 594:	00180213 	andseq	r0, r8, r3, lsl r2
 598:	00340800 	eorseq	r0, r4, r0, lsl #16
 59c:	0b3a0e03 	bleq	e83db0 <__user_program+0xb83db0>
 5a0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 5a4:	00001702 	andeq	r1, r0, r2, lsl #14
 5a8:	03003409 	movweq	r3, #1033	; 0x409
 5ac:	3b0b3a0e 	blcc	2cedec <__end+0x1a1dec>
 5b0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 5b4:	0a000018 	beq	61c <__start-0x79e4>
 5b8:	01018289 	smlabbeq	r1, r9, r2, r8
 5bc:	13310111 	teqne	r1, #1073741828	; 0x40000004
 5c0:	00001301 	andeq	r1, r0, r1, lsl #6
 5c4:	01828a0b 	orreq	r8, r2, fp, lsl #20
 5c8:	91180200 	tstls	r8, r0, lsl #4
 5cc:	00001842 	andeq	r1, r0, r2, asr #16
 5d0:	0182890c 	orreq	r8, r2, ip, lsl #18
 5d4:	31011101 	tstcc	r1, r1, lsl #2
 5d8:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 5dc:	13490101 	movtne	r0, #37121	; 0x9101
 5e0:	00001301 	andeq	r1, r0, r1, lsl #6
 5e4:	4900210e 	stmdbmi	r0, {r1, r2, r3, r8, sp}
 5e8:	000b2f13 	andeq	r2, fp, r3, lsl pc
 5ec:	012e0f00 			; <UNDEFINED> instruction: 0x012e0f00
 5f0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 5f4:	0b3b0b3a 	bleq	ec32e4 <__user_program+0xbc32e4>
 5f8:	01111349 	tsteq	r1, r9, asr #6
 5fc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 600:	01194297 			; <UNDEFINED> instruction: 0x01194297
 604:	10000013 	andne	r0, r0, r3, lsl r0
 608:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 60c:	0b3a0e03 	bleq	e83e20 <__user_program+0xb83e20>
 610:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 614:	01111349 	tsteq	r1, r9, asr #6
 618:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 61c:	01194297 			; <UNDEFINED> instruction: 0x01194297
 620:	11000013 	tstne	r0, r3, lsl r0
 624:	00018289 	andeq	r8, r1, r9, lsl #5
 628:	13310111 	teqne	r1, #1073741828	; 0x40000004
 62c:	2e120000 	cdpcs	0, 1, cr0, cr2, cr0, {0}
 630:	03193f01 	tsteq	r9, #1, 30
 634:	3b0b3a0e 	blcc	2cee74 <__end+0x1a1e74>
 638:	1201110b 	andne	r1, r1, #-1073741822	; 0xc0000002
 63c:	97184006 	ldrls	r4, [r8, -r6]
 640:	13011942 	movwne	r1, #6466	; 0x1942
 644:	34130000 	ldrcc	r0, [r3], #-0
 648:	3a080300 	bcc	201250 <__end+0xd4250>
 64c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 650:	00170213 	andseq	r0, r7, r3, lsl r2
 654:	012e1400 			; <UNDEFINED> instruction: 0x012e1400
 658:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 65c:	0b3b0b3a 	bleq	ec334c <__user_program+0xbc334c>
 660:	13491927 	movtne	r1, #39207	; 0x9927
 664:	1301193c 	movwne	r1, #6460	; 0x193c
 668:	05150000 	ldreq	r0, [r5, #-0]
 66c:	00134900 	andseq	r4, r3, r0, lsl #18
 670:	00181600 	andseq	r1, r8, r0, lsl #12
 674:	0f170000 	svceq	0x00170000
 678:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 67c:	18000013 	stmdane	r0, {r0, r1, r4}
 680:	13490026 	movtne	r0, #36902	; 0x9026
 684:	2e190000 	cdpcs	0, 1, cr0, cr9, cr0, {0}
 688:	03193f01 	tsteq	r9, #1, 30
 68c:	3b0b3a0e 	blcc	2ceecc <__end+0x1a1ecc>
 690:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 694:	00193c13 	andseq	r3, r9, r3, lsl ip
 698:	11010000 	mrsne	r0, (UNDEF: 1)
 69c:	130e2501 	movwne	r2, #58625	; 0xe501
 6a0:	1b0e030b 	blne	3812d4 <__user_program+0x812d4>
 6a4:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 6a8:	00171006 	andseq	r1, r7, r6
 6ac:	00240200 	eoreq	r0, r4, r0, lsl #4
 6b0:	0b3e0b0b 	bleq	f832e4 <__user_program+0xc832e4>
 6b4:	00000e03 	andeq	r0, r0, r3, lsl #28
 6b8:	0b002403 	bleq	96cc <__clzsi2+0x598>
 6bc:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 6c0:	04000008 	streq	r0, [r0], #-8
 6c4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 6c8:	0b3b0b3a 	bleq	ec33b8 <__user_program+0xbc33b8>
 6cc:	00001349 	andeq	r1, r0, r9, asr #6
 6d0:	3f012e05 	svccc	0x00012e05
 6d4:	3a0e0319 	bcc	381340 <__user_program+0x81340>
 6d8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 6dc:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 6e0:	97184006 	ldrls	r4, [r8, -r6]
 6e4:	13011942 	movwne	r1, #6466	; 0x1942
 6e8:	05060000 	streq	r0, [r6, #-0]
 6ec:	3a0e0300 	bcc	3812f4 <__user_program+0x812f4>
 6f0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 6f4:	00180213 	andseq	r0, r8, r3, lsl r2
 6f8:	00050700 	andeq	r0, r5, r0, lsl #14
 6fc:	0b3a0e03 	bleq	e83f10 <__user_program+0xb83f10>
 700:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 704:	00001702 	andeq	r1, r0, r2, lsl #14
 708:	03003408 	movweq	r3, #1032	; 0x408
 70c:	3b0b3a08 	blcc	2cef34 <__end+0x1a1f34>
 710:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 714:	09000017 	stmdbeq	r0, {r0, r1, r2, r4}
 718:	0b0b000f 	bleq	2c075c <__end+0x19375c>
 71c:	00001349 	andeq	r1, r0, r9, asr #6
 720:	4900350a 	stmdbmi	r0, {r1, r3, r8, sl, ip, sp}
 724:	0b000013 	bleq	778 <__start-0x7888>
 728:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 72c:	0b3a0e03 	bleq	e83f40 <__user_program+0xb83f40>
 730:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 734:	01111349 	tsteq	r1, r9, asr #6
 738:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 73c:	00194297 	mulseq	r9, r7, r2
 740:	00050c00 	andeq	r0, r5, r0, lsl #24
 744:	0b3a0803 	bleq	e82758 <__user_program+0xb82758>
 748:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 74c:	00001702 	andeq	r1, r0, r2, lsl #14
 750:	00110100 	andseq	r0, r1, r0, lsl #2
 754:	01110610 	tsteq	r1, r0, lsl r6
 758:	08030112 	stmdaeq	r3, {r1, r4, r8}
 75c:	0825081b 	stmdaeq	r5!, {r0, r1, r3, r4, fp}
 760:	00000513 	andeq	r0, r0, r3, lsl r5
 764:	00110100 	andseq	r0, r1, r0, lsl #2
 768:	01110610 	tsteq	r1, r0, lsl r6
 76c:	08030112 	stmdaeq	r3, {r1, r4, r8}
 770:	0825081b 	stmdaeq	r5!, {r0, r1, r3, r4, fp}
 774:	00000513 	andeq	r0, r0, r3, lsl r5
 778:	00110100 	andseq	r0, r1, r0, lsl #2
 77c:	01110610 	tsteq	r1, r0, lsl r6
 780:	08030112 	stmdaeq	r3, {r1, r4, r8}
 784:	0825081b 	stmdaeq	r5!, {r0, r1, r3, r4, fp}
 788:	00000513 	andeq	r0, r0, r3, lsl r5
 78c:	01110100 	tsteq	r1, r0, lsl #2
 790:	0b130e25 	bleq	4c402c <__user_program+0x1c402c>
 794:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 798:	06120111 			; <UNDEFINED> instruction: 0x06120111
 79c:	00001710 	andeq	r1, r0, r0, lsl r7
 7a0:	0b002402 	bleq	97b0 <__clzsi2+0x67c>
 7a4:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 7a8:	0300000e 	movweq	r0, #14
 7ac:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 7b0:	0b3a0e03 	bleq	e83fc4 <__user_program+0xb83fc4>
 7b4:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 7b8:	01111349 	tsteq	r1, r9, asr #6
 7bc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 7c0:	01194297 			; <UNDEFINED> instruction: 0x01194297
 7c4:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
 7c8:	08030005 	stmdaeq	r3, {r0, r2}
 7cc:	0b3b0b3a 	bleq	ec34bc <__user_program+0xbc34bc>
 7d0:	17021349 	strne	r1, [r2, -r9, asr #6]
 7d4:	05050000 	streq	r0, [r5, #-0]
 7d8:	3a0e0300 	bcc	3813e0 <__user_program+0x813e0>
 7dc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 7e0:	00180213 	andseq	r0, r8, r3, lsl r2
 7e4:	00340600 	eorseq	r0, r4, r0, lsl #12
 7e8:	0b3a0e03 	bleq	e83ffc <__user_program+0xb83ffc>
 7ec:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 7f0:	00001802 	andeq	r1, r0, r2, lsl #16
 7f4:	01828907 	orreq	r8, r2, r7, lsl #18
 7f8:	31011101 	tstcc	r1, r1, lsl #2
 7fc:	08000013 	stmdaeq	r0, {r0, r1, r4}
 800:	0001828a 	andeq	r8, r1, sl, lsl #5
 804:	42911802 	addsmi	r1, r1, #131072	; 0x20000
 808:	09000018 	stmdbeq	r0, {r3, r4}
 80c:	0b0b000f 	bleq	2c0850 <__end+0x193850>
 810:	00001349 	andeq	r1, r0, r9, asr #6
 814:	3f012e0a 	svccc	0x00012e0a
 818:	3a0e0319 	bcc	381484 <__user_program+0x81484>
 81c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 820:	3c134919 	ldccc	9, cr4, [r3], {25}
 824:	00130119 	andseq	r0, r3, r9, lsl r1
 828:	00050b00 	andeq	r0, r5, r0, lsl #22
 82c:	00001349 	andeq	r1, r0, r9, asr #6
 830:	3f012e0c 	svccc	0x00012e0c
 834:	3a0e0319 	bcc	3814a0 <__user_program+0x814a0>
 838:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 83c:	3c134919 	ldccc	9, cr4, [r3], {25}
 840:	00000019 	andeq	r0, r0, r9, lsl r0
 844:	10001101 	andne	r1, r0, r1, lsl #2
 848:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 84c:	1b080301 	blne	201458 <__end+0xd4458>
 850:	13082508 	movwne	r2, #34056	; 0x8508
 854:	00000005 	andeq	r0, r0, r5
 858:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 85c:	030b130e 	movweq	r1, #45838	; 0xb30e
 860:	110e1b0e 	tstne	lr, lr, lsl #22
 864:	10061201 	andne	r1, r6, r1, lsl #4
 868:	02000017 	andeq	r0, r0, #23
 86c:	0b0b0024 	bleq	2c0904 <__end+0x193904>
 870:	0e030b3e 	vmoveq.16	d3[0], r0
 874:	24030000 	strcs	r0, [r3], #-0
 878:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 87c:	0008030b 	andeq	r0, r8, fp, lsl #6
 880:	00160400 	andseq	r0, r6, r0, lsl #8
 884:	0b3a0e03 	bleq	e84098 <__user_program+0xb84098>
 888:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 88c:	13050000 	movwne	r0, #20480	; 0x5000
 890:	0b0e0301 	bleq	38149c <__user_program+0x8149c>
 894:	3b0b3a0b 	blcc	2cf0c8 <__end+0x1a20c8>
 898:	00130105 	andseq	r0, r3, r5, lsl #2
 89c:	000d0600 	andeq	r0, sp, r0, lsl #12
 8a0:	0b3a0803 	bleq	e828b4 <__user_program+0xb828b4>
 8a4:	1349053b 	movtne	r0, #38203	; 0x953b
 8a8:	00000b38 	andeq	r0, r0, r8, lsr fp
 8ac:	03000d07 	movweq	r0, #3335	; 0xd07
 8b0:	3b0b3a0e 	blcc	2cf0f0 <__end+0x1a20f0>
 8b4:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 8b8:	0800000b 	stmdaeq	r0, {r0, r1, r3}
 8bc:	0b0b0117 	bleq	2c0d20 <__end+0x193d20>
 8c0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 8c4:	00001301 	andeq	r1, r0, r1, lsl #6
 8c8:	03000d09 	movweq	r0, #3337	; 0xd09
 8cc:	3b0b3a08 	blcc	2cf0f4 <__end+0x1a20f4>
 8d0:	00134905 	andseq	r4, r3, r5, lsl #18
 8d4:	00160a00 	andseq	r0, r6, r0, lsl #20
 8d8:	0b3a0e03 	bleq	e840ec <__user_program+0xb840ec>
 8dc:	1349053b 	movtne	r0, #38203	; 0x953b
 8e0:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
 8e4:	3a0e0301 	bcc	3814f0 <__user_program+0x814f0>
 8e8:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 8ec:	20134919 	andscs	r4, r3, r9, lsl r9
 8f0:	0013010b 	andseq	r0, r3, fp, lsl #2
 8f4:	00050c00 	andeq	r0, r5, r0, lsl #24
 8f8:	0b3a0803 	bleq	e8290c <__user_program+0xb8290c>
 8fc:	1349053b 	movtne	r0, #38203	; 0x953b
 900:	340d0000 	strcc	r0, [sp], #-0
 904:	3a080300 	bcc	20150c <__end+0xd450c>
 908:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 90c:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 910:	0b0b000f 	bleq	2c0954 <__end+0x193954>
 914:	00001349 	andeq	r1, r0, r9, asr #6
 918:	3f012e0f 	svccc	0x00012e0f
 91c:	3a0e0319 	bcc	381588 <__user_program+0x81588>
 920:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 924:	11134919 	tstne	r3, r9, lsl r9
 928:	40061201 	andmi	r1, r6, r1, lsl #4
 92c:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 930:	05100000 	ldreq	r0, [r0, #-0]
 934:	3a080300 	bcc	20153c <__end+0xd453c>
 938:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 93c:	00170213 	andseq	r0, r7, r3, lsl r2
 940:	00341100 	eorseq	r1, r4, r0, lsl #2
 944:	0b3a0803 	bleq	e82958 <__user_program+0xb82958>
 948:	1349053b 	movtne	r0, #38203	; 0x953b
 94c:	00001702 	andeq	r1, r0, r2, lsl #14
 950:	31011d12 	tstcc	r1, r2, lsl sp
 954:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 958:	590b5806 	stmdbpl	fp, {r1, r2, fp, ip, lr}
 95c:	13000005 	movwne	r0, #5
 960:	13310005 	teqne	r1, #5
 964:	00001702 	andeq	r1, r0, r2, lsl #14
 968:	11010b14 	tstne	r1, r4, lsl fp
 96c:	00061201 	andeq	r1, r6, r1, lsl #4
 970:	00341500 	eorseq	r1, r4, r0, lsl #10
 974:	17021331 	smladxne	r2, r1, r3, r1
 978:	01000000 	mrseq	r0, (UNDEF: 0)
 97c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 980:	0e030b13 	vmoveq.32	d3[0], r0
 984:	01110e1b 	tsteq	r1, fp, lsl lr
 988:	17100612 			; <UNDEFINED> instruction: 0x17100612
 98c:	24020000 	strcs	r0, [r2], #-0
 990:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 994:	000e030b 	andeq	r0, lr, fp, lsl #6
 998:	00240300 	eoreq	r0, r4, r0, lsl #6
 99c:	0b3e0b0b 	bleq	f835d0 <__user_program+0xc835d0>
 9a0:	00000803 	andeq	r0, r0, r3, lsl #16
 9a4:	03001604 	movweq	r1, #1540	; 0x604
 9a8:	3b0b3a0e 	blcc	2cf1e8 <__end+0x1a21e8>
 9ac:	0013490b 	andseq	r4, r3, fp, lsl #18
 9b0:	012e0500 			; <UNDEFINED> instruction: 0x012e0500
 9b4:	0b3a0e03 	bleq	e841c8 <__user_program+0xb841c8>
 9b8:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
 9bc:	0b201349 	bleq	8056e8 <__user_program+0x5056e8>
 9c0:	00001301 	andeq	r1, r0, r1, lsl #6
 9c4:	03000506 	movweq	r0, #1286	; 0x506
 9c8:	3b0b3a08 	blcc	2cf1f0 <__end+0x1a21f0>
 9cc:	00134905 	andseq	r4, r3, r5, lsl #18
 9d0:	00340700 	eorseq	r0, r4, r0, lsl #14
 9d4:	0b3a0803 	bleq	e829e8 <__user_program+0xb829e8>
 9d8:	1349053b 	movtne	r0, #38203	; 0x953b
 9dc:	0f080000 	svceq	0x00080000
 9e0:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 9e4:	09000013 	stmdbeq	r0, {r0, r1, r4}
 9e8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 9ec:	0b3a0e03 	bleq	e84200 <__user_program+0xb84200>
 9f0:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
 9f4:	01111349 	tsteq	r1, r9, asr #6
 9f8:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 9fc:	00194296 	mulseq	r9, r6, r2
 a00:	00050a00 	andeq	r0, r5, r0, lsl #20
 a04:	0b3a0803 	bleq	e82a18 <__user_program+0xb82a18>
 a08:	1349053b 	movtne	r0, #38203	; 0x953b
 a0c:	00001702 	andeq	r1, r0, r2, lsl #14
 a10:	31011d0b 	tstcc	r1, fp, lsl #26
 a14:	55015213 	strpl	r5, [r1, #-531]	; 0xfffffded
 a18:	590b5817 	stmdbpl	fp, {r0, r1, r2, r4, fp, ip, lr}
 a1c:	0c000005 	stceq	0, cr0, [r0], {5}
 a20:	13310005 	teqne	r1, #5
 a24:	00000b1c 	andeq	r0, r0, ip, lsl fp
 a28:	3100050d 	tstcc	r0, sp, lsl #10
 a2c:	00170213 	andseq	r0, r7, r3, lsl r2
 a30:	010b0e00 	tsteq	fp, r0, lsl #28
 a34:	00001755 	andeq	r1, r0, r5, asr r7
 a38:	3100340f 	tstcc	r0, pc, lsl #8
 a3c:	00170213 	andseq	r0, r7, r3, lsl r2
 a40:	11010000 	mrsne	r0, (UNDEF: 1)
 a44:	11061000 	mrsne	r1, (UNDEF: 6)
 a48:	03011201 	movweq	r1, #4609	; 0x1201
 a4c:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 a50:	00051308 	andeq	r1, r5, r8, lsl #6
 a54:	11010000 	mrsne	r0, (UNDEF: 1)
 a58:	11061000 	mrsne	r1, (UNDEF: 6)
 a5c:	03011201 	movweq	r1, #4609	; 0x1201
 a60:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 a64:	00051308 	andeq	r1, r5, r8, lsl #6
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
  34:	00000038 	andeq	r0, r0, r8, lsr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02810002 	addeq	r0, r1, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	000083ac 	andeq	r8, r0, ip, lsr #7
  54:	00000298 	muleq	r0, r8, r2
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	05750002 	ldrbeq	r0, [r5, #-2]!
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	00008644 	andeq	r8, r0, r4, asr #12
  74:	000000f8 	strdeq	r0, [r0], -r8
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	07150002 	ldreq	r0, [r5, -r2]
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	0000873c 	andeq	r8, r0, ip, lsr r7
  94:	000002c4 	andeq	r0, r0, r4, asr #5
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	09b30002 	ldmibeq	r3!, {r1}
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008a00 	andeq	r8, r0, r0, lsl #20
  b4:	00000344 	andeq	r0, r0, r4, asr #6
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	0f8f0002 	svceq	0x008f0002
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008d44 	andeq	r8, r0, r4, asr #26
  d4:	00000028 	andeq	r0, r0, r8, lsr #32
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	10900002 	addsne	r0, r0, r2
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008000 	andeq	r8, r0, r0
  f4:	00000054 	andeq	r0, r0, r4, asr r0
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	10fb0002 	rscsne	r0, fp, r2
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008d6c 	andeq	r8, r0, ip, ror #26
 114:	00000044 	andeq	r0, r0, r4, asr #32
	...
 120:	0000001c 	andeq	r0, r0, ip, lsl r0
 124:	11650002 	cmnne	r5, r2
 128:	00040000 	andeq	r0, r4, r0
 12c:	00000000 	andeq	r0, r0, r0
 130:	00008db0 			; <UNDEFINED> instruction: 0x00008db0
 134:	0000003c 	andeq	r0, r0, ip, lsr r0
	...
 140:	0000001c 	andeq	r0, r0, ip, lsl r0
 144:	120f0002 	andne	r0, pc, #2
 148:	00040000 	andeq	r0, r4, r0
 14c:	00000000 	andeq	r0, r0, r0
 150:	00008dec 	andeq	r8, r0, ip, ror #27
 154:	00000084 	andeq	r0, r0, r4, lsl #1
	...
 160:	0000001c 	andeq	r0, r0, ip, lsl r0
 164:	13730002 	cmnne	r3, #2
 168:	00040000 	andeq	r0, r4, r0
 16c:	00000000 	andeq	r0, r0, r0
 170:	00008e70 	andeq	r8, r0, r0, ror lr
 174:	00000004 	andeq	r0, r0, r4
	...
 180:	0000001c 	andeq	r0, r0, ip, lsl r0
 184:	14210002 	strtne	r0, [r1], #-2
 188:	00040000 	andeq	r0, r4, r0
 18c:	00000000 	andeq	r0, r0, r0
 190:	00008e74 	andeq	r8, r0, r4, ror lr
 194:	00000178 	andeq	r0, r0, r8, ror r1
	...
 1a0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1a4:	168a0002 	strne	r0, [sl], r2
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	00008fec 	andeq	r8, r0, ip, ror #31
 1b4:	00000120 	andeq	r0, r0, r0, lsr #2
	...
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	18510002 	ldmdane	r1, {r1}^
 1c8:	00040000 	andeq	r0, r4, r0
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	0000910c 	andeq	r9, r0, ip, lsl #2
 1d4:	00000028 	andeq	r0, r0, r8, lsr #32
	...
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	18ff0002 	ldmne	pc!, {r1}^	; <UNPREDICTABLE>
 1e8:	00040000 	andeq	r0, r4, r0
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	00009134 	andeq	r9, r0, r4, lsr r1
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
  58:	f30100d4 	vqadd.u8	q0, <illegal reg q8.5>, q2
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
  94:	00ad0101 	adceq	r0, sp, r1, lsl #2
  98:	00020000 	andeq	r0, r2, r0
  9c:	00000090 	muleq	r0, r0, r0
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
 12c:	00000003 	andeq	r0, r0, r3
 130:	74020500 	strvc	r0, [r2], #-1280	; 0xfffffb00
 134:	03000083 	movweq	r0, #131	; 0x83
 138:	312f0112 			; <UNDEFINED> instruction: 0x312f0112
 13c:	4b2f314d 	blmi	bcc678 <__user_program+0x8cc678>
 140:	04024b4d 	streq	r4, [r2], #-2893	; 0xfffff4b3
 144:	fa010100 	blx	4054c <__bss_end+0x3454c>
 148:	02000000 	andeq	r0, r0, #0
 14c:	00009500 	andeq	r9, r0, r0, lsl #10
 150:	fb010200 	blx	4095a <__bss_end+0x3495a>
 154:	01000d0e 	tsteq	r0, lr, lsl #26
 158:	00010101 	andeq	r0, r1, r1, lsl #2
 15c:	00010000 	andeq	r0, r1, r0
 160:	656b0100 	strbvs	r0, [fp, #-256]!	; 0xffffff00
 164:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 168:	616c635f 	cmnvs	ip, pc, asr r3
 16c:	74656470 	strbtvc	r6, [r5], #-1136	; 0xfffffb90
 170:	6f746365 	svcvs	0x00746365
 174:	72732f72 	rsbsvc	r2, r3, #456	; 0x1c8
 178:	34330063 	ldrtcc	r0, [r3], #-99	; 0xffffff9d
 17c:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
 180:	6e692f6b 	cdpvs	15, 6, cr2, cr9, cr11, {3}
 184:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 188:	656b0065 	strbvs	r0, [fp, #-101]!	; 0xffffff9b
 18c:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 190:	616c635f 	cmnvs	ip, pc, asr r3
 194:	74656470 	strbtvc	r6, [r5], #-1136	; 0xfffffb90
 198:	6f746365 	svcvs	0x00746365
 19c:	6e692f72 	mcrvs	15, 3, r2, cr9, cr2, {3}
 1a0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 1a4:	70000065 	andvc	r0, r0, r5, rrx
 1a8:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
 1ac:	00632e6b 	rsbeq	r2, r3, fp, ror #28
 1b0:	6b000001 	blvs	1bc <__start-0x7e44>
 1b4:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 1b8:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 1bc:	00000200 	andeq	r0, r0, r0, lsl #4
 1c0:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0xfffffc95
 1c4:	2e677261 	cdpcs	2, 6, cr7, cr7, cr1, {3}
 1c8:	00020068 	andeq	r0, r2, r8, rrx
 1cc:	75623c00 	strbvc	r3, [r2, #-3072]!	; 0xfffff400
 1d0:	2d746c69 	ldclcs	12, cr6, [r4, #-420]!	; 0xfffffe5c
 1d4:	003e6e69 	eorseq	r6, lr, r9, ror #28
 1d8:	75000000 	strvc	r0, [r0, #-0]
 1dc:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
 1e0:	00030068 	andeq	r0, r3, r8, rrx
 1e4:	05000000 	streq	r0, [r0, #-0]
 1e8:	0083ac02 	addeq	sl, r3, r2, lsl #24
 1ec:	01200300 			; <UNDEFINED> instruction: 0x01200300
 1f0:	009c4d88 	addseq	r4, ip, r8, lsl #27
 1f4:	4c010402 	cfstrsmi	mvf0, [r1], {2}
 1f8:	01040200 	mrseq	r0, R12_usr
 1fc:	04020033 	streq	r0, [r2], #-51	; 0xffffffcd
 200:	00590801 	subseq	r0, r9, r1, lsl #16
 204:	d7010402 	strle	r0, [r1, -r2, lsl #8]
 208:	9b6a4b4d 	blls	1a92f44 <__user_program+0x1792f44>
 20c:	6949872d 	stmdbvs	r9, {r0, r2, r3, r5, r8, r9, sl, pc}^
 210:	2003854d 	andcs	r8, r3, sp, asr #10
 214:	5c03514a 	stfpls	f5, [r3], {74}	; 0x4a
 218:	4b4b302e 	blmi	12cc2d8 <__user_program+0xfcc2d8>
 21c:	152c0232 	strne	r0, [ip, #-562]!	; 0xfffffdce
 220:	a04b4b83 	subge	r4, fp, r3, lsl #23
 224:	328367a4 	addcc	r6, r3, #164, 14	; 0x2900000
 228:	67338367 	ldrvs	r8, [r3, -r7, ror #6]!
 22c:	67833283 	strvs	r3, [r3, r3, lsl #5]
 230:	4b678a2d 	blmi	19e2aec <__user_program+0x16e2aec>
 234:	4d334b32 	vldmdbmi	r3!, {d4-d28}
 238:	2e7fbf03 	cdpcs	15, 7, cr11, cr15, cr3, {0}
 23c:	6600c603 	strvs	ip, [r0], -r3, lsl #12
 240:	01000802 	tsteq	r0, r2, lsl #16
 244:	0000b901 	andeq	fp, r0, r1, lsl #18
 248:	84000200 	strhi	r0, [r0], #-512	; 0xfffffe00
 24c:	02000000 	andeq	r0, r0, #0
 250:	0d0efb01 	vstreq	d15, [lr, #-4]
 254:	01010100 	mrseq	r0, (UNDEF: 17)
 258:	00000001 	andeq	r0, r0, r1
 25c:	01000001 	tsteq	r0, r1
 260:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 264:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 268:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 26c:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 270:	2f726f74 	svccs	0x00726f74
 274:	00637273 	rsbeq	r7, r3, r3, ror r2
 278:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 27c:	2f6b6269 	svccs	0x006b6269
 280:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 284:	00656475 	rsbeq	r6, r5, r5, ror r4
 288:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 28c:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 290:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 294:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 298:	2f726f74 	svccs	0x00726f74
 29c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 2a0:	00656475 	rsbeq	r6, r5, r5, ror r4
 2a4:	72617500 	rsbvc	r7, r1, #0, 10
 2a8:	00632e74 	rsbeq	r2, r3, r4, ror lr
 2ac:	6b000001 	blvs	2b8 <__start-0x7d48>
 2b0:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 2b4:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 2b8:	00000200 	andeq	r0, r0, r0, lsl #4
 2bc:	6f697067 	svcvs	0x00697067
 2c0:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 2c4:	72700000 	rsbsvc	r0, r0, #0
 2c8:	6b746e69 	blvs	1d1bc74 <__user_program+0x1a1bc74>
 2cc:	0300682e 	movweq	r6, #2094	; 0x82e
 2d0:	00000000 	andeq	r0, r0, r0
 2d4:	86440205 	strbhi	r0, [r4], -r5, lsl #4
 2d8:	25030000 	strcs	r0, [r3, #-0]
 2dc:	69673101 	stmdbvs	r7!, {r0, r8, ip, sp}^
 2e0:	4ca06967 	stcmi	9, cr6, [r0], #412	; 0x19c
 2e4:	a0156b4c 	andsge	r6, r5, ip, asr #22
 2e8:	02001587 	andeq	r1, r0, #566231040	; 0x21c00000
 2ec:	4a060104 	bmi	180704 <__end+0x53704>
 2f0:	2f876a06 	svccs	0x00876a06
 2f4:	2f484c2f 	svccs	0x00484c2f
 2f8:	6d2b4b4b 	fstmdbxvs	fp!, {d4-d40}	;@ Deprecated
 2fc:	00020267 	andeq	r0, r2, r7, ror #4
 300:	00ef0101 	rsceq	r0, pc, r1, lsl #2
 304:	00020000 	andeq	r0, r2, r0
 308:	0000008e 	andeq	r0, r0, lr, lsl #1
 30c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 310:	0101000d 	tsteq	r1, sp
 314:	00000101 	andeq	r0, r0, r1, lsl #2
 318:	00000100 	andeq	r0, r0, r0, lsl #2
 31c:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 320:	5f6c656e 	svcpl	0x006c656e
 324:	70616c63 	rsbvc	r6, r1, r3, ror #24
 328:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 32c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 330:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 334:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 338:	6b62696c 	blvs	189a8f0 <__user_program+0x159a8f0>
 33c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 340:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 344:	72656b00 	rsbvc	r6, r5, #0, 22
 348:	5f6c656e 	svcpl	0x006c656e
 34c:	70616c63 	rsbvc	r6, r1, r3, ror #24
 350:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 354:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 358:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 35c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 360:	32690000 	rsbcc	r0, r9, #0
 364:	00632e63 	rsbeq	r2, r3, r3, ror #28
 368:	6b000001 	blvs	374 <__start-0x7c8c>
 36c:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 370:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 374:	00000200 	andeq	r0, r0, r0, lsl #4
 378:	6f697067 	svcvs	0x00697067
 37c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 380:	74750000 	ldrbtvc	r0, [r5], #-0
 384:	2e736c69 	cdpcs	12, 7, cr6, cr3, cr9, {3}
 388:	00030068 	andeq	r0, r3, r8, rrx
 38c:	69727000 	ldmdbvs	r2!, {ip, sp, lr}^
 390:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 394:	00030068 	andeq	r0, r3, r8, rrx
 398:	05000000 	streq	r0, [r0, #-0]
 39c:	00873c02 	addeq	r3, r7, r2, lsl #24
 3a0:	01100300 	tsteq	r0, r0, lsl #6
 3a4:	87676831 			; <UNDEFINED> instruction: 0x87676831
 3a8:	304cbc88 	subcc	fp, ip, r8, lsl #25
 3ac:	85518087 	ldrbhi	r8, [r1, #-135]	; 0xffffff79
 3b0:	4b494b68 	blmi	1253158 <__user_program+0xf53158>
 3b4:	03636583 	cmneq	r3, #549453824	; 0x20c00000
 3b8:	2c844a0a 	vstmiacs	r4, {s8-s17}
 3bc:	02008434 	andeq	r8, r0, #52, 8	; 0x34000000
 3c0:	a2860104 	addge	r0, r6, #4, 2
 3c4:	bc8a4ca1 	stclt	12, cr4, [sl], {161}	; 0xa1
 3c8:	03324c4c 	teqeq	r2, #76, 24	; 0x4c00
 3cc:	14034a70 	strne	r4, [r3], #-2672	; 0xfffff590
 3d0:	63636c2e 	cmnvs	r3, #11776	; 0x2e00
 3d4:	6ba0c169 	blvs	fe830980 <__user_program+0xfe530980>
 3d8:	4c484cf4 	mcrrmi	12, 15, r4, r8, cr4
 3dc:	04020062 	streq	r0, [r2], #-98	; 0xffffff9e
 3e0:	064a0601 	strbeq	r0, [sl], -r1, lsl #12
 3e4:	342c846e 	strtcc	r8, [ip], #-1134	; 0xfffffb92
 3e8:	04020084 	streq	r0, [r2], #-132	; 0xffffff7c
 3ec:	a2a28501 	adcge	r8, r2, #4194304	; 0x400000
 3f0:	01000402 	tsteq	r0, r2, lsl #8
 3f4:	0000f801 	andeq	pc, r0, r1, lsl #16
 3f8:	86000200 	strhi	r0, [r0], -r0, lsl #4
 3fc:	02000000 	andeq	r0, r0, #0
 400:	0d0efb01 	vstreq	d15, [lr, #-4]
 404:	01010100 	mrseq	r0, (UNDEF: 17)
 408:	00000001 	andeq	r0, r0, r1
 40c:	01000001 	tsteq	r0, r1
 410:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 414:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 418:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 41c:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 420:	2f726f74 	svccs	0x00726f74
 424:	00637273 	rsbeq	r7, r3, r3, ror r2
 428:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 42c:	2f6b6269 	svccs	0x006b6269
 430:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 434:	00656475 	rsbeq	r6, r5, r5, ror r4
 438:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 43c:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 440:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 444:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 448:	2f726f74 	svccs	0x00726f74
 44c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 450:	00656475 	rsbeq	r6, r5, r5, ror r4
 454:	73646100 	cmnvc	r4, #0, 2
 458:	35313031 	ldrcc	r3, [r1, #-49]!	; 0xffffffcf
 45c:	0100632e 	tsteq	r0, lr, lsr #6
 460:	736b0000 	cmnvc	fp, #0
 464:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 468:	00682e74 	rsbeq	r2, r8, r4, ror lr
 46c:	70000002 	andvc	r0, r0, r2
 470:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
 474:	00682e6b 	rsbeq	r2, r8, fp, ror #28
 478:	69000003 	stmdbvs	r0, {r0, r1}
 47c:	682e6332 	stmdavs	lr!, {r1, r4, r5, r8, r9, sp, lr}
 480:	00000300 	andeq	r0, r0, r0, lsl #6
 484:	02050000 	andeq	r0, r5, #0
 488:	00008a00 	andeq	r8, r0, r0, lsl #20
 48c:	6c010f03 	stcvs	15, cr0, [r1], {3}
 490:	6b2f4b4b 	blvs	bd31c4 <__user_program+0x8d31c4>
 494:	676b85bb 			; <UNDEFINED> instruction: 0x676b85bb
 498:	4b68bb4b 	blmi	1a2f1cc <__user_program+0x172f1cc>
 49c:	68514e84 	ldmdavs	r1, {r2, r7, r9, sl, fp, lr}^
 4a0:	69bb6c9f 	ldmibvs	fp!, {r0, r1, r2, r3, r4, r7, sl, fp, sp, lr}
 4a4:	67526969 	ldrbvs	r6, [r2, -r9, ror #18]
 4a8:	6768bb4b 	strbvs	fp, [r8, -fp, asr #22]!
 4ac:	83846787 	orrhi	r6, r4, #35389440	; 0x21c0000
 4b0:	844b8667 	strbhi	r8, [fp], #-1639	; 0xfffff999
 4b4:	4d846783 	stcmi	7, cr6, [r4, #524]	; 0x20c
 4b8:	4cd9a04f 	ldclmi	0, cr10, [r9], {79}	; 0x4f
 4bc:	032f2f2f 			; <UNDEFINED> instruction: 0x032f2f2f
 4c0:	0c032e79 	stceq	14, cr2, [r3], {121}	; 0x79
 4c4:	03682f2e 	cmneq	r8, #46, 30	; 0xb8
 4c8:	31364a7a 	teqcc	r6, sl, ror sl
 4cc:	3086672f 	addcc	r6, r6, pc, lsr #14
 4d0:	2e0d0349 	cdpcs	3, 0, cr0, cr13, cr9, {2}
 4d4:	4a770346 	bmi	1dc11f4 <__user_program+0x1ac11f4>
 4d8:	654c8334 	strbvs	r8, [ip, #-820]	; 0xfffffccc
 4dc:	00654c31 	rsbeq	r4, r5, r1, lsr ip
 4e0:	03020402 	movweq	r0, #9218	; 0x2402
 4e4:	0b032e79 	bleq	cbed0 <__bss_end+0xbfed0>
 4e8:	4b832f4a 	blmi	fe0cc218 <__user_program+0xfddcc218>
 4ec:	01000802 	tsteq	r0, r2, lsl #16
 4f0:	00006c01 	andeq	r6, r0, r1, lsl #24
 4f4:	53000200 	movwpl	r0, #512	; 0x200
 4f8:	02000000 	andeq	r0, r0, #0
 4fc:	0d0efb01 	vstreq	d15, [lr, #-4]
 500:	01010100 	mrseq	r0, (UNDEF: 17)
 504:	00000001 	andeq	r0, r0, r1
 508:	01000001 	tsteq	r0, r1
 50c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 510:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 514:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 518:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 51c:	2f726f74 	svccs	0x00726f74
 520:	00637273 	rsbeq	r7, r3, r3, ror r2
 524:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 528:	2f6b6269 	svccs	0x006b6269
 52c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 530:	00656475 	rsbeq	r6, r5, r5, ror r4
 534:	69747500 	ldmdbvs	r4!, {r8, sl, ip, sp, lr}^
 538:	632e736c 			; <UNDEFINED> instruction: 0x632e736c
 53c:	00000100 	andeq	r0, r0, r0, lsl #2
 540:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0xfffffc95
 544:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 548:	00020068 	andeq	r0, r2, r8, rrx
 54c:	05000000 	streq	r0, [r0, #-0]
 550:	008d4402 	addeq	r4, sp, r2, lsl #8
 554:	2f131600 	svccs	0x00131600
 558:	4b134e67 	blmi	4d3efc <__user_program+0x1d3efc>
 55c:	01000402 	tsteq	r0, r2, lsl #8
 560:	00005401 	andeq	r5, r0, r1, lsl #8
 564:	29000200 	stmdbcs	r0, {r9}
 568:	02000000 	andeq	r0, r0, #0
 56c:	0d0efb01 	vstreq	d15, [lr, #-4]
 570:	01010100 	mrseq	r0, (UNDEF: 17)
 574:	00000001 	andeq	r0, r0, r1
 578:	01000001 	tsteq	r0, r1
 57c:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 580:	2f6b6269 	svccs	0x006b6269
 584:	00637273 	rsbeq	r7, r3, r3, ror r2
 588:	6f6f6200 	svcvs	0x006f6200
 58c:	00532e74 	subseq	r2, r3, r4, ror lr
 590:	00000001 	andeq	r0, r0, r1
 594:	00020500 	andeq	r0, r2, r0, lsl #10
 598:	03000080 	movweq	r0, #128	; 0x80
 59c:	2f2f011b 	svccs	0x002f011b
 5a0:	2f2f302f 	svccs	0x002f302f
 5a4:	2f2f2f2f 	svccs	0x002f2f2f
 5a8:	312f2f31 			; <UNDEFINED> instruction: 0x312f2f31
 5ac:	69032f33 	stmdbvs	r3, {r0, r1, r4, r5, r8, r9, sl, fp, sp}
 5b0:	2f2f312e 	svccs	0x002f312e
 5b4:	01000202 	tsteq	r0, r2, lsl #4
 5b8:	00004d01 	andeq	r4, r0, r1, lsl #26
 5bc:	28000200 	stmdacs	r0, {r9}
 5c0:	02000000 	andeq	r0, r0, #0
 5c4:	0d0efb01 	vstreq	d15, [lr, #-4]
 5c8:	01010100 	mrseq	r0, (UNDEF: 17)
 5cc:	00000001 	andeq	r0, r0, r1
 5d0:	01000001 	tsteq	r0, r1
 5d4:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 5d8:	2f6b6269 	svccs	0x006b6269
 5dc:	00637273 	rsbeq	r7, r3, r3, ror r2
 5e0:	6d726100 	ldfvse	f6, [r2, #-0]
 5e4:	0100532e 	tsteq	r0, lr, lsr #6
 5e8:	00000000 	andeq	r0, r0, r0
 5ec:	8d6c0205 	sfmhi	f0, 2, [ip, #-20]!	; 0xffffffec
 5f0:	10030000 	andne	r0, r3, r0
 5f4:	332f2f01 			; <UNDEFINED> instruction: 0x332f2f01
 5f8:	332f332f 			; <UNDEFINED> instruction: 0x332f332f
 5fc:	2f2f2f2f 	svccs	0x002f2f2f
 600:	2f2f2f33 	svccs	0x002f2f33
 604:	0002022f 	andeq	r0, r2, pc, lsr #4
 608:	005a0101 	subseq	r0, sl, r1, lsl #2
 60c:	00020000 	andeq	r0, r2, r0
 610:	0000003d 	andeq	r0, r0, sp, lsr r0
 614:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 618:	0101000d 	tsteq	r1, sp
 61c:	00000101 	andeq	r0, r0, r1, lsl #2
 620:	00000100 	andeq	r0, r0, r0, lsl #2
 624:	2f2e2e01 	svccs	0x002e2e01
 628:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 62c:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 630:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 634:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 638:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 63c:	2f676966 	svccs	0x00676966
 640:	006d7261 	rsbeq	r7, sp, r1, ror #4
 644:	61706200 	cmnvs	r0, r0, lsl #4
 648:	532e6962 			; <UNDEFINED> instruction: 0x532e6962
 64c:	00000100 	andeq	r0, r0, r0, lsl #2
 650:	02050000 	andeq	r0, r5, #0
 654:	00008db0 			; <UNDEFINED> instruction: 0x00008db0
 658:	01019b03 	tsteq	r1, r3, lsl #22
 65c:	2f3133f4 	svccs	0x003133f4
 660:	022f2f2f 	eoreq	r2, pc, #47, 30	; 0xbc
 664:	01010002 	tsteq	r1, r2
 668:	0000005b 	andeq	r0, r0, fp, asr r0
 66c:	003d0002 	eorseq	r0, sp, r2
 670:	01020000 	mrseq	r0, (UNDEF: 2)
 674:	000d0efb 	strdeq	r0, [sp], -fp
 678:	01010101 	tsteq	r1, r1, lsl #2
 67c:	01000000 	mrseq	r0, (UNDEF: 0)
 680:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 684:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 688:	2f2e2e2f 	svccs	0x002e2e2f
 68c:	2f637273 	svccs	0x00637273
 690:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 694:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 698:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 69c:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 6a0:	6200006d 	andvs	r0, r0, #109	; 0x6d
 6a4:	69626170 	stmdbvs	r2!, {r4, r5, r6, r8, sp, lr}^
 6a8:	0100632e 	tsteq	r0, lr, lsr #6
 6ac:	00000000 	andeq	r0, r0, r0
 6b0:	8dec0205 	sfmhi	f0, 2, [ip, #20]!
 6b4:	25030000 	strcs	r0, [r3, #-0]
 6b8:	4ba12e01 	blmi	fe84bec4 <__user_program+0xfe54bec4>
 6bc:	a12e50d8 	ldrdge	r5, [lr, -r8]!
 6c0:	0402d82f 	streq	sp, [r2], #-2095	; 0xfffff7d1
 6c4:	57010100 	strpl	r0, [r1, -r0, lsl #2]
 6c8:	02000000 	andeq	r0, r0, #0
 6cc:	00004100 	andeq	r4, r0, r0, lsl #2
 6d0:	fb010200 	blx	40eda <__bss_end+0x34eda>
 6d4:	01000d0e 	tsteq	r0, lr, lsl #26
 6d8:	00010101 	andeq	r0, r1, r1, lsl #2
 6dc:	00010000 	andeq	r0, r1, r0
 6e0:	2e2e0100 	sufcse	f0, f6, f0
 6e4:	2f2e2e2f 	svccs	0x002e2e2f
 6e8:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 6ec:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 52c <__start-0x7ad4>
 6f0:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 6f4:	6f632f63 	svcvs	0x00632f63
 6f8:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 6fc:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 700:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 704:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
 708:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 70c:	00010053 	andeq	r0, r1, r3, asr r0
 710:	05000000 	streq	r0, [r0, #-0]
 714:	008e7002 	addeq	r7, lr, r2
 718:	0bae0300 	bleq	feb81320 <__user_program+0xfe881320>
 71c:	00020201 	andeq	r0, r2, r1, lsl #4
 720:	00940101 	addseq	r0, r4, r1, lsl #2
 724:	00020000 	andeq	r0, r2, r0
 728:	00000041 	andeq	r0, r0, r1, asr #32
 72c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 730:	0101000d 	tsteq	r1, sp
 734:	00000101 	andeq	r0, r0, r1, lsl #2
 738:	00000100 	andeq	r0, r0, r0, lsl #2
 73c:	2f2e2e01 	svccs	0x002e2e01
 740:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 744:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 748:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 74c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 750:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 754:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 758:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 75c:	6c000001 	stcvs	0, cr0, [r0], {1}
 760:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 764:	682e3263 	stmdavs	lr!, {r0, r1, r5, r6, r9, ip, sp}
 768:	00000100 	andeq	r0, r0, r0, lsl #2
 76c:	02050000 	andeq	r0, r5, #0
 770:	00008e74 	andeq	r8, r0, r4, ror lr
 774:	0109cb03 	tsteq	r9, r3, lsl #22
 778:	2e7a0318 	mrccs	3, 3, r0, cr10, cr8, {0}
 77c:	03313367 	teqeq	r1, #-1677721599	; 0x9c000001
 780:	a0827de8 	addge	r7, r2, r8, ror #27
 784:	4c2f2d67 	stcmi	13, cr2, [pc], #-412	; 5f0 <__start-0x7a10>
 788:	7903a52f 	stmdbvc	r3, {r0, r1, r2, r3, r5, r8, sl, sp, pc}
 78c:	7903352e 	stmdbvc	r3, {r1, r2, r3, r5, r8, sl, ip, sp}
 790:	2e6f032e 	cdpcs	3, 6, cr0, cr15, cr14, {1}
 794:	314a1803 	cmpcc	sl, r3, lsl #16
 798:	2f492f2d 	svccs	0x00492f2d
 79c:	be6e4c31 	mcrlt	12, 3, r4, cr14, cr1, {1}
 7a0:	4f4c6945 	svcmi	0x004c6945
 7a4:	64832f49 	strvs	r2, [r3], #3913	; 0xf49
 7a8:	01fa0330 	mvnseq	r0, r0, lsr r3
 7ac:	79033c08 	stmdbvc	r3, {r3, sl, fp, ip, sp}
 7b0:	472f2d82 	strmi	r2, [pc, -r2, lsl #27]!
 7b4:	00040249 	andeq	r0, r4, r9, asr #4
 7b8:	008e0101 	addeq	r0, lr, r1, lsl #2
 7bc:	00020000 	andeq	r0, r2, r0
 7c0:	00000041 	andeq	r0, r0, r1, asr #32
 7c4:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 7c8:	0101000d 	tsteq	r1, sp
 7cc:	00000101 	andeq	r0, r0, r1, lsl #2
 7d0:	00000100 	andeq	r0, r0, r0, lsl #2
 7d4:	2f2e2e01 	svccs	0x002e2e01
 7d8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 7dc:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 7e0:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 7e4:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 7e8:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 7ec:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 7f0:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 7f4:	6c000001 	stcvs	0, cr0, [r0], {1}
 7f8:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 7fc:	682e3263 	stmdavs	lr!, {r0, r1, r5, r6, r9, ip, sp}
 800:	00000100 	andeq	r0, r0, r0, lsl #2
 804:	02050000 	andeq	r0, r5, #0
 808:	00008fec 	andeq	r8, r0, ip, ror #31
 80c:	010a8603 	tsteq	sl, r3, lsl #12
 810:	017db603 	cmneq	sp, r3, lsl #12
 814:	4a02ca03 	bmi	b3028 <__bss_end+0xa7028>
 818:	7dab032e 	stcvc	3, cr0, [fp, #184]!	; 0xb8
 81c:	4a0b0382 	bmi	2c162c <__end+0x19462c>
 820:	2f2d6730 	svccs	0x002d6730
 824:	03a52f4c 			; <UNDEFINED> instruction: 0x03a52f4c
 828:	03352e79 	teqeq	r5, #1936	; 0x790
 82c:	6f032e79 	svcvs	0x00032e79
 830:	4a18032e 	bmi	6014f0 <__user_program+0x3014f0>
 834:	492f2d31 	stmdbmi	pc!, {r0, r4, r5, r8, sl, fp, sp}	; <UNPREDICTABLE>
 838:	6e4c312f 	dvfvsep	f3, f4, #10.0
 83c:	4c6945be 	cfstr64mi	mvdx4, [r9], #-760	; 0xfffffd08
 840:	03bb4b4e 			; <UNDEFINED> instruction: 0x03bb4b4e
 844:	02ba02a5 	adcseq	r0, sl, #1342177290	; 0x5000000a
 848:	01010004 	tsteq	r1, r4
 84c:	00000061 	andeq	r0, r0, r1, rrx
 850:	00410002 	subeq	r0, r1, r2
 854:	01020000 	mrseq	r0, (UNDEF: 2)
 858:	000d0efb 	strdeq	r0, [sp], -fp
 85c:	01010101 	tsteq	r1, r1, lsl #2
 860:	01000000 	mrseq	r0, (UNDEF: 0)
 864:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 868:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 86c:	2f2e2e2f 	svccs	0x002e2e2f
 870:	2f637273 	svccs	0x00637273
 874:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 878:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 87c:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 880:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 884:	6c00006d 	stcvs	0, cr0, [r0], {109}	; 0x6d
 888:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
 88c:	73636e75 	cmnvc	r3, #1872	; 0x750
 890:	0100532e 	tsteq	r0, lr, lsr #6
 894:	00000000 	andeq	r0, r0, r0
 898:	910c0205 	tstls	ip, r5, lsl #4
 89c:	ae030000 	cdpge	0, 0, cr0, cr3, cr0, {0}
 8a0:	2f30010d 	svccs	0x0030010d
 8a4:	2f2e0903 	svccs	0x002e0903
 8a8:	342f302f 	strtcc	r3, [pc], #-47	; 8b0 <__start-0x7750>
 8ac:	01000402 	tsteq	r0, r2, lsl #8
 8b0:	00006401 	andeq	r6, r0, r1, lsl #8
 8b4:	41000200 	mrsmi	r0, R8_usr
 8b8:	02000000 	andeq	r0, r0, #0
 8bc:	0d0efb01 	vstreq	d15, [lr, #-4]
 8c0:	01010100 	mrseq	r0, (UNDEF: 17)
 8c4:	00000001 	andeq	r0, r0, r1
 8c8:	01000001 	tsteq	r0, r1
 8cc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 8d0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 8d4:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 8d8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 8dc:	2f636367 	svccs	0x00636367
 8e0:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 8e4:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 8e8:	00006d72 	andeq	r6, r0, r2, ror sp
 8ec:	3162696c 	cmncc	r2, ip, ror #18
 8f0:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 8f4:	00532e73 	subseq	r2, r3, r3, ror lr
 8f8:	00000001 	andeq	r0, r0, r1
 8fc:	34020500 	strcc	r0, [r2], #-1280	; 0xfffffb00
 900:	03000091 	movweq	r0, #145	; 0x91
 904:	2f010d8d 	svccs	0x00010d8d
 908:	302f2f30 	eorcc	r2, pc, r0, lsr pc	; <UNPREDICTABLE>
 90c:	2f302f2f 	svccs	0x00302f2f
 910:	2f2f2f2f 	svccs	0x002f2f2f
 914:	01000a02 	tsteq	r0, r2, lsl #20
 918:	Address 0x0000000000000918 is out of bounds.


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
 17c:	64610074 	strbtvs	r0, [r1], #-116	; 0xffffff8c
 180:	6e695f63 	cdpvs	15, 6, cr5, cr9, cr3, {3}
 184:	6b007469 	blvs	1d330 <__bss_end+0x11330>
 188:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 18c:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 190:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 194:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 198:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 19c:	6b2f6372 	blvs	bd8f6c <__user_program+0x8d8f6c>
 1a0:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 1a4:	00632e6c 	rsbeq	r2, r3, ip, ror #28
 1a8:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 1ac:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
 1b0:	656b0074 	strbvs	r0, [fp, #-116]!	; 0xffffff8c
 1b4:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 1b8:	69616d5f 	stmdbvs	r1!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
 1bc:	6975006e 	ldmdbvs	r5!, {r1, r2, r3, r5, r6}^
 1c0:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
 1c4:	4700745f 	smlsdmi	r0, pc, r4, r7	; <UNPREDICTABLE>
 1c8:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
 1cc:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
 1d0:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
 1d4:	30353130 	eorscc	r3, r5, r0, lsr r1
 1d8:	20393235 	eorscs	r3, r9, r5, lsr r2
 1dc:	65727028 	ldrbvs	r7, [r2, #-40]!	; 0xffffffd8
 1e0:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 1e4:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 1e8:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
 1ec:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 1f0:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
 1f4:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
 1f8:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
 1fc:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 200:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 204:	612d3776 			; <UNDEFINED> instruction: 0x612d3776
 208:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 20c:	20314f2d 	eorscs	r4, r1, sp, lsr #30
 210:	7266662d 	rsbvc	r6, r6, #47185920	; 0x2d00000
 214:	74736565 	ldrbtvc	r6, [r3], #-1381	; 0xfffffa9b
 218:	69646e61 	stmdbvs	r4!, {r0, r5, r6, r9, sl, fp, sp, lr}^
 21c:	6200676e 	andvs	r6, r0, #28835840	; 0x1b80000
 220:	5f657479 	svcpl	0x00657479
 224:	00727470 	rsbseq	r7, r2, r0, ror r4
 228:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
 22c:	745f3436 	ldrbvc	r3, [pc], #-1078	; 234 <__start-0x7dcc>
 230:	73616200 	cmnvc	r1, #0, 4
 234:	5f5f0065 	svcpl	0x005f0065
 238:	6c5f6176 	ldfvse	f6, [pc], {118}	; 0x76
 23c:	00747369 	rsbseq	r7, r4, r9, ror #6
 240:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 244:	7475705f 	ldrbtvc	r7, [r5], #-95	; 0xffffffa1
 248:	7479625f 	ldrbtvc	r6, [r9], #-607	; 0xfffffda1
 24c:	72700065 	rsbsvc	r0, r0, #101	; 0x65
 250:	6e746e69 	cdpvs	14, 7, cr6, cr4, cr9, {3}
 254:	006b6d75 	rsbeq	r6, fp, r5, ror sp
 258:	69676964 	stmdbvs	r7!, {r2, r5, r6, r8, fp, sp, lr}^
 25c:	70007374 	andvc	r7, r0, r4, ror r3
 260:	69666572 	stmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
 264:	72700078 	rsbsvc	r0, r0, #120	; 0x78
 268:	6b746e69 	blvs	1d1bc14 <__user_program+0x1a1bc14>
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
 2d0:	74700065 	ldrbtvc	r0, [r0], #-101	; 0xffffff9b
 2d4:	65735f72 	ldrbvs	r5, [r3, #-3954]!	; 0xfffff08e
 2d8:	69625f74 	stmdbvs	r2!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 2dc:	6b007374 	blvs	1d0b4 <__bss_end+0x110b4>
 2e0:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 2e4:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 2e8:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 2ec:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 2f0:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 2f4:	692f6372 	stmdbvs	pc!, {r1, r4, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
 2f8:	632e6332 			; <UNDEFINED> instruction: 0x632e6332
 2fc:	61657200 	cmnvs	r5, r0, lsl #4
 300:	006e6f73 	rsbeq	r6, lr, r3, ror pc
 304:	5f633269 	svcpl	0x00633269
 308:	7473616d 	ldrbtvc	r6, [r3], #-365	; 0xfffffe93
 30c:	725f7265 	subsvc	r7, pc, #1342177286	; 0x50000006
 310:	00646165 	rsbeq	r6, r4, r5, ror #2
 314:	5f633269 	svcpl	0x00633269
 318:	7473616d 	ldrbtvc	r6, [r3], #-365	; 0xfffffe93
 31c:	775f7265 	ldrbvc	r7, [pc, -r5, ror #4]
 320:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
 324:	72656b00 	rsbvc	r6, r5, #0, 22
 328:	5f6c656e 	svcpl	0x006c656e
 32c:	70616c63 	rsbvc	r6, r1, r3, ror #24
 330:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 334:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 338:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 33c:	7364612f 	cmnvc	r4, #-1073741813	; 0xc000000b
 340:	35313031 	ldrcc	r3, [r1, #-49]!	; 0xffffffcf
 344:	6300632e 	movwvs	r6, #814	; 0x32e
 348:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 34c:	61765f67 	cmnvs	r6, r7, ror #30
 350:	0065756c 	rsbeq	r7, r5, ip, ror #10
 354:	5f636461 	svcpl	0x00636461
 358:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
 35c:	6e6f635f 	mcrvs	3, 3, r6, cr15, cr15, {2}
 360:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
 364:	006e6f69 	rsbeq	r6, lr, r9, ror #30
 368:	5f727563 	svcpl	0x00727563
 36c:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
 370:	006c656e 	rsbeq	r6, ip, lr, ror #10
 374:	56746572 			; <UNDEFINED> instruction: 0x56746572
 378:	63006c61 	movwvs	r6, #3169	; 0xc61
 37c:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 380:	61765f67 	cmnvs	r6, r7, ror #30
 384:	6461006c 	strbtvs	r0, [r1], #-108	; 0xffffff94
 388:	72775f63 	rsbsvc	r5, r7, #396	; 0x18c
 38c:	5f657469 	svcpl	0x00657469
 390:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 394:	61006769 	tstvs	r0, r9, ror #14
 398:	725f6364 	subsvc	r6, pc, #100, 6	; 0x90000001
 39c:	00646165 	rsbeq	r6, r4, r5, ror #2
 3a0:	66756272 			; <UNDEFINED> instruction: 0x66756272
 3a4:	64617000 	strbtvs	r7, [r1], #-0
 3a8:	6d007264 	sfmvs	f7, 4, [r0, #-400]	; 0xfffffe70
 3ac:	006b7361 	rsbeq	r7, fp, r1, ror #6
 3b0:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 3b4:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 3b8:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 3bc:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 3c0:	2f726f74 	svccs	0x00726f74
 3c4:	2f637273 	svccs	0x00637273
 3c8:	6c697475 	cfstrdvs	mvd7, [r9], #-468	; 0xfffffe2c
 3cc:	00632e73 	rsbeq	r2, r3, r3, ror lr
 3d0:	69645f5f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
 3d4:	33696476 	cmncc	r9, #1979711488	; 0x76000000
 3d8:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
 3dc:	2f646c69 	svccs	0x00646c69
 3e0:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 3e4:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 3e8:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 3ec:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 3f0:	52442d69 	subpl	r2, r4, #6720	; 0x1a40
 3f4:	414c6e52 	cmpmi	ip, r2, asr lr
 3f8:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 3fc:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
 400:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 404:	61652d65 	cmnvs	r5, r5, ror #26
 408:	342d6962 	strtcc	r6, [sp], #-2402	; 0xfffff69e
 40c:	332e392e 			; <UNDEFINED> instruction: 0x332e392e
 410:	6e76732b 	cdpvs	3, 7, cr7, cr6, cr11, {1}
 414:	31313332 	teqcc	r1, r2, lsr r3
 418:	622f3737 	eorvs	r3, pc, #14417920	; 0xdc0000
 41c:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 420:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 424:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 428:	61652d65 	cmnvs	r5, r5, ror #26
 42c:	6c2f6962 	stcvs	9, cr6, [pc], #-392	; 2ac <__start-0x7d54>
 430:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 434:	5f5f0063 	svcpl	0x005f0063
 438:	5f756e67 	svcpl	0x00756e67
 43c:	69646c75 	stmdbvs	r4!, {r0, r2, r4, r5, r6, sl, fp, sp, lr}^
 440:	646f6d76 	strbtvs	r6, [pc], #-3446	; 448 <__start-0x7bb8>
 444:	6c65685f 	stclvs	8, cr6, [r5], #-380	; 0xfffffe84
 448:	00726570 	rsbseq	r6, r2, r0, ror r5
 44c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 450:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 454:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 458:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 45c:	2f636367 	svccs	0x00636367
 460:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 464:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 468:	622f6d72 	eorvs	r6, pc, #7296	; 0x1c80
 46c:	69626170 	stmdbvs	r2!, {r4, r5, r6, r8, sp, lr}^
 470:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
 474:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
 478:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
 47c:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
 480:	30353130 	eorscc	r3, r5, r0, lsr r1
 484:	20393235 	eorscs	r3, r9, r5, lsr r2
 488:	65727028 	ldrbvs	r7, [r2, #-40]!	; 0xffffffd8
 48c:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 490:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 494:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 498:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 49c:	4f2d2067 	svcmi	0x002d2067
 4a0:	4f2d2032 	svcmi	0x002d2032
 4a4:	4f2d2032 	svcmi	0x002d2032
 4a8:	662d2032 			; <UNDEFINED> instruction: 0x662d2032
 4ac:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 4b0:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 4b4:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 4b8:	2d726f74 	ldclcs	15, cr6, [r2, #-464]!	; 0xfffffe30
 4bc:	6f727473 	svcvs	0x00727473
 4c0:	2d20676e 	stccs	7, cr6, [r0, #-440]!	; 0xfffffe48
 4c4:	61747366 	cmnvs	r4, r6, ror #6
 4c8:	702d6b63 	eorvc	r6, sp, r3, ror #22
 4cc:	65746f72 	ldrbvs	r6, [r4, #-3954]!	; 0xfffff08e
 4d0:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 4d4:	7274732d 	rsbsvc	r7, r4, #-1275068416	; 0xb4000000
 4d8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 4dc:	7562662d 	strbvc	r6, [r2, #-1581]!	; 0xfffff9d3
 4e0:	69646c69 	stmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
 4e4:	6c2d676e 	stcvs	7, cr6, [sp], #-440	; 0xfffffe48
 4e8:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 4ec:	662d2063 	strtvs	r2, [sp], -r3, rrx
 4f0:	732d6f6e 			; <UNDEFINED> instruction: 0x732d6f6e
 4f4:	6b636174 	blvs	18d8acc <__user_program+0x15d8acc>
 4f8:	6f72702d 	svcvs	0x0072702d
 4fc:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 500:	2d20726f 	sfmcs	f7, 4, [r0, #-444]!	; 0xfffffe44
 504:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 374 <__start-0x7c8c>
 508:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 50c:	2d20656e 	cfstr32cs	mvfx6, [r0, #-440]!	; 0xfffffe48
 510:	73697666 	cmnvc	r9, #106954752	; 0x6600000
 514:	6c696269 	sfmvs	f6, 2, [r9], #-420	; 0xfffffe5c
 518:	3d797469 	cfldrdcc	mvd7, [r9, #-420]!	; 0xfffffe5c
 51c:	64646968 	strbtvs	r6, [r4], #-2408	; 0xfffff698
 520:	72006e65 	andvc	r6, r0, #1616	; 0x650
 524:	69616d65 	stmdbvs	r1!, {r0, r2, r5, r6, r8, sl, fp, sp, lr}^
 528:	7265646e 	rsbvc	r6, r5, #1845493760	; 0x6e000000
 52c:	675f5f00 	ldrbvs	r5, [pc, -r0, lsl #30]
 530:	6c5f756e 	cfldr64vs	mvdx7, [pc], {110}	; 0x6e
 534:	6d766964 	ldclvs	9, cr6, [r6, #-400]!	; 0xfffffe70
 538:	685f646f 	ldmdavs	pc, {r0, r1, r2, r3, r5, r6, sl, sp, lr}^	; <UNPREDICTABLE>
 53c:	65706c65 	ldrbvs	r6, [r0, #-3173]!	; 0xfffff39b
 540:	5f5f0072 	svcpl	0x005f0072
 544:	76696475 			; <UNDEFINED> instruction: 0x76696475
 548:	00336964 	eorseq	r6, r3, r4, ror #18
 54c:	746f7571 	strbtvc	r7, [pc], #-1393	; 554 <__start-0x7aac>
 550:	746e6569 	strbtvc	r6, [lr], #-1385	; 0xfffffa97
 554:	67696800 	strbvs	r6, [r9, -r0, lsl #16]!
 558:	5f5f0068 	svcpl	0x005f0068
 55c:	76696475 			; <UNDEFINED> instruction: 0x76696475
 560:	64646f6d 	strbtvs	r6, [r4], #-3949	; 0xfffff093
 564:	55003469 	strpl	r3, [r0, #-1129]	; 0xfffffb97
 568:	79744953 	ldmdbvc	r4!, {r0, r1, r4, r6, r8, fp, lr}^
 56c:	2e006570 	cfrshl64cs	mvdx0, mvdx0, r6
 570:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 574:	2f2e2e2f 	svccs	0x002e2e2f
 578:	2f637273 	svccs	0x00637273
 57c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 580:	6c2f6363 	stcvs	3, cr6, [pc], #-396	; 3fc <__start-0x7c04>
 584:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 588:	632e3263 			; <UNDEFINED> instruction: 0x632e3263
 58c:	75574400 	ldrbvc	r4, [r7, #-1024]	; 0xfffffc00
 590:	6e6f696e 	cdpvs	9, 6, cr6, cr15, cr14, {3}
 594:	49445500 	stmdbmi	r4, {r8, sl, ip, lr}^
 598:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 59c:	6d6f6300 	stclvs	3, cr6, [pc, #-0]	; 5a4 <__start-0x7a5c>
 5a0:	78656c70 	stmdavc	r5!, {r4, r5, r6, sl, fp, sp, lr}^
 5a4:	6f6c6620 	svcvs	0x006c6620
 5a8:	47007461 	strmi	r7, [r0, -r1, ror #8]
 5ac:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
 5b0:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
 5b4:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
 5b8:	30353130 	eorscc	r3, r5, r0, lsr r1
 5bc:	20393235 	eorscs	r3, r9, r5, lsr r2
 5c0:	65727028 	ldrbvs	r7, [r2, #-40]!	; 0xffffffd8
 5c4:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 5c8:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 5cc:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 5d0:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 5d4:	4f2d2067 	svcmi	0x002d2067
 5d8:	4f2d2032 	svcmi	0x002d2032
 5dc:	4f2d2032 	svcmi	0x002d2032
 5e0:	662d2032 			; <UNDEFINED> instruction: 0x662d2032
 5e4:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 5e8:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 5ec:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 5f0:	2d726f74 	ldclcs	15, cr6, [r2, #-464]!	; 0xfffffe30
 5f4:	6f727473 	svcvs	0x00727473
 5f8:	2d20676e 	stccs	7, cr6, [r0, #-440]!	; 0xfffffe48
 5fc:	61747366 	cmnvs	r4, r6, ror #6
 600:	702d6b63 	eorvc	r6, sp, r3, ror #22
 604:	65746f72 	ldrbvs	r6, [r4, #-3954]!	; 0xfffff08e
 608:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 60c:	7274732d 	rsbsvc	r7, r4, #-1275068416	; 0xb4000000
 610:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 614:	7562662d 	strbvc	r6, [r2, #-1581]!	; 0xfffff9d3
 618:	69646c69 	stmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
 61c:	6c2d676e 	stcvs	7, cr6, [sp], #-440	; 0xfffffe48
 620:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 624:	662d2063 	strtvs	r2, [sp], -r3, rrx
 628:	732d6f6e 			; <UNDEFINED> instruction: 0x732d6f6e
 62c:	6b636174 	blvs	18d8c04 <__user_program+0x15d8c04>
 630:	6f72702d 	svcvs	0x0072702d
 634:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 638:	2d20726f 	sfmcs	f7, 4, [r0, #-444]!	; 0xfffffe44
 63c:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 4ac <__start-0x7b54>
 640:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 644:	2d20656e 	cfstr32cs	mvfx6, [r0, #-440]!	; 0xfffffe48
 648:	63786566 	cmnvs	r8, #427819008	; 0x19800000
 64c:	69747065 	ldmdbvs	r4!, {r0, r2, r5, r6, ip, sp, lr}^
 650:	20736e6f 	rsbscs	r6, r3, pc, ror #28
 654:	6976662d 	ldmdbvs	r6!, {r0, r2, r3, r5, r9, sl, sp, lr}^
 658:	69626973 	stmdbvs	r2!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
 65c:	7974696c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, fp, sp, lr}^
 660:	6469683d 	strbtvs	r6, [r9], #-2109	; 0xfffff7c3
 664:	006e6564 	rsbeq	r6, lr, r4, ror #10
 668:	706d6f63 	rsbvc	r6, sp, r3, ror #30
 66c:	2078656c 	rsbscs	r6, r8, ip, ror #10
 670:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
 674:	4400656c 	strmi	r6, [r0], #-1388	; 0xfffffa94
 678:	72747357 	rsbsvc	r7, r4, #1543503873	; 0x5c000001
 67c:	00746375 	rsbseq	r6, r4, r5, ror r3

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
  a0:	00000014 	andeq	r0, r0, r4, lsl r0
  a4:	00000090 	muleq	r0, r0, r0
  a8:	00008374 	andeq	r8, r0, r4, ror r3
  ac:	00000038 	andeq	r0, r0, r8, lsr r0
  b0:	83080e42 	movwhi	r0, #36418	; 0x8e42
  b4:	00018e02 	andeq	r8, r1, r2, lsl #28
  b8:	0000000c 	andeq	r0, r0, ip
  bc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c0:	7c020001 	stcvc	0, cr0, [r2], {1}
  c4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  c8:	00000028 	andeq	r0, r0, r8, lsr #32
  cc:	000000b8 	strheq	r0, [r0], -r8
  d0:	000083ac 	andeq	r8, r0, ip, lsr #7
  d4:	000000e0 	andeq	r0, r0, r0, ror #1
  d8:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
  dc:	86078508 	strhi	r8, [r7], -r8, lsl #10
  e0:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
  e4:	8a038904 	bhi	e24fc <__bss_end+0xd64fc>
  e8:	42018e02 	andmi	r8, r1, #2, 28
  ec:	6a02280e 	bvs	8a12c <__bss_end+0x7e12c>
  f0:	0000200e 	andeq	r2, r0, lr
  f4:	00000040 	andeq	r0, r0, r0, asr #32
  f8:	000000b8 	strheq	r0, [r0], -r8
  fc:	0000848c 	andeq	r8, r0, ip, lsl #9
 100:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
 104:	80100e42 	andshi	r0, r0, r2, asr #28
 108:	82038104 	andhi	r8, r3, #4, 2
 10c:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 110:	0a84280e 	beq	fe10a150 <__user_program+0xfde0a150>
 114:	08860985 	stmeq	r6, {r0, r2, r7, r8, fp}
 118:	06880787 	streq	r0, [r8], r7, lsl #15
 11c:	0e42058e 	cdpeq	5, 4, cr0, cr2, cr14, {4}
 120:	0ed00230 	mrceq	2, 6, r0, cr0, cr0, {1}
 124:	c8ce4228 	stmiagt	lr, {r3, r5, r9, lr}^
 128:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 12c:	c342100e 	movtgt	r1, #8206	; 0x200e
 130:	0ec0c1c2 	acseqdm	f4, f2
 134:	00000000 	andeq	r0, r0, r0
 138:	0000000c 	andeq	r0, r0, ip
 13c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 140:	7c020001 	stcvc	0, cr0, [r2], {1}
 144:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 148:	00000014 	andeq	r0, r0, r4, lsl r0
 14c:	00000138 	andeq	r0, r0, r8, lsr r1
 150:	00008644 	andeq	r8, r0, r4, asr #12
 154:	00000064 	andeq	r0, r0, r4, rrx
 158:	83080e42 	movwhi	r0, #36418	; 0x8e42
 15c:	00018e02 	andeq	r8, r1, r2, lsl #28
 160:	0000000c 	andeq	r0, r0, ip
 164:	00000138 	andeq	r0, r0, r8, lsr r1
 168:	000086a8 	andeq	r8, r0, r8, lsr #13
 16c:	00000024 	andeq	r0, r0, r4, lsr #32
 170:	0000000c 	andeq	r0, r0, ip
 174:	00000138 	andeq	r0, r0, r8, lsr r1
 178:	000086cc 	andeq	r8, r0, ip, asr #13
 17c:	00000024 	andeq	r0, r0, r4, lsr #32
 180:	00000018 	andeq	r0, r0, r8, lsl r0
 184:	00000138 	andeq	r0, r0, r8, lsr r1
 188:	000086f0 	strdeq	r8, [r0], -r0
 18c:	0000004c 	andeq	r0, r0, ip, asr #32
 190:	83100e42 	tsthi	r0, #1056	; 0x420
 194:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 198:	00018e02 	andeq	r8, r1, r2, lsl #28
 19c:	0000000c 	andeq	r0, r0, ip
 1a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1a4:	7c020001 	stcvc	0, cr0, [r2], {1}
 1a8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1ac:	00000014 	andeq	r0, r0, r4, lsl r0
 1b0:	0000019c 	muleq	r0, ip, r1
 1b4:	0000873c 	andeq	r8, r0, ip, lsr r7
 1b8:	0000002c 	andeq	r0, r0, ip, lsr #32
 1bc:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1c0:	00018e02 	andeq	r8, r1, r2, lsl #28
 1c4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c8:	0000019c 	muleq	r0, ip, r1
 1cc:	00008768 	andeq	r8, r0, r8, ror #14
 1d0:	00000128 	andeq	r0, r0, r8, lsr #2
 1d4:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 1d8:	86058506 	strhi	r8, [r5], -r6, lsl #10
 1dc:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 1e0:	00018e02 	andeq	r8, r1, r2, lsl #28
 1e4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e8:	0000019c 	muleq	r0, ip, r1
 1ec:	00008890 	muleq	r0, r0, r8
 1f0:	00000170 	andeq	r0, r0, r0, ror r1
 1f4:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 1f8:	86058506 	strhi	r8, [r5], -r6, lsl #10
 1fc:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 200:	00018e02 	andeq	r8, r1, r2, lsl #28
 204:	0000000c 	andeq	r0, r0, ip
 208:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 20c:	7c020001 	stcvc	0, cr0, [r2], {1}
 210:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 214:	00000018 	andeq	r0, r0, r8, lsl r0
 218:	00000204 	andeq	r0, r0, r4, lsl #4
 21c:	00008a00 	andeq	r8, r0, r0, lsl #20
 220:	000000b8 	strheq	r0, [r0], -r8
 224:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 228:	100e4201 	andne	r4, lr, r1, lsl #4
 22c:	040e5602 	streq	r5, [lr], #-1538	; 0xfffff9fe
 230:	00000018 	andeq	r0, r0, r8, lsl r0
 234:	00000204 	andeq	r0, r0, r4, lsl #4
 238:	00008ab8 			; <UNDEFINED> instruction: 0x00008ab8
 23c:	00000070 	andeq	r0, r0, r0, ror r0
 240:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 244:	100e4201 	andne	r4, lr, r1, lsl #4
 248:	00040e72 	andeq	r0, r4, r2, ror lr
 24c:	0000001c 	andeq	r0, r0, ip, lsl r0
 250:	00000204 	andeq	r0, r0, r4, lsl #4
 254:	00008b28 	andeq	r8, r0, r8, lsr #22
 258:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 25c:	840c0e42 	strhi	r0, [ip], #-3650	; 0xfffff1be
 260:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 264:	180e4201 	stmdane	lr, {r0, r9, lr}
 268:	0c0e7202 	sfmeq	f7, 4, [lr], {2}
 26c:	00000014 	andeq	r0, r0, r4, lsl r0
 270:	00000204 	andeq	r0, r0, r4, lsl #4
 274:	00008c18 	andeq	r8, r0, r8, lsl ip
 278:	00000074 	andeq	r0, r0, r4, ror r0
 27c:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
 280:	00018e02 	andeq	r8, r1, r2, lsl #28
 284:	00000014 	andeq	r0, r0, r4, lsl r0
 288:	00000204 	andeq	r0, r0, r4, lsl #4
 28c:	00008c8c 	andeq	r8, r0, ip, lsl #25
 290:	00000020 	andeq	r0, r0, r0, lsr #32
 294:	83080e42 	movwhi	r0, #36418	; 0x8e42
 298:	00018e02 	andeq	r8, r1, r2, lsl #28
 29c:	00000020 	andeq	r0, r0, r0, lsr #32
 2a0:	00000204 	andeq	r0, r0, r4, lsl #4
 2a4:	00008cac 	andeq	r8, r0, ip, lsr #25
 2a8:	00000098 	muleq	r0, r8, r0
 2ac:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 2b0:	86078508 	strhi	r8, [r7], -r8, lsl #10
 2b4:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 2b8:	8a038904 	bhi	e26d0 <__bss_end+0xd66d0>
 2bc:	00018e02 	andeq	r8, r1, r2, lsl #28
 2c0:	0000000c 	andeq	r0, r0, ip
 2c4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2c8:	7c020001 	stcvc	0, cr0, [r2], {1}
 2cc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2d0:	0000000c 	andeq	r0, r0, ip
 2d4:	000002c0 	andeq	r0, r0, r0, asr #5
 2d8:	00008d44 	andeq	r8, r0, r4, asr #26
 2dc:	00000018 	andeq	r0, r0, r8, lsl r0
 2e0:	0000000c 	andeq	r0, r0, ip
 2e4:	000002c0 	andeq	r0, r0, r0, asr #5
 2e8:	00008d5c 	andeq	r8, r0, ip, asr sp
 2ec:	00000010 	andeq	r0, r0, r0, lsl r0
 2f0:	0000000c 	andeq	r0, r0, ip
 2f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2f8:	7c010001 	stcvc	0, cr0, [r1], {1}
 2fc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 300:	00000014 	andeq	r0, r0, r4, lsl r0
 304:	000002f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 308:	00008db0 			; <UNDEFINED> instruction: 0x00008db0
 30c:	0000003c 	andeq	r0, r0, ip, lsr r0
 310:	0e038e68 	cdpeq	14, 0, cr8, cr3, cr8, {3}
 314:	00000010 	andeq	r0, r0, r0, lsl r0
 318:	0000000c 	andeq	r0, r0, ip
 31c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 320:	7c020001 	stcvc	0, cr0, [r2], {1}
 324:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 328:	0000002c 	andeq	r0, r0, ip, lsr #32
 32c:	00000318 	andeq	r0, r0, r8, lsl r3
 330:	00008dec 	andeq	r8, r0, ip, ror #27
 334:	00000044 	andeq	r0, r0, r4, asr #32
 338:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 33c:	86078508 	strhi	r8, [r7], -r8, lsl #10
 340:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 344:	8a038904 	bhi	e275c <__bss_end+0xd675c>
 348:	5e018e02 	cdppl	14, 0, cr8, cr1, cr2, {0}
 34c:	c8c9cace 	stmiagt	r9, {r1, r2, r3, r6, r7, r9, fp, lr, pc}^
 350:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 354:	0000000e 	andeq	r0, r0, lr
 358:	00000024 	andeq	r0, r0, r4, lsr #32
 35c:	00000318 	andeq	r0, r0, r8, lsl r3
 360:	00008e30 	andeq	r8, r0, r0, lsr lr
 364:	00000040 	andeq	r0, r0, r0, asr #32
 368:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 36c:	86058506 	strhi	r8, [r5], -r6, lsl #10
 370:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 374:	5c018e02 	stcpl	14, cr8, [r1], {2}
 378:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 37c:	000ec4c5 	andeq	ip, lr, r5, asr #9
 380:	0000000c 	andeq	r0, r0, ip
 384:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 388:	7c020001 	stcvc	0, cr0, [r2], {1}
 38c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 390:	00000034 	andeq	r0, r0, r4, lsr r0
 394:	00000380 	andeq	r0, r0, r0, lsl #7
 398:	00008e74 	andeq	r8, r0, r4, ror lr
 39c:	00000178 	andeq	r0, r0, r8, ror r1
 3a0:	83280e44 			; <UNDEFINED> instruction: 0x83280e44
 3a4:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
 3a8:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 3ac:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 3b0:	8b038a04 	blhi	e2bc8 <__bss_end+0xd6bc8>
 3b4:	02018e02 	andeq	r8, r1, #2, 28
 3b8:	cbce0aa6 	blgt	ff382e58 <__user_program+0xff082e58>
 3bc:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 3c0:	c3c4c5c6 	bicgt	ip, r4, #830472192	; 0x31800000
 3c4:	0b42000e 	bleq	1080404 <__user_program+0xd80404>
 3c8:	0000000c 	andeq	r0, r0, ip
 3cc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3d0:	7c020001 	stcvc	0, cr0, [r2], {1}
 3d4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3d8:	0000002c 	andeq	r0, r0, ip, lsr #32
 3dc:	000003c8 	andeq	r0, r0, r8, asr #7
 3e0:	00008fec 	andeq	r8, r0, ip, ror #31
 3e4:	00000120 	andeq	r0, r0, r0, lsr #2
 3e8:	84200e46 	strthi	r0, [r0], #-3654	; 0xfffff1ba
 3ec:	86078508 	strhi	r8, [r7], -r8, lsl #10
 3f0:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 3f4:	8a038904 	bhi	e280c <__bss_end+0xd680c>
 3f8:	02018e02 	andeq	r8, r1, #2, 28
 3fc:	c9cace88 	stmibgt	sl, {r3, r7, r9, sl, fp, lr, pc}^
 400:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 404:	00000ec4 	andeq	r0, r0, r4, asr #29

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000018 	andeq	r0, r0, r8, lsl r0
   4:	00000023 	andeq	r0, r0, r3, lsr #32
   8:	28500001 	ldmdacs	r0, {r0}^
   c:	33000000 	movwcc	r0, #0
  10:	01000000 	mrseq	r0, (UNDEF: 0)
  14:	00005000 	andeq	r5, r0, r0
	...
  20:	00480000 	subeq	r0, r8, r0
  24:	00010000 	andeq	r0, r1, r0
  28:	00004850 	andeq	r4, r0, r0, asr r8
  2c:	0000e000 	andeq	lr, r0, r0
  30:	f3000400 	vshl.u8	d0, d0, d0
  34:	009f5001 	addseq	r5, pc, r1
	...
  40:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
  44:	06000000 	streq	r0, [r0], -r0
  48:	04935200 	ldreq	r5, [r3], #512	; 0x200
  4c:	48049353 	stmdami	r4, {r0, r1, r4, r6, r8, r9, ip, pc}
  50:	7c000000 	stcvc	0, cr0, [r0], {-0}
  54:	06000000 	streq	r0, [r0], -r0
  58:	04935600 	ldreq	r5, [r3], #1536	; 0x600
  5c:	80049357 	andhi	r9, r4, r7, asr r3
  60:	e0000000 	and	r0, r0, r0
  64:	06000000 	streq	r0, [r0], -r0
  68:	04935600 	ldreq	r5, [r3], #1536	; 0x600
  6c:	00049357 	andeq	r9, r4, r7, asr r3
  70:	00000000 	andeq	r0, r0, r0
  74:	10000000 	andne	r0, r0, r0
  78:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
  7c:	02000000 	andeq	r0, r0, #0
  80:	909f3000 	addsls	r3, pc, r0
  84:	9c000000 	stcls	0, cr0, [r0], {-0}
  88:	01000000 	mrseq	r0, (UNDEF: 0)
  8c:	00b05800 	adcseq	r5, r0, r0, lsl #16
  90:	00b80000 	adcseq	r0, r8, r0
  94:	00010000 	andeq	r0, r1, r0
  98:	0000b858 	andeq	fp, r0, r8, asr r8
  9c:	0000c400 	andeq	ip, r0, r0, lsl #8
  a0:	78000300 	stmdavc	r0, {r8, r9}
  a4:	00009f7f 	andeq	r9, r0, pc, ror pc
  a8:	00000000 	andeq	r0, r0, r0
  ac:	00100000 	andseq	r0, r0, r0
  b0:	00380000 	eorseq	r0, r8, r0
  b4:	00030000 	andeq	r0, r3, r0
  b8:	389f5791 	ldmcc	pc, {r0, r4, r7, r8, r9, sl, ip, lr}	; <UNPREDICTABLE>
  bc:	64000000 	strvs	r0, [r0], #-0
  c0:	01000000 	mrseq	r0, (UNDEF: 0)
  c4:	00645400 	rsbeq	r5, r4, r0, lsl #8
  c8:	009c0000 	addseq	r0, ip, r0
  cc:	00030000 	andeq	r0, r3, r0
  d0:	9c9f0174 	ldflss	f0, [pc], {116}	; 0x74
  d4:	b0000000 	andlt	r0, r0, r0
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00b05400 	adcseq	r5, r0, r0, lsl #8
  e0:	00c40000 	sbceq	r0, r4, r0
  e4:	00030000 	andeq	r0, r3, r0
  e8:	c49f0174 	ldrgt	r0, [pc], #372	; f0 <__start-0x7f10>
  ec:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
  f0:	01000000 	mrseq	r0, (UNDEF: 0)
  f4:	00c85400 	sbceq	r5, r8, r0, lsl #8
  f8:	00cc0000 	sbceq	r0, ip, r0
  fc:	00030000 	andeq	r0, r3, r0
 100:	cc9f7f74 	ldcgt	15, cr7, [pc], {116}	; 0x74
 104:	e0000000 	and	r0, r0, r0
 108:	01000000 	mrseq	r0, (UNDEF: 0)
 10c:	00005400 	andeq	r5, r0, r0, lsl #8
 110:	00000000 	andeq	r0, r0, r0
 114:	00e00000 	rsceq	r0, r0, r0
 118:	01080000 	mrseq	r0, (UNDEF: 8)
 11c:	00020000 	andeq	r0, r2, r0
 120:	01087091 	swpeq	r7, r1, [r8]
 124:	011c0000 	tsteq	ip, r0
 128:	00010000 	andeq	r0, r1, r0
 12c:	00011c54 	andeq	r1, r1, r4, asr ip
 130:	00027c00 	andeq	r7, r2, r0, lsl #24
 134:	74000300 	strvc	r0, [r0], #-768	; 0xfffffd00
 138:	027c9f01 	rsbseq	r9, ip, #1, 30
 13c:	02880000 	addeq	r0, r8, #0
 140:	00010000 	andeq	r0, r1, r0
 144:	00000054 	andeq	r0, r0, r4, asr r0
 148:	00000000 	andeq	r0, r0, r0
 14c:	0001e800 	andeq	lr, r1, r0, lsl #16
 150:	0001f400 	andeq	pc, r1, r0, lsl #8
 154:	73000200 	movwvc	r0, #512	; 0x200
 158:	0001f400 	andeq	pc, r1, r0, lsl #8
 15c:	0001f700 	andeq	pc, r1, r0, lsl #14
 160:	52000100 	andpl	r0, r0, #0, 2
	...
 16c:	00000208 	andeq	r0, r0, r8, lsl #4
 170:	00000214 	andeq	r0, r0, r4, lsl r2
 174:	00730002 	rsbseq	r0, r3, r2
 178:	00000214 	andeq	r0, r0, r4, lsl r2
 17c:	00000217 	andeq	r0, r0, r7, lsl r2
 180:	00520001 	subseq	r0, r2, r1
 184:	00000000 	andeq	r0, r0, r0
 188:	84000000 	strhi	r0, [r0], #-0
 18c:	bc000001 	stclt	0, cr0, [r0], {1}
 190:	01000001 	tsteq	r0, r1
 194:	00005500 	andeq	r5, r0, r0, lsl #10
 198:	00000000 	andeq	r0, r0, r0
 19c:	01c80000 	biceq	r0, r8, r0
 1a0:	01d40000 	bicseq	r0, r4, r0
 1a4:	00020000 	andeq	r0, r2, r0
 1a8:	01d40073 	bicseq	r0, r4, r3, ror r0
 1ac:	01d70000 	bicseq	r0, r7, r0
 1b0:	00010000 	andeq	r0, r1, r0
 1b4:	00000052 	andeq	r0, r0, r2, asr r0
 1b8:	00000000 	andeq	r0, r0, r0
 1bc:	00022c00 	andeq	r2, r2, r0, lsl #24
 1c0:	00024000 	andeq	r4, r2, r0
 1c4:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
 1c8:	00000240 	andeq	r0, r0, r0, asr #4
 1cc:	0000024c 	andeq	r0, r0, ip, asr #4
 1d0:	7f750003 	svcvc	0x00750003
 1d4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 1d8:	00000000 	andeq	r0, r0, r0
 1dc:	00025800 	andeq	r5, r2, r0, lsl #16
 1e0:	00025f00 	andeq	r5, r2, r0, lsl #30
 1e4:	73000200 	movwvc	r0, #512	; 0x200
	...
 1f0:	0000b000 	andeq	fp, r0, r0
 1f4:	0000c800 	andeq	ip, r0, r0, lsl #16
 1f8:	30000200 	andcc	r0, r0, r0, lsl #4
 1fc:	0000c89f 	muleq	r0, pc, r8	; <UNPREDICTABLE>
 200:	0000d700 	andeq	sp, r0, r0, lsl #14
 204:	52000100 	andpl	r0, r0, #0, 2
 208:	000000d8 	ldrdeq	r0, [r0], -r8
 20c:	000000dc 	ldrdeq	r0, [r0], -ip
 210:	9f310002 	svcls	0x00310002
 214:	000000dc 	ldrdeq	r0, [r0], -ip
 218:	000000f8 	strdeq	r0, [r0], -r8
 21c:	00520001 	subseq	r0, r2, r1
	...
 228:	14000000 	strne	r0, [r0], #-0
 22c:	01000000 	mrseq	r0, (UNDEF: 0)
 230:	00145000 	andseq	r5, r4, r0
 234:	002c0000 	eoreq	r0, ip, r0
 238:	00040000 	andeq	r0, r4, r0
 23c:	9f5001f3 	svcls	0x005001f3
	...
 248:	0000002c 	andeq	r0, r0, ip, lsr #32
 24c:	00000048 	andeq	r0, r0, r8, asr #32
 250:	48500001 	ldmdami	r0, {r0}^
 254:	54000000 	strpl	r0, [r0], #-0
 258:	01000001 	tsteq	r0, r1
 25c:	00005600 	andeq	r5, r0, r0, lsl #12
 260:	00000000 	andeq	r0, r0, r0
 264:	002c0000 	eoreq	r0, ip, r0
 268:	004c0000 	subeq	r0, ip, r0
 26c:	00010000 	andeq	r0, r1, r0
 270:	00004c51 	andeq	r4, r0, r1, asr ip
 274:	00015400 	andeq	r5, r1, r0, lsl #8
 278:	f3000400 	vshl.u8	d0, d0, d0
 27c:	009f5101 	addseq	r5, pc, r1, lsl #2
 280:	00000000 	andeq	r0, r0, r0
 284:	2c000000 	stccs	0, cr0, [r0], {-0}
 288:	50000000 	andpl	r0, r0, r0
 28c:	01000000 	mrseq	r0, (UNDEF: 0)
 290:	00505200 	subseq	r5, r0, r0, lsl #4
 294:	01540000 	cmpeq	r4, r0
 298:	00040000 	andeq	r0, r4, r0
 29c:	9f5201f3 	svcls	0x005201f3
	...
 2a8:	0000003c 	andeq	r0, r0, ip, lsr r0
 2ac:	00000078 	andeq	r0, r0, r8, ror r0
 2b0:	9f300002 	svcls	0x00300002
 2b4:	00000098 	muleq	r0, r8, r0
 2b8:	000000b4 	strheq	r0, [r0], -r4
 2bc:	9f400002 	svcls	0x00400002
 2c0:	000000b4 	strheq	r0, [r0], -r4
 2c4:	000000ec 	andeq	r0, r0, ip, ror #1
 2c8:	00540001 	subseq	r0, r4, r1
 2cc:	00000000 	andeq	r0, r0, r0
 2d0:	3c000000 	stccc	0, cr0, [r0], {-0}
 2d4:	2c000000 	stccs	0, cr0, [r0], {-0}
 2d8:	02000001 	andeq	r0, r0, #1
 2dc:	009f3000 	addseq	r3, pc, r0
 2e0:	00000000 	andeq	r0, r0, r0
 2e4:	54000000 	strpl	r0, [r0], #-0
 2e8:	70000001 	andvc	r0, r0, r1
 2ec:	01000001 	tsteq	r0, r1
 2f0:	01705000 	cmneq	r0, r0
 2f4:	02240000 	eoreq	r0, r4, #0
 2f8:	00010000 	andeq	r0, r1, r0
 2fc:	00022455 	andeq	r2, r2, r5, asr r4
 300:	0002c400 	andeq	ip, r2, r0, lsl #8
 304:	f3000400 	vshl.u8	d0, d0, d0
 308:	009f5001 	addseq	r5, pc, r1
 30c:	00000000 	andeq	r0, r0, r0
 310:	54000000 	strpl	r0, [r0], #-0
 314:	74000001 	strvc	r0, [r0], #-1
 318:	01000001 	tsteq	r0, r1
 31c:	01745100 	cmneq	r4, r0, lsl #2
 320:	02c40000 	sbceq	r0, r4, #0
 324:	00040000 	andeq	r0, r4, r0
 328:	9f5101f3 	svcls	0x005101f3
	...
 334:	00000154 	andeq	r0, r0, r4, asr r1
 338:	00000178 	andeq	r0, r0, r8, ror r1
 33c:	78520001 	ldmdavc	r2, {r0}^
 340:	c4000001 	strgt	r0, [r0], #-1
 344:	04000002 	streq	r0, [r0], #-2
 348:	5201f300 	andpl	pc, r1, #0, 6
 34c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 350:	00000000 	andeq	r0, r0, r0
 354:	00016400 	andeq	r6, r1, r0, lsl #8
 358:	0001a800 	andeq	sl, r1, r0, lsl #16
 35c:	30000200 	andcc	r0, r0, r0, lsl #4
 360:	0001a89f 	muleq	r1, pc, r8	; <UNPREDICTABLE>
 364:	00027000 	andeq	r7, r2, r0
 368:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
 374:	00000164 	andeq	r0, r0, r4, ror #2
 378:	0000029c 	muleq	r0, ip, r2
 37c:	9f300002 	svcls	0x00300002
	...
 38c:	00000024 	andeq	r0, r0, r4, lsr #32
 390:	24500001 	ldrbcs	r0, [r0], #-1
 394:	b8000000 	stmdalt	r0, {}	; <UNPREDICTABLE>
 398:	04000000 	streq	r0, [r0], #-0
 39c:	5001f300 	andpl	pc, r1, r0, lsl #6
 3a0:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 3a4:	00000000 	andeq	r0, r0, r0
 3a8:	00009800 	andeq	r9, r0, r0, lsl #16
 3ac:	0000af00 	andeq	sl, r0, r0, lsl #30
 3b0:	7d001200 	sfmvc	f1, 4, [r0, #-0]
 3b4:	08019400 	stmdaeq	r1, {sl, ip, pc}
 3b8:	24381aff 	ldrtcs	r1, [r8], #-2815	; 0xfffff501
 3bc:	01946991 			; <UNDEFINED> instruction: 0x01946991
 3c0:	221aff08 	andscs	pc, sl, #8, 30
 3c4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 3c8:	00000000 	andeq	r0, r0, r0
 3cc:	00003c00 	andeq	r3, r0, r0, lsl #24
 3d0:	00004800 	andeq	r4, r0, r0, lsl #16
 3d4:	50000100 	andpl	r0, r0, r0, lsl #2
 3d8:	00000054 	andeq	r0, r0, r4, asr r0
 3dc:	00000058 	andeq	r0, r0, r8, asr r0
 3e0:	84500001 	ldrbhi	r0, [r0], #-1
 3e4:	90000000 	andls	r0, r0, r0
 3e8:	01000000 	mrseq	r0, (UNDEF: 0)
 3ec:	00005000 	andeq	r5, r0, r0
 3f0:	00000000 	andeq	r0, r0, r0
 3f4:	00d80000 	sbcseq	r0, r8, r0
 3f8:	00e40000 	rsceq	r0, r4, r0
 3fc:	00010000 	andeq	r0, r1, r0
 400:	0000fc50 	andeq	pc, r0, r0, asr ip	; <UNPREDICTABLE>
 404:	00010800 	andeq	r0, r1, r0, lsl #16
 408:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 414:	00000110 	andeq	r0, r0, r0, lsl r1
 418:	00000124 	andeq	r0, r0, r4, lsr #2
 41c:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 420:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 424:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 428:	08019469 	stmdaeq	r1, {r0, r3, r5, r6, sl, ip, pc}
 42c:	9f221aff 	svcls	0x00221aff
 430:	00000124 	andeq	r0, r0, r4, lsr #2
 434:	00000128 	andeq	r0, r0, r8, lsr #2
 438:	68910012 	ldmvs	r1, {r1, r4}
 43c:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 440:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 444:	08019469 	stmdaeq	r1, {r0, r3, r5, r6, sl, ip, pc}
 448:	9f221aff 	svcls	0x00221aff
	...
 454:	00000168 	andeq	r0, r0, r8, ror #2
 458:	00000183 	andeq	r0, r0, r3, lsl #3
 45c:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 460:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 464:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 468:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 46c:	9f221aff 	svcls	0x00221aff
 470:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
 474:	000001cb 	andeq	r0, r0, fp, asr #3
 478:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 47c:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 480:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 484:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 488:	9f221aff 	svcls	0x00221aff
 48c:	000001f4 	strdeq	r0, [r0], -r4
 490:	0000020f 	andeq	r0, r0, pc, lsl #4
 494:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 498:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 49c:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 4a0:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 4a4:	9f221aff 	svcls	0x00221aff
	...
 4b0:	00000154 	andeq	r0, r0, r4, asr r1
 4b4:	00000160 	andeq	r0, r0, r0, ror #2
 4b8:	00500001 	subseq	r0, r0, r1
 4bc:	00000000 	andeq	r0, r0, r0
 4c0:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 4c4:	54000002 	strpl	r0, [r0], #-2
 4c8:	01000002 	tsteq	r0, r2
 4cc:	02545000 	subseq	r5, r4, #0
 4d0:	02580000 	subseq	r0, r8, #0
 4d4:	00040000 	andeq	r0, r4, r0
 4d8:	9f5001f3 	svcls	0x005001f3
 4dc:	00000258 	andeq	r0, r0, r8, asr r2
 4e0:	0000025c 	andeq	r0, r0, ip, asr r2
 4e4:	5c500001 	mrrcpl	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
 4e8:	60000002 	andvs	r0, r0, r2
 4ec:	04000002 	streq	r0, [r0], #-2
 4f0:	5001f300 	andpl	pc, r1, r0, lsl #6
 4f4:	0002609f 	muleq	r2, pc, r0	; <UNPREDICTABLE>
 4f8:	00026400 	andeq	r6, r2, r0, lsl #8
 4fc:	50000100 	andpl	r0, r0, r0, lsl #2
 500:	00000264 	andeq	r0, r0, r4, ror #4
 504:	00000268 	andeq	r0, r0, r8, ror #4
 508:	01f30004 	mvnseq	r0, r4
 50c:	02689f50 	rsbeq	r9, r8, #80, 30	; 0x140
 510:	026c0000 	rsbeq	r0, ip, #0
 514:	00010000 	andeq	r0, r1, r0
 518:	00026c50 	andeq	r6, r2, r0, asr ip
 51c:	00028400 	andeq	r8, r2, r0, lsl #8
 520:	f3000400 	vshl.u8	d0, d0, d0
 524:	849f5001 	ldrhi	r5, [pc], #1	; 52c <__start-0x7ad4>
 528:	88000002 	stmdahi	r0, {r1}
 52c:	01000002 	tsteq	r0, r2
 530:	02885000 	addeq	r5, r8, #0
 534:	028c0000 	addeq	r0, ip, #0
 538:	00040000 	andeq	r0, r4, r0
 53c:	9f5001f3 	svcls	0x005001f3
	...
 548:	00000234 	andeq	r0, r0, r4, lsr r2
 54c:	00000258 	andeq	r0, r0, r8, asr r2
 550:	830a0004 	movwhi	r0, #40964	; 0xa004
 554:	02589f40 	subseq	r9, r8, #64, 30	; 0x100
 558:	02600000 	rsbeq	r0, r0, #0
 55c:	00040000 	andeq	r0, r4, r0
 560:	9f60830a 	svcls	0x0060830a
 564:	00000260 	andeq	r0, r0, r0, ror #4
 568:	00000268 	andeq	r0, r0, r8, ror #4
 56c:	830a0004 	movwhi	r0, #40964	; 0xa004
 570:	02689f70 	rsbeq	r9, r8, #112, 30	; 0x1c0
 574:	026c0000 	rsbeq	r0, ip, #0
 578:	00040000 	andeq	r0, r4, r0
 57c:	9f40830a 	svcls	0x0040830a
 580:	0000026c 	andeq	r0, r0, ip, ror #4
 584:	0000026f 	andeq	r0, r0, pc, ror #4
 588:	84500001 	ldrbhi	r0, [r0], #-1
 58c:	8c000002 	stchi	0, cr0, [r0], {2}
 590:	04000002 	streq	r0, [r0], #-2
 594:	40830a00 	addmi	r0, r3, r0, lsl #20
 598:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 59c:	00000000 	andeq	r0, r0, r0
 5a0:	00029c00 	andeq	r9, r2, r0, lsl #24
 5a4:	0002a700 	andeq	sl, r2, r0, lsl #14
 5a8:	51000100 	mrspl	r0, (UNDEF: 16)
	...
 5b4:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 5b8:	000002cc 	andeq	r0, r0, ip, asr #5
 5bc:	ff0c0006 			; <UNDEFINED> instruction: 0xff0c0006
 5c0:	9f7fffff 	svcls	0x007fffff
 5c4:	000002cc 	andeq	r0, r0, ip, asr #5
 5c8:	000002e8 	andeq	r0, r0, r8, ror #5
 5cc:	e8570001 	ldmda	r7, {r0}^
 5d0:	ec000002 	stc	0, cr0, [r0], {2}
 5d4:	01000002 	tsteq	r0, r2
 5d8:	02ec5000 	rsceq	r5, ip, #0
 5dc:	02f80000 	rscseq	r0, r8, #0
 5e0:	00010000 	andeq	r0, r1, r0
 5e4:	0002f854 	andeq	pc, r2, r4, asr r8	; <UNPREDICTABLE>
 5e8:	00034400 	andeq	r4, r3, r0, lsl #8
 5ec:	57000100 	strpl	r0, [r0, -r0, lsl #2]
	...
 5f8:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 5fc:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 600:	c1110005 	tstgt	r1, r5
 604:	cc9f42fb 	lfmgt	f4, 4, [pc], {251}	; 0xfb
 608:	00000002 	andeq	r0, r0, r2
 60c:	01000003 	tsteq	r0, r3
 610:	03005600 	movweq	r5, #1536	; 0x600
 614:	03100000 	tsteq	r0, #0
 618:	00010000 	andeq	r0, r1, r0
 61c:	00031054 	andeq	r1, r3, r4, asr r0
 620:	00034400 	andeq	r4, r3, r0, lsl #8
 624:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
 630:	000002e0 	andeq	r0, r0, r0, ror #5
 634:	000002ec 	andeq	r0, r0, ip, ror #5
 638:	ec500001 	mrrc	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
 63c:	1c000002 	stcne	0, cr0, [r0], {2}
 640:	01000003 	tsteq	r0, r3
 644:	00005400 	andeq	r5, r0, r0, lsl #8
 648:	00000000 	andeq	r0, r0, r0
 64c:	02cc0000 	sbceq	r0, ip, #0
 650:	02d40000 	sbcseq	r0, r4, #0
 654:	00020000 	andeq	r0, r2, r0
 658:	02d49f30 	sbcseq	r9, r4, #48, 30	; 0xc0
 65c:	03100000 	tsteq	r0, #0
 660:	00070000 	andeq	r0, r7, r0
 664:	7503e80a 	strvc	lr, [r3, #-2058]	; 0xfffff7f6
 668:	109f1c00 	addsne	r1, pc, r0, lsl #24
 66c:	14000003 	strne	r0, [r0], #-3
 670:	07000003 	streq	r0, [r0, -r3]
 674:	03e90a00 	mvneq	r0, #0, 20
 678:	9f1c0075 	svcls	0x001c0075
 67c:	00000314 	andeq	r0, r0, r4, lsl r3
 680:	00000344 	andeq	r0, r0, r4, asr #6
 684:	e80a0007 	stmda	sl, {r0, r1, r2}
 688:	1c007503 	cfstr32ne	mvfx7, [r0], {3}
 68c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 698:	00000c00 	andeq	r0, r0, r0, lsl #24
 69c:	51000100 	mrspl	r0, (UNDEF: 16)
 6a0:	0000000c 	andeq	r0, r0, ip
 6a4:	00000018 	andeq	r0, r0, r8, lsl r0
 6a8:	01f30004 	mvnseq	r0, r4
 6ac:	00009f51 	andeq	r9, r0, r1, asr pc
	...
 6b8:	00100000 	andseq	r0, r0, r0
 6bc:	00010000 	andeq	r0, r1, r0
 6c0:	00001052 	andeq	r1, r0, r2, asr r0
 6c4:	00001800 	andeq	r1, r0, r0, lsl #16
 6c8:	f3000400 	vshl.u8	d0, d0, d0
 6cc:	009f5201 	addseq	r5, pc, r1, lsl #4
 6d0:	00000000 	andeq	r0, r0, r0
 6d4:	04000000 	streq	r0, [r0], #-0
 6d8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 6dc:	01000000 	mrseq	r0, (UNDEF: 0)
 6e0:	00105300 	andseq	r5, r0, r0, lsl #6
 6e4:	00180000 	andseq	r0, r8, r0
 6e8:	00010000 	andeq	r0, r1, r0
 6ec:	00000052 	andeq	r0, r0, r2, asr r0
 6f0:	00000000 	andeq	r0, r0, r0
 6f4:	00001800 	andeq	r1, r0, r0, lsl #16
 6f8:	00001c00 	andeq	r1, r0, r0, lsl #24
 6fc:	50000100 	andpl	r0, r0, r0, lsl #2
 700:	0000001c 	andeq	r0, r0, ip, lsl r0
 704:	00000028 	andeq	r0, r0, r8, lsr #32
 708:	01f30004 	mvnseq	r0, r4
 70c:	00009f50 	andeq	r9, r0, r0, asr pc
 710:	00000000 	andeq	r0, r0, r0
 714:	00180000 	andseq	r0, r8, r0
 718:	00200000 	eoreq	r0, r0, r0
 71c:	00010000 	andeq	r0, r1, r0
 720:	00002051 	andeq	r2, r0, r1, asr r0
 724:	00002800 	andeq	r2, r0, r0, lsl #16
 728:	f3000400 	vshl.u8	d0, d0, d0
 72c:	009f5101 	addseq	r5, pc, r1, lsl #2
	...
 738:	1b000000 	blne	740 <__start-0x78c0>
 73c:	06000000 	streq	r0, [r0], -r0
 740:	04935000 	ldreq	r5, [r3], #0
 744:	1b049351 	blne	125490 <__svc_stack_top+0x9490>
 748:	44000000 	strmi	r0, [r0], #-0
 74c:	06000000 	streq	r0, [r0], -r0
 750:	f503f300 			; <UNDEFINED> instruction: 0xf503f300
 754:	009f2500 	addseq	r2, pc, r0, lsl #10
	...
 760:	1b000000 	blne	768 <__start-0x7898>
 764:	06000000 	streq	r0, [r0], -r0
 768:	04935200 	ldreq	r5, [r3], #512	; 0x200
 76c:	1b049353 	blne	1254c0 <__svc_stack_top+0x94c0>
 770:	44000000 	strmi	r0, [r0], #-0
 774:	06000000 	streq	r0, [r0], -r0
 778:	f503f300 			; <UNDEFINED> instruction: 0xf503f300
 77c:	009f2502 	addseq	r2, pc, r2, lsl #10
 780:	00000000 	andeq	r0, r0, r0
 784:	44000000 	strmi	r0, [r0], #-0
 788:	5f000000 	svcpl	0x00000000
 78c:	06000000 	streq	r0, [r0], -r0
 790:	04935000 	ldreq	r5, [r3], #0
 794:	5f049351 	svcpl	0x00049351
 798:	84000000 	strhi	r0, [r0], #-0
 79c:	06000000 	streq	r0, [r0], -r0
 7a0:	f503f300 			; <UNDEFINED> instruction: 0xf503f300
 7a4:	009f2500 	addseq	r2, pc, r0, lsl #10
 7a8:	00000000 	andeq	r0, r0, r0
 7ac:	44000000 	strmi	r0, [r0], #-0
 7b0:	5f000000 	svcpl	0x00000000
 7b4:	06000000 	streq	r0, [r0], -r0
 7b8:	04935200 	ldreq	r5, [r3], #512	; 0x200
 7bc:	5f049353 	svcpl	0x00049353
 7c0:	84000000 	strhi	r0, [r0], #-0
 7c4:	06000000 	streq	r0, [r0], -r0
 7c8:	f503f300 			; <UNDEFINED> instruction: 0xf503f300
 7cc:	009f2502 	addseq	r2, pc, r2, lsl #10
	...
 7d8:	44000000 	strmi	r0, [r0], #-0
 7dc:	06000000 	streq	r0, [r0], -r0
 7e0:	04935000 	ldreq	r5, [r3], #0
 7e4:	44049351 	strmi	r9, [r4], #-849	; 0xfffffcaf
 7e8:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
 7ec:	06000001 	streq	r0, [r0], -r1
 7f0:	f503f300 			; <UNDEFINED> instruction: 0xf503f300
 7f4:	589f2500 	ldmpl	pc, {r8, sl, sp}	; <UNPREDICTABLE>
 7f8:	78000001 	stmdavc	r0, {r0}
 7fc:	06000001 	streq	r0, [r0], -r1
 800:	04935000 	ldreq	r5, [r3], #0
 804:	00049351 	andeq	r9, r4, r1, asr r3
	...
 810:	34000000 	strcc	r0, [r0], #-0
 814:	06000000 	streq	r0, [r0], -r0
 818:	04935200 	ldreq	r5, [r3], #512	; 0x200
 81c:	34049353 	strcc	r9, [r4], #-851	; 0xfffffcad
 820:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
 824:	06000001 	streq	r0, [r0], -r1
 828:	f503f300 			; <UNDEFINED> instruction: 0xf503f300
 82c:	589f2502 	ldmpl	pc, {r1, r8, sl, sp}	; <UNPREDICTABLE>
 830:	78000001 	stmdavc	r0, {r0}
 834:	06000001 	streq	r0, [r0], -r1
 838:	04935200 	ldreq	r5, [r3], #512	; 0x200
 83c:	00049353 	andeq	r9, r4, r3, asr r3
	...
 848:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 84c:	02000000 	andeq	r0, r0, #0
 850:	189f3000 	ldmne	pc, {ip, sp}	; <UNPREDICTABLE>
 854:	54000000 	strpl	r0, [r0], #-0
 858:	01000001 	tsteq	r0, r1
 85c:	01585a00 	cmpeq	r8, r0, lsl #20
 860:	01680000 	cmneq	r8, r0
 864:	00010000 	andeq	r0, r1, r0
 868:	0001685a 	andeq	r6, r1, sl, asr r8
 86c:	00017800 	andeq	r7, r1, r0, lsl #16
 870:	09000300 	stmdbeq	r0, {r8, r9}
 874:	00009fff 	strdeq	r9, [r0], -pc	; <UNPREDICTABLE>
 878:	00000000 	andeq	r0, r0, r0
 87c:	012c0000 			; <UNDEFINED> instruction: 0x012c0000
 880:	01380000 	teqeq	r8, r0
 884:	00060000 	andeq	r0, r6, r0
 888:	53049352 	movwpl	r9, #17234	; 0x4352
 88c:	01380493 	teqeq	r8, r3	; <illegal shifter operand>
 890:	01440000 	mrseq	r0, (UNDEF: 68)
 894:	000d0000 	andeq	r0, sp, r0
 898:	1f2500f5 	svcne	0x002500f5
 89c:	272502f5 			; <UNDEFINED> instruction: 0x272502f5
 8a0:	222500f5 	eorcs	r0, r5, #245	; 0xf5
 8a4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 8a8:	00000000 	andeq	r0, r0, r0
 8ac:	00002800 	andeq	r2, r0, r0, lsl #16
 8b0:	00015800 	andeq	r5, r1, r0, lsl #16
 8b4:	30000200 	andcc	r0, r0, r0, lsl #4
 8b8:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 8bc:	00000000 	andeq	r0, r0, r0
 8c0:	00002800 	andeq	r2, r0, r0, lsl #16
 8c4:	00009000 	andeq	r9, r0, r0
 8c8:	58000600 	stmdapl	r0, {r9, sl}
 8cc:	93590493 	cmpls	r9, #-1828716544	; 0x93000000
 8d0:	00000004 	andeq	r0, r0, r4
 8d4:	00000000 	andeq	r0, r0, r0
 8d8:	00002800 	andeq	r2, r0, r0, lsl #16
 8dc:	00009400 	andeq	r9, r0, r0, lsl #8
 8e0:	54000600 	strpl	r0, [r0], #-1536	; 0xfffffa00
 8e4:	93550493 	cmpls	r5, #-1828716544	; 0x93000000
 8e8:	00000004 	andeq	r0, r0, r4
 8ec:	00000000 	andeq	r0, r0, r0
 8f0:	00002800 	andeq	r2, r0, r0, lsl #16
 8f4:	0000a400 	andeq	sl, r0, r0, lsl #8
 8f8:	9e000a00 	vmlals.f32	s0, s0, s0
 8fc:	00000008 	andeq	r0, r0, r8
 900:	00000000 	andeq	r0, r0, r0
 904:	0000a400 	andeq	sl, r0, r0, lsl #8
 908:	00010000 	andeq	r0, r1, r0
 90c:	52000600 	andpl	r0, r0, #0, 12
 910:	93530493 	cmpls	r3, #-1828716544	; 0x93000000
 914:	00000004 	andeq	r0, r0, r4
 918:	00000000 	andeq	r0, r0, r0
 91c:	00002800 	andeq	r2, r0, r0, lsl #16
 920:	00009400 	andeq	r9, r0, r0, lsl #8
 924:	54000600 	strpl	r0, [r0], #-1536	; 0xfffffa00
 928:	93550493 	cmpls	r5, #-1828716544	; 0x93000000
 92c:	0000a004 	andeq	sl, r0, r4
 930:	0000bc00 	andeq	fp, r0, r0, lsl #24
 934:	54000600 	strpl	r0, [r0], #-1536	; 0xfffffa00
 938:	93550493 	cmpls	r5, #-1828716544	; 0x93000000
 93c:	0000d004 	andeq	sp, r0, r4
 940:	0000e800 	andeq	lr, r0, r0, lsl #16
 944:	54000600 	strpl	r0, [r0], #-1536	; 0xfffffa00
 948:	93550493 	cmpls	r5, #-1828716544	; 0x93000000
 94c:	0000ec04 	andeq	lr, r0, r4, lsl #24
 950:	00010c00 	andeq	r0, r1, r0, lsl #24
 954:	54000600 	strpl	r0, [r0], #-1536	; 0xfffffa00
 958:	93550493 	cmpls	r5, #-1828716544	; 0x93000000
 95c:	00000004 	andeq	r0, r0, r4
 960:	00000000 	andeq	r0, r0, r0
 964:	00002800 	andeq	r2, r0, r0, lsl #16
 968:	00007800 	andeq	r7, r0, r0, lsl #16
 96c:	58000600 	stmdapl	r0, {r9, sl}
 970:	93590493 	cmpls	r9, #-1828716544	; 0x93000000
 974:	00007804 	andeq	r7, r0, r4, lsl #16
 978:	00011c00 	andeq	r1, r1, r0, lsl #24
 97c:	56000600 	strpl	r0, [r0], -r0, lsl #12
 980:	93570493 	cmpls	r7, #-1828716544	; 0x93000000
 984:	00000004 	andeq	r0, r0, r4
 988:	00000000 	andeq	r0, r0, r0
 98c:	00005000 	andeq	r5, r0, r0
 990:	00005400 	andeq	r5, r0, r0, lsl #8
 994:	50000100 	andpl	r0, r0, r0, lsl #2
 998:	00000054 	andeq	r0, r0, r4, asr r0
 99c:	0000012c 	andeq	r0, r0, ip, lsr #2
 9a0:	005b0001 	subseq	r0, fp, r1
 9a4:	00000000 	andeq	r0, r0, r0
 9a8:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
 9ac:	5c000000 	stcpl	0, cr0, [r0], {-0}
 9b0:	01000000 	mrseq	r0, (UNDEF: 0)
 9b4:	00005000 	andeq	r5, r0, r0
 9b8:	00000000 	andeq	r0, r0, r0
 9bc:	00b40000 	adcseq	r0, r4, r0
 9c0:	00d00000 	sbcseq	r0, r0, r0
 9c4:	00010000 	andeq	r0, r1, r0
 9c8:	0000d050 	andeq	sp, r0, r0, asr r0
 9cc:	0000d400 	andeq	sp, r0, r0, lsl #8
 9d0:	70000300 	andvc	r0, r0, r0, lsl #6
 9d4:	00d49f7f 	sbcseq	r9, r4, pc, ror pc
 9d8:	00ec0000 	rsceq	r0, ip, r0
 9dc:	00010000 	andeq	r0, r1, r0
 9e0:	0000ec50 	andeq	lr, r0, r0, asr ip
 9e4:	0000f000 	andeq	pc, r0, r0
 9e8:	70000300 	andvc	r0, r0, r0, lsl #6
 9ec:	00f09f7f 	rscseq	r9, r0, pc, ror pc
 9f0:	00fc0000 	rscseq	r0, ip, r0
 9f4:	00010000 	andeq	r0, r1, r0
 9f8:	00000050 	andeq	r0, r0, r0, asr r0
 9fc:	00000000 	andeq	r0, r0, r0
 a00:	00005c00 	andeq	r5, r0, r0, lsl #24
 a04:	0000b800 	andeq	fp, r0, r0, lsl #16
 a08:	50000100 	andpl	r0, r0, r0, lsl #2
 a0c:	000000b8 	strheq	r0, [r0], -r8
 a10:	0000012c 	andeq	r0, r0, ip, lsr #2
 a14:	00510001 	subseq	r0, r1, r1
	...
 a20:	20000000 	andcs	r0, r0, r0
 a24:	06000000 	streq	r0, [r0], -r0
 a28:	04935000 	ldreq	r5, [r3], #0
 a2c:	20049351 	andcs	r9, r4, r1, asr r3
 a30:	20000000 	andcs	r0, r0, r0
 a34:	06000001 	streq	r0, [r0], -r1
 a38:	f503f300 			; <UNDEFINED> instruction: 0xf503f300
 a3c:	009f2500 	addseq	r2, pc, r0, lsl #10
	...
 a48:	33000000 	movwcc	r0, #0
 a4c:	06000000 	streq	r0, [r0], -r0
 a50:	04935200 	ldreq	r5, [r3], #512	; 0x200
 a54:	33049353 	movwcc	r9, #17235	; 0x4353
 a58:	20000000 	andcs	r0, r0, r0
 a5c:	06000001 	streq	r0, [r0], -r1
 a60:	f503f300 			; <UNDEFINED> instruction: 0xf503f300
 a64:	009f2502 	addseq	r2, pc, r2, lsl #10
 a68:	00000000 	andeq	r0, r0, r0
 a6c:	1c000000 	stcne	0, cr0, [r0], {-0}
 a70:	7c000000 	stcvc	0, cr0, [r0], {-0}
 a74:	06000000 	streq	r0, [r0], -r0
 a78:	04935800 	ldreq	r5, [r3], #2048	; 0x800
 a7c:	00049359 	andeq	r9, r4, r9, asr r3
 a80:	00000000 	andeq	r0, r0, r0
 a84:	14000000 	strne	r0, [r0], #-0
 a88:	80000000 	andhi	r0, r0, r0
 a8c:	06000000 	streq	r0, [r0], -r0
 a90:	04935400 	ldreq	r5, [r3], #1024	; 0x400
 a94:	00049355 	andeq	r9, r4, r5, asr r3
 a98:	00000000 	andeq	r0, r0, r0
 a9c:	1c000000 	stcne	0, cr0, [r0], {-0}
 aa0:	90000000 	andls	r0, r0, r0
 aa4:	0a000000 	beq	aac <__start-0x7554>
 aa8:	00089e00 	andeq	r9, r8, r0, lsl #28
 aac:	00000000 	andeq	r0, r0, r0
 ab0:	90000000 	andls	r0, r0, r0
 ab4:	e8000000 	stmda	r0, {}	; <UNPREDICTABLE>
 ab8:	06000000 	streq	r0, [r0], -r0
 abc:	04935000 	ldreq	r5, [r3], #0
 ac0:	e8049351 	stmda	r4, {r0, r4, r6, r8, r9, ip, pc}
 ac4:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 ac8:	06000001 	streq	r0, [r0], -r1
 acc:	04935800 	ldreq	r5, [r3], #2048	; 0x800
 ad0:	18049359 	stmdane	r4, {r0, r3, r4, r6, r8, r9, ip, pc}
 ad4:	20000001 	andcs	r0, r0, r1
 ad8:	06000001 	streq	r0, [r0], -r1
 adc:	04935000 	ldreq	r5, [r3], #0
 ae0:	00049351 	andeq	r9, r4, r1, asr r3
 ae4:	00000000 	andeq	r0, r0, r0
 ae8:	1c000000 	stcne	0, cr0, [r0], {-0}
 aec:	80000000 	andhi	r0, r0, r0
 af0:	06000000 	streq	r0, [r0], -r0
 af4:	04935400 	ldreq	r5, [r3], #1024	; 0x400
 af8:	8c049355 	stchi	3, cr9, [r4], {85}	; 0x55
 afc:	a8000000 	stmdage	r0, {}	; <UNPREDICTABLE>
 b00:	06000000 	streq	r0, [r0], -r0
 b04:	04935400 	ldreq	r5, [r3], #1024	; 0x400
 b08:	bc049355 	stclt	3, cr9, [r4], {85}	; 0x55
 b0c:	d4000000 	strle	r0, [r0], #-0
 b10:	06000000 	streq	r0, [r0], -r0
 b14:	04935400 	ldreq	r5, [r3], #1024	; 0x400
 b18:	d8049355 	stmdale	r4, {r0, r2, r4, r6, r8, r9, ip, pc}
 b1c:	e8000000 	stmda	r0, {}	; <UNPREDICTABLE>
 b20:	06000000 	streq	r0, [r0], -r0
 b24:	04935400 	ldreq	r5, [r3], #1024	; 0x400
 b28:	e8049355 	stmda	r4, {r0, r2, r4, r6, r8, r9, ip, pc}
 b2c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 b30:	0b000001 	bleq	b3c <__start-0x74c4>
 b34:	2504f500 	strcs	pc, [r4, #-1280]	; 0xfffffb00
 b38:	2cf70072 	ldclcs	0, cr0, [r7], #456	; 0x1c8
 b3c:	9f2525f7 	svcls	0x002525f7
	...
 b48:	0000001c 	andeq	r0, r0, ip, lsl r0
 b4c:	00000064 	andeq	r0, r0, r4, rrx
 b50:	93580006 	cmpls	r8, #6
 b54:	04935904 	ldreq	r5, [r3], #2308	; 0x904
 b58:	00000064 	andeq	r0, r0, r4, rrx
 b5c:	0000010c 	andeq	r0, r0, ip, lsl #2
 b60:	93560006 	cmpls	r6, #6
 b64:	04935704 	ldreq	r5, [r3], #1796	; 0x704
	...
 b70:	0000003c 	andeq	r0, r0, ip, lsr r0
 b74:	00000040 	andeq	r0, r0, r0, asr #32
 b78:	40500001 	subsmi	r0, r0, r1
 b7c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 b80:	01000001 	tsteq	r0, r1
 b84:	00005a00 	andeq	r5, r0, r0, lsl #20
 b88:	00000000 	andeq	r0, r0, r0
 b8c:	00440000 	subeq	r0, r4, r0
 b90:	00700000 	rsbseq	r0, r0, r0
 b94:	00010000 	andeq	r0, r1, r0
 b98:	00000050 	andeq	r0, r0, r0, asr r0
 b9c:	00000000 	andeq	r0, r0, r0
 ba0:	0000a000 	andeq	sl, r0, r0
 ba4:	0000bc00 	andeq	fp, r0, r0, lsl #24
 ba8:	53000100 	movwpl	r0, #256	; 0x100
 bac:	000000bc 	strheq	r0, [r0], -ip
 bb0:	000000c0 	andeq	r0, r0, r0, asr #1
 bb4:	7f730003 	svcvc	0x00730003
 bb8:	0000c09f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 bbc:	0000d800 	andeq	sp, r0, r0, lsl #16
 bc0:	53000100 	movwpl	r0, #256	; 0x100
 bc4:	000000d8 	ldrdeq	r0, [r0], -r8
 bc8:	000000dc 	ldrdeq	r0, [r0], -ip
 bcc:	7f730003 	svcvc	0x00730003
 bd0:	0000dc9f 	muleq	r0, pc, ip	; <UNPREDICTABLE>
 bd4:	0000ec00 	andeq	lr, r0, r0, lsl #24
 bd8:	53000100 	movwpl	r0, #256	; 0x100
	...
 be4:	00000048 	andeq	r0, r0, r8, asr #32
 be8:	000000a4 	andeq	r0, r0, r4, lsr #1
 bec:	a4530001 	ldrbge	r0, [r3], #-1
 bf0:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 bf4:	01000001 	tsteq	r0, r1
 bf8:	00005200 	andeq	r5, r0, r0, lsl #4
 bfc:	00000000 	andeq	r0, r0, r0
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
