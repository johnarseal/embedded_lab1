
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
      b0:	98087491 	stmdals	r8, {r0, r4, r7, sl, ip, sp, lr}
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
     714:	0002bb00 	andeq	fp, r2, r0, lsl #22
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
     794:	9f450501 	svcls	0x00450501
     798:	06000000 	streq	r0, [r0], -r0
     79c:	00000367 	andeq	r0, r0, r7, ror #6
     7a0:	02fd0600 	rscseq	r0, sp, #0, 12
     7a4:	06010000 	streq	r0, [r1], -r0
     7a8:	00000351 	andeq	r0, r0, r1, asr r3
     7ac:	031a0602 	tsteq	sl, #2097152	; 0x200000
     7b0:	00040000 	andeq	r0, r4, r0
     7b4:	00015c07 	andeq	r5, r1, r7, lsl #24
     7b8:	3c110100 	ldfccs	f0, [r1], {-0}
     7bc:	2c000087 	stccs	0, cr0, [r0], {135}	; 0x87
     7c0:	01000000 	mrseq	r0, (UNDEF: 0)
     7c4:	0000f09c 	muleq	r0, ip, r0
     7c8:	6c630800 	stclvs	8, cr0, [r3], #-0
     7cc:	1101006b 	tstne	r1, fp, rrx
     7d0:	00000053 	andeq	r0, r0, r3, asr r0
     7d4:	00000227 	andeq	r0, r0, r7, lsr #4
     7d8:	00875809 	addeq	r5, r7, r9, lsl #16
     7dc:	00026100 	andeq	r6, r2, r0, lsl #2
     7e0:	0000db00 	andeq	sp, r0, r0, lsl #22
     7e4:	51010a00 	tstpl	r1, r0, lsl #20
     7e8:	010a3401 	tsteq	sl, r1, lsl #8
     7ec:	00320150 	eorseq	r0, r2, r0, asr r1
     7f0:	0087640b 	addeq	r6, r7, fp, lsl #8
     7f4:	00026100 	andeq	r6, r2, r0, lsl #2
     7f8:	51010a00 	tstpl	r1, r0, lsl #20
     7fc:	010a3401 	tsteq	sl, r1, lsl #8
     800:	00330150 	eorseq	r0, r3, r0, asr r1
     804:	03400c00 	movteq	r0, #3072	; 0xc00
     808:	1c010000 	stcne	0, cr0, [r1], {-0}
     80c:	00000041 	andeq	r0, r0, r1, asr #32
     810:	00008768 	andeq	r8, r0, r8, ror #14
     814:	00000128 	andeq	r0, r0, r8, lsr #2
     818:	01999c01 	orrseq	r9, r9, r1, lsl #24
     81c:	62080000 	andvs	r0, r8, #0
     820:	01006675 	tsteq	r0, r5, ror r6
     824:	0001991c 	andeq	r9, r1, ip, lsl r9
     828:	00024800 	andeq	r4, r2, r0, lsl #16
     82c:	656c0800 	strbvs	r0, [ip, #-2048]!	; 0xfffff800
     830:	1c01006e 	stcne	0, cr0, [r1], {110}	; 0x6e
     834:	00000053 	andeq	r0, r0, r3, asr r0
     838:	00000266 	andeq	r0, r0, r6, ror #4
     83c:	0003f60d 	andeq	pc, r3, sp, lsl #12
     840:	411c0100 	tstmi	ip, r0, lsl #2
     844:	87000000 	strhi	r0, [r0, -r0]
     848:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
     84c:	1e010069 	cdpne	0, 0, cr0, cr1, cr9, {3}
     850:	00000065 	andeq	r0, r0, r5, rrx
     854:	000002a8 	andeq	r0, r0, r8, lsr #5
     858:	0003130f 	andeq	r1, r3, pc, lsl #6
     85c:	411f0100 	tstmi	pc, r0, lsl #2
     860:	d3000000 	movwle	r0, #0
     864:	09000002 	stmdbeq	r0, {r1}
     868:	00008790 	muleq	r0, r0, r7
     86c:	00000277 	andeq	r0, r0, r7, ror r2
     870:	00000170 	andeq	r0, r0, r0, ror r1
     874:	0152010a 	cmpeq	r2, sl, lsl #2
     878:	51010a40 	tstpl	r1, r0, asr #20
     87c:	010a4001 	tsteq	sl, r1
     880:	00740250 	rsbseq	r0, r4, r0, asr r2
     884:	87f80900 	ldrbhi	r0, [r8, r0, lsl #18]!
     888:	029d0000 	addseq	r0, sp, #0
     88c:	01840000 	orreq	r0, r4, r0
     890:	010a0000 	mrseq	r0, (UNDEF: 10)
     894:	00780250 	rsbseq	r0, r8, r0, asr r2
     898:	88880b00 	stmhi	r8, {r8, r9, fp}
     89c:	02770000 	rsbseq	r0, r7, #0
     8a0:	010a0000 	mrseq	r0, (UNDEF: 10)
     8a4:	0a320152 	beq	c80df4 <__user_program+0x980df4>
     8a8:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     8ac:	04100000 	ldreq	r0, [r0], #-0
     8b0:	00000041 	andeq	r0, r0, r1, asr #32
     8b4:	0003300c 	andeq	r3, r3, ip
     8b8:	41530100 	cmpmi	r3, r0, lsl #2
     8bc:	90000000 	andls	r0, r0, r0
     8c0:	70000088 	andvc	r0, r0, r8, lsl #1
     8c4:	01000001 	tsteq	r0, r1
     8c8:	0002619c 	muleq	r2, ip, r1
     8cc:	75620800 	strbvc	r0, [r2, #-2048]!	; 0xfffff800
     8d0:	53010066 	movwpl	r0, #4198	; 0x1066
     8d4:	00000199 	muleq	r0, r9, r1
     8d8:	000002e7 	andeq	r0, r0, r7, ror #5
     8dc:	6e656c08 	cdpvs	12, 6, cr6, cr5, cr8, {0}
     8e0:	53530100 	cmppl	r3, #0, 2
     8e4:	13000000 	movwne	r0, #0
     8e8:	0d000003 	stceq	0, cr0, [r0, #-12]
     8ec:	000003f6 	strdeq	r0, [r0], -r6
     8f0:	00415301 	subeq	r5, r1, r1, lsl #6
     8f4:	03340000 	teqeq	r4, #0
     8f8:	690e0000 	stmdbvs	lr, {}	; <UNPREDICTABLE>
     8fc:	65550100 	ldrbvs	r0, [r5, #-256]	; 0xffffff00
     900:	55000000 	strpl	r0, [r0, #-0]
     904:	0f000003 	svceq	0x00000003
     908:	00000313 	andeq	r0, r0, r3, lsl r3
     90c:	00415601 	subeq	r5, r1, r1, lsl #12
     910:	03740000 	cmneq	r4, #0
     914:	b8090000 	stmdalt	r9, {}	; <UNPREDICTABLE>
     918:	77000088 	strvc	r0, [r0, -r8, lsl #1]
     91c:	21000002 	tstcs	r0, r2
     920:	0a000002 	beq	930 <__start-0x76d0>
     924:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     928:	51010a20 	tstpl	r1, r0, lsr #20
     92c:	0a200802 	beq	80293c <__user_program+0x50293c>
     930:	74025001 	strvc	r5, [r2], #-1
     934:	40090000 	andmi	r0, r9, r0
     938:	9d000089 	stcls	0, cr0, [r0, #-548]	; 0xfffffddc
     93c:	38000002 	stmdacc	r0, {r1}
     940:	0a000002 	beq	950 <__start-0x76b0>
     944:	03055001 	movweq	r5, #20481	; 0x5001
     948:	0000a050 	andeq	sl, r0, r0, asr r0
     94c:	89780900 	ldmdbhi	r8!, {r8, fp}^
     950:	029d0000 	addseq	r0, sp, #0
     954:	024c0000 	subeq	r0, ip, #0
     958:	010a0000 	mrseq	r0, (UNDEF: 10)
     95c:	00780250 	rsbseq	r0, r8, r0, asr r2
     960:	89f80b00 	ldmibhi	r8!, {r8, r9, fp}^
     964:	02770000 	rsbseq	r0, r7, #0
     968:	010a0000 	mrseq	r0, (UNDEF: 10)
     96c:	0a320152 	beq	c80ebc <__user_program+0x980ebc>
     970:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     974:	17110000 	ldrne	r0, [r1, -r0]
     978:	03000001 	movweq	r0, #1
     97c:	00027737 	andeq	r7, r2, r7, lsr r7
     980:	00411200 	subeq	r1, r1, r0, lsl #4
     984:	41120000 	tstmi	r2, r0
     988:	00000000 	andeq	r0, r0, r0
     98c:	0002d211 	andeq	sp, r2, r1, lsl r2
     990:	92050400 	andls	r0, r5, #0, 8
     994:	12000002 	andne	r0, r0, #2
     998:	00000292 	muleq	r0, r2, r2
     99c:	00006512 	andeq	r6, r0, r2, lsl r5
     9a0:	00651200 	rsbeq	r1, r5, r0, lsl #4
     9a4:	10000000 	andne	r0, r0, r0
     9a8:	00029804 	andeq	r9, r2, r4, lsl #16
     9ac:	00651300 	rsbeq	r1, r5, r0, lsl #6
     9b0:	66140000 	ldrvs	r0, [r4], -r0
     9b4:	06000002 	streq	r0, [r0], -r2
     9b8:	00003313 	andeq	r3, r0, r3, lsl r3
     9bc:	0002b300 	andeq	fp, r2, r0, lsl #6
     9c0:	02b31200 	adcseq	r1, r3, #0, 4
     9c4:	00150000 	andseq	r0, r5, r0
     9c8:	02b90410 	adcseq	r0, r9, #16, 8	; 0x10000000
     9cc:	25160000 	ldrcs	r0, [r6, #-0]
     9d0:	00000000 	andeq	r0, r0, r0
     9d4:	000005d8 	ldrdeq	r0, [r0], -r8
     9d8:	05410004 	strbeq	r0, [r1, #-4]
     9dc:	01040000 	mrseq	r0, (UNDEF: 4)
     9e0:	000001c7 	andeq	r0, r0, r7, asr #3
     9e4:	0003be01 	andeq	fp, r3, r1, lsl #28
     9e8:	00007000 	andeq	r7, r0, r0
     9ec:	008a0000 	addeq	r0, sl, r0
     9f0:	00034400 	andeq	r4, r3, r0, lsl #8
     9f4:	0003fe00 	andeq	pc, r3, r0, lsl #28
     9f8:	08010200 	stmdaeq	r1, {r9}
     9fc:	00000062 	andeq	r0, r0, r2, rrx
     a00:	23050202 	movwcs	r0, #20994	; 0x5202
     a04:	03000001 	movweq	r0, #1
     a08:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     a0c:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
     a10:	00000005 	andeq	r0, r0, r5
     a14:	00510400 	subseq	r0, r1, r0, lsl #8
     a18:	16020000 	strne	r0, [r2], -r0
     a1c:	0000004c 	andeq	r0, r0, ip, asr #32
     a20:	59080102 	stmdbpl	r8, {r1, r8}
     a24:	04000000 	streq	r0, [r0], #-0
     a28:	000001be 			; <UNDEFINED> instruction: 0x000001be
     a2c:	005e1802 	subseq	r1, lr, r2, lsl #16
     a30:	02020000 	andeq	r0, r2, #0
     a34:	0000fe07 	andeq	pc, r0, r7, lsl #28
     a38:	00670400 	rsbeq	r0, r7, r0, lsl #8
     a3c:	1a020000 	bne	80a44 <__bss_end+0x74a44>
     a40:	00000070 	andeq	r0, r0, r0, ror r0
     a44:	34070402 	strcc	r0, [r7], #-1026	; 0xfffffbfe
     a48:	02000000 	andeq	r0, r0, #0
     a4c:	002a0708 	eoreq	r0, sl, r8, lsl #14
     a50:	8e050000 	cdphi	0, 0, cr0, cr5, cr0, {0}
     a54:	01000003 	tsteq	r0, r3
     a58:	008a0010 	addeq	r0, sl, r0, lsl r0
     a5c:	0000b800 	andeq	fp, r0, r0, lsl #16
     a60:	a99c0100 	ldmibge	ip, {r8}
     a64:	06000001 	streq	r0, [r0], -r1
     a68:	000003b3 			; <UNDEFINED> instruction: 0x000003b3
     a6c:	00531001 	subseq	r1, r3, r1
     a70:	03880000 	orreq	r0, r8, #0
     a74:	62070000 	andvs	r0, r7, #0
     a78:	01006675 	tsteq	r0, r5, ror r6
     a7c:	0001a912 	andeq	sl, r1, r2, lsl r9
     a80:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     a84:	00039f08 	andeq	r9, r3, r8, lsl #30
     a88:	65130100 	ldrvs	r0, [r3, #-256]	; 0xffffff00
     a8c:	a9000000 	stmdbge	r0, {}	; <UNPREDICTABLE>
     a90:	09000003 	stmdbeq	r0, {r0, r1}
     a94:	00000375 	andeq	r0, r0, r5, ror r3
     a98:	01c01b01 	biceq	r1, r0, r1, lsl #22
     a9c:	91020000 	mrsls	r0, (UNDEF: 2)
     aa0:	03130870 	tsteq	r3, #112, 16	; 0x700000
     aa4:	1d010000 	stcne	0, cr0, [r1, #-0]
     aa8:	00000041 	andeq	r0, r0, r1, asr #32
     aac:	000003cd 	andeq	r0, r0, sp, asr #7
     ab0:	008a2c0a 	addeq	r2, sl, sl, lsl #24
     ab4:	00057a00 	andeq	r7, r5, r0, lsl #20
     ab8:	0000f300 	andeq	pc, r0, r0, lsl #6
     abc:	50010b00 	andpl	r0, r1, r0, lsl #22
     ac0:	a0980305 	addsge	r0, r8, r5, lsl #6
     ac4:	0a000000 	beq	acc <__start-0x7534>
     ac8:	00008a3c 	andeq	r8, r0, ip, lsr sl
     acc:	0000059b 	muleq	r0, fp, r5
     ad0:	00000112 	andeq	r0, r0, r2, lsl r1
     ad4:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     ad8:	010b4908 	tsteq	fp, r8, lsl #18
     adc:	0b330151 	bleq	cc1028 <__user_program+0x9c1028>
     ae0:	91025001 	tstls	r2, r1
     ae4:	500a006c 	andpl	r0, sl, ip, rrx
     ae8:	7a00008a 	bvc	d18 <__start-0x72e8>
     aec:	29000005 	stmdbcs	r0, {r0, r2}
     af0:	0b000001 	bleq	afc <__start-0x7504>
     af4:	03055001 	movweq	r5, #20481	; 0x5001
     af8:	0000a0b0 	strheq	sl, [r0], -r0
     afc:	8a600a00 	bhi	1803304 <__user_program+0x1503304>
     b00:	057a0000 	ldrbeq	r0, [sl, #-0]!
     b04:	01400000 	mrseq	r0, (UNDEF: 64)
     b08:	010b0000 	mrseq	r0, (UNDEF: 11)
     b0c:	c4030550 	strgt	r0, [r3], #-1360	; 0xfffffab0
     b10:	000000a0 	andeq	r0, r0, r0, lsr #1
     b14:	008a740a 	addeq	r7, sl, sl, lsl #8
     b18:	00059b00 	andeq	r9, r5, r0, lsl #22
     b1c:	00015f00 	andeq	r5, r1, r0, lsl #30
     b20:	52010b00 	andpl	r0, r1, #0, 22
     b24:	0b490802 	bleq	1242b34 <__user_program+0xf42b34>
     b28:	31015101 	tstcc	r1, r1, lsl #2
     b2c:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     b30:	0a006c91 	beq	1bd7c <__bss_end+0xfd7c>
     b34:	00008a84 	andeq	r8, r0, r4, lsl #21
     b38:	000005c0 	andeq	r0, r0, r0, asr #11
     b3c:	0000017e 	andeq	r0, r0, lr, ror r1
     b40:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     b44:	010b4908 	tsteq	fp, r8, lsl #18
     b48:	0b320151 	bleq	c81094 <__user_program+0x981094>
     b4c:	7d025001 	stcvc	0, cr5, [r2, #-4]
     b50:	980a0000 	stmdals	sl, {}	; <UNPREDICTABLE>
     b54:	7a00008a 	bvc	d84 <__start-0x727c>
     b58:	95000005 	strls	r0, [r0, #-5]
     b5c:	0b000001 	bleq	b68 <__start-0x7498>
     b60:	03055001 	movweq	r5, #20481	; 0x5001
     b64:	0000a0d4 	ldrdeq	sl, [r0], -r4
     b68:	8ab00c00 	bhi	fec03b70 <__user_program+0xfe903b70>
     b6c:	057a0000 	ldrbeq	r0, [sl, #-0]!
     b70:	010b0000 	mrseq	r0, (UNDEF: 11)
     b74:	f8030550 			; <UNDEFINED> instruction: 0xf8030550
     b78:	000000a0 	andeq	r0, r0, r0, lsr #1
     b7c:	00410d00 	subeq	r0, r1, r0, lsl #26
     b80:	01b90000 			; <UNDEFINED> instruction: 0x01b90000
     b84:	b90e0000 	stmdblt	lr, {}	; <UNPREDICTABLE>
     b88:	02000001 	andeq	r0, r0, #1
     b8c:	07040200 	streq	r0, [r4, -r0, lsl #4]
     b90:	00000293 	muleq	r0, r3, r2
     b94:	0000410d 	andeq	r4, r0, sp, lsl #2
     b98:	0001d000 	andeq	sp, r1, r0
     b9c:	01b90e00 			; <UNDEFINED> instruction: 0x01b90e00
     ba0:	00010000 	andeq	r0, r1, r0
     ba4:	00037a0f 	andeq	r7, r3, pc, lsl #20
     ba8:	53330100 	teqpl	r3, #0, 2
     bac:	b8000000 	stmdalt	r0, {}	; <UNPREDICTABLE>
     bb0:	7000008a 	andvc	r0, r0, sl, lsl #1
     bb4:	01000000 	mrseq	r0, (UNDEF: 0)
     bb8:	00028c9c 	muleq	r2, ip, ip
     bbc:	75620700 	strbvc	r0, [r2, #-1792]!	; 0xfffff900
     bc0:	35010066 	strcc	r0, [r1, #-102]	; 0xffffff9a
     bc4:	0000028c 	andeq	r0, r0, ip, lsl #5
     bc8:	08749102 	ldmdaeq	r4!, {r1, r8, ip, pc}^
     bcc:	00000313 	andeq	r0, r0, r3, lsl r3
     bd0:	00413601 	subeq	r3, r1, r1, lsl #12
     bd4:	03f60000 	mvnseq	r0, #0
     bd8:	75090000 	strvc	r0, [r9, #-0]
     bdc:	01000003 	tsteq	r0, r3
     be0:	0001c040 	andeq	ip, r1, r0, asr #32
     be4:	70910200 	addsvc	r0, r1, r0, lsl #4
     be8:	00039f08 	andeq	r9, r3, r8, lsl #30
     bec:	53470100 	movtpl	r0, #28928	; 0x7100
     bf0:	14000000 	strne	r0, [r0], #-0
     bf4:	0a000004 	beq	c0c <__start-0x73f4>
     bf8:	00008ad8 	ldrdeq	r8, [r0], -r8	; <UNPREDICTABLE>
     bfc:	0000059b 	muleq	r0, fp, r5
     c00:	00000242 	andeq	r0, r0, r2, asr #4
     c04:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     c08:	010b4908 	tsteq	fp, r8, lsl #18
     c0c:	0b310151 	bleq	c41158 <__user_program+0x941158>
     c10:	91025001 	tstls	r2, r1
     c14:	ec0a006c 	stc	0, cr0, [sl], {108}	; 0x6c
     c18:	7a00008a 	bvc	e48 <__start-0x71b8>
     c1c:	59000005 	stmdbpl	r0, {r0, r2}
     c20:	0b000002 	bleq	c30 <__start-0x73d0>
     c24:	03055001 	movweq	r5, #20481	; 0x5001
     c28:	0000a110 	andeq	sl, r0, r0, lsl r1
     c2c:	8afc0a00 	bhi	fff03434 <__user_program+0xffc03434>
     c30:	05c00000 	strbeq	r0, [r0]
     c34:	02780000 	rsbseq	r0, r8, #0
     c38:	010b0000 	mrseq	r0, (UNDEF: 11)
     c3c:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
     c40:	0151010b 	cmpeq	r1, fp, lsl #2
     c44:	50010b32 	andpl	r0, r1, r2, lsr fp
     c48:	00007d02 	andeq	r7, r0, r2, lsl #26
     c4c:	008b100c 	addeq	r1, fp, ip
     c50:	00057a00 	andeq	r7, r5, r0, lsl #20
     c54:	50010b00 	andpl	r0, r1, r0, lsl #22
     c58:	a1500305 	cmpge	r0, r5, lsl #6
     c5c:	00000000 	andeq	r0, r0, r0
     c60:	0000410d 	andeq	r4, r0, sp, lsl #2
     c64:	00029c00 	andeq	r9, r2, r0, lsl #24
     c68:	01b90e00 			; <UNDEFINED> instruction: 0x01b90e00
     c6c:	00000000 	andeq	r0, r0, r0
     c70:	00017e05 	andeq	r7, r1, r5, lsl #28
     c74:	284d0100 	stmdacs	sp, {r8}^
     c78:	f000008b 			; <UNDEFINED> instruction: 0xf000008b
     c7c:	01000000 	mrseq	r0, (UNDEF: 0)
     c80:	0003ff9c 	muleq	r3, ip, pc	; <UNPREDICTABLE>
     c84:	75620700 	strbvc	r0, [r2, #-1792]!	; 0xfffff900
     c88:	4e010066 	cdpmi	0, 0, cr0, cr1, cr6, {3}
     c8c:	0000028c 	andeq	r0, r0, ip, lsl #5
     c90:	096c9102 	stmdbeq	ip!, {r1, r8, ip, pc}^
     c94:	00000375 	andeq	r0, r0, r5, ror r3
     c98:	01c04f01 	biceq	r4, r0, r1, lsl #30
     c9c:	91020000 	mrsls	r0, (UNDEF: 2)
     ca0:	039f0868 	orrseq	r0, pc, #104, 16	; 0x680000
     ca4:	50010000 	andpl	r0, r1, r0
     ca8:	00000053 	andeq	r0, r0, r3, asr r0
     cac:	00000454 	andeq	r0, r0, r4, asr r4
     cb0:	00031308 	andeq	r1, r3, r8, lsl #6
     cb4:	41510100 	cmpmi	r1, r0, lsl #2
     cb8:	b0000000 	andlt	r0, r0, r0
     cbc:	0a000004 	beq	cd4 <__start-0x732c>
     cc0:	00008b44 	andeq	r8, r0, r4, asr #22
     cc4:	0000059b 	muleq	r0, fp, r5
     cc8:	0000030a 	andeq	r0, r0, sl, lsl #6
     ccc:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     cd0:	010b4908 	tsteq	fp, r8, lsl #18
     cd4:	0b310151 	bleq	c41220 <__user_program+0x941220>
     cd8:	91025001 	tstls	r2, r1
     cdc:	540a0064 	strpl	r0, [sl], #-100	; 0xffffff9c
     ce0:	c000008b 	andgt	r0, r0, fp, lsl #1
     ce4:	29000005 	stmdbcs	r0, {r0, r2}
     ce8:	0b000003 	bleq	cfc <__start-0x7304>
     cec:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     cf0:	51010b49 	tstpl	r1, r9, asr #22
     cf4:	010b3201 	tsteq	fp, r1, lsl #4
     cf8:	007d0250 	rsbseq	r0, sp, r0, asr r2
     cfc:	8b680a00 	blhi	1a03504 <__user_program+0x1703504>
     d00:	057a0000 	ldrbeq	r0, [sl, #-0]!
     d04:	03400000 	movteq	r0, #0
     d08:	010b0000 	mrseq	r0, (UNDEF: 11)
     d0c:	d4030550 	strle	r0, [r3], #-1360	; 0xfffffab0
     d10:	000000a0 	andeq	r0, r0, r0, lsr #1
     d14:	008b840a 	addeq	r8, fp, sl, lsl #8
     d18:	00057a00 	andeq	r7, r5, r0, lsl #20
     d1c:	00035700 	andeq	r5, r3, r0, lsl #14
     d20:	50010b00 	andpl	r0, r1, r0, lsl #22
     d24:	a17c0305 	cmnge	ip, r5, lsl #6
     d28:	0a000000 	beq	d30 <__start-0x72d0>
     d2c:	00008ba0 	andeq	r8, r0, r0, lsr #23
     d30:	0000059b 	muleq	r0, fp, r5
     d34:	00000376 	andeq	r0, r0, r6, ror r3
     d38:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     d3c:	010b4908 	tsteq	fp, r8, lsl #18
     d40:	0b310151 	bleq	c4128c <__user_program+0x94128c>
     d44:	74025001 	strvc	r5, [r2], #-1
     d48:	b00a0000 	andlt	r0, sl, r0
     d4c:	c000008b 	andgt	r0, r0, fp, lsl #1
     d50:	95000005 	strls	r0, [r0, #-5]
     d54:	0b000003 	bleq	d68 <__start-0x7298>
     d58:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     d5c:	51010b49 	tstpl	r1, r9, asr #22
     d60:	010b3201 	tsteq	fp, r1, lsl #4
     d64:	007d0250 	rsbseq	r0, sp, r0, asr r2
     d68:	8bcc0a00 	blhi	ff303570 <__user_program+0xff003570>
     d6c:	057a0000 	ldrbeq	r0, [sl, #-0]!
     d70:	03ac0000 			; <UNDEFINED> instruction: 0x03ac0000
     d74:	010b0000 	mrseq	r0, (UNDEF: 11)
     d78:	a0030550 	andge	r0, r3, r0, asr r5
     d7c:	000000a1 	andeq	r0, r0, r1, lsr #1
     d80:	008be40a 	addeq	lr, fp, sl, lsl #8
     d84:	00059b00 	andeq	r9, r5, r0, lsl #22
     d88:	0003cb00 	andeq	ip, r3, r0, lsl #22
     d8c:	52010b00 	andpl	r0, r1, #0, 22
     d90:	0b490802 	bleq	1242da0 <__user_program+0xf42da0>
     d94:	31015101 	tstcc	r1, r1, lsl #2
     d98:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     d9c:	0a000074 	beq	f74 <__start-0x708c>
     da0:	00008bf4 	strdeq	r8, [r0], -r4
     da4:	000005c0 	andeq	r0, r0, r0, asr #11
     da8:	000003eb 	andeq	r0, r0, fp, ror #7
     dac:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     db0:	010b4908 	tsteq	fp, r8, lsl #18
     db4:	00750251 	rsbseq	r0, r5, r1, asr r2
     db8:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     dbc:	0c00007d 	stceq	0, cr0, [r0], {125}	; 0x7d
     dc0:	00008c10 	andeq	r8, r0, r0, lsl ip
     dc4:	0000057a 	andeq	r0, r0, sl, ror r5
     dc8:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     dcc:	00a1b003 	adceq	fp, r1, r3
     dd0:	10000000 	andne	r0, r0, r0
     dd4:	000003ec 	andeq	r0, r0, ip, ror #7
     dd8:	00537301 	subseq	r7, r3, r1, lsl #6
     ddc:	8c180000 	ldchi	0, cr0, [r8], {-0}
     de0:	00740000 	rsbseq	r0, r4, r0
     de4:	9c010000 	stcls	0, cr0, [r1], {-0}
     de8:	0000045a 	andeq	r0, r0, sl, asr r4
     dec:	0003e406 	andeq	lr, r3, r6, lsl #8
     df0:	41730100 	cmnmi	r3, r0, lsl #2
     df4:	c3000000 	movwgt	r0, #0
     df8:	09000004 	stmdbeq	r0, {r2}
     dfc:	000003e0 	andeq	r0, r0, r0, ror #7
     e00:	00337601 	eorseq	r7, r3, r1, lsl #12
     e04:	03050000 	movweq	r0, #20480	; 0x5000
     e08:	0000b004 	andeq	fp, r0, r4
     e0c:	0003a608 	andeq	sl, r3, r8, lsl #12
     e10:	53770100 	cmnpl	r7, #0, 2
     e14:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
     e18:	11000005 	tstne	r0, r5
     e1c:	00008c70 	andeq	r8, r0, r0, ror ip
     e20:	0000007e 	andeq	r0, r0, lr, ror r0
     e24:	008c8011 	addeq	r8, ip, r1, lsl r0
     e28:	0001d000 	andeq	sp, r1, r0
     e2c:	4e120000 	cdpmi	0, 1, cr0, cr2, cr0, {0}
     e30:	01000001 	tsteq	r0, r1
     e34:	008c8c8e 	addeq	r8, ip, lr, lsl #25
     e38:	00002000 	andeq	r2, r0, r0
     e3c:	a59c0100 	ldrge	r0, [ip, #256]	; 0x100
     e40:	13000004 	movwne	r0, #4
     e44:	006c6176 	rsbeq	r6, ip, r6, ror r1
     e48:	00538f01 	subseq	r8, r3, r1, lsl #30
     e4c:	05a10000 	streq	r0, [r1, #0]!
     e50:	980a0000 	stmdals	sl, {}	; <UNPREDICTABLE>
     e54:	ff00008c 			; <UNDEFINED> instruction: 0xff00008c
     e58:	91000003 	tstls	r0, r3
     e5c:	0b000004 	bleq	e74 <__start-0x718c>
     e60:	33015001 	movwcc	r5, #4097	; 0x1001
     e64:	8ca80c00 	stchi	12, cr0, [r8]
     e68:	057a0000 	ldrbeq	r0, [sl, #-0]!
     e6c:	010b0000 	mrseq	r0, (UNDEF: 11)
     e70:	c0030550 	andgt	r0, r3, r0, asr r5
     e74:	000000a1 	andeq	r0, r0, r1, lsr #1
     e78:	016c1200 	cmneq	ip, r0, lsl #4
     e7c:	92010000 	andls	r0, r1, #0
     e80:	00008cac 	andeq	r8, r0, ip, lsr #25
     e84:	00000098 	muleq	r0, r8, r0
     e88:	057a9c01 	ldrbeq	r9, [sl, #-3073]!	; 0xfffff3ff
     e8c:	6d130000 	ldcvs	0, cr0, [r3, #-0]
     e90:	01006e69 	tsteq	r0, r9, ror #28
     e94:	00003393 	muleq	r0, r3, r3
     e98:	0005b400 	andeq	fp, r5, r0, lsl #8
     e9c:	616d1300 	cmnvs	sp, r0, lsl #6
     ea0:	94010078 	strls	r0, [r1], #-120	; 0xffffff88
     ea4:	00000033 	andeq	r0, r0, r3, lsr r0
     ea8:	000005f8 	strdeq	r0, [r0], -r8
     eac:	6c617613 	stclvs	6, cr7, [r1], #-76	; 0xffffffb4
     eb0:	33950100 	orrscc	r0, r5, #0, 2
     eb4:	30000000 	andcc	r0, r0, r0
     eb8:	13000006 	movwne	r0, #6
     ebc:	95010069 	strls	r0, [r1, #-105]	; 0xffffff97
     ec0:	00000033 	andeq	r0, r0, r3, lsr r0
     ec4:	0000064e 	andeq	r0, r0, lr, asr #12
     ec8:	70616707 	rsbvc	r6, r1, r7, lsl #14
     ecc:	33950100 	orrscc	r0, r5, #0, 2
     ed0:	01000000 	mrseq	r0, (UNDEF: 0)
     ed4:	8cdc0a54 	vldmiahi	ip, {s1-s84}
     ed8:	03ff0000 	mvnseq	r0, #0
     edc:	05150000 	ldreq	r0, [r5, #-0]
     ee0:	010b0000 	mrseq	r0, (UNDEF: 11)
     ee4:	00780250 	rsbseq	r0, r8, r0, asr r2
     ee8:	8cf40a00 	vldmiahi	r4!, {s1-s0}
     eec:	057a0000 	ldrbeq	r0, [sl, #-0]!
     ef0:	052f0000 	streq	r0, [pc, #-0]!	; ef8 <__start-0x7108>
     ef4:	010b0000 	mrseq	r0, (UNDEF: 11)
     ef8:	00740251 	rsbseq	r0, r4, r1, asr r2
     efc:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     f00:	0a000079 	beq	10ec <__start-0x6f14>
     f04:	00008d0c 	andeq	r8, r0, ip, lsl #26
     f08:	0000057a 	andeq	r0, r0, sl, ror r5
     f0c:	00000549 	andeq	r0, r0, r9, asr #10
     f10:	0251010b 	subseq	r0, r1, #-1073741822	; 0xc0000002
     f14:	010b0074 	tsteq	fp, r4, ror r0
     f18:	007a0250 	rsbseq	r0, sl, r0, asr r2
     f1c:	8d2c0a00 	vstmdbhi	ip!, {s0-s-1}
     f20:	057a0000 	ldrbeq	r0, [sl, #-0]!
     f24:	05660000 	strbeq	r0, [r6, #-0]!
     f28:	010b0000 	mrseq	r0, (UNDEF: 11)
     f2c:	00740251 	rsbseq	r0, r4, r1, asr r2
     f30:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
     f34:	00a1f403 	adceq	pc, r1, r3, lsl #8
     f38:	400c0000 	andmi	r0, ip, r0
     f3c:	7a00008d 	bvc	1178 <__start-0x6e88>
     f40:	0b000005 	bleq	f5c <__start-0x70a4>
     f44:	03055001 	movweq	r5, #20481	; 0x5001
     f48:	0000a200 	andeq	sl, r0, r0, lsl #4
     f4c:	66140000 	ldrvs	r0, [r4], -r0
     f50:	03000002 	movweq	r0, #2
     f54:	00003313 	andeq	r3, r0, r3, lsl r3
     f58:	00059000 	andeq	r9, r5, r0
     f5c:	05901500 	ldreq	r1, [r0, #1280]	; 0x500
     f60:	00160000 	andseq	r0, r6, r0
     f64:	05960417 	ldreq	r0, [r6, #1047]	; 0x417
     f68:	25180000 	ldrcs	r0, [r8, #-0]
     f6c:	14000000 	strne	r0, [r0], #-0
     f70:	00000340 	andeq	r0, r0, r0, asr #6
     f74:	00415804 	subeq	r5, r1, r4, lsl #16
     f78:	05ba0000 	ldreq	r0, [sl, #0]!
     f7c:	ba150000 	blt	540f84 <__user_program+0x240f84>
     f80:	15000005 	strne	r0, [r0, #-5]
     f84:	00000053 	andeq	r0, r0, r3, asr r0
     f88:	00004115 	andeq	r4, r0, r5, lsl r1
     f8c:	04170000 	ldreq	r0, [r7], #-0
     f90:	00000041 	andeq	r0, r0, r1, asr #32
     f94:	00033019 	andeq	r3, r3, r9, lsl r0
     f98:	41610400 	cmnmi	r1, r0, lsl #8
     f9c:	15000000 	strne	r0, [r0, #-0]
     fa0:	000005ba 			; <UNDEFINED> instruction: 0x000005ba
     fa4:	00005315 	andeq	r5, r0, r5, lsl r3
     fa8:	00411500 	subeq	r1, r1, r0, lsl #10
     fac:	00000000 	andeq	r0, r0, r0
     fb0:	000000fd 	strdeq	r0, [r0], -sp
     fb4:	06b00004 	ldrteq	r0, [r0], r4
     fb8:	01040000 	mrseq	r0, (UNDEF: 4)
     fbc:	000001c7 	andeq	r0, r0, r7, asr #3
     fc0:	00040001 	andeq	r0, r4, r1
     fc4:	00007000 	andeq	r7, r0, r0
     fc8:	008d4400 	addeq	r4, sp, r0, lsl #8
     fcc:	00002800 	andeq	r2, r0, r0, lsl #16
     fd0:	0004fa00 	andeq	pc, r4, r0, lsl #20
     fd4:	08010200 	stmdaeq	r1, {r9}
     fd8:	00000062 	andeq	r0, r0, r2, rrx
     fdc:	23050202 	movwcs	r0, #20994	; 0x5202
     fe0:	03000001 	movweq	r0, #1
     fe4:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     fe8:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
     fec:	00000005 	andeq	r0, r0, r5
     ff0:	08010200 	stmdaeq	r1, {r9}
     ff4:	00000059 	andeq	r0, r0, r9, asr r0
     ff8:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
     ffc:	04000000 	streq	r0, [r0], #-0
    1000:	00000067 	andeq	r0, r0, r7, rrx
    1004:	005a1a02 	subseq	r1, sl, r2, lsl #20
    1008:	04020000 	streq	r0, [r2], #-0
    100c:	00003407 	andeq	r3, r0, r7, lsl #8
    1010:	07080200 	streq	r0, [r8, -r0, lsl #4]
    1014:	0000002a 	andeq	r0, r0, sl, lsr #32
    1018:	0002d205 	andeq	sp, r2, r5, lsl #4
    101c:	44040100 	strmi	r0, [r4], #-256	; 0xffffff00
    1020:	1800008d 	stmdane	r0, {r0, r2, r3, r7}
    1024:	01000000 	mrseq	r0, (UNDEF: 0)
    1028:	0000b69c 	muleq	r0, ip, r6
    102c:	03f50600 	mvnseq	r0, #0, 12
    1030:	04010000 	streq	r0, [r1], #-0
    1034:	000000b6 	strheq	r0, [r0], -r6
    1038:	ad075001 	stcge	0, cr5, [r7, #-4]
    103c:	01000003 	tsteq	r0, r3
    1040:	00004f04 	andeq	r4, r0, r4, lsl #30
    1044:	00069500 	andeq	r9, r6, r0, lsl #10
    1048:	03fb0700 	mvnseq	r0, #0, 14
    104c:	04010000 	streq	r0, [r1], #-0
    1050:	0000004f 	andeq	r0, r0, pc, asr #32
    1054:	000006b6 			; <UNDEFINED> instruction: 0x000006b6
    1058:	01007608 	tsteq	r0, r8, lsl #12
    105c:	00004f06 	andeq	r4, r0, r6, lsl #30
    1060:	0006d700 	andeq	sp, r6, r0, lsl #14
    1064:	04090000 	streq	r0, [r9], #-0
    1068:	000000bc 	strheq	r0, [r0], -ip
    106c:	00004f0a 	andeq	r4, r0, sl, lsl #30
    1070:	02d60b00 	sbcseq	r0, r6, #0, 22
    1074:	0b010000 	bleq	4107c <__bss_end+0x3507c>
    1078:	0000004f 	andeq	r0, r0, pc, asr #32
    107c:	00008d5c 	andeq	r8, r0, ip, asr sp
    1080:	00000010 	andeq	r0, r0, r0, lsl r0
    1084:	760c9c01 	strvc	r9, [ip], -r1, lsl #24
    1088:	4f0b0100 	svcmi	0x000b0100
    108c:	f5000000 			; <UNDEFINED> instruction: 0xf5000000
    1090:	07000006 	streq	r0, [r0, -r6]
    1094:	000003ad 	andeq	r0, r0, sp, lsr #7
    1098:	004f0b01 	subeq	r0, pc, r1, lsl #22
    109c:	07160000 	ldreq	r0, [r6, -r0]
    10a0:	fb060000 	blx	1810aa <__end+0x540aa>
    10a4:	01000003 	tsteq	r0, r3
    10a8:	00004f0b 	andeq	r4, r0, fp, lsl #30
    10ac:	00520100 	subseq	r0, r2, r0, lsl #2
    10b0:	00006700 	andeq	r6, r0, r0, lsl #14
    10b4:	67000200 	strvs	r0, [r0, -r0, lsl #4]
    10b8:	04000007 	streq	r0, [r0], #-7
    10bc:	00056a01 	andeq	r6, r5, r1, lsl #20
    10c0:	00800000 	addeq	r0, r0, r0
    10c4:	00805400 	addeq	r5, r0, r0, lsl #8
    10c8:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
    10cc:	6b62696c 	blvs	189b684 <__user_program+0x159b684>
    10d0:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    10d4:	6f6f622f 	svcvs	0x006f622f
    10d8:	00532e74 	subseq	r2, r3, r4, ror lr
    10dc:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; 1028 <__start-0x6fd8>
    10e0:	7a7a2f65 	bvc	1e8ce7c <__user_program+0x1b8ce7c>
    10e4:	6f72502f 	svcvs	0x0072502f
    10e8:	7463656a 	strbtvc	r6, [r3], #-1386	; 0xfffffa96
    10ec:	6d652f73 	stclvs	15, cr2, [r5, #-460]!	; 0xfffffe34
    10f0:	5f646562 	svcpl	0x00646562
    10f4:	3162616c 	cmncc	r2, ip, ror #2
    10f8:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
    10fc:	6f6a2d31 	svcvs	0x006a2d31
    1100:	72616e68 	rsbvc	r6, r1, #104, 28	; 0x680
    1104:	6c616573 	cfstr64vs	mvdx6, [r1], #-460	; 0xfffffe34
    1108:	646f632f 	strbtvs	r6, [pc], #-815	; 1110 <__start-0x6ef0>
    110c:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
    1110:	53412055 	movtpl	r2, #4181	; 0x1055
    1114:	322e3220 	eorcc	r3, lr, #32, 4
    1118:	80010036 	andhi	r0, r1, r6, lsr r0
    111c:	00000066 	andeq	r0, r0, r6, rrx
    1120:	077b0002 	ldrbeq	r0, [fp, -r2]!
    1124:	01040000 	mrseq	r0, (UNDEF: 4)
    1128:	000005c2 	andeq	r0, r0, r2, asr #11
    112c:	00008d6c 	andeq	r8, r0, ip, ror #26
    1130:	00008db0 			; <UNDEFINED> instruction: 0x00008db0
    1134:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
    1138:	2f6b6269 	svccs	0x006b6269
    113c:	2f637273 	svccs	0x00637273
    1140:	2e6d7261 	cdpcs	2, 6, cr7, cr13, cr1, {3}
    1144:	682f0053 	stmdavs	pc!, {r0, r1, r4, r6}	; <UNPREDICTABLE>
    1148:	2f656d6f 	svccs	0x00656d6f
    114c:	502f7a7a 	eorpl	r7, pc, sl, ror sl	; <UNPREDICTABLE>
    1150:	656a6f72 	strbvs	r6, [sl, #-3954]!	; 0xfffff08e
    1154:	2f737463 	svccs	0x00737463
    1158:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
    115c:	616c5f64 	cmnvs	ip, r4, ror #30
    1160:	6c2f3162 	stfvss	f3, [pc], #-392	; fe0 <__start-0x7020>
    1164:	2d316261 	lfmcs	f6, 4, [r1, #-388]!	; 0xfffffe7c
    1168:	6e686f6a 	cdpvs	15, 6, cr6, cr8, cr10, {3}
    116c:	65737261 	ldrbvs	r7, [r3, #-609]!	; 0xfffffd9f
    1170:	632f6c61 			; <UNDEFINED> instruction: 0x632f6c61
    1174:	0065646f 	rsbeq	r6, r5, pc, ror #8
    1178:	20554e47 	subscs	r4, r5, r7, asr #28
    117c:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    1180:	0036322e 	eorseq	r3, r6, lr, lsr #4
    1184:	00a68001 	adceq	r8, r6, r1
    1188:	00020000 	andeq	r0, r2, r0
    118c:	0000078f 	andeq	r0, r0, pc, lsl #15
    1190:	06130104 	ldreq	r0, [r3], -r4, lsl #2
    1194:	8db00000 	ldchi	0, cr0, [r0]
    1198:	8dec0000 	stclhi	0, cr0, [ip]
    119c:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
    11a0:	2f2e2e2f 	svccs	0x002e2e2f
    11a4:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
    11a8:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; fe8 <__start-0x7018>
    11ac:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    11b0:	6f632f63 	svcvs	0x00632f63
    11b4:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    11b8:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    11bc:	6170622f 	cmnvs	r0, pc, lsr #4
    11c0:	532e6962 			; <UNDEFINED> instruction: 0x532e6962
    11c4:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    11c8:	2f646c69 	svccs	0x00646c69
    11cc:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    11d0:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    11d4:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    11d8:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    11dc:	52442d69 	subpl	r2, r4, #6720	; 0x1a40
    11e0:	414c6e52 	cmpmi	ip, r2, asr lr
    11e4:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    11e8:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    11ec:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    11f0:	61652d65 	cmnvs	r5, r5, ror #26
    11f4:	342d6962 	strtcc	r6, [sp], #-2402	; 0xfffff69e
    11f8:	332e392e 			; <UNDEFINED> instruction: 0x332e392e
    11fc:	6e76732b 	cdpvs	3, 7, cr7, cr6, cr11, {1}
    1200:	31313332 	teqcc	r1, r2, lsr r3
    1204:	622f3737 	eorvs	r3, pc, #14417920	; 0xdc0000
    1208:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    120c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1210:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1214:	61652d65 	cmnvs	r5, r5, ror #26
    1218:	6c2f6962 	stcvs	9, cr6, [pc], #-392	; 1098 <__start-0x6f68>
    121c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1220:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
    1224:	53412055 	movtpl	r2, #4181	; 0x1055
    1228:	322e3220 	eorcc	r3, lr, #32, 4
    122c:	80010035 	andhi	r0, r1, r5, lsr r0
    1230:	00000160 	andeq	r0, r0, r0, ror #2
    1234:	07a30004 	streq	r0, [r3, r4]!
    1238:	01040000 	mrseq	r0, (UNDEF: 4)
    123c:	000004c3 	andeq	r0, r0, r3, asr #9
    1240:	00049c01 	andeq	r9, r4, r1, lsl #24
    1244:	00042900 	andeq	r2, r4, r0, lsl #18
    1248:	008dec00 	addeq	lr, sp, r0, lsl #24
    124c:	00008400 	andeq	r8, r0, r0, lsl #8
    1250:	00067100 	andeq	r7, r6, r0, lsl #2
    1254:	07080200 	streq	r0, [r8, -r0, lsl #4]
    1258:	0000002a 	andeq	r0, r0, sl, lsr #32
    125c:	00057d03 	andeq	r7, r5, r3, lsl #26
    1260:	a6230100 	strtge	r0, [r3], -r0, lsl #2
    1264:	ec000000 	stc	0, cr0, [r0], {-0}
    1268:	4400008d 	strmi	r0, [r0], #-141	; 0xffffff73
    126c:	01000000 	mrseq	r0, (UNDEF: 0)
    1270:	0000a69c 	muleq	r0, ip, r6
    1274:	00610400 	rsbeq	r0, r1, r0, lsl #8
    1278:	00a62301 	adceq	r2, r6, r1, lsl #6
    127c:	07370000 	ldreq	r0, [r7, -r0]!
    1280:	62040000 	andvs	r0, r4, #0
    1284:	a6240100 	strtge	r0, [r4], -r0, lsl #2
    1288:	5f000000 	svcpl	0x00000000
    128c:	05000007 	streq	r0, [r0, #-7]
    1290:	00000573 	andeq	r0, r0, r3, ror r5
    1294:	00ad2501 	adceq	r2, sp, r1, lsl #10
    1298:	91020000 	mrsls	r0, (UNDEF: 2)
    129c:	059c0600 	ldreq	r0, [ip, #1536]	; 0x600
    12a0:	27010000 	strcs	r0, [r1, -r0]
    12a4:	000000a6 	andeq	r0, r0, r6, lsr #1
    12a8:	04935006 	ldreq	r5, [r3], #6
    12ac:	07049351 	smlsdeq	r4, r1, r3, r9
    12b0:	00008e08 	andeq	r8, r0, r8, lsl #28
    12b4:	00000133 	andeq	r0, r0, r3, lsr r1
    12b8:	93520608 	cmpls	r2, #8, 12	; 0x800000
    12bc:	04935304 	ldreq	r5, [r3], #772	; 0x304
    12c0:	f503f305 			; <UNDEFINED> instruction: 0xf503f305
    12c4:	06082502 	streq	r2, [r8], -r2, lsl #10
    12c8:	51049350 	tstpl	r4, r0, asr r3
    12cc:	f3050493 	vqshl.u8	d0, d3, d21
    12d0:	2500f503 	strcs	pc, [r0, #-1283]	; 0xfffffafd
    12d4:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    12d8:	00000005 	andeq	r0, r0, r5
    12dc:	a6040900 	strge	r0, [r4], -r0, lsl #18
    12e0:	03000000 	movweq	r0, #0
    12e4:	00000486 	andeq	r0, r0, r6, lsl #9
    12e8:	00252f01 	eoreq	r2, r5, r1, lsl #30
    12ec:	8e300000 	cdphi	0, 3, cr0, cr0, cr0, {0}
    12f0:	00400000 	subeq	r0, r0, r0
    12f4:	9c010000 	stcls	0, cr0, [r1], {-0}
    12f8:	0000012d 	andeq	r0, r0, sp, lsr #2
    12fc:	01006104 	tsteq	r0, r4, lsl #2
    1300:	0000252f 	andeq	r2, r0, pc, lsr #10
    1304:	00078700 	andeq	r8, r7, r0, lsl #14
    1308:	00620400 	rsbeq	r0, r2, r0, lsl #8
    130c:	00253001 	eoreq	r3, r5, r1
    1310:	07af0000 	streq	r0, [pc, r0]!
    1314:	73050000 	movwvc	r0, #20480	; 0x5000
    1318:	01000005 	tsteq	r0, r5
    131c:	00012d31 	andeq	r2, r1, r1, lsr sp
    1320:	00910200 	addseq	r0, r1, r0, lsl #4
    1324:	00059c06 	andeq	r9, r5, r6, lsl #24
    1328:	25330100 	ldrcs	r0, [r3, #-256]!	; 0xffffff00
    132c:	06000000 	streq	r0, [r0], -r0
    1330:	51049350 	tstpl	r4, r0, asr r3
    1334:	4c070493 	cfstrsmi	mvf0, [r7], {147}	; 0x93
    1338:	4d00008e 	stcmi	0, cr0, [r0, #-568]	; 0xfffffdc8
    133c:	08000001 	stmdaeq	r0, {r0}
    1340:	04935206 	ldreq	r5, [r3], #518	; 0x206
    1344:	05049353 	streq	r9, [r4, #-851]	; 0xfffffcad
    1348:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
    134c:	50060825 	andpl	r0, r6, r5, lsr #16
    1350:	93510493 	cmpls	r1, #-1828716544	; 0x93000000
    1354:	03f30504 	mvnseq	r0, #4, 10	; 0x1000000
    1358:	002500f5 	strdeq	r0, [r5], -r5	; <UNPREDICTABLE>
    135c:	25040900 	strcs	r0, [r4, #-2304]	; 0xfffff700
    1360:	0a000000 	beq	1368 <__start-0x6c98>
    1364:	00000420 	andeq	r0, r0, r0, lsr #8
    1368:	00a61901 	adceq	r1, r6, r1, lsl #18
    136c:	014d0000 	mrseq	r0, (UNDEF: 77)
    1370:	a60b0000 	strge	r0, [fp], -r0
    1374:	0b000000 	bleq	137c <__start-0x6c84>
    1378:	000000a6 	andeq	r0, r0, r6, lsr #1
    137c:	05920c00 	ldreq	r0, [r2, #3072]	; 0xc00
    1380:	1a010000 	bne	41388 <__bss_end+0x35388>
    1384:	00000025 	andeq	r0, r0, r5, lsr #32
    1388:	0000250b 	andeq	r2, r0, fp, lsl #10
    138c:	00250b00 	eoreq	r0, r5, r0, lsl #22
    1390:	00000000 	andeq	r0, r0, r0
    1394:	000000aa 	andeq	r0, r0, sl, lsr #1
    1398:	085a0002 	ldmdaeq	sl, {r1}^
    139c:	01040000 	mrseq	r0, (UNDEF: 4)
    13a0:	000006d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    13a4:	00008e70 	andeq	r8, r0, r0, ror lr
    13a8:	00008e74 	andeq	r8, r0, r4, ror lr
    13ac:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    13b0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    13b4:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    13b8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    13bc:	2f636367 	svccs	0x00636367
    13c0:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    13c4:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
    13c8:	6c2f6d72 	stcvs	13, cr6, [pc], #-456	; 1208 <__start-0x6df8>
    13cc:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
    13d0:	73636e75 	cmnvc	r3, #1872	; 0x750
    13d4:	2f00532e 	svccs	0x0000532e
    13d8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    13dc:	63672f64 	cmnvs	r7, #100, 30	; 0x190
    13e0:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    13e4:	6f6e2d6d 	svcvs	0x006e2d6d
    13e8:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    13ec:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    13f0:	6e525244 	cdpvs	2, 5, cr5, cr2, cr4, {2}
    13f4:	672f414c 	strvs	r4, [pc, -ip, asr #2]!
    13f8:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    13fc:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1400:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1404:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1408:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
    140c:	732b332e 			; <UNDEFINED> instruction: 0x732b332e
    1410:	33326e76 	teqcc	r2, #1888	; 0x760
    1414:	37373131 			; <UNDEFINED> instruction: 0x37373131
    1418:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    141c:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
    1420:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1424:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1428:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    142c:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1430:	00636367 	rsbeq	r6, r3, r7, ror #6
    1434:	20554e47 	subscs	r4, r5, r7, asr #28
    1438:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    143c:	0035322e 	eorseq	r3, r5, lr, lsr #4
    1440:	02658001 	rsbeq	r8, r5, #1
    1444:	00040000 	andeq	r0, r4, r0
    1448:	0000086e 	andeq	r0, r0, lr, ror #16
    144c:	05fb0104 	ldrbeq	r0, [fp, #260]!	; 0x104
    1450:	bf010000 	svclt	0x00010000
    1454:	29000005 	stmdbcs	r0, {r0, r2}
    1458:	74000004 	strvc	r0, [r0], #-4
    145c:	7800008e 	stmdavc	r0, {r1, r2, r3, r7}
    1460:	2b000001 	blcs	146c <__start-0x6b94>
    1464:	02000007 	andeq	r0, r0, #7
    1468:	002a0708 	eoreq	r0, sl, r8, lsl #14
    146c:	04030000 	streq	r0, [r3], #-0
    1470:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    1474:	07040200 	streq	r0, [r4, -r0, lsl #4]
    1478:	00000034 	andeq	r0, r0, r4, lsr r0
    147c:	59080102 	stmdbpl	r8, {r1, r8}
    1480:	02000000 	andeq	r0, r0, #0
    1484:	00620801 	rsbeq	r0, r2, r1, lsl #16
    1488:	04020000 	streq	r0, [r2], #-0
    148c:	00002f07 	andeq	r2, r0, r7, lsl #30
    1490:	07040200 	streq	r0, [r4, -r0, lsl #4]
    1494:	00000293 	muleq	r0, r3, r2
    1498:	5b060102 	blpl	1818a8 <__end+0x548a8>
    149c:	02000000 	andeq	r0, r0, #0
    14a0:	01230502 			; <UNDEFINED> instruction: 0x01230502
    14a4:	02020000 	andeq	r0, r2, #0
    14a8:	0000fe07 	andeq	pc, r0, r7, lsl #28
    14ac:	05b80400 	ldreq	r0, [r8, #1024]!	; 0x400
    14b0:	81020000 	mrshi	r0, (UNDEF: 2)
    14b4:	0000002c 	andeq	r0, r0, ip, lsr #32
    14b8:	0005b704 	andeq	fp, r5, r4, lsl #14
    14bc:	33820200 	orrcc	r0, r2, #0, 4
    14c0:	04000000 	streq	r0, [r0], #-0
    14c4:	000005e6 	andeq	r0, r0, r6, ror #11
    14c8:	008c8502 	addeq	r8, ip, r2, lsl #10
    14cc:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    14d0:	00000005 	andeq	r0, r0, r5
    14d4:	05e50400 	strbeq	r0, [r5, #1024]!	; 0x400
    14d8:	86020000 	strhi	r0, [r2], -r0
    14dc:	00000025 	andeq	r0, r0, r5, lsr #32
    14e0:	f5040402 			; <UNDEFINED> instruction: 0xf5040402
    14e4:	02000005 	andeq	r0, r0, #5
    14e8:	05ed0308 	strbeq	r0, [sp, #776]!	; 0x308
    14ec:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    14f0:	0006c004 	andeq	ip, r6, r4
    14f4:	03100200 	tsteq	r0, #0, 4
    14f8:	000006b8 			; <UNDEFINED> instruction: 0x000006b8
    14fc:	0006c705 	andeq	ip, r6, r5, lsl #14
    1500:	e3020800 	movw	r0, #10240	; 0x2800
    1504:	0000e201 	andeq	lr, r0, r1, lsl #4
    1508:	6f6c0600 	svcvs	0x006c0600
    150c:	e3020077 	movw	r0, #8311	; 0x2077
    1510:	00006b01 	andeq	r6, r0, r1, lsl #22
    1514:	a5070000 	strge	r0, [r7, #-0]
    1518:	02000005 	andeq	r0, r0, #5
    151c:	006b01e3 	rsbeq	r0, fp, r3, ror #3
    1520:	00040000 	andeq	r0, r4, r0
    1524:	ea020808 	b	8354c <__bss_end+0x7754c>
    1528:	00010101 	andeq	r0, r1, r1, lsl #2
    152c:	00730900 	rsbseq	r0, r3, r0, lsl #18
    1530:	ba01ec02 	blt	7c540 <__bss_end+0x70540>
    1534:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    1538:	02006c6c 	andeq	r6, r0, #108, 24	; 0x6c00
    153c:	008101ed 	addeq	r0, r1, sp, ror #3
    1540:	0a000000 	beq	1548 <__start-0x6ab8>
    1544:	000005dd 	ldrdeq	r0, [r0], -sp
    1548:	e201ee02 	and	lr, r1, #2, 28
    154c:	0b000000 	bleq	1554 <__start-0x6aac>
    1550:	000005aa 	andeq	r0, r0, sl, lsr #11
    1554:	9303b001 	movwls	fp, #12289	; 0x3001
    1558:	03000000 	movweq	r0, #0
    155c:	00000188 	andeq	r0, r0, r8, lsl #3
    1560:	01006e0c 	tsteq	r0, ip, lsl #28
    1564:	009303b0 			; <UNDEFINED> instruction: 0x009303b0
    1568:	640c0000 	strvs	r0, [ip], #-0
    156c:	03b00100 	movseq	r0, #0, 2
    1570:	00000093 	muleq	r0, r3, r0
    1574:	0070720c 	rsbseq	r7, r0, ip, lsl #4
    1578:	8803b001 	stmdahi	r3, {r0, ip, sp, pc}
    157c:	0d000001 	stceq	0, cr0, [r0, #-4]
    1580:	b2010071 	andlt	r0, r1, #113	; 0x71
    1584:	00009303 	andeq	r9, r0, r3, lsl #6
    1588:	00720d00 	rsbseq	r0, r2, r0, lsl #26
    158c:	9303b201 	movwls	fp, #12801	; 0x3201
    1590:	0d000000 	stceq	0, cr0, [r0, #-0]
    1594:	b2010079 	andlt	r0, r1, #121	; 0x79
    1598:	00009303 	andeq	r9, r0, r3, lsl #6
    159c:	7a6c0d00 	bvc	1b049a4 <__user_program+0x18049a4>
    15a0:	b3010031 	movwlt	r0, #4145	; 0x1031
    15a4:	00007603 	andeq	r7, r0, r3, lsl #12
    15a8:	7a6c0d00 	bvc	1b049b0 <__user_program+0x18049b0>
    15ac:	b3010032 	movwlt	r0, #4146	; 0x1032
    15b0:	00007603 	andeq	r7, r0, r3, lsl #12
    15b4:	00690d00 	rsbeq	r0, r9, r0, lsl #26
    15b8:	7603b301 	strvc	fp, [r3], -r1, lsl #6
    15bc:	0d000000 	stceq	0, cr0, [r0, #-0]
    15c0:	b301006b 	movwlt	r0, #4203	; 0x106b
    15c4:	00007603 	andeq	r7, r0, r3, lsl #12
    15c8:	040e0000 	streq	r0, [lr], #-0
    15cc:	00000093 	muleq	r0, r3, r0
    15d0:	0004200f 	andeq	r2, r4, pc
    15d4:	04cb0100 	strbeq	r0, [fp], #256	; 0x100
    15d8:	00000081 	andeq	r0, r0, r1, lsl #1
    15dc:	00008e74 	andeq	r8, r0, r4, ror lr
    15e0:	00000178 	andeq	r0, r0, r8, ror r1
    15e4:	75109c01 	ldrvc	r9, [r0, #-3073]	; 0xfffff3ff
    15e8:	04cb0100 	strbeq	r0, [fp], #256	; 0x100
    15ec:	00000081 	andeq	r0, r0, r1, lsl #1
    15f0:	000007d7 	ldrdeq	r0, [r0], -r7
    15f4:	01007610 	tsteq	r0, r0, lsl r6
    15f8:	008104cb 	addeq	r0, r1, fp, asr #9
    15fc:	080f0000 	stmdaeq	pc, {}	; <UNPREDICTABLE>
    1600:	63110000 	tstvs	r1, #0
    1604:	04cd0100 	strbeq	r0, [sp], #256	; 0x100
    1608:	0000006b 	andeq	r0, r0, fp, rrx
    160c:	00000847 	andeq	r0, r0, r7, asr #16
    1610:	0075750d 	rsbseq	r7, r5, sp, lsl #10
    1614:	0104ce01 	tsteq	r4, r1, lsl #28
    1618:	0d000001 	stceq	0, cr0, [r0, #-4]
    161c:	01007676 	tsteq	r0, r6, ror r6
    1620:	010104cf 	smlabteq	r1, pc, r4, r0	; <UNPREDICTABLE>
    1624:	77110000 	ldrvc	r0, [r1, -r0]
    1628:	04d00100 	ldrbeq	r0, [r0], #256	; 0x100
    162c:	00000081 	andeq	r0, r0, r1, lsl #1
    1630:	0000087e 	andeq	r0, r0, lr, ror r8
    1634:	00010d12 	andeq	r0, r1, r2, lsl sp
    1638:	008e9c00 	addeq	r9, lr, r0, lsl #24
    163c:	00012000 	andeq	r2, r1, r0
    1640:	04d90100 	ldrbeq	r0, [r9], #256	; 0x100
    1644:	00013213 	andeq	r3, r1, r3, lsl r2
    1648:	0008ad00 	andeq	sl, r8, r0, lsl #26
    164c:	01281300 			; <UNDEFINED> instruction: 0x01281300
    1650:	08c10000 	stmiaeq	r1, {}^	; <UNPREDICTABLE>
    1654:	1e130000 	cdpne	0, 1, cr0, cr3, cr0, {0}
    1658:	d9000001 	stmdble	r0, {r0}
    165c:	14000008 	strne	r0, [r0], #-8
    1660:	00008e9c 	muleq	r0, ip, lr
    1664:	00000120 	andeq	r0, r0, r0, lsr #2
    1668:	00013d15 	andeq	r3, r1, r5, lsl sp
    166c:	0008f100 	andeq	pc, r8, r0, lsl #2
    1670:	01471500 	cmpeq	r7, r0, lsl #10
    1674:	091d0000 	ldmdbeq	sp, {}	; <UNPREDICTABLE>
    1678:	51150000 	tstpl	r5, r0
    167c:	65000001 	strvs	r0, [r0, #-1]
    1680:	15000009 	strne	r0, [r0, #-9]
    1684:	0000015b 	andeq	r0, r0, fp, asr r1
    1688:	0000098d 	andeq	r0, r0, sp, lsl #19
    168c:	00016715 	andeq	r6, r1, r5, lsl r7
    1690:	0009ab00 	andeq	sl, r9, r0, lsl #22
    1694:	01731500 	cmneq	r3, r0, lsl #10
    1698:	09be0000 	ldmibeq	lr!, {}	; <UNPREDICTABLE>
    169c:	7d150000 	ldcvc	0, cr0, [r5, #-0]
    16a0:	01000001 	tsteq	r0, r1
    16a4:	0000000a 	andeq	r0, r0, sl
    16a8:	c3000000 	movwgt	r0, #0
    16ac:	04000001 	streq	r0, [r0], #-1
    16b0:	00099100 	andeq	r9, r9, r0, lsl #2
    16b4:	fb010400 	blx	426be <__bss_end+0x366be>
    16b8:	01000005 	tsteq	r0, r5
    16bc:	000005bf 			; <UNDEFINED> instruction: 0x000005bf
    16c0:	00000429 	andeq	r0, r0, r9, lsr #8
    16c4:	00008fec 	andeq	r8, r0, ip, ror #31
    16c8:	00000120 	andeq	r0, r0, r0, lsr #2
    16cc:	000007c3 	andeq	r0, r0, r3, asr #15
    16d0:	2a070802 	bcs	1c36e0 <__end+0x966e0>
    16d4:	02000000 	andeq	r0, r0, #0
    16d8:	00340704 	eorseq	r0, r4, r4, lsl #14
    16dc:	04030000 	streq	r0, [r3], #-0
    16e0:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    16e4:	08010200 	stmdaeq	r1, {r9}
    16e8:	00000059 	andeq	r0, r0, r9, asr r0
    16ec:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
    16f0:	02000000 	andeq	r0, r0, #0
    16f4:	002f0704 	eoreq	r0, pc, r4, lsl #14
    16f8:	04020000 	streq	r0, [r2], #-0
    16fc:	00029307 	andeq	r9, r2, r7, lsl #6
    1700:	06010200 	streq	r0, [r1], -r0, lsl #4
    1704:	0000005b 	andeq	r0, r0, fp, asr r0
    1708:	23050202 	movwcs	r0, #20994	; 0x5202
    170c:	02000001 	andeq	r0, r0, #1
    1710:	00fe0702 	rscseq	r0, lr, r2, lsl #14
    1714:	b7040000 	strlt	r0, [r4, -r0]
    1718:	02000005 	andeq	r0, r0, #5
    171c:	00002c82 	andeq	r2, r0, r2, lsl #25
    1720:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    1724:	00000000 	andeq	r0, r0, r0
    1728:	0005e504 	andeq	lr, r5, r4, lsl #10
    172c:	25860200 	strcs	r0, [r6, #512]	; 0x200
    1730:	02000000 	andeq	r0, r0, #0
    1734:	05f50404 	ldrbeq	r0, [r5, #1028]!	; 0x404
    1738:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    173c:	0005ed03 	andeq	lr, r5, r3, lsl #26
    1740:	04080200 	streq	r0, [r8], #-512	; 0xfffffe00
    1744:	000006c0 	andeq	r0, r0, r0, asr #13
    1748:	b8031002 	stmdalt	r3, {r1, ip}
    174c:	05000006 	streq	r0, [r0, #-6]
    1750:	000005aa 	andeq	r0, r0, sl, lsr #11
    1754:	7d03b001 	stcvc	0, cr11, [r3, #-4]
    1758:	03000000 	movweq	r0, #0
    175c:	0000011f 	andeq	r0, r0, pc, lsl r1
    1760:	01006e06 	tsteq	r0, r6, lsl #28
    1764:	007d03b0 	ldrhteq	r0, [sp], #-48	; 0xffffffd0
    1768:	64060000 	strvs	r0, [r6], #-0
    176c:	03b00100 	movseq	r0, #0, 2
    1770:	0000007d 	andeq	r0, r0, sp, ror r0
    1774:	00707206 	rsbseq	r7, r0, r6, lsl #4
    1778:	1f03b001 	svcne	0x0003b001
    177c:	07000001 	streq	r0, [r0, -r1]
    1780:	b2010071 	andlt	r0, r1, #113	; 0x71
    1784:	00007d03 	andeq	r7, r0, r3, lsl #26
    1788:	00720700 	rsbseq	r0, r2, r0, lsl #14
    178c:	7d03b201 	sfmvc	f3, 1, [r3, #-4]
    1790:	07000000 	streq	r0, [r0, -r0]
    1794:	b2010079 	andlt	r0, r1, #121	; 0x79
    1798:	00007d03 	andeq	r7, r0, r3, lsl #26
    179c:	7a6c0700 	bvc	1b033a4 <__user_program+0x18033a4>
    17a0:	b3010031 	movwlt	r0, #4145	; 0x1031
    17a4:	00006b03 	andeq	r6, r0, r3, lsl #22
    17a8:	7a6c0700 	bvc	1b033b0 <__user_program+0x18033b0>
    17ac:	b3010032 	movwlt	r0, #4146	; 0x1032
    17b0:	00006b03 	andeq	r6, r0, r3, lsl #22
    17b4:	00690700 	rsbeq	r0, r9, r0, lsl #14
    17b8:	6b03b301 	blvs	ee3c4 <__bss_end+0xe23c4>
    17bc:	07000000 	streq	r0, [r0, -r0]
    17c0:	b301006b 	movwlt	r0, #4203	; 0x106b
    17c4:	00006b03 	andeq	r6, r0, r3, lsl #22
    17c8:	04080000 	streq	r0, [r8], #-0
    17cc:	0000007d 	andeq	r0, r0, sp, ror r0
    17d0:	00059209 	andeq	r9, r5, r9, lsl #4
    17d4:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
    17d8:	0000007d 	andeq	r0, r0, sp, ror r0
    17dc:	00008fec 	andeq	r8, r0, ip, ror #31
    17e0:	00000120 	andeq	r0, r0, r0, lsr #2
    17e4:	6e0a9c01 	cdpvs	12, 0, cr9, cr10, cr1, {0}
    17e8:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
    17ec:	0000007d 	andeq	r0, r0, sp, ror r0
    17f0:	00000a1f 	andeq	r0, r0, pc, lsl sl
    17f4:	0100640a 	tsteq	r0, sl, lsl #8
    17f8:	007d0506 	rsbseq	r0, sp, r6, lsl #10
    17fc:	0a470000 	beq	11c1804 <__user_program+0xec1804>
    1800:	a40b0000 	strge	r0, [fp], #-0
    1804:	ec000000 	stc	0, cr0, [r0], {-0}
    1808:	3000008f 	andcc	r0, r0, pc, lsl #1
    180c:	01000000 	mrseq	r0, (UNDEF: 0)
    1810:	c90c0508 	stmdbgt	ip, {r3, r8, sl}
    1814:	00000000 	andeq	r0, r0, r0
    1818:	0000bf0d 	andeq	fp, r0, sp, lsl #30
    181c:	000a6f00 	andeq	r6, sl, r0, lsl #30
    1820:	00b50d00 	adcseq	r0, r5, r0, lsl #26
    1824:	0a870000 	beq	fe1c182c <__user_program+0xfdec182c>
    1828:	300e0000 	andcc	r0, lr, r0
    182c:	0f000000 	svceq	0x00000000
    1830:	000000d4 	ldrdeq	r0, [r0], -r4
    1834:	00000a9f 	muleq	r0, pc, sl	; <UNPREDICTABLE>
    1838:	0000de0f 	andeq	sp, r0, pc, lsl #28
    183c:	000aeb00 	andeq	lr, sl, r0, lsl #22
    1840:	00e80f00 	rsceq	r0, r8, r0, lsl #30
    1844:	0b480000 	bleq	120184c <__user_program+0xf0184c>
    1848:	f20f0000 	vhadd.s8	d0, d15, d0
    184c:	70000000 	andvc	r0, r0, r0
    1850:	0f00000b 	svceq	0x0000000b
    1854:	000000fe 	strdeq	r0, [r0], -lr
    1858:	00000b8e 	andeq	r0, r0, lr, lsl #23
    185c:	00010a0f 	andeq	r0, r1, pc, lsl #20
    1860:	000ba100 	andeq	sl, fp, r0, lsl #2
    1864:	01140f00 	tsteq	r4, r0, lsl #30
    1868:	0be40000 	bleq	ff901870 <__user_program+0xff601870>
    186c:	00000000 	andeq	r0, r0, r0
    1870:	00aa0000 	adceq	r0, sl, r0
    1874:	00020000 	andeq	r0, r2, r0
    1878:	00000a58 	andeq	r0, r0, r8, asr sl
    187c:	08550104 	ldmdaeq	r5, {r2, r8}^
    1880:	910c0000 	mrsls	r0, (UNDEF: 12)
    1884:	91340000 	teqls	r4, r0
    1888:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
    188c:	2f2e2e2f 	svccs	0x002e2e2f
    1890:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
    1894:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 16d4 <__start-0x692c>
    1898:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    189c:	6f632f63 	svcvs	0x00632f63
    18a0:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    18a4:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    18a8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    18ac:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
    18b0:	532e7363 			; <UNDEFINED> instruction: 0x532e7363
    18b4:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    18b8:	2f646c69 	svccs	0x00646c69
    18bc:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    18c0:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    18c4:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    18c8:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    18cc:	52442d69 	subpl	r2, r4, #6720	; 0x1a40
    18d0:	414c6e52 	cmpmi	ip, r2, asr lr
    18d4:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    18d8:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    18dc:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    18e0:	61652d65 	cmnvs	r5, r5, ror #26
    18e4:	342d6962 	strtcc	r6, [sp], #-2402	; 0xfffff69e
    18e8:	332e392e 			; <UNDEFINED> instruction: 0x332e392e
    18ec:	6e76732b 	cdpvs	3, 7, cr7, cr6, cr11, {1}
    18f0:	31313332 	teqcc	r1, r2, lsr r3
    18f4:	622f3737 	eorvs	r3, pc, #14417920	; 0xdc0000
    18f8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    18fc:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1900:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1904:	61652d65 	cmnvs	r5, r5, ror #26
    1908:	6c2f6962 	stcvs	9, cr6, [pc], #-392	; 1788 <__start-0x6878>
    190c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1910:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
    1914:	53412055 	movtpl	r2, #4181	; 0x1055
    1918:	322e3220 	eorcc	r3, lr, #32, 4
    191c:	80010035 	andhi	r0, r1, r5, lsr r0
    1920:	000000aa 	andeq	r0, r0, sl, lsr #1
    1924:	0a6c0002 	beq	1b01934 <__user_program+0x1801934>
    1928:	01040000 	mrseq	r0, (UNDEF: 4)
    192c:	000008ba 			; <UNDEFINED> instruction: 0x000008ba
    1930:	00009134 	andeq	r9, r0, r4, lsr r1
    1934:	0000917c 	andeq	r9, r0, ip, ror r1
    1938:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    193c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1940:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    1944:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1948:	2f636367 	svccs	0x00636367
    194c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    1950:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
    1954:	6c2f6d72 	stcvs	13, cr6, [pc], #-456	; 1794 <__start-0x686c>
    1958:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
    195c:	73636e75 	cmnvc	r3, #1872	; 0x750
    1960:	2f00532e 	svccs	0x0000532e
    1964:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1968:	63672f64 	cmnvs	r7, #100, 30	; 0x190
    196c:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    1970:	6f6e2d6d 	svcvs	0x006e2d6d
    1974:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1978:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    197c:	6e525244 	cdpvs	2, 5, cr5, cr2, cr4, {2}
    1980:	672f414c 	strvs	r4, [pc, -ip, asr #2]!
    1984:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    1988:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    198c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1990:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1994:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
    1998:	732b332e 			; <UNDEFINED> instruction: 0x732b332e
    199c:	33326e76 	teqcc	r2, #1888	; 0x760
    19a0:	37373131 			; <UNDEFINED> instruction: 0x37373131
    19a4:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    19a8:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
    19ac:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    19b0:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    19b4:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    19b8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    19bc:	00636367 	rsbeq	r6, r3, r7, ror #6
    19c0:	20554e47 	subscs	r4, r5, r7, asr #28
    19c4:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
    19c8:	0035322e 	eorseq	r3, r5, lr, lsr #4
    19cc:	Address 0x00000000000019cc is out of bounds.


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
 448:	01040500 	tsteq	r4, r0, lsl #10
 44c:	0b3a0b0b 	bleq	e83080 <__user_program+0xb83080>
 450:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 454:	28060000 	stmdacs	r6, {}	; <UNPREDICTABLE>
 458:	1c0e0300 	stcne	3, cr0, [lr], {-0}
 45c:	0700000d 	streq	r0, [r0, -sp]
 460:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 464:	0b3a0e03 	bleq	e83c78 <__user_program+0xb83c78>
 468:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 46c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 470:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 474:	00130119 	andseq	r0, r3, r9, lsl r1
 478:	00050800 	andeq	r0, r5, r0, lsl #16
 47c:	0b3a0803 	bleq	e82490 <__user_program+0xb82490>
 480:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 484:	00001702 	andeq	r1, r0, r2, lsl #14
 488:	01828909 	orreq	r8, r2, r9, lsl #18
 48c:	31011101 	tstcc	r1, r1, lsl #2
 490:	00130113 	andseq	r0, r3, r3, lsl r1
 494:	828a0a00 	addhi	r0, sl, #0, 20
 498:	18020001 	stmdane	r2, {r0}
 49c:	00184291 	mulseq	r8, r1, r2
 4a0:	82890b00 	addhi	r0, r9, #0, 22
 4a4:	01110101 	tsteq	r1, r1, lsl #2
 4a8:	00001331 	andeq	r1, r0, r1, lsr r3
 4ac:	3f012e0c 	svccc	0x00012e0c
 4b0:	3a0e0319 	bcc	38111c <__user_program+0x8111c>
 4b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 4b8:	11134919 	tstne	r3, r9, lsl r9
 4bc:	40061201 	andmi	r1, r6, r1, lsl #4
 4c0:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 4c4:	00001301 	andeq	r1, r0, r1, lsl #6
 4c8:	0300050d 	movweq	r0, #1293	; 0x50d
 4cc:	3b0b3a0e 	blcc	2ced0c <__end+0x1a1d0c>
 4d0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 4d4:	0e000017 	mcreq	0, 0, r0, cr0, cr7, {0}
 4d8:	08030034 	stmdaeq	r3, {r2, r4, r5}
 4dc:	0b3b0b3a 	bleq	ec31cc <__user_program+0xbc31cc>
 4e0:	17021349 	strne	r1, [r2, -r9, asr #6]
 4e4:	340f0000 	strcc	r0, [pc], #-0	; 4ec <__start-0x7b14>
 4e8:	3a0e0300 	bcc	3810f0 <__user_program+0x810f0>
 4ec:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 4f0:	00170213 	andseq	r0, r7, r3, lsl r2
 4f4:	000f1000 	andeq	r1, pc, r0
 4f8:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 4fc:	2e110000 	cdpcs	0, 1, cr0, cr1, cr0, {0}
 500:	03193f01 	tsteq	r9, #1, 30
 504:	3b0b3a0e 	blcc	2ced44 <__end+0x1a1d44>
 508:	3c19270b 	ldccc	7, cr2, [r9], {11}
 50c:	00130119 	andseq	r0, r3, r9, lsl r1
 510:	00051200 	andeq	r1, r5, r0, lsl #4
 514:	00001349 	andeq	r1, r0, r9, asr #6
 518:	49003513 	stmdbmi	r0, {r0, r1, r4, r8, sl, ip, sp}
 51c:	14000013 	strne	r0, [r0], #-19	; 0xffffffed
 520:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 524:	0b3a0e03 	bleq	e83d38 <__user_program+0xb83d38>
 528:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 52c:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 530:	00001301 	andeq	r1, r0, r1, lsl #6
 534:	00001815 	andeq	r1, r0, r5, lsl r8
 538:	00261600 	eoreq	r1, r6, r0, lsl #12
 53c:	00001349 	andeq	r1, r0, r9, asr #6
 540:	01110100 	tsteq	r1, r0, lsl #2
 544:	0b130e25 	bleq	4c3de0 <__user_program+0x1c3de0>
 548:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 54c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 550:	00001710 	andeq	r1, r0, r0, lsl r7
 554:	0b002402 	bleq	9564 <__clzsi2+0x430>
 558:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 55c:	0300000e 	movweq	r0, #14
 560:	0b0b0024 	bleq	2c05f8 <__end+0x1935f8>
 564:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 568:	16040000 	strne	r0, [r4], -r0
 56c:	3a0e0300 	bcc	381174 <__user_program+0x81174>
 570:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 574:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 578:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 57c:	0b3a0e03 	bleq	e83d90 <__user_program+0xb83d90>
 580:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 584:	06120111 			; <UNDEFINED> instruction: 0x06120111
 588:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 58c:	00130119 	andseq	r0, r3, r9, lsl r1
 590:	00050600 	andeq	r0, r5, r0, lsl #12
 594:	0b3a0e03 	bleq	e83da8 <__user_program+0xb83da8>
 598:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 59c:	00001702 	andeq	r1, r0, r2, lsl #14
 5a0:	03003407 	movweq	r3, #1031	; 0x407
 5a4:	3b0b3a08 	blcc	2cedcc <__end+0x1a1dcc>
 5a8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 5ac:	08000018 	stmdaeq	r0, {r3, r4}
 5b0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 5b4:	0b3b0b3a 	bleq	ec32a4 <__user_program+0xbc32a4>
 5b8:	17021349 	strne	r1, [r2, -r9, asr #6]
 5bc:	34090000 	strcc	r0, [r9], #-0
 5c0:	3a0e0300 	bcc	3811c8 <__user_program+0x811c8>
 5c4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 5c8:	00180213 	andseq	r0, r8, r3, lsl r2
 5cc:	82890a00 	addhi	r0, r9, #0, 20
 5d0:	01110101 	tsteq	r1, r1, lsl #2
 5d4:	13011331 	movwne	r1, #4913	; 0x1331
 5d8:	8a0b0000 	bhi	2c05e0 <__end+0x1935e0>
 5dc:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
 5e0:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
 5e4:	890c0000 	stmdbhi	ip, {}	; <UNPREDICTABLE>
 5e8:	11010182 	smlabbne	r1, r2, r1, r0
 5ec:	00133101 	andseq	r3, r3, r1, lsl #2
 5f0:	01010d00 	tsteq	r1, r0, lsl #26
 5f4:	13011349 	movwne	r1, #4937	; 0x1349
 5f8:	210e0000 	mrscs	r0, (UNDEF: 14)
 5fc:	2f134900 	svccs	0x00134900
 600:	0f00000b 	svceq	0x0000000b
 604:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 608:	0b3a0e03 	bleq	e83e1c <__user_program+0xb83e1c>
 60c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 610:	06120111 			; <UNDEFINED> instruction: 0x06120111
 614:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 618:	00130119 	andseq	r0, r3, r9, lsl r1
 61c:	012e1000 			; <UNDEFINED> instruction: 0x012e1000
 620:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 624:	0b3b0b3a 	bleq	ec3314 <__user_program+0xbc3314>
 628:	13491927 	movtne	r1, #39207	; 0x9927
 62c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 630:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 634:	00130119 	andseq	r0, r3, r9, lsl r1
 638:	82891100 	addhi	r1, r9, #0, 2
 63c:	01110001 	tsteq	r1, r1
 640:	00001331 	andeq	r1, r0, r1, lsr r3
 644:	3f012e12 	svccc	0x00012e12
 648:	3a0e0319 	bcc	3812b4 <__user_program+0x812b4>
 64c:	110b3b0b 	tstne	fp, fp, lsl #22
 650:	40061201 	andmi	r1, r6, r1, lsl #4
 654:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 658:	00001301 	andeq	r1, r0, r1, lsl #6
 65c:	03003413 	movweq	r3, #1043	; 0x413
 660:	3b0b3a08 	blcc	2cee88 <__end+0x1a1e88>
 664:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 668:	14000017 	strne	r0, [r0], #-23	; 0xffffffe9
 66c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 670:	0b3a0e03 	bleq	e83e84 <__user_program+0xb83e84>
 674:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 678:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 67c:	00001301 	andeq	r1, r0, r1, lsl #6
 680:	49000515 	stmdbmi	r0, {r0, r2, r4, r8, sl}
 684:	16000013 			; <UNDEFINED> instruction: 0x16000013
 688:	00000018 	andeq	r0, r0, r8, lsl r0
 68c:	0b000f17 	bleq	42f0 <__start-0x3d10>
 690:	0013490b 	andseq	r4, r3, fp, lsl #18
 694:	00261800 	eoreq	r1, r6, r0, lsl #16
 698:	00001349 	andeq	r1, r0, r9, asr #6
 69c:	3f012e19 	svccc	0x00012e19
 6a0:	3a0e0319 	bcc	38130c <__user_program+0x8130c>
 6a4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 6a8:	3c134919 	ldccc	9, cr4, [r3], {25}
 6ac:	00000019 	andeq	r0, r0, r9, lsl r0
 6b0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 6b4:	030b130e 	movweq	r1, #45838	; 0xb30e
 6b8:	110e1b0e 	tstne	lr, lr, lsl #22
 6bc:	10061201 	andne	r1, r6, r1, lsl #4
 6c0:	02000017 	andeq	r0, r0, #23
 6c4:	0b0b0024 	bleq	2c075c <__end+0x19375c>
 6c8:	0e030b3e 	vmoveq.16	d3[0], r0
 6cc:	24030000 	strcs	r0, [r3], #-0
 6d0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 6d4:	0008030b 	andeq	r0, r8, fp, lsl #6
 6d8:	00160400 	andseq	r0, r6, r0, lsl #8
 6dc:	0b3a0e03 	bleq	e83ef0 <__user_program+0xb83ef0>
 6e0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 6e4:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 6e8:	03193f01 	tsteq	r9, #1, 30
 6ec:	3b0b3a0e 	blcc	2cef2c <__end+0x1a1f2c>
 6f0:	1119270b 	tstne	r9, fp, lsl #14
 6f4:	40061201 	andmi	r1, r6, r1, lsl #4
 6f8:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 6fc:	00001301 	andeq	r1, r0, r1, lsl #6
 700:	03000506 	movweq	r0, #1286	; 0x506
 704:	3b0b3a0e 	blcc	2cef44 <__end+0x1a1f44>
 708:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 70c:	07000018 	smladeq	r0, r8, r0, r0
 710:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 714:	0b3b0b3a 	bleq	ec3404 <__user_program+0xbc3404>
 718:	17021349 	strne	r1, [r2, -r9, asr #6]
 71c:	34080000 	strcc	r0, [r8], #-0
 720:	3a080300 	bcc	201328 <__end+0xd4328>
 724:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 728:	00170213 	andseq	r0, r7, r3, lsl r2
 72c:	000f0900 	andeq	r0, pc, r0, lsl #18
 730:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 734:	350a0000 	strcc	r0, [sl, #-0]
 738:	00134900 	andseq	r4, r3, r0, lsl #18
 73c:	012e0b00 			; <UNDEFINED> instruction: 0x012e0b00
 740:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 744:	0b3b0b3a 	bleq	ec3434 <__user_program+0xbc3434>
 748:	13491927 	movtne	r1, #39207	; 0x9927
 74c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 750:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 754:	0c000019 	stceq	0, cr0, [r0], {25}
 758:	08030005 	stmdaeq	r3, {r0, r2}
 75c:	0b3b0b3a 	bleq	ec344c <__user_program+0xbc344c>
 760:	17021349 	strne	r1, [r2, -r9, asr #6]
 764:	01000000 	mrseq	r0, (UNDEF: 0)
 768:	06100011 			; <UNDEFINED> instruction: 0x06100011
 76c:	01120111 	tsteq	r2, r1, lsl r1
 770:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 774:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 778:	01000000 	mrseq	r0, (UNDEF: 0)
 77c:	06100011 			; <UNDEFINED> instruction: 0x06100011
 780:	01120111 	tsteq	r2, r1, lsl r1
 784:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 788:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 78c:	01000000 	mrseq	r0, (UNDEF: 0)
 790:	06100011 			; <UNDEFINED> instruction: 0x06100011
 794:	01120111 	tsteq	r2, r1, lsl r1
 798:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 79c:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 7a0:	01000000 	mrseq	r0, (UNDEF: 0)
 7a4:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 7a8:	0e030b13 	vmoveq.32	d3[0], r0
 7ac:	01110e1b 	tsteq	r1, fp, lsl lr
 7b0:	17100612 			; <UNDEFINED> instruction: 0x17100612
 7b4:	24020000 	strcs	r0, [r2], #-0
 7b8:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 7bc:	000e030b 	andeq	r0, lr, fp, lsl #6
 7c0:	012e0300 			; <UNDEFINED> instruction: 0x012e0300
 7c4:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 7c8:	0b3b0b3a 	bleq	ec34b8 <__user_program+0xbc34b8>
 7cc:	13491927 	movtne	r1, #39207	; 0x9927
 7d0:	06120111 			; <UNDEFINED> instruction: 0x06120111
 7d4:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 7d8:	00130119 	andseq	r0, r3, r9, lsl r1
 7dc:	00050400 	andeq	r0, r5, r0, lsl #8
 7e0:	0b3a0803 	bleq	e827f4 <__user_program+0xb827f4>
 7e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 7e8:	00001702 	andeq	r1, r0, r2, lsl #14
 7ec:	03000505 	movweq	r0, #1285	; 0x505
 7f0:	3b0b3a0e 	blcc	2cf030 <__end+0x1a2030>
 7f4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 7f8:	06000018 			; <UNDEFINED> instruction: 0x06000018
 7fc:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 800:	0b3b0b3a 	bleq	ec34f0 <__user_program+0xbc34f0>
 804:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 808:	89070000 	stmdbhi	r7, {}	; <UNPREDICTABLE>
 80c:	11010182 	smlabbne	r1, r2, r1, r0
 810:	00133101 	andseq	r3, r3, r1, lsl #2
 814:	828a0800 	addhi	r0, sl, #0, 16
 818:	18020001 	stmdane	r2, {r0}
 81c:	00184291 	mulseq	r8, r1, r2
 820:	000f0900 	andeq	r0, pc, r0, lsl #18
 824:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 828:	2e0a0000 	cdpcs	0, 0, cr0, cr10, cr0, {0}
 82c:	03193f01 	tsteq	r9, #1, 30
 830:	3b0b3a0e 	blcc	2cf070 <__end+0x1a2070>
 834:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 838:	01193c13 	tsteq	r9, r3, lsl ip
 83c:	0b000013 	bleq	890 <__start-0x7770>
 840:	13490005 	movtne	r0, #36869	; 0x9005
 844:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 848:	03193f01 	tsteq	r9, #1, 30
 84c:	3b0b3a0e 	blcc	2cf08c <__end+0x1a208c>
 850:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 854:	00193c13 	andseq	r3, r9, r3, lsl ip
 858:	11010000 	mrsne	r0, (UNDEF: 1)
 85c:	11061000 	mrsne	r1, (UNDEF: 6)
 860:	03011201 	movweq	r1, #4609	; 0x1201
 864:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 868:	00051308 	andeq	r1, r5, r8, lsl #6
 86c:	11010000 	mrsne	r0, (UNDEF: 1)
 870:	130e2501 	movwne	r2, #58625	; 0xe501
 874:	1b0e030b 	blne	3814a8 <__user_program+0x814a8>
 878:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 87c:	00171006 	andseq	r1, r7, r6
 880:	00240200 	eoreq	r0, r4, r0, lsl #4
 884:	0b3e0b0b 	bleq	f834b8 <__user_program+0xc834b8>
 888:	00000e03 	andeq	r0, r0, r3, lsl #28
 88c:	0b002403 	bleq	98a0 <__clzsi2+0x76c>
 890:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 894:	04000008 	streq	r0, [r0], #-8
 898:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 89c:	0b3b0b3a 	bleq	ec358c <__user_program+0xbc358c>
 8a0:	00001349 	andeq	r1, r0, r9, asr #6
 8a4:	03011305 	movweq	r1, #4869	; 0x1305
 8a8:	3a0b0b0e 	bcc	2c34e8 <__end+0x1964e8>
 8ac:	01053b0b 	tsteq	r5, fp, lsl #22
 8b0:	06000013 			; <UNDEFINED> instruction: 0x06000013
 8b4:	0803000d 	stmdaeq	r3, {r0, r2, r3}
 8b8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 8bc:	0b381349 	bleq	e055e8 <__user_program+0xb055e8>
 8c0:	0d070000 	stceq	0, cr0, [r7, #-0]
 8c4:	3a0e0300 	bcc	3814cc <__user_program+0x814cc>
 8c8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 8cc:	000b3813 	andeq	r3, fp, r3, lsl r8
 8d0:	01170800 	tsteq	r7, r0, lsl #16
 8d4:	0b3a0b0b 	bleq	e83508 <__user_program+0xb83508>
 8d8:	1301053b 	movwne	r0, #5435	; 0x153b
 8dc:	0d090000 	stceq	0, cr0, [r9, #-0]
 8e0:	3a080300 	bcc	2014e8 <__end+0xd44e8>
 8e4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 8e8:	0a000013 	beq	93c <__start-0x76c4>
 8ec:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 8f0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 8f4:	00001349 	andeq	r1, r0, r9, asr #6
 8f8:	03012e0b 	movweq	r2, #7691	; 0x1e0b
 8fc:	3b0b3a0e 	blcc	2cf13c <__end+0x1a213c>
 900:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
 904:	010b2013 	tsteq	fp, r3, lsl r0
 908:	0c000013 	stceq	0, cr0, [r0], {19}
 90c:	08030005 	stmdaeq	r3, {r0, r2}
 910:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 914:	00001349 	andeq	r1, r0, r9, asr #6
 918:	0300340d 	movweq	r3, #1037	; 0x40d
 91c:	3b0b3a08 	blcc	2cf144 <__end+0x1a2144>
 920:	00134905 	andseq	r4, r3, r5, lsl #18
 924:	000f0e00 	andeq	r0, pc, r0, lsl #28
 928:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 92c:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
 930:	03193f01 	tsteq	r9, #1, 30
 934:	3b0b3a0e 	blcc	2cf174 <__end+0x1a2174>
 938:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
 93c:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 940:	96184006 	ldrls	r4, [r8], -r6
 944:	00001942 	andeq	r1, r0, r2, asr #18
 948:	03000510 	movweq	r0, #1296	; 0x510
 94c:	3b0b3a08 	blcc	2cf174 <__end+0x1a2174>
 950:	02134905 	andseq	r4, r3, #81920	; 0x14000
 954:	11000017 	tstne	r0, r7, lsl r0
 958:	08030034 	stmdaeq	r3, {r2, r4, r5}
 95c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 960:	17021349 	strne	r1, [r2, -r9, asr #6]
 964:	1d120000 	ldcne	0, cr0, [r2, #-0]
 968:	11133101 	tstne	r3, r1, lsl #2
 96c:	58061201 	stmdapl	r6, {r0, r9, ip}
 970:	0005590b 	andeq	r5, r5, fp, lsl #18
 974:	00051300 	andeq	r1, r5, r0, lsl #6
 978:	17021331 	smladxne	r2, r1, r3, r1
 97c:	0b140000 	bleq	500984 <__user_program+0x200984>
 980:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 984:	15000006 	strne	r0, [r0, #-6]
 988:	13310034 	teqne	r1, #52	; 0x34
 98c:	00001702 	andeq	r1, r0, r2, lsl #14
 990:	01110100 	tsteq	r1, r0, lsl #2
 994:	0b130e25 	bleq	4c4230 <__user_program+0x1c4230>
 998:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 99c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 9a0:	00001710 	andeq	r1, r0, r0, lsl r7
 9a4:	0b002402 	bleq	99b4 <__clzsi2+0x880>
 9a8:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 9ac:	0300000e 	movweq	r0, #14
 9b0:	0b0b0024 	bleq	2c0a48 <__end+0x193a48>
 9b4:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 9b8:	16040000 	strne	r0, [r4], -r0
 9bc:	3a0e0300 	bcc	3815c4 <__user_program+0x815c4>
 9c0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 9c4:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 9c8:	0e03012e 	adfeqsp	f0, f3, #0.5
 9cc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9d0:	13491927 	movtne	r1, #39207	; 0x9927
 9d4:	13010b20 	movwne	r0, #6944	; 0x1b20
 9d8:	05060000 	streq	r0, [r6, #-0]
 9dc:	3a080300 	bcc	2015e4 <__end+0xd45e4>
 9e0:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 9e4:	07000013 	smladeq	r0, r3, r0, r0
 9e8:	08030034 	stmdaeq	r3, {r2, r4, r5}
 9ec:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9f0:	00001349 	andeq	r1, r0, r9, asr #6
 9f4:	0b000f08 	bleq	461c <__start-0x39e4>
 9f8:	0013490b 	andseq	r4, r3, fp, lsl #18
 9fc:	012e0900 			; <UNDEFINED> instruction: 0x012e0900
 a00:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 a04:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 a08:	13491927 	movtne	r1, #39207	; 0x9927
 a0c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 a10:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 a14:	0a000019 	beq	a80 <__start-0x7580>
 a18:	08030005 	stmdaeq	r3, {r0, r2}
 a1c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 a20:	17021349 	strne	r1, [r2, -r9, asr #6]
 a24:	1d0b0000 	stcne	0, cr0, [fp, #-0]
 a28:	52133101 	andspl	r3, r3, #1073741824	; 0x40000000
 a2c:	58175501 	ldmdapl	r7, {r0, r8, sl, ip, lr}
 a30:	0005590b 	andeq	r5, r5, fp, lsl #18
 a34:	00050c00 	andeq	r0, r5, r0, lsl #24
 a38:	0b1c1331 	bleq	705704 <__user_program+0x405704>
 a3c:	050d0000 	streq	r0, [sp, #-0]
 a40:	02133100 	andseq	r3, r3, #0, 2
 a44:	0e000017 	mcreq	0, 0, r0, cr0, cr7, {0}
 a48:	1755010b 	ldrbne	r0, [r5, -fp, lsl #2]
 a4c:	340f0000 	strcc	r0, [pc], #-0	; a54 <__start-0x75ac>
 a50:	02133100 	andseq	r3, r3, #0, 2
 a54:	00000017 	andeq	r0, r0, r7, lsl r0
 a58:	10001101 	andne	r1, r0, r1, lsl #2
 a5c:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 a60:	1b080301 	blne	20166c <__end+0xd466c>
 a64:	13082508 	movwne	r2, #34056	; 0x8508
 a68:	00000005 	andeq	r0, r0, r5
 a6c:	10001101 	andne	r1, r0, r1, lsl #2
 a70:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 a74:	1b080301 	blne	201680 <__end+0xd4680>
 a78:	13082508 	movwne	r2, #34056	; 0x8508
 a7c:	00000005 	andeq	r0, r0, r5

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
  a4:	09d40002 	ldmibeq	r4, {r1}^
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008a00 	andeq	r8, r0, r0, lsl #20
  b4:	00000344 	andeq	r0, r0, r4, asr #6
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	0fb00002 	svceq	0x00b00002
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008d44 	andeq	r8, r0, r4, asr #26
  d4:	00000028 	andeq	r0, r0, r8, lsr #32
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	10b10002 	adcsne	r0, r1, r2
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008000 	andeq	r8, r0, r0
  f4:	00000054 	andeq	r0, r0, r4, asr r0
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	111c0002 	tstne	ip, r2
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008d6c 	andeq	r8, r0, ip, ror #26
 114:	00000044 	andeq	r0, r0, r4, asr #32
	...
 120:	0000001c 	andeq	r0, r0, ip, lsl r0
 124:	11860002 	orrne	r0, r6, r2
 128:	00040000 	andeq	r0, r4, r0
 12c:	00000000 	andeq	r0, r0, r0
 130:	00008db0 			; <UNDEFINED> instruction: 0x00008db0
 134:	0000003c 	andeq	r0, r0, ip, lsr r0
	...
 140:	0000001c 	andeq	r0, r0, ip, lsl r0
 144:	12300002 	eorsne	r0, r0, #2
 148:	00040000 	andeq	r0, r4, r0
 14c:	00000000 	andeq	r0, r0, r0
 150:	00008dec 	andeq	r8, r0, ip, ror #27
 154:	00000084 	andeq	r0, r0, r4, lsl #1
	...
 160:	0000001c 	andeq	r0, r0, ip, lsl r0
 164:	13940002 	orrsne	r0, r4, #2
 168:	00040000 	andeq	r0, r4, r0
 16c:	00000000 	andeq	r0, r0, r0
 170:	00008e70 	andeq	r8, r0, r0, ror lr
 174:	00000004 	andeq	r0, r0, r4
	...
 180:	0000001c 	andeq	r0, r0, ip, lsl r0
 184:	14420002 	strbne	r0, [r2], #-2
 188:	00040000 	andeq	r0, r4, r0
 18c:	00000000 	andeq	r0, r0, r0
 190:	00008e74 	andeq	r8, r0, r4, ror lr
 194:	00000178 	andeq	r0, r0, r8, ror r1
	...
 1a0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1a4:	16ab0002 	strtne	r0, [fp], r2
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	00008fec 	andeq	r8, r0, ip, ror #31
 1b4:	00000120 	andeq	r0, r0, r0, lsr #2
	...
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	18720002 	ldmdane	r2!, {r1}^
 1c8:	00040000 	andeq	r0, r4, r0
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	0000910c 	andeq	r9, r0, ip, lsl #2
 1d4:	00000028 	andeq	r0, r0, r8, lsr #32
	...
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	19200002 	stmdbne	r0!, {r1}
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
 300:	00f80101 	rscseq	r0, r8, r1, lsl #2
 304:	00020000 	andeq	r0, r2, r0
 308:	00000097 	muleq	r0, r7, r0
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
 38c:	63326900 	teqvs	r2, #0, 18
 390:	0300682e 	movweq	r6, #2094	; 0x82e
 394:	72700000 	rsbsvc	r0, r0, #0
 398:	6b746e69 	blvs	1d1bd44 <__user_program+0x1a1bd44>
 39c:	0300682e 	movweq	r6, #2094	; 0x82e
 3a0:	00000000 	andeq	r0, r0, r0
 3a4:	873c0205 	ldrhi	r0, [ip, -r5, lsl #4]!
 3a8:	10030000 	andne	r0, r3, r0
 3ac:	67683101 	strbvs	r3, [r8, -r1, lsl #2]!
 3b0:	4cbc8887 	ldcmi	8, cr8, [ip], #540	; 0x21c
 3b4:	51808730 	orrpl	r8, r0, r0, lsr r7
 3b8:	494b6785 	stmdbmi	fp, {r0, r2, r7, r8, r9, sl, sp, lr}^
 3bc:	6465834b 	strbtvs	r8, [r5], #-843	; 0xfffffcb5
 3c0:	844a0903 	strbhi	r0, [sl], #-2307	; 0xfffff6fd
 3c4:	0084342c 	addeq	r3, r4, ip, lsr #8
 3c8:	86010402 	strhi	r0, [r1], -r2, lsl #8
 3cc:	8a4ca1a2 	bhi	1328a5c <__user_program+0x1028a5c>
 3d0:	324c4cbc 	subcc	r4, ip, #188, 24	; 0xbc00
 3d4:	034a7003 	movteq	r7, #40963	; 0xa003
 3d8:	636c2e14 	cmnvs	ip, #20, 28	; 0x140
 3dc:	a0c16963 	sbcge	r6, r1, r3, ror #18
 3e0:	484cf46b 	stmdami	ip, {r0, r1, r3, r5, r6, sl, ip, sp, lr, pc}^
 3e4:	0200624c 	andeq	r6, r0, #76, 4	; 0xc0000004
 3e8:	4a060104 	bmi	180800 <__end+0x53800>
 3ec:	2c846e06 	stccs	14, cr6, [r4], {6}
 3f0:	02008434 	andeq	r8, r0, #52, 8	; 0x34000000
 3f4:	a2850104 	addge	r0, r5, #4, 2
 3f8:	000402a2 	andeq	r0, r4, r2, lsr #5
 3fc:	00f80101 	rscseq	r0, r8, r1, lsl #2
 400:	00020000 	andeq	r0, r2, r0
 404:	00000086 	andeq	r0, r0, r6, lsl #1
 408:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 40c:	0101000d 	tsteq	r1, sp
 410:	00000101 	andeq	r0, r0, r1, lsl #2
 414:	00000100 	andeq	r0, r0, r0, lsl #2
 418:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 41c:	5f6c656e 	svcpl	0x006c656e
 420:	70616c63 	rsbvc	r6, r1, r3, ror #24
 424:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 428:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 42c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 430:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 434:	6b62696c 	blvs	189a9ec <__user_program+0x159a9ec>
 438:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 43c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 440:	72656b00 	rsbvc	r6, r5, #0, 22
 444:	5f6c656e 	svcpl	0x006c656e
 448:	70616c63 	rsbvc	r6, r1, r3, ror #24
 44c:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 450:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 454:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 458:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 45c:	64610000 	strbtvs	r0, [r1], #-0
 460:	31303173 	teqcc	r0, r3, ror r1
 464:	00632e35 	rsbeq	r2, r3, r5, lsr lr
 468:	6b000001 	blvs	474 <__start-0x7b8c>
 46c:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 470:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 474:	00000200 	andeq	r0, r0, r0, lsl #4
 478:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 47c:	682e6b74 	stmdavs	lr!, {r2, r4, r5, r6, r8, r9, fp, sp, lr}
 480:	00000300 	andeq	r0, r0, r0, lsl #6
 484:	2e633269 	cdpcs	2, 6, cr3, cr3, cr9, {3}
 488:	00030068 	andeq	r0, r3, r8, rrx
 48c:	05000000 	streq	r0, [r0, #-0]
 490:	008a0002 	addeq	r0, sl, r2
 494:	010f0300 	mrseq	r0, SP_hyp
 498:	2f4b4b6c 	svccs	0x004b4b6c
 49c:	6b85bb6b 	blvs	fe16f250 <__user_program+0xfde6f250>
 4a0:	68bb4b67 	ldmvs	fp!, {r0, r1, r2, r5, r6, r8, r9, fp, lr}
 4a4:	514e844b 	cmppl	lr, fp, asr #8
 4a8:	bb6c9f68 	bllt	1b28250 <__user_program+0x1828250>
 4ac:	52696969 	rsbpl	r6, r9, #1720320	; 0x1a4000
 4b0:	68bb4b67 	ldmvs	fp!, {r0, r1, r2, r5, r6, r8, r9, fp, lr}
 4b4:	84678767 	strbthi	r8, [r7], #-1895	; 0xfffff899
 4b8:	4b866783 	blmi	fe19a2cc <__user_program+0xfde9a2cc>
 4bc:	84678384 	strbthi	r8, [r7], #-900	; 0xfffffc7c
 4c0:	d9a04f4d 	stmible	r0!, {r0, r2, r3, r6, r8, r9, sl, fp, lr}
 4c4:	2f2f2f4c 	svccs	0x002f2f4c
 4c8:	032e7903 			; <UNDEFINED> instruction: 0x032e7903
 4cc:	682f2e0c 	stmdavs	pc!, {r2, r3, r9, sl, fp, sp}	; <UNPREDICTABLE>
 4d0:	364a7a03 	strbcc	r7, [sl], -r3, lsl #20
 4d4:	84672f30 	strbthi	r2, [r7], #-3888	; 0xfffff0d0
 4d8:	0d034930 	stceq	9, cr4, [r3, #-192]	; 0xffffff40
 4dc:	7703462e 	strvc	r4, [r3, -lr, lsr #12]
 4e0:	4c83344a 	cfstrsmi	mvf3, [r3], {74}	; 0x4a
 4e4:	654c3165 	strbvs	r3, [ip, #-357]	; 0xfffffe9b
 4e8:	02040200 	andeq	r0, r4, #0, 4
 4ec:	032e7903 			; <UNDEFINED> instruction: 0x032e7903
 4f0:	832f4a0b 			; <UNDEFINED> instruction: 0x832f4a0b
 4f4:	0008024b 	andeq	r0, r8, fp, asr #4
 4f8:	006c0101 	rsbeq	r0, ip, r1, lsl #2
 4fc:	00020000 	andeq	r0, r2, r0
 500:	00000053 	andeq	r0, r0, r3, asr r0
 504:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 508:	0101000d 	tsteq	r1, sp
 50c:	00000101 	andeq	r0, r0, r1, lsl #2
 510:	00000100 	andeq	r0, r0, r0, lsl #2
 514:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
 518:	5f6c656e 	svcpl	0x006c656e
 51c:	70616c63 	rsbvc	r6, r1, r3, ror #24
 520:	65746564 	ldrbvs	r6, [r4, #-1380]!	; 0xfffffa9c
 524:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 528:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 52c:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
 530:	6b62696c 	blvs	189aae8 <__user_program+0x159aae8>
 534:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 538:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 53c:	74750000 	ldrbtvc	r0, [r5], #-0
 540:	2e736c69 	cdpcs	12, 7, cr6, cr3, cr9, {3}
 544:	00010063 	andeq	r0, r1, r3, rrx
 548:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xfffff500
 54c:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 550:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 554:	00000000 	andeq	r0, r0, r0
 558:	8d440205 	sfmhi	f0, 2, [r4, #-20]	; 0xffffffec
 55c:	13160000 	tstne	r6, #0
 560:	134e672f 	movtne	r6, #59183	; 0xe72f
 564:	0004024b 	andeq	r0, r4, fp, asr #4
 568:	00540101 	subseq	r0, r4, r1, lsl #2
 56c:	00020000 	andeq	r0, r2, r0
 570:	00000029 	andeq	r0, r0, r9, lsr #32
 574:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 578:	0101000d 	tsteq	r1, sp
 57c:	00000101 	andeq	r0, r0, r1, lsl #2
 580:	00000100 	andeq	r0, r0, r0, lsl #2
 584:	39343301 	ldmdbcc	r4!, {r0, r8, r9, ip, sp}
 588:	6b62696c 	blvs	189ab40 <__user_program+0x159ab40>
 58c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 590:	6f620000 	svcvs	0x00620000
 594:	532e746f 			; <UNDEFINED> instruction: 0x532e746f
 598:	00000100 	andeq	r0, r0, r0, lsl #2
 59c:	02050000 	andeq	r0, r5, #0
 5a0:	00008000 	andeq	r8, r0, r0
 5a4:	2f011b03 	svccs	0x00011b03
 5a8:	2f302f2f 	svccs	0x00302f2f
 5ac:	2f2f2f2f 	svccs	0x002f2f2f
 5b0:	2f2f312f 	svccs	0x002f312f
 5b4:	032f3331 			; <UNDEFINED> instruction: 0x032f3331
 5b8:	2f312e69 	svccs	0x00312e69
 5bc:	0002022f 	andeq	r0, r2, pc, lsr #4
 5c0:	004d0101 	subeq	r0, sp, r1, lsl #2
 5c4:	00020000 	andeq	r0, r2, r0
 5c8:	00000028 	andeq	r0, r0, r8, lsr #32
 5cc:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 5d0:	0101000d 	tsteq	r1, sp
 5d4:	00000101 	andeq	r0, r0, r1, lsl #2
 5d8:	00000100 	andeq	r0, r0, r0, lsl #2
 5dc:	39343301 	ldmdbcc	r4!, {r0, r8, r9, ip, sp}
 5e0:	6b62696c 	blvs	189ab98 <__user_program+0x159ab98>
 5e4:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 5e8:	72610000 	rsbvc	r0, r1, #0
 5ec:	00532e6d 	subseq	r2, r3, sp, ror #28
 5f0:	00000001 	andeq	r0, r0, r1
 5f4:	6c020500 	cfstr32vs	mvfx0, [r2], {-0}
 5f8:	0300008d 	movweq	r0, #141	; 0x8d
 5fc:	2f2f0110 	svccs	0x002f0110
 600:	2f332f33 	svccs	0x00332f33
 604:	2f2f2f33 	svccs	0x002f2f33
 608:	2f2f332f 	svccs	0x002f332f
 60c:	02022f2f 	andeq	r2, r2, #47, 30	; 0xbc
 610:	5a010100 	bpl	40a18 <__bss_end+0x34a18>
 614:	02000000 	andeq	r0, r0, #0
 618:	00003d00 	andeq	r3, r0, r0, lsl #26
 61c:	fb010200 	blx	40e26 <__bss_end+0x34e26>
 620:	01000d0e 	tsteq	r0, lr, lsl #26
 624:	00010101 	andeq	r0, r1, r1, lsl #2
 628:	00010000 	andeq	r0, r1, r0
 62c:	2e2e0100 	sufcse	f0, f6, f0
 630:	2f2e2e2f 	svccs	0x002e2e2f
 634:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 638:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 478 <__start-0x7b88>
 63c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 640:	6f632f63 	svcvs	0x00632f63
 644:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 648:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 64c:	70620000 	rsbvc	r0, r2, r0
 650:	2e696261 	cdpcs	2, 6, cr6, cr9, cr1, {3}
 654:	00010053 	andeq	r0, r1, r3, asr r0
 658:	05000000 	streq	r0, [r0, #-0]
 65c:	008db002 	addeq	fp, sp, r2
 660:	019b0300 	orrseq	r0, fp, r0, lsl #6
 664:	3133f401 	teqcc	r3, r1, lsl #8	; <UNPREDICTABLE>
 668:	2f2f2f2f 	svccs	0x002f2f2f
 66c:	01000202 	tsteq	r0, r2, lsl #4
 670:	00005b01 	andeq	r5, r0, r1, lsl #22
 674:	3d000200 	sfmcc	f0, 4, [r0, #-0]
 678:	02000000 	andeq	r0, r0, #0
 67c:	0d0efb01 	vstreq	d15, [lr, #-4]
 680:	01010100 	mrseq	r0, (UNDEF: 17)
 684:	00000001 	andeq	r0, r0, r1
 688:	01000001 	tsteq	r0, r1
 68c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 690:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 694:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 698:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 69c:	2f636367 	svccs	0x00636367
 6a0:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 6a4:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 6a8:	00006d72 	andeq	r6, r0, r2, ror sp
 6ac:	62617062 	rsbvs	r7, r1, #98	; 0x62
 6b0:	00632e69 	rsbeq	r2, r3, r9, ror #28
 6b4:	00000001 	andeq	r0, r0, r1
 6b8:	ec020500 	cfstr32	mvfx0, [r2], {-0}
 6bc:	0300008d 	movweq	r0, #141	; 0x8d
 6c0:	a12e0125 			; <UNDEFINED> instruction: 0xa12e0125
 6c4:	2e50d84b 	cdpcs	8, 5, cr13, cr0, cr11, {2}
 6c8:	02d82fa1 	sbcseq	r2, r8, #644	; 0x284
 6cc:	01010004 	tsteq	r1, r4
 6d0:	00000057 	andeq	r0, r0, r7, asr r0
 6d4:	00410002 	subeq	r0, r1, r2
 6d8:	01020000 	mrseq	r0, (UNDEF: 2)
 6dc:	000d0efb 	strdeq	r0, [sp], -fp
 6e0:	01010101 	tsteq	r1, r1, lsl #2
 6e4:	01000000 	mrseq	r0, (UNDEF: 0)
 6e8:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 6ec:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 6f0:	2f2e2e2f 	svccs	0x002e2e2f
 6f4:	2f637273 	svccs	0x00637273
 6f8:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 6fc:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 700:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 704:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 708:	6c00006d 	stcvs	0, cr0, [r0], {109}	; 0x6d
 70c:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
 710:	73636e75 	cmnvc	r3, #1872	; 0x750
 714:	0100532e 	tsteq	r0, lr, lsr #6
 718:	00000000 	andeq	r0, r0, r0
 71c:	8e700205 	cdphi	2, 7, cr0, cr0, cr5, {0}
 720:	ae030000 	cdpge	0, 0, cr0, cr3, cr0, {0}
 724:	0202010b 	andeq	r0, r2, #-1073741822	; 0xc0000002
 728:	94010100 	strls	r0, [r1], #-256	; 0xffffff00
 72c:	02000000 	andeq	r0, r0, #0
 730:	00004100 	andeq	r4, r0, r0, lsl #2
 734:	fb010200 	blx	40f3e <__bss_end+0x34f3e>
 738:	01000d0e 	tsteq	r0, lr, lsl #26
 73c:	00010101 	andeq	r0, r1, r1, lsl #2
 740:	00010000 	andeq	r0, r1, r0
 744:	2e2e0100 	sufcse	f0, f6, f0
 748:	2f2e2e2f 	svccs	0x002e2e2f
 74c:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 750:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 590 <__start-0x7a70>
 754:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 758:	6c000063 	stcvs	0, cr0, [r0], {99}	; 0x63
 75c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 760:	632e3263 			; <UNDEFINED> instruction: 0x632e3263
 764:	00000100 	andeq	r0, r0, r0, lsl #2
 768:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 76c:	2e326363 	cdpcs	3, 3, cr6, cr2, cr3, {3}
 770:	00010068 	andeq	r0, r1, r8, rrx
 774:	05000000 	streq	r0, [r0, #-0]
 778:	008e7402 	addeq	r7, lr, r2, lsl #8
 77c:	09cb0300 	stmibeq	fp, {r8, r9}^
 780:	7a031801 	bvc	c678c <__bss_end+0xba78c>
 784:	3133672e 	teqcc	r3, lr, lsr #14
 788:	827de803 	rsbshi	lr, sp, #196608	; 0x30000
 78c:	2f2d67a0 	svccs	0x002d67a0
 790:	03a52f4c 			; <UNDEFINED> instruction: 0x03a52f4c
 794:	03352e79 	teqeq	r5, #1936	; 0x790
 798:	6f032e79 	svcvs	0x00032e79
 79c:	4a18032e 	bmi	60145c <__user_program+0x30145c>
 7a0:	492f2d31 	stmdbmi	pc!, {r0, r4, r5, r8, sl, fp, sp}	; <UNPREDICTABLE>
 7a4:	6e4c312f 	dvfvsep	f3, f4, #10.0
 7a8:	4c6945be 	cfstr64mi	mvdx4, [r9], #-760	; 0xfffffd08
 7ac:	832f494f 			; <UNDEFINED> instruction: 0x832f494f
 7b0:	fa033064 	blx	cc948 <__bss_end+0xc0948>
 7b4:	033c0801 	teqeq	ip, #65536	; 0x10000
 7b8:	2f2d8279 	svccs	0x002d8279
 7bc:	04024947 	streq	r4, [r2], #-2375	; 0xfffff6b9
 7c0:	8e010100 	adfhis	f0, f1, f0
 7c4:	02000000 	andeq	r0, r0, #0
 7c8:	00004100 	andeq	r4, r0, r0, lsl #2
 7cc:	fb010200 	blx	40fd6 <__bss_end+0x34fd6>
 7d0:	01000d0e 	tsteq	r0, lr, lsl #26
 7d4:	00010101 	andeq	r0, r1, r1, lsl #2
 7d8:	00010000 	andeq	r0, r1, r0
 7dc:	2e2e0100 	sufcse	f0, f6, f0
 7e0:	2f2e2e2f 	svccs	0x002e2e2f
 7e4:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 7e8:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 628 <__start-0x79d8>
 7ec:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 7f0:	6c000063 	stcvs	0, cr0, [r0], {99}	; 0x63
 7f4:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 7f8:	632e3263 			; <UNDEFINED> instruction: 0x632e3263
 7fc:	00000100 	andeq	r0, r0, r0, lsl #2
 800:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 804:	2e326363 	cdpcs	3, 3, cr6, cr2, cr3, {3}
 808:	00010068 	andeq	r0, r1, r8, rrx
 80c:	05000000 	streq	r0, [r0, #-0]
 810:	008fec02 	addeq	lr, pc, r2, lsl #24
 814:	0a860300 	beq	fe18141c <__user_program+0xfde8141c>
 818:	7db60301 	ldcvc	3, cr0, [r6, #4]!
 81c:	02ca0301 	sbceq	r0, sl, #67108864	; 0x4000000
 820:	ab032e4a 	blge	cc150 <__bss_end+0xc0150>
 824:	0b03827d 	bleq	e1220 <__bss_end+0xd5220>
 828:	2d67304a 	stclcs	0, cr3, [r7, #-296]!	; 0xfffffed8
 82c:	a52f4c2f 	strge	r4, [pc, #-3119]!	; fffffc05 <__user_program+0xffcffc05>
 830:	352e7903 	strcc	r7, [lr, #-2307]!	; 0xfffff6fd
 834:	032e7903 			; <UNDEFINED> instruction: 0x032e7903
 838:	18032e6f 	stmdane	r3, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp}
 83c:	2f2d314a 	svccs	0x002d314a
 840:	4c312f49 	ldcmi	15, cr2, [r1], #-292	; 0xfffffedc
 844:	6945be6e 	stmdbvs	r5, {r1, r2, r3, r5, r6, r9, sl, fp, ip, sp, pc}^
 848:	bb4b4e4c 	bllt	12d4180 <__user_program+0xfd4180>
 84c:	ba02a503 	blt	a9c60 <__bss_end+0x9dc60>
 850:	01000402 	tsteq	r0, r2, lsl #8
 854:	00006101 	andeq	r6, r0, r1, lsl #2
 858:	41000200 	mrsmi	r0, R8_usr
 85c:	02000000 	andeq	r0, r0, #0
 860:	0d0efb01 	vstreq	d15, [lr, #-4]
 864:	01010100 	mrseq	r0, (UNDEF: 17)
 868:	00000001 	andeq	r0, r0, r1
 86c:	01000001 	tsteq	r0, r1
 870:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 874:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 878:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 87c:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 880:	2f636367 	svccs	0x00636367
 884:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 888:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 88c:	00006d72 	andeq	r6, r0, r2, ror sp
 890:	3162696c 	cmncc	r2, ip, ror #18
 894:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 898:	00532e73 	subseq	r2, r3, r3, ror lr
 89c:	00000001 	andeq	r0, r0, r1
 8a0:	0c020500 	cfstr32eq	mvfx0, [r2], {-0}
 8a4:	03000091 	movweq	r0, #145	; 0x91
 8a8:	30010dae 	andcc	r0, r1, lr, lsr #27
 8ac:	2e09032f 	cdpcs	3, 0, cr0, cr9, cr15, {1}
 8b0:	2f302f2f 	svccs	0x00302f2f
 8b4:	00040234 	andeq	r0, r4, r4, lsr r2
 8b8:	00640101 	rsbeq	r0, r4, r1, lsl #2
 8bc:	00020000 	andeq	r0, r2, r0
 8c0:	00000041 	andeq	r0, r0, r1, asr #32
 8c4:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 8c8:	0101000d 	tsteq	r1, sp
 8cc:	00000101 	andeq	r0, r0, r1, lsl #2
 8d0:	00000100 	andeq	r0, r0, r0, lsl #2
 8d4:	2f2e2e01 	svccs	0x002e2e01
 8d8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 8dc:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 8e0:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 8e4:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 8e8:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 8ec:	2f676966 	svccs	0x00676966
 8f0:	006d7261 	rsbeq	r7, sp, r1, ror #4
 8f4:	62696c00 	rsbvs	r6, r9, #0, 24
 8f8:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
 8fc:	532e7363 			; <UNDEFINED> instruction: 0x532e7363
 900:	00000100 	andeq	r0, r0, r0, lsl #2
 904:	02050000 	andeq	r0, r5, #0
 908:	00009134 	andeq	r9, r0, r4, lsr r1
 90c:	010d8d03 	tsteq	sp, r3, lsl #26
 910:	2f2f302f 	svccs	0x002f302f
 914:	302f2f30 	eorcc	r2, pc, r0, lsr pc	; <UNPREDICTABLE>
 918:	2f2f2f2f 	svccs	0x002f2f2f
 91c:	000a022f 	andeq	r0, sl, pc, lsr #4
 920:	Address 0x0000000000000920 is out of bounds.


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
 2fc:	43324900 	teqmi	r2, #0, 18
 300:	4145525f 	cmpmi	r5, pc, asr r2
 304:	5f4e4f53 	svcpl	0x004e4f53
 308:	4f525245 	svcmi	0x00525245
 30c:	414e5f52 	cmpmi	lr, r2, asr pc
 310:	72004b43 	andvc	r4, r0, #68608	; 0x10c00
 314:	6f736165 	svcvs	0x00736165
 318:	3249006e 	subcc	r0, r9, #110	; 0x6e
 31c:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
 320:	4e4f5341 	cdpmi	3, 4, cr5, cr15, cr1, {2}
 324:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
 328:	445f524f 	ldrbmi	r5, [pc], #-591	; 330 <__start-0x7cd0>
 32c:	00415441 	subeq	r5, r1, r1, asr #8
 330:	5f633269 	svcpl	0x00633269
 334:	7473616d 	ldrbtvc	r6, [r3], #-365	; 0xfffffe93
 338:	725f7265 	subsvc	r7, pc, #1342177286	; 0x50000006
 33c:	00646165 	rsbeq	r6, r4, r5, ror #2
 340:	5f633269 	svcpl	0x00633269
 344:	7473616d 	ldrbtvc	r6, [r3], #-365	; 0xfffffe93
 348:	775f7265 	ldrbvc	r7, [pc, -r5, ror #4]
 34c:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
 350:	43324900 	teqmi	r2, #0, 18
 354:	4145525f 	cmpmi	r5, pc, asr r2
 358:	5f4e4f53 	svcpl	0x004e4f53
 35c:	4f525245 	svcmi	0x00525245
 360:	4c435f52 	mcrrmi	15, 5, r5, r3, cr2
 364:	4900544b 	stmdbmi	r0, {r0, r1, r3, r6, sl, ip, lr}
 368:	525f4332 	subspl	r4, pc, #-939524096	; 0xc8000000
 36c:	4f534145 	svcmi	0x00534145
 370:	4b4f5f4e 	blmi	13d80b0 <__user_program+0x10d80b0>
 374:	75627200 	strbvc	r7, [r2, #-512]!	; 0xfffffe00
 378:	64610066 	strbtvs	r0, [r1], #-102	; 0xffffff9a
 37c:	65725f63 	ldrbvs	r5, [r2, #-3939]!	; 0xfffff09d
 380:	635f6461 	cmpvs	pc, #1627389952	; 0x61000000
 384:	65766e6f 	ldrbvs	r6, [r6, #-3695]!	; 0xfffff191
 388:	6f697372 	svcvs	0x00697372
 38c:	6461006e 	strbtvs	r0, [r1], #-110	; 0xffffff92
 390:	72775f63 	rsbsvc	r5, r7, #396	; 0x18c
 394:	5f657469 	svcpl	0x00657469
 398:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 39c:	72006769 	andvc	r6, r0, #27525120	; 0x1a40000
 3a0:	61567465 	cmpvs	r6, r5, ror #8
 3a4:	6f63006c 	svcvs	0x0063006c
 3a8:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 3ac:	6c61765f 	stclvs	6, cr7, [r1], #-380	; 0xfffffe84
 3b0:	63006575 	movwvs	r6, #1397	; 0x575
 3b4:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 3b8:	61765f67 	cmnvs	r6, r7, ror #30
 3bc:	656b006c 	strbvs	r0, [fp, #-108]!	; 0xffffff94
 3c0:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 3c4:	616c635f 	cmnvs	ip, pc, asr r3
 3c8:	74656470 	strbtvc	r6, [r5], #-1136	; 0xfffffb90
 3cc:	6f746365 	svcvs	0x00746365
 3d0:	72732f72 	rsbsvc	r2, r3, #456	; 0x1c8
 3d4:	64612f63 	strbtvs	r2, [r1], #-3939	; 0xfffff09d
 3d8:	31303173 	teqcc	r0, r3, ror r1
 3dc:	00632e35 	rsbeq	r2, r3, r5, lsr lr
 3e0:	5f727563 	svcpl	0x00727563
 3e4:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
 3e8:	006c656e 	rsbeq	r6, ip, lr, ror #10
 3ec:	5f636461 	svcpl	0x00636461
 3f0:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
 3f4:	64617000 	strbtvs	r7, [r1], #-0
 3f8:	6d007264 	sfmvs	f7, 4, [r0, #-400]	; 0xfffffe70
 3fc:	006b7361 	rsbeq	r7, fp, r1, ror #6
 400:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 404:	635f6c65 	cmpvs	pc, #25856	; 0x6500
 408:	6470616c 	ldrbtvs	r6, [r0], #-364	; 0xfffffe94
 40c:	63657465 	cmnvs	r5, #1694498816	; 0x65000000
 410:	2f726f74 	svccs	0x00726f74
 414:	2f637273 	svccs	0x00637273
 418:	6c697475 	cfstrdvs	mvd7, [r9], #-468	; 0xfffffe2c
 41c:	00632e73 	rsbeq	r2, r3, r3, ror lr
 420:	69645f5f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
 424:	33696476 	cmncc	r9, #1979711488	; 0x76000000
 428:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
 42c:	2f646c69 	svccs	0x00646c69
 430:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 434:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 438:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 43c:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 440:	52442d69 	subpl	r2, r4, #6720	; 0x1a40
 444:	414c6e52 	cmpmi	ip, r2, asr lr
 448:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 44c:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
 450:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 454:	61652d65 	cmnvs	r5, r5, ror #26
 458:	342d6962 	strtcc	r6, [sp], #-2402	; 0xfffff69e
 45c:	332e392e 			; <UNDEFINED> instruction: 0x332e392e
 460:	6e76732b 	cdpvs	3, 7, cr7, cr6, cr11, {1}
 464:	31313332 	teqcc	r1, r2, lsr r3
 468:	622f3737 	eorvs	r3, pc, #14417920	; 0xdc0000
 46c:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 470:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 474:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 478:	61652d65 	cmnvs	r5, r5, ror #26
 47c:	6c2f6962 	stcvs	9, cr6, [pc], #-392	; 2fc <__start-0x7d04>
 480:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 484:	5f5f0063 	svcpl	0x005f0063
 488:	5f756e67 	svcpl	0x00756e67
 48c:	69646c75 	stmdbvs	r4!, {r0, r2, r4, r5, r6, sl, fp, sp, lr}^
 490:	646f6d76 	strbtvs	r6, [pc], #-3446	; 498 <__start-0x7b68>
 494:	6c65685f 	stclvs	8, cr6, [r5], #-380	; 0xfffffe84
 498:	00726570 	rsbseq	r6, r2, r0, ror r5
 49c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 4a0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 4a4:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 4a8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 4ac:	2f636367 	svccs	0x00636367
 4b0:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 4b4:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 4b8:	622f6d72 	eorvs	r6, pc, #7296	; 0x1c80
 4bc:	69626170 	stmdbvs	r2!, {r4, r5, r6, r8, sp, lr}^
 4c0:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
 4c4:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
 4c8:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
 4cc:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
 4d0:	30353130 	eorscc	r3, r5, r0, lsr r1
 4d4:	20393235 	eorscs	r3, r9, r5, lsr r2
 4d8:	65727028 	ldrbvs	r7, [r2, #-40]!	; 0xffffffd8
 4dc:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 4e0:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 4e4:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 4e8:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 4ec:	4f2d2067 	svcmi	0x002d2067
 4f0:	4f2d2032 	svcmi	0x002d2032
 4f4:	4f2d2032 	svcmi	0x002d2032
 4f8:	662d2032 			; <UNDEFINED> instruction: 0x662d2032
 4fc:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 500:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 504:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 508:	2d726f74 	ldclcs	15, cr6, [r2, #-464]!	; 0xfffffe30
 50c:	6f727473 	svcvs	0x00727473
 510:	2d20676e 	stccs	7, cr6, [r0, #-440]!	; 0xfffffe48
 514:	61747366 	cmnvs	r4, r6, ror #6
 518:	702d6b63 	eorvc	r6, sp, r3, ror #22
 51c:	65746f72 	ldrbvs	r6, [r4, #-3954]!	; 0xfffff08e
 520:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 524:	7274732d 	rsbsvc	r7, r4, #-1275068416	; 0xb4000000
 528:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 52c:	7562662d 	strbvc	r6, [r2, #-1581]!	; 0xfffff9d3
 530:	69646c69 	stmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
 534:	6c2d676e 	stcvs	7, cr6, [sp], #-440	; 0xfffffe48
 538:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 53c:	662d2063 	strtvs	r2, [sp], -r3, rrx
 540:	732d6f6e 			; <UNDEFINED> instruction: 0x732d6f6e
 544:	6b636174 	blvs	18d8b1c <__user_program+0x15d8b1c>
 548:	6f72702d 	svcvs	0x0072702d
 54c:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 550:	2d20726f 	sfmcs	f7, 4, [r0, #-444]!	; 0xfffffe44
 554:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 3c4 <__start-0x7c3c>
 558:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 55c:	2d20656e 	cfstr32cs	mvfx6, [r0, #-440]!	; 0xfffffe48
 560:	73697666 	cmnvc	r9, #106954752	; 0x6600000
 564:	6c696269 	sfmvs	f6, 2, [r9], #-420	; 0xfffffe5c
 568:	3d797469 	cfldrdcc	mvd7, [r9, #-420]!	; 0xfffffe5c
 56c:	64646968 	strbtvs	r6, [r4], #-2408	; 0xfffff698
 570:	72006e65 	andvc	r6, r0, #1616	; 0x650
 574:	69616d65 	stmdbvs	r1!, {r0, r2, r5, r6, r8, sl, fp, sp, lr}^
 578:	7265646e 	rsbvc	r6, r5, #1845493760	; 0x6e000000
 57c:	675f5f00 	ldrbvs	r5, [pc, -r0, lsl #30]
 580:	6c5f756e 	cfldr64vs	mvdx7, [pc], {110}	; 0x6e
 584:	6d766964 	ldclvs	9, cr6, [r6, #-400]!	; 0xfffffe70
 588:	685f646f 	ldmdavs	pc, {r0, r1, r2, r3, r5, r6, sl, sp, lr}^	; <UNPREDICTABLE>
 58c:	65706c65 	ldrbvs	r6, [r0, #-3173]!	; 0xfffff39b
 590:	5f5f0072 	svcpl	0x005f0072
 594:	76696475 			; <UNDEFINED> instruction: 0x76696475
 598:	00336964 	eorseq	r6, r3, r4, ror #18
 59c:	746f7571 	strbtvc	r7, [pc], #-1393	; 5a4 <__start-0x7a5c>
 5a0:	746e6569 	strbtvc	r6, [lr], #-1385	; 0xfffffa97
 5a4:	67696800 	strbvs	r6, [r9, -r0, lsl #16]!
 5a8:	5f5f0068 	svcpl	0x005f0068
 5ac:	76696475 			; <UNDEFINED> instruction: 0x76696475
 5b0:	64646f6d 	strbtvs	r6, [r4], #-3949	; 0xfffff093
 5b4:	55003469 	strpl	r3, [r0, #-1129]	; 0xfffffb97
 5b8:	79744953 	ldmdbvc	r4!, {r0, r1, r4, r6, r8, fp, lr}^
 5bc:	2e006570 	cfrshl64cs	mvdx0, mvdx0, r6
 5c0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 5c4:	2f2e2e2f 	svccs	0x002e2e2f
 5c8:	2f637273 	svccs	0x00637273
 5cc:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 5d0:	6c2f6363 	stcvs	3, cr6, [pc], #-396	; 44c <__start-0x7bb4>
 5d4:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 5d8:	632e3263 			; <UNDEFINED> instruction: 0x632e3263
 5dc:	75574400 	ldrbvc	r4, [r7, #-1024]	; 0xfffffc00
 5e0:	6e6f696e 	cdpvs	9, 6, cr6, cr15, cr14, {3}
 5e4:	49445500 	stmdbmi	r4, {r8, sl, ip, lr}^
 5e8:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 5ec:	6d6f6300 	stclvs	3, cr6, [pc, #-0]	; 5f4 <__start-0x7a0c>
 5f0:	78656c70 	stmdavc	r5!, {r4, r5, r6, sl, fp, sp, lr}^
 5f4:	6f6c6620 	svcvs	0x006c6620
 5f8:	47007461 	strmi	r7, [r0, -r1, ror #8]
 5fc:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
 600:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
 604:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
 608:	30353130 	eorscc	r3, r5, r0, lsr r1
 60c:	20393235 	eorscs	r3, r9, r5, lsr r2
 610:	65727028 	ldrbvs	r7, [r2, #-40]!	; 0xffffffd8
 614:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 618:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 61c:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 620:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 624:	4f2d2067 	svcmi	0x002d2067
 628:	4f2d2032 	svcmi	0x002d2032
 62c:	4f2d2032 	svcmi	0x002d2032
 630:	662d2032 			; <UNDEFINED> instruction: 0x662d2032
 634:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
 638:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
 63c:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
 640:	2d726f74 	ldclcs	15, cr6, [r2, #-464]!	; 0xfffffe30
 644:	6f727473 	svcvs	0x00727473
 648:	2d20676e 	stccs	7, cr6, [r0, #-440]!	; 0xfffffe48
 64c:	61747366 	cmnvs	r4, r6, ror #6
 650:	702d6b63 	eorvc	r6, sp, r3, ror #22
 654:	65746f72 	ldrbvs	r6, [r4, #-3954]!	; 0xfffff08e
 658:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 65c:	7274732d 	rsbsvc	r7, r4, #-1275068416	; 0xb4000000
 660:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 664:	7562662d 	strbvc	r6, [r2, #-1581]!	; 0xfffff9d3
 668:	69646c69 	stmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
 66c:	6c2d676e 	stcvs	7, cr6, [sp], #-440	; 0xfffffe48
 670:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 674:	662d2063 	strtvs	r2, [sp], -r3, rrx
 678:	732d6f6e 			; <UNDEFINED> instruction: 0x732d6f6e
 67c:	6b636174 	blvs	18d8c54 <__user_program+0x15d8c54>
 680:	6f72702d 	svcvs	0x0072702d
 684:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 688:	2d20726f 	sfmcs	f7, 4, [r0, #-444]!	; 0xfffffe44
 68c:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 4fc <__start-0x7b04>
 690:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 694:	2d20656e 	cfstr32cs	mvfx6, [r0, #-440]!	; 0xfffffe48
 698:	63786566 	cmnvs	r8, #427819008	; 0x19800000
 69c:	69747065 	ldmdbvs	r4!, {r0, r2, r5, r6, ip, sp, lr}^
 6a0:	20736e6f 	rsbscs	r6, r3, pc, ror #28
 6a4:	6976662d 	ldmdbvs	r6!, {r0, r2, r3, r5, r9, sl, sp, lr}^
 6a8:	69626973 	stmdbvs	r2!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
 6ac:	7974696c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, fp, sp, lr}^
 6b0:	6469683d 	strbtvs	r6, [r9], #-2109	; 0xfffff7c3
 6b4:	006e6564 	rsbeq	r6, lr, r4, ror #10
 6b8:	706d6f63 	rsbvc	r6, sp, r3, ror #30
 6bc:	2078656c 	rsbscs	r6, r8, ip, ror #10
 6c0:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
 6c4:	4400656c 	strmi	r6, [r0], #-1388	; 0xfffffa94
 6c8:	72747357 	rsbsvc	r7, r4, #1543503873	; 0x5c000001
 6cc:	00746375 	rsbseq	r6, r4, r5, ror r3

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
