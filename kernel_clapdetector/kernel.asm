
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
    82d4:	eb0002af 	bl	8d98 <delay_cycles>
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
    830c:	eb0002a1 	bl	8d98 <delay_cycles>
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
    8350:	eb000290 	bl	8d98 <delay_cycles>
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
    8384:	eb0001ee 	bl	8b44 <adc_init>
    8388:	eb0000d8 	bl	86f0 <uart_get_byte>
    838c:	e3500030 	cmp	r0, #48	; 0x30
    8390:	1a000001 	bne	839c <kernel_main+0x28>
    8394:	eb000243 	bl	8ca8 <display_light>
    8398:	eafffffa 	b	8388 <kernel_main+0x14>
    839c:	e3500031 	cmp	r0, #49	; 0x31
    83a0:	1afffff8 	bne	8388 <kernel_main+0x14>
    83a4:	eb000247 	bl	8cc8 <clap_detect>
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
    8404:	eb000274 	bl	8ddc <__aeabi_uldivmod>
    8408:	e7da3002 	ldrb	r3, [sl, r2]
    840c:	e4443001 	strb	r3, [r4], #-1
    8410:	e1a00006 	mov	r0, r6
    8414:	e1a01007 	mov	r1, r7
    8418:	e1a02005 	mov	r2, r5
    841c:	e1a03009 	mov	r3, r9
    8420:	eb00026d 	bl	8ddc <__aeabi_uldivmod>
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
    8740:	e3a00002 	mov	r0, #2
    8744:	e3a01004 	mov	r1, #4
    8748:	ebfffe41 	bl	8054 <gpio_config>
    874c:	e3a00003 	mov	r0, #3
    8750:	e3a01004 	mov	r1, #4
    8754:	ebfffe3e 	bl	8054 <gpio_config>
    8758:	e8bd8008 	pop	{r3, pc}

0000875c <i2c_master_write>:
    875c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    8760:	e1a05000 	mov	r5, r0
    8764:	e1a04001 	mov	r4, r1
    8768:	e1a06002 	mov	r6, r2
    876c:	e3a00901 	mov	r0, #16384	; 0x4000
    8770:	e3430f80 	movt	r0, #16256	; 0x3f80
    8774:	e3a01010 	mov	r1, #16
    8778:	e1a02001 	mov	r2, r1
    877c:	eb00017b 	bl	8d70 <peri_set_bits>
    8780:	e3040004 	movw	r0, #16388	; 0x4004
    8784:	e3430f80 	movt	r0, #16256	; 0x3f80
    8788:	e3001302 	movw	r1, #770	; 0x302
    878c:	eb000175 	bl	8d68 <peri_write>
    8790:	e304000c 	movw	r0, #16396	; 0x400c
    8794:	e3430f80 	movt	r0, #16256	; 0x3f80
    8798:	e1a01006 	mov	r1, r6
    879c:	eb000171 	bl	8d68 <peri_write>
    87a0:	e3040008 	movw	r0, #16392	; 0x4008
    87a4:	e3430f80 	movt	r0, #16256	; 0x3f80
    87a8:	e1a01004 	mov	r1, r4
    87ac:	eb00016d 	bl	8d68 <peri_write>
    87b0:	e3540000 	cmp	r4, #0
    87b4:	0a00000e 	beq	87f4 <i2c_master_write+0x98>
    87b8:	e1a07004 	mov	r7, r4
    87bc:	e2455001 	sub	r5, r5, #1
    87c0:	e3a04000 	mov	r4, #0
    87c4:	e3046010 	movw	r6, #16400	; 0x4010
    87c8:	e3436f80 	movt	r6, #16256	; 0x3f80
    87cc:	e1a00006 	mov	r0, r6
    87d0:	e5f51001 	ldrb	r1, [r5, #1]!
    87d4:	eb000163 	bl	8d68 <peri_write>
    87d8:	e2844001 	add	r4, r4, #1
    87dc:	e0573004 	subs	r3, r7, r4
    87e0:	13a03001 	movne	r3, #1
    87e4:	e354000f 	cmp	r4, #15
    87e8:	83a03000 	movhi	r3, #0
    87ec:	e3530000 	cmp	r3, #0
    87f0:	1afffff5 	bne	87cc <i2c_master_write+0x70>
    87f4:	e3a00901 	mov	r0, #16384	; 0x4000
    87f8:	e3430f80 	movt	r0, #16256	; 0x3f80
    87fc:	e3081080 	movw	r1, #32896	; 0x8080
    8800:	eb000158 	bl	8d68 <peri_write>
    8804:	e3040004 	movw	r0, #16388	; 0x4004
    8808:	e3430f80 	movt	r0, #16256	; 0x3f80
    880c:	eb000153 	bl	8d60 <peri_read>
    8810:	e3100c01 	tst	r0, #256	; 0x100
    8814:	13a05001 	movne	r5, #1
    8818:	1a000007 	bne	883c <i2c_master_write+0xe0>
    881c:	e3040004 	movw	r0, #16388	; 0x4004
    8820:	e3430f80 	movt	r0, #16256	; 0x3f80
    8824:	eb00014d 	bl	8d60 <peri_read>
    8828:	e2000c02 	and	r0, r0, #512	; 0x200
    882c:	e3500000 	cmp	r0, #0
    8830:	03a05000 	moveq	r5, #0
    8834:	13a05002 	movne	r5, #2
    8838:	eaffffff 	b	883c <i2c_master_write+0xe0>
    883c:	e3044004 	movw	r4, #16388	; 0x4004
    8840:	e3434f80 	movt	r4, #16256	; 0x3f80
    8844:	e1a00004 	mov	r0, r4
    8848:	eb000144 	bl	8d60 <peri_read>
    884c:	e3100002 	tst	r0, #2
    8850:	0afffffb 	beq	8844 <i2c_master_write+0xe8>
    8854:	e3a00901 	mov	r0, #16384	; 0x4000
    8858:	e3430f80 	movt	r0, #16256	; 0x3f80
    885c:	e3a01002 	mov	r1, #2
    8860:	e1a02001 	mov	r2, r1
    8864:	eb000141 	bl	8d70 <peri_set_bits>
    8868:	e1a00005 	mov	r0, r5
    886c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

00008870 <i2c_master_read>:
    8870:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
    8874:	e1a09000 	mov	r9, r0
    8878:	e1a06001 	mov	r6, r1
    887c:	e1a07002 	mov	r7, r2
    8880:	e1a04001 	mov	r4, r1
    8884:	e3a05901 	mov	r5, #16384	; 0x4000
    8888:	e3435f80 	movt	r5, #16256	; 0x3f80
    888c:	e1a00005 	mov	r0, r5
    8890:	e3a01020 	mov	r1, #32
    8894:	e1a02001 	mov	r2, r1
    8898:	eb000134 	bl	8d70 <peri_set_bits>
    889c:	e3040004 	movw	r0, #16388	; 0x4004
    88a0:	e3430f80 	movt	r0, #16256	; 0x3f80
    88a4:	e3001302 	movw	r1, #770	; 0x302
    88a8:	eb00012e 	bl	8d68 <peri_write>
    88ac:	e3040008 	movw	r0, #16392	; 0x4008
    88b0:	e3430f80 	movt	r0, #16256	; 0x3f80
    88b4:	e1a01006 	mov	r1, r6
    88b8:	eb00012a 	bl	8d68 <peri_write>
    88bc:	e304000c 	movw	r0, #16396	; 0x400c
    88c0:	e3430f80 	movt	r0, #16256	; 0x3f80
    88c4:	e1a01007 	mov	r1, r7
    88c8:	eb000126 	bl	8d68 <peri_write>
    88cc:	e1a00005 	mov	r0, r5
    88d0:	e3081081 	movw	r1, #32897	; 0x8081
    88d4:	eb000123 	bl	8d68 <peri_write>
    88d8:	e3a05000 	mov	r5, #0
    88dc:	e3047004 	movw	r7, #16388	; 0x4004
    88e0:	e3437f80 	movt	r7, #16256	; 0x3f80
    88e4:	e3048010 	movw	r8, #16400	; 0x4010
    88e8:	e3438f80 	movt	r8, #16256	; 0x3f80
    88ec:	ea000009 	b	8918 <i2c_master_read+0xa8>
    88f0:	e1a00008 	mov	r0, r8
    88f4:	eb000119 	bl	8d60 <peri_read>
    88f8:	e4c60001 	strb	r0, [r6], #1
    88fc:	e2855001 	add	r5, r5, #1
    8900:	e2544001 	subs	r4, r4, #1
    8904:	0a000003 	beq	8918 <i2c_master_read+0xa8>
    8908:	e1a00007 	mov	r0, r7
    890c:	eb000113 	bl	8d60 <peri_read>
    8910:	e3100020 	tst	r0, #32
    8914:	1afffff5 	bne	88f0 <i2c_master_read+0x80>
    8918:	e1a00007 	mov	r0, r7
    891c:	eb00010f 	bl	8d60 <peri_read>
    8920:	e3100002 	tst	r0, #2
    8924:	1a000003 	bne	8938 <i2c_master_read+0xc8>
    8928:	e3540000 	cmp	r4, #0
    892c:	0afffff9 	beq	8918 <i2c_master_read+0xa8>
    8930:	e0896005 	add	r6, r9, r5
    8934:	eafffff3 	b	8908 <i2c_master_read+0x98>
    8938:	e1a06004 	mov	r6, r4
    893c:	e3040004 	movw	r0, #16388	; 0x4004
    8940:	e3430f80 	movt	r0, #16256	; 0x3f80
    8944:	eb000105 	bl	8d60 <peri_read>
    8948:	e3100020 	tst	r0, #32
    894c:	0a000002 	beq	895c <i2c_master_read+0xec>
    8950:	e30a0038 	movw	r0, #41016	; 0xa038
    8954:	e3400000 	movt	r0, #0
    8958:	ebfffecb 	bl	848c <printk>
    895c:	e3560000 	cmp	r6, #0
    8960:	0a000012 	beq	89b0 <i2c_master_read+0x140>
    8964:	e0895005 	add	r5, r9, r5
    8968:	e3047004 	movw	r7, #16388	; 0x4004
    896c:	e3437f80 	movt	r7, #16256	; 0x3f80
    8970:	e30a6058 	movw	r6, #41048	; 0xa058
    8974:	e3406000 	movt	r6, #0
    8978:	e3048010 	movw	r8, #16400	; 0x4010
    897c:	e3438f80 	movt	r8, #16256	; 0x3f80
    8980:	ea000006 	b	89a0 <i2c_master_read+0x130>
    8984:	e1a00006 	mov	r0, r6
    8988:	ebfffebf 	bl	848c <printk>
    898c:	e1a00008 	mov	r0, r8
    8990:	eb0000f2 	bl	8d60 <peri_read>
    8994:	e4c50001 	strb	r0, [r5], #1
    8998:	e2544001 	subs	r4, r4, #1
    899c:	0a000003 	beq	89b0 <i2c_master_read+0x140>
    89a0:	e1a00007 	mov	r0, r7
    89a4:	eb0000ed 	bl	8d60 <peri_read>
    89a8:	e3100020 	tst	r0, #32
    89ac:	1afffff4 	bne	8984 <i2c_master_read+0x114>
    89b0:	e3040004 	movw	r0, #16388	; 0x4004
    89b4:	e3430f80 	movt	r0, #16256	; 0x3f80
    89b8:	eb0000e8 	bl	8d60 <peri_read>
    89bc:	e3100c01 	tst	r0, #256	; 0x100
    89c0:	13a05001 	movne	r5, #1
    89c4:	1a000007 	bne	89e8 <i2c_master_read+0x178>
    89c8:	e3040004 	movw	r0, #16388	; 0x4004
    89cc:	e3430f80 	movt	r0, #16256	; 0x3f80
    89d0:	eb0000e2 	bl	8d60 <peri_read>
    89d4:	e2000c02 	and	r0, r0, #512	; 0x200
    89d8:	e3500000 	cmp	r0, #0
    89dc:	03a05000 	moveq	r5, #0
    89e0:	13a05002 	movne	r5, #2
    89e4:	eaffffff 	b	89e8 <i2c_master_read+0x178>
    89e8:	e3044004 	movw	r4, #16388	; 0x4004
    89ec:	e3434f80 	movt	r4, #16256	; 0x3f80
    89f0:	e1a00004 	mov	r0, r4
    89f4:	eb0000d9 	bl	8d60 <peri_read>
    89f8:	e3100002 	tst	r0, #2
    89fc:	0afffffb 	beq	89f0 <i2c_master_read+0x180>
    8a00:	e3a00901 	mov	r0, #16384	; 0x4000
    8a04:	e3430f80 	movt	r0, #16256	; 0x3f80
    8a08:	e3a01002 	mov	r1, #2
    8a0c:	e1a02001 	mov	r2, r1
    8a10:	eb0000d6 	bl	8d70 <peri_set_bits>
    8a14:	e1a00005 	mov	r0, r5
    8a18:	e8bd83f8 	pop	{r3, r4, r5, r6, r7, r8, r9, pc}

00008a1c <adc_write_config>:
    8a1c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8a20:	e24dd00c 	sub	sp, sp, #12
    8a24:	e1a01000 	mov	r1, r0
    8a28:	e3a03001 	mov	r3, #1
    8a2c:	e5cd3004 	strb	r3, [sp, #4]
    8a30:	e1a03420 	lsr	r3, r0, #8
    8a34:	e5cd3005 	strb	r3, [sp, #5]
    8a38:	e5cd0006 	strb	r0, [sp, #6]
    8a3c:	e30a0080 	movw	r0, #41088	; 0xa080
    8a40:	e3400000 	movt	r0, #0
    8a44:	ebfffe90 	bl	848c <printk>
    8a48:	e28d0004 	add	r0, sp, #4
    8a4c:	e3a01003 	mov	r1, #3
    8a50:	e3a02049 	mov	r2, #73	; 0x49
    8a54:	ebffff40 	bl	875c <i2c_master_write>
    8a58:	e2501000 	subs	r1, r0, #0
    8a5c:	0a000003 	beq	8a70 <adc_write_config+0x54>
    8a60:	e30a0098 	movw	r0, #41112	; 0xa098
    8a64:	e3400000 	movt	r0, #0
    8a68:	ebfffe87 	bl	848c <printk>
    8a6c:	ea000002 	b	8a7c <adc_write_config+0x60>
    8a70:	e30a00ac 	movw	r0, #41132	; 0xa0ac
    8a74:	e3400000 	movt	r0, #0
    8a78:	ebfffe83 	bl	848c <printk>
    8a7c:	e3a01001 	mov	r1, #1
    8a80:	e28d0008 	add	r0, sp, #8
    8a84:	e5601004 	strb	r1, [r0, #-4]!
    8a88:	e3a02049 	mov	r2, #73	; 0x49
    8a8c:	ebffff32 	bl	875c <i2c_master_write>
    8a90:	e1a0000d 	mov	r0, sp
    8a94:	e3a01002 	mov	r1, #2
    8a98:	e3a02049 	mov	r2, #73	; 0x49
    8a9c:	ebffff73 	bl	8870 <i2c_master_read>
    8aa0:	e2501000 	subs	r1, r0, #0
    8aa4:	0a000002 	beq	8ab4 <adc_write_config+0x98>
    8aa8:	e30a00bc 	movw	r0, #41148	; 0xa0bc
    8aac:	e3400000 	movt	r0, #0
    8ab0:	ebfffe75 	bl	848c <printk>
    8ab4:	e5dd1000 	ldrb	r1, [sp]
    8ab8:	e5dd3001 	ldrb	r3, [sp, #1]
    8abc:	e30a00e0 	movw	r0, #41184	; 0xa0e0
    8ac0:	e3400000 	movt	r0, #0
    8ac4:	e0831401 	add	r1, r3, r1, lsl #8
    8ac8:	ebfffe6f 	bl	848c <printk>
    8acc:	e28dd00c 	add	sp, sp, #12
    8ad0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008ad4 <adc_read_conversion>:
    8ad4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8ad8:	e24dd00c 	sub	sp, sp, #12
    8adc:	e28d0008 	add	r0, sp, #8
    8ae0:	e3a03000 	mov	r3, #0
    8ae4:	e5603004 	strb	r3, [r0, #-4]!
    8ae8:	e3a01001 	mov	r1, #1
    8aec:	e3a02049 	mov	r2, #73	; 0x49
    8af0:	ebffff19 	bl	875c <i2c_master_write>
    8af4:	e2501000 	subs	r1, r0, #0
    8af8:	0a000002 	beq	8b08 <adc_read_conversion+0x34>
    8afc:	e30a00f8 	movw	r0, #41208	; 0xa0f8
    8b00:	e3400000 	movt	r0, #0
    8b04:	ebfffe60 	bl	848c <printk>
    8b08:	e1a0000d 	mov	r0, sp
    8b0c:	e3a01002 	mov	r1, #2
    8b10:	e3a02049 	mov	r2, #73	; 0x49
    8b14:	ebffff55 	bl	8870 <i2c_master_read>
    8b18:	e2501000 	subs	r1, r0, #0
    8b1c:	0a000002 	beq	8b2c <adc_read_conversion+0x58>
    8b20:	e30a0138 	movw	r0, #41272	; 0xa138
    8b24:	e3400000 	movt	r0, #0
    8b28:	ebfffe57 	bl	848c <printk>
    8b2c:	e5dd0000 	ldrb	r0, [sp]
    8b30:	e5dd3001 	ldrb	r3, [sp, #1]
    8b34:	e0830400 	add	r0, r3, r0, lsl #8
    8b38:	e7eb0250 	ubfx	r0, r0, #4, #12
    8b3c:	e28dd00c 	add	sp, sp, #12
    8b40:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00008b44 <adc_init>:
    8b44:	e92d4030 	push	{r4, r5, lr}
    8b48:	e24dd00c 	sub	sp, sp, #12
    8b4c:	e3a01001 	mov	r1, #1
    8b50:	e28d0008 	add	r0, sp, #8
    8b54:	e5601004 	strb	r1, [r0, #-4]!
    8b58:	e3a02049 	mov	r2, #73	; 0x49
    8b5c:	ebfffefe 	bl	875c <i2c_master_write>
    8b60:	e1a0000d 	mov	r0, sp
    8b64:	e3a01002 	mov	r1, #2
    8b68:	e3a02049 	mov	r2, #73	; 0x49
    8b6c:	ebffff3f 	bl	8870 <i2c_master_read>
    8b70:	e2501000 	subs	r1, r0, #0
    8b74:	0a000002 	beq	8b84 <adc_init+0x40>
    8b78:	e30a00bc 	movw	r0, #41148	; 0xa0bc
    8b7c:	e3400000 	movt	r0, #0
    8b80:	ebfffe41 	bl	848c <printk>
    8b84:	e5dd1000 	ldrb	r1, [sp]
    8b88:	e5dd3001 	ldrb	r3, [sp, #1]
    8b8c:	e0831401 	add	r1, r3, r1, lsl #8
    8b90:	e30a0164 	movw	r0, #41316	; 0xa164
    8b94:	e3400000 	movt	r0, #0
    8b98:	e6ff1071 	uxth	r1, r1
    8b9c:	ebfffe3a 	bl	848c <printk>
    8ba0:	e28d4008 	add	r4, sp, #8
    8ba4:	e3a03003 	mov	r3, #3
    8ba8:	e5643004 	strb	r3, [r4, #-4]!
    8bac:	e1a00004 	mov	r0, r4
    8bb0:	e3a01001 	mov	r1, #1
    8bb4:	e3a02049 	mov	r2, #73	; 0x49
    8bb8:	ebfffee7 	bl	875c <i2c_master_write>
    8bbc:	e1a0000d 	mov	r0, sp
    8bc0:	e3a01002 	mov	r1, #2
    8bc4:	e3a02049 	mov	r2, #73	; 0x49
    8bc8:	ebffff28 	bl	8870 <i2c_master_read>
    8bcc:	e5dd1000 	ldrb	r1, [sp]
    8bd0:	e5dd3001 	ldrb	r3, [sp, #1]
    8bd4:	e0831401 	add	r1, r3, r1, lsl #8
    8bd8:	e30a0188 	movw	r0, #41352	; 0xa188
    8bdc:	e3400000 	movt	r0, #0
    8be0:	e6ff1071 	uxth	r1, r1
    8be4:	ebfffe28 	bl	848c <printk>
    8be8:	e3a05002 	mov	r5, #2
    8bec:	e5cd5004 	strb	r5, [sp, #4]
    8bf0:	e1a00004 	mov	r0, r4
    8bf4:	e3a01001 	mov	r1, #1
    8bf8:	e3a02049 	mov	r2, #73	; 0x49
    8bfc:	ebfffed6 	bl	875c <i2c_master_write>
    8c00:	e1a0000d 	mov	r0, sp
    8c04:	e1a01005 	mov	r1, r5
    8c08:	e3a02049 	mov	r2, #73	; 0x49
    8c0c:	ebffff17 	bl	8870 <i2c_master_read>
    8c10:	e5dd1000 	ldrb	r1, [sp]
    8c14:	e5dd3001 	ldrb	r3, [sp, #1]
    8c18:	e0831401 	add	r1, r3, r1, lsl #8
    8c1c:	e30a0198 	movw	r0, #41368	; 0xa198
    8c20:	e3400000 	movt	r0, #0
    8c24:	e6ff1071 	uxth	r1, r1
    8c28:	ebfffe17 	bl	848c <printk>
    8c2c:	e28dd00c 	add	sp, sp, #12
    8c30:	e8bd8030 	pop	{r4, r5, pc}

00008c34 <adc_read>:
    8c34:	e92d4010 	push	{r4, lr}
    8c38:	e1a04000 	mov	r4, r0
    8c3c:	e30b3004 	movw	r3, #45060	; 0xb004
    8c40:	e3403000 	movt	r3, #0
    8c44:	e5933000 	ldr	r3, [r3]
    8c48:	e1500003 	cmp	r0, r3
    8c4c:	0a000011 	beq	8c98 <adc_read+0x64>
    8c50:	e3500003 	cmp	r0, #3
    8c54:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
    8c58:	ea000010 	b	8ca0 <adc_read+0x6c>
    8c5c:	00008c84 	andeq	r8, r0, r4, lsl #25
    8c60:	00008c6c 	andeq	r8, r0, ip, ror #24
    8c64:	00008c74 	andeq	r8, r0, r4, ror ip
    8c68:	00008c7c 	andeq	r8, r0, ip, ror ip
    8c6c:	e3050083 	movw	r0, #20611	; 0x5083
    8c70:	ea000004 	b	8c88 <adc_read+0x54>
    8c74:	e3060083 	movw	r0, #24707	; 0x6083
    8c78:	ea000002 	b	8c88 <adc_read+0x54>
    8c7c:	e3070083 	movw	r0, #28803	; 0x7083
    8c80:	ea000000 	b	8c88 <adc_read+0x54>
    8c84:	e3040083 	movw	r0, #16515	; 0x4083
    8c88:	ebffff63 	bl	8a1c <adc_write_config>
    8c8c:	e30b3004 	movw	r3, #45060	; 0xb004
    8c90:	e3403000 	movt	r3, #0
    8c94:	e5834000 	str	r4, [r3]
    8c98:	ebffff8d 	bl	8ad4 <adc_read_conversion>
    8c9c:	e8bd8010 	pop	{r4, pc}
    8ca0:	e3a00000 	mov	r0, #0
    8ca4:	e8bd8010 	pop	{r4, pc}

00008ca8 <display_light>:
    8ca8:	e92d4008 	push	{r3, lr}
    8cac:	e3a00003 	mov	r0, #3
    8cb0:	ebffffdf 	bl	8c34 <adc_read>
    8cb4:	e1a01000 	mov	r1, r0
    8cb8:	e30a01a8 	movw	r0, #41384	; 0xa1a8
    8cbc:	e3400000 	movt	r0, #0
    8cc0:	ebfffdf1 	bl	848c <printk>
    8cc4:	e8bd8008 	pop	{r3, pc}

00008cc8 <clap_detect>:
    8cc8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8ccc:	e30b6dc1 	movw	r6, #48577	; 0xbdc1
    8cd0:	e34f6ff0 	movt	r6, #65520	; 0xfff0
    8cd4:	e3e07102 	mvn	r7, #-2147483648	; 0x80000000
    8cd8:	e30aa1c8 	movw	sl, #41416	; 0xa1c8
    8cdc:	e340a000 	movt	sl, #0
    8ce0:	e30a91b4 	movw	r9, #41396	; 0xa1b4
    8ce4:	e3409000 	movt	r9, #0
    8ce8:	e3a05ffa 	mov	r5, #1000	; 0x3e8
    8cec:	e3a08002 	mov	r8, #2
    8cf0:	e1a00008 	mov	r0, r8
    8cf4:	ebffffce 	bl	8c34 <adc_read>
    8cf8:	e1a04000 	mov	r4, r0
    8cfc:	e1500007 	cmp	r0, r7
    8d00:	aa000003 	bge	8d14 <clap_detect+0x4c>
    8d04:	e1a00009 	mov	r0, r9
    8d08:	e1a01004 	mov	r1, r4
    8d0c:	ebfffdde 	bl	848c <printk>
    8d10:	e1a07004 	mov	r7, r4
    8d14:	e1540006 	cmp	r4, r6
    8d18:	da000003 	ble	8d2c <clap_detect+0x64>
    8d1c:	e1a0000a 	mov	r0, sl
    8d20:	e1a01004 	mov	r1, r4
    8d24:	ebfffdd8 	bl	848c <printk>
    8d28:	e1a06004 	mov	r6, r4
    8d2c:	e2555001 	subs	r5, r5, #1
    8d30:	1affffee 	bne	8cf0 <clap_detect+0x28>
    8d34:	e0674006 	rsb	r4, r7, r6
    8d38:	e30a01dc 	movw	r0, #41436	; 0xa1dc
    8d3c:	e3400000 	movt	r0, #0
    8d40:	e1a01004 	mov	r1, r4
    8d44:	ebfffdd0 	bl	848c <printk>
    8d48:	e3540e19 	cmp	r4, #400	; 0x190
    8d4c:	daffffe5 	ble	8ce8 <clap_detect+0x20>
    8d50:	e30a01e8 	movw	r0, #41448	; 0xa1e8
    8d54:	e3400000 	movt	r0, #0
    8d58:	ebfffdcb 	bl	848c <printk>
    8d5c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

00008d60 <peri_read>:
    8d60:	e5900000 	ldr	r0, [r0]
    8d64:	e12fff1e 	bx	lr

00008d68 <peri_write>:
    8d68:	e5801000 	str	r1, [r0]
    8d6c:	e12fff1e 	bx	lr

00008d70 <peri_set_bits>:
    8d70:	e5903000 	ldr	r3, [r0]
    8d74:	e1c33002 	bic	r3, r3, r2
    8d78:	e0011002 	and	r1, r1, r2
    8d7c:	e1832001 	orr	r2, r3, r1
    8d80:	e5802000 	str	r2, [r0]
    8d84:	e12fff1e 	bx	lr

00008d88 <set_bits>:
    8d88:	e1c00002 	bic	r0, r0, r2
    8d8c:	e0011002 	and	r1, r1, r2
    8d90:	e1800001 	orr	r0, r0, r1
    8d94:	e12fff1e 	bx	lr

00008d98 <delay_cycles>:
    8d98:	e2500001 	subs	r0, r0, #1
    8d9c:	1afffffd 	bne	8d98 <delay_cycles>
    8da0:	e1a0f00e 	mov	pc, lr

00008da4 <read_cpsr>:
    8da4:	e10f0000 	mrs	r0, CPSR
    8da8:	e1a0f00e 	mov	pc, lr

00008dac <write_cpsr>:
    8dac:	e129f000 	msr	CPSR_fc, r0
    8db0:	e1a0f00e 	mov	pc, lr

00008db4 <disable_interrupts>:
    8db4:	e10f0000 	mrs	r0, CPSR
    8db8:	e3a01d07 	mov	r1, #448	; 0x1c0
    8dbc:	e1800001 	orr	r0, r0, r1
    8dc0:	e129f000 	msr	CPSR_fc, r0
    8dc4:	e1a0f00e 	mov	pc, lr

00008dc8 <enable_interrupts>:
    8dc8:	e10f0000 	mrs	r0, CPSR
    8dcc:	e3a01d07 	mov	r1, #448	; 0x1c0
    8dd0:	e1c00001 	bic	r0, r0, r1
    8dd4:	e129f000 	msr	CPSR_fc, r0
    8dd8:	e1a0f00e 	mov	pc, lr

00008ddc <__aeabi_uldivmod>:
    8ddc:	e3530000 	cmp	r3, #0
    8de0:	03520000 	cmpeq	r2, #0
    8de4:	1a000004 	bne	8dfc <__aeabi_uldivmod+0x20>
    8de8:	e3510000 	cmp	r1, #0
    8dec:	03500000 	cmpeq	r0, #0
    8df0:	13e01000 	mvnne	r1, #0
    8df4:	13e00000 	mvnne	r0, #0
    8df8:	ea000027 	b	8e9c <__aeabi_idiv0>
    8dfc:	e24dd008 	sub	sp, sp, #8
    8e00:	e92d6000 	push	{sp, lr}
    8e04:	eb000014 	bl	8e5c <__gnu_uldivmod_helper>
    8e08:	e59de004 	ldr	lr, [sp, #4]
    8e0c:	e28dd008 	add	sp, sp, #8
    8e10:	e8bd000c 	pop	{r2, r3}
    8e14:	e12fff1e 	bx	lr

00008e18 <__gnu_ldivmod_helper>:
    8e18:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8e1c:	e59d6020 	ldr	r6, [sp, #32]
    8e20:	e1a07002 	mov	r7, r2
    8e24:	e1a0a003 	mov	sl, r3
    8e28:	e1a04000 	mov	r4, r0
    8e2c:	e1a05001 	mov	r5, r1
    8e30:	eb00001a 	bl	8ea0 <__divdi3>
    8e34:	e1a03000 	mov	r3, r0
    8e38:	e0020197 	mul	r2, r7, r1
    8e3c:	e0898097 	umull	r8, r9, r7, r0
    8e40:	e023239a 	mla	r3, sl, r3, r2
    8e44:	e0544008 	subs	r4, r4, r8
    8e48:	e0839009 	add	r9, r3, r9
    8e4c:	e0c55009 	sbc	r5, r5, r9
    8e50:	e8860030 	stm	r6, {r4, r5}
    8e54:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8e58:	e12fff1e 	bx	lr

00008e5c <__gnu_uldivmod_helper>:
    8e5c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8e60:	e59d5018 	ldr	r5, [sp, #24]
    8e64:	e1a04002 	mov	r4, r2
    8e68:	e1a08003 	mov	r8, r3
    8e6c:	e1a06000 	mov	r6, r0
    8e70:	e1a07001 	mov	r7, r1
    8e74:	eb000067 	bl	9018 <__udivdi3>
    8e78:	e0080890 	mul	r8, r0, r8
    8e7c:	e0832490 	umull	r2, r3, r0, r4
    8e80:	e0248491 	mla	r4, r1, r4, r8
    8e84:	e0566002 	subs	r6, r6, r2
    8e88:	e0843003 	add	r3, r4, r3
    8e8c:	e0c77003 	sbc	r7, r7, r3
    8e90:	e88500c0 	stm	r5, {r6, r7}
    8e94:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8e98:	e12fff1e 	bx	lr

00008e9c <__aeabi_idiv0>:
    8e9c:	e12fff1e 	bx	lr

00008ea0 <__divdi3>:
    8ea0:	e3510000 	cmp	r1, #0
    8ea4:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8ea8:	a1a04000 	movge	r4, r0
    8eac:	a1a05001 	movge	r5, r1
    8eb0:	a3a0a000 	movge	sl, #0
    8eb4:	ba000053 	blt	9008 <__divdi3+0x168>
    8eb8:	e3530000 	cmp	r3, #0
    8ebc:	a1a08002 	movge	r8, r2
    8ec0:	a1a09003 	movge	r9, r3
    8ec4:	ba00004b 	blt	8ff8 <__divdi3+0x158>
    8ec8:	e1550009 	cmp	r5, r9
    8ecc:	01540008 	cmpeq	r4, r8
    8ed0:	33a02000 	movcc	r2, #0
    8ed4:	33a03000 	movcc	r3, #0
    8ed8:	3a00003b 	bcc	8fcc <__divdi3+0x12c>
    8edc:	e1a01009 	mov	r1, r9
    8ee0:	e1a00008 	mov	r0, r8
    8ee4:	eb000093 	bl	9138 <__clzdi2>
    8ee8:	e1a01005 	mov	r1, r5
    8eec:	e1a0b000 	mov	fp, r0
    8ef0:	e1a00004 	mov	r0, r4
    8ef4:	eb00008f 	bl	9138 <__clzdi2>
    8ef8:	e060000b 	rsb	r0, r0, fp
    8efc:	e240e020 	sub	lr, r0, #32
    8f00:	e1a07019 	lsl	r7, r9, r0
    8f04:	e1877e18 	orr	r7, r7, r8, lsl lr
    8f08:	e260c020 	rsb	ip, r0, #32
    8f0c:	e1877c38 	orr	r7, r7, r8, lsr ip
    8f10:	e1550007 	cmp	r5, r7
    8f14:	e1a06018 	lsl	r6, r8, r0
    8f18:	01540006 	cmpeq	r4, r6
    8f1c:	e1a01000 	mov	r1, r0
    8f20:	33a02000 	movcc	r2, #0
    8f24:	33a03000 	movcc	r3, #0
    8f28:	3a000005 	bcc	8f44 <__divdi3+0xa4>
    8f2c:	e3a08001 	mov	r8, #1
    8f30:	e0544006 	subs	r4, r4, r6
    8f34:	e1a03e18 	lsl	r3, r8, lr
    8f38:	e1833c38 	orr	r3, r3, r8, lsr ip
    8f3c:	e0c55007 	sbc	r5, r5, r7
    8f40:	e1a02018 	lsl	r2, r8, r0
    8f44:	e3500000 	cmp	r0, #0
    8f48:	0a00001f 	beq	8fcc <__divdi3+0x12c>
    8f4c:	e1b070a7 	lsrs	r7, r7, #1
    8f50:	e1a06066 	rrx	r6, r6
    8f54:	ea000007 	b	8f78 <__divdi3+0xd8>
    8f58:	e0544006 	subs	r4, r4, r6
    8f5c:	e0c55007 	sbc	r5, r5, r7
    8f60:	e0944004 	adds	r4, r4, r4
    8f64:	e0a55005 	adc	r5, r5, r5
    8f68:	e2944001 	adds	r4, r4, #1
    8f6c:	e2a55000 	adc	r5, r5, #0
    8f70:	e2500001 	subs	r0, r0, #1
    8f74:	0a000006 	beq	8f94 <__divdi3+0xf4>
    8f78:	e1570005 	cmp	r7, r5
    8f7c:	01560004 	cmpeq	r6, r4
    8f80:	9afffff4 	bls	8f58 <__divdi3+0xb8>
    8f84:	e0944004 	adds	r4, r4, r4
    8f88:	e0a55005 	adc	r5, r5, r5
    8f8c:	e2500001 	subs	r0, r0, #1
    8f90:	1afffff8 	bne	8f78 <__divdi3+0xd8>
    8f94:	e261c020 	rsb	ip, r1, #32
    8f98:	e1a00134 	lsr	r0, r4, r1
    8f9c:	e0922004 	adds	r2, r2, r4
    8fa0:	e241e020 	sub	lr, r1, #32
    8fa4:	e1800c15 	orr	r0, r0, r5, lsl ip
    8fa8:	e1a04135 	lsr	r4, r5, r1
    8fac:	e1800e35 	orr	r0, r0, r5, lsr lr
    8fb0:	e1a07114 	lsl	r7, r4, r1
    8fb4:	e1877e10 	orr	r7, r7, r0, lsl lr
    8fb8:	e1a06110 	lsl	r6, r0, r1
    8fbc:	e0a33005 	adc	r3, r3, r5
    8fc0:	e1877c30 	orr	r7, r7, r0, lsr ip
    8fc4:	e0522006 	subs	r2, r2, r6
    8fc8:	e0c33007 	sbc	r3, r3, r7
    8fcc:	e29a0000 	adds	r0, sl, #0
    8fd0:	13a00001 	movne	r0, #1
    8fd4:	e3a01000 	mov	r1, #0
    8fd8:	e2704000 	rsbs	r4, r0, #0
    8fdc:	e2e15000 	rsc	r5, r1, #0
    8fe0:	e0222004 	eor	r2, r2, r4
    8fe4:	e0233005 	eor	r3, r3, r5
    8fe8:	e0900002 	adds	r0, r0, r2
    8fec:	e0a11003 	adc	r1, r1, r3
    8ff0:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8ff4:	e12fff1e 	bx	lr
    8ff8:	e2728000 	rsbs	r8, r2, #0
    8ffc:	e1e0a00a 	mvn	sl, sl
    9000:	e2e39000 	rsc	r9, r3, #0
    9004:	eaffffaf 	b	8ec8 <__divdi3+0x28>
    9008:	e2704000 	rsbs	r4, r0, #0
    900c:	e2e15000 	rsc	r5, r1, #0
    9010:	e3e0a000 	mvn	sl, #0
    9014:	eaffffa7 	b	8eb8 <__divdi3+0x18>

00009018 <__udivdi3>:
    9018:	e1510003 	cmp	r1, r3
    901c:	01500002 	cmpeq	r0, r2
    9020:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    9024:	e1a04000 	mov	r4, r0
    9028:	e1a05001 	mov	r5, r1
    902c:	e1a08002 	mov	r8, r2
    9030:	e1a09003 	mov	r9, r3
    9034:	33a00000 	movcc	r0, #0
    9038:	33a01000 	movcc	r1, #0
    903c:	3a00003b 	bcc	9130 <__udivdi3+0x118>
    9040:	e1a01003 	mov	r1, r3
    9044:	e1a00002 	mov	r0, r2
    9048:	eb00003a 	bl	9138 <__clzdi2>
    904c:	e1a01005 	mov	r1, r5
    9050:	e1a0a000 	mov	sl, r0
    9054:	e1a00004 	mov	r0, r4
    9058:	eb000036 	bl	9138 <__clzdi2>
    905c:	e060300a 	rsb	r3, r0, sl
    9060:	e243e020 	sub	lr, r3, #32
    9064:	e1a07319 	lsl	r7, r9, r3
    9068:	e1877e18 	orr	r7, r7, r8, lsl lr
    906c:	e263c020 	rsb	ip, r3, #32
    9070:	e1877c38 	orr	r7, r7, r8, lsr ip
    9074:	e1550007 	cmp	r5, r7
    9078:	e1a06318 	lsl	r6, r8, r3
    907c:	01540006 	cmpeq	r4, r6
    9080:	e1a02003 	mov	r2, r3
    9084:	33a00000 	movcc	r0, #0
    9088:	33a01000 	movcc	r1, #0
    908c:	3a000005 	bcc	90a8 <__udivdi3+0x90>
    9090:	e3a08001 	mov	r8, #1
    9094:	e0544006 	subs	r4, r4, r6
    9098:	e1a01e18 	lsl	r1, r8, lr
    909c:	e1811c38 	orr	r1, r1, r8, lsr ip
    90a0:	e0c55007 	sbc	r5, r5, r7
    90a4:	e1a00318 	lsl	r0, r8, r3
    90a8:	e3530000 	cmp	r3, #0
    90ac:	0a00001f 	beq	9130 <__udivdi3+0x118>
    90b0:	e1b070a7 	lsrs	r7, r7, #1
    90b4:	e1a06066 	rrx	r6, r6
    90b8:	ea000007 	b	90dc <__udivdi3+0xc4>
    90bc:	e0544006 	subs	r4, r4, r6
    90c0:	e0c55007 	sbc	r5, r5, r7
    90c4:	e0944004 	adds	r4, r4, r4
    90c8:	e0a55005 	adc	r5, r5, r5
    90cc:	e2944001 	adds	r4, r4, #1
    90d0:	e2a55000 	adc	r5, r5, #0
    90d4:	e2533001 	subs	r3, r3, #1
    90d8:	0a000006 	beq	90f8 <__udivdi3+0xe0>
    90dc:	e1570005 	cmp	r7, r5
    90e0:	01560004 	cmpeq	r6, r4
    90e4:	9afffff4 	bls	90bc <__udivdi3+0xa4>
    90e8:	e0944004 	adds	r4, r4, r4
    90ec:	e0a55005 	adc	r5, r5, r5
    90f0:	e2533001 	subs	r3, r3, #1
    90f4:	1afffff8 	bne	90dc <__udivdi3+0xc4>
    90f8:	e0948000 	adds	r8, r4, r0
    90fc:	e0a59001 	adc	r9, r5, r1
    9100:	e1a03234 	lsr	r3, r4, r2
    9104:	e2621020 	rsb	r1, r2, #32
    9108:	e2420020 	sub	r0, r2, #32
    910c:	e1833115 	orr	r3, r3, r5, lsl r1
    9110:	e1a0c235 	lsr	ip, r5, r2
    9114:	e1833035 	orr	r3, r3, r5, lsr r0
    9118:	e1a0721c 	lsl	r7, ip, r2
    911c:	e1877013 	orr	r7, r7, r3, lsl r0
    9120:	e1a06213 	lsl	r6, r3, r2
    9124:	e1877133 	orr	r7, r7, r3, lsr r1
    9128:	e0580006 	subs	r0, r8, r6
    912c:	e0c91007 	sbc	r1, r9, r7
    9130:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    9134:	e12fff1e 	bx	lr

00009138 <__clzdi2>:
    9138:	e92d4010 	push	{r4, lr}
    913c:	e3510000 	cmp	r1, #0
    9140:	1a000002 	bne	9150 <__clzdi2+0x18>
    9144:	eb000005 	bl	9160 <__clzsi2>
    9148:	e2800020 	add	r0, r0, #32
    914c:	ea000001 	b	9158 <__clzdi2+0x20>
    9150:	e1a00001 	mov	r0, r1
    9154:	eb000001 	bl	9160 <__clzsi2>
    9158:	e8bd4010 	pop	{r4, lr}
    915c:	e12fff1e 	bx	lr

00009160 <__clzsi2>:
    9160:	e3a0101c 	mov	r1, #28
    9164:	e3500801 	cmp	r0, #65536	; 0x10000
    9168:	21a00820 	lsrcs	r0, r0, #16
    916c:	22411010 	subcs	r1, r1, #16
    9170:	e3500c01 	cmp	r0, #256	; 0x100
    9174:	21a00420 	lsrcs	r0, r0, #8
    9178:	22411008 	subcs	r1, r1, #8
    917c:	e3500010 	cmp	r0, #16
    9180:	21a00220 	lsrcs	r0, r0, #4
    9184:	22411004 	subcs	r1, r1, #4
    9188:	e28f2008 	add	r2, pc, #8
    918c:	e7d20000 	ldrb	r0, [r2, r0]
    9190:	e0800001 	add	r0, r0, r1
    9194:	e12fff1e 	bx	lr
    9198:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    919c:	01010101 	tsteq	r1, r1, lsl #2
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
    a038:	72656874 	rsbvc	r6, r5, #116, 16	; 0x740000
    a03c:	72612065 	rsbvc	r2, r1, #101	; 0x65
    a040:	6f6d2065 	svcvs	0x006d2065
    a044:	64206572 	strtvs	r6, [r0], #-1394	; 0xfffffa8e
    a048:	20617461 	rsbcs	r7, r1, r1, ror #8
    a04c:	46206e69 	strtmi	r6, [r0], -r9, ror #28
    a050:	0a4f4649 	beq	13db97c <__user_program+0x10db97c>
    a054:	00000000 	andeq	r0, r0, r0
    a058:	65636572 	strbvs	r6, [r3, #-1394]!	; 0xfffffa8e
    a05c:	6e697669 	cdpvs	6, 6, cr7, cr9, cr9, {3}
    a060:	61642067 	cmnvs	r4, r7, rrx
    a064:	61206174 			; <UNDEFINED> instruction: 0x61206174
    a068:	72657466 	rsbvc	r7, r5, #1711276032	; 0x66000000
    a06c:	61727420 	cmnvs	r2, r0, lsr #8
    a070:	6566736e 	strbvs	r7, [r6, #-878]!	; 0xfffffc92
    a074:	73692072 	cmnvc	r9, #114	; 0x72
    a078:	4e4f4420 	cdpmi	4, 4, cr4, cr15, cr0, {1}
    a07c:	00000a45 	andeq	r0, r0, r5, asr #20
    a080:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a084:	72756769 	rsbsvc	r6, r5, #27525120	; 0x1a40000
    a088:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a08c:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    a090:	25203a65 	strcs	r3, [r0, #-2661]!	; 0xfffff59b
    a094:	00000a78 	andeq	r0, r0, r8, ror sl
    a098:	6f727265 	svcvs	0x00727265
    a09c:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a0a0:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a0a4:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0a8:	000a6769 	andeq	r6, sl, r9, ror #14
    a0ac:	63637573 	cmnvs	r3, #482344960	; 0x1cc00000
    a0b0:	20737365 	rsbscs	r7, r3, r5, ror #6
    a0b4:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0b8:	000a6769 	andeq	r6, sl, r9, ror #14
    a0bc:	6f727265 	svcvs	0x00727265
    a0c0:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a0c4:	65687720 	strbvs	r7, [r8, #-1824]!	; 0xfffff8e0
    a0c8:	6572206e 	ldrbvs	r2, [r2, #-110]!	; 0xffffff92
    a0cc:	6e696461 	cdpvs	4, 6, cr6, cr9, cr1, {3}
    a0d0:	6f632067 	svcvs	0x00632067
    a0d4:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
    a0d8:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a0dc:	0000000a 	andeq	r0, r0, sl
    a0e0:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
    a0e4:	72206769 	eorvc	r6, r0, #27525120	; 0x1a40000
    a0e8:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    a0ec:	20726574 	rsbscs	r6, r2, r4, ror r5
    a0f0:	25207369 	strcs	r7, [r0, #-873]!	; 0xfffffc97
    a0f4:	00000a78 	andeq	r0, r0, r8, ror sl
    a0f8:	6f727265 	svcvs	0x00727265
    a0fc:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a100:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a104:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
    a108:	676e6967 	strbvs	r6, [lr, -r7, ror #18]!
    a10c:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a110:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    a114:	6f702072 	svcvs	0x00702072
    a118:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
    a11c:	6f662072 	svcvs	0x00662072
    a120:	6f632072 	svcvs	0x00632072
    a124:	7265766e 	rsbvc	r7, r5, #115343360	; 0x6e00000
    a128:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
    a12c:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    a130:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    a134:	00000a72 	andeq	r0, r0, r2, ror sl
    a138:	6f727265 	svcvs	0x00727265
    a13c:	64252072 	strtvs	r2, [r5], #-114	; 0xffffff8e
    a140:	206e6f20 	rsbcs	r6, lr, r0, lsr #30
    a144:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
    a148:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a14c:	766e6f63 	strbtvc	r6, [lr], -r3, ror #30
    a150:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    a154:	72206e6f 	eorvc	r6, r0, #1776	; 0x6f0
    a158:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    a15c:	0a726574 	beq	1ca3734 <__user_program+0x19a3734>
    a160:	00000000 	andeq	r0, r0, r0
    a164:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xfffff1b7
    a168:	6c6c6169 	stfvse	f6, [ip], #-420	; 0xfffffe5c
    a16c:	63202c79 			; <UNDEFINED> instruction: 0x63202c79
    a170:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
    a174:	65722067 	ldrbvs	r2, [r2, #-103]!	; 0xffffff99
    a178:	74736967 	ldrbtvc	r6, [r3], #-2407	; 0xfffff699
    a17c:	69207265 	stmdbvs	r0!, {r0, r2, r5, r6, r9, ip, sp, lr}
    a180:	78252073 	stmdavc	r5!, {r0, r1, r4, r5, r6, sp}
    a184:	0000000a 	andeq	r0, r0, sl
    a188:	74206948 	strtvc	r6, [r0], #-2376	; 0xfffff6b8
    a18c:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    a190:	20736920 	rsbscs	r6, r3, r0, lsr #18
    a194:	000a7825 	andeq	r7, sl, r5, lsr #16
    a198:	74206f4c 	strtvc	r6, [r0], #-3916	; 0xfffff0b4
    a19c:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
    a1a0:	20736920 	rsbscs	r6, r3, r0, lsr #18
    a1a4:	000a7825 	andeq	r7, sl, r5, lsr #16
    a1a8:	6867694c 	stmdavs	r7!, {r2, r3, r6, r8, fp, sp, lr}^
    a1ac:	25203a74 	strcs	r3, [r0, #-2676]!	; 0xfffff58c
    a1b0:	00000a64 	andeq	r0, r0, r4, ror #20
    a1b4:	206e696d 	rsbcs	r6, lr, sp, ror #18
    a1b8:	61647075 	smcvs	18181	; 0x4705
    a1bc:	2c646574 	cfstr64cs	mvdx6, [r4], #-464	; 0xfffffe30
    a1c0:	0a642520 	beq	1913648 <__user_program+0x1613648>
    a1c4:	00000000 	andeq	r0, r0, r0
    a1c8:	2078616d 	rsbscs	r6, r8, sp, ror #2
    a1cc:	61647075 	smcvs	18181	; 0x4705
    a1d0:	2c646574 	cfstr64cs	mvdx6, [r4], #-464	; 0xfffffe30
    a1d4:	0a642520 	beq	191365c <__user_program+0x161365c>
    a1d8:	00000000 	andeq	r0, r0, r0
    a1dc:	69647541 	stmdbvs	r4!, {r0, r6, r8, sl, ip, sp, lr}^
    a1e0:	25203a6f 	strcs	r3, [r0, #-2671]!	; 0xfffff591
    a1e4:	00000a64 	andeq	r0, r0, r4, ror #20
    a1e8:	70616c63 	rsbvc	r6, r1, r3, ror #24
    a1ec:	74656420 	strbtvc	r6, [r5], #-1056	; 0xfffffbe0
    a1f0:	65746365 	ldrbvs	r6, [r4, #-869]!	; 0xfffffc9b
    a1f4:	000a2164 	andeq	r2, sl, r4, ror #2

Disassembly of section .ARM.exidx:

0000a1f8 <.ARM.exidx>:
    a1f8:	7fffeca8 	svcvc	0x00ffeca8
    a1fc:	00000001 	andeq	r0, r0, r1

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
      b0:	d7087491 			; <UNDEFINED> instruction: 0xd7087491
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
     24c:	00f25a05 	rscseq	r5, r2, r5, lsl #20
     250:	530c0000 	movwpl	r0, #49152	; 0xc000
     254:	00000000 	andeq	r0, r0, r0
     258:	00017e0a 	andeq	r7, r1, sl, lsl #28
     25c:	0d280400 	cfstrseq	mvf0, [r8, #-0]
     260:	00000140 	andeq	r0, r0, r0, asr #2
     264:	00412a03 	subeq	r2, r1, r3, lsl #20
     268:	4e0e0000 	cdpmi	0, 0, cr0, cr14, cr0, {0}
     26c:	04000001 	streq	r0, [r0], #-1
     270:	00011132 	andeq	r1, r1, r2, lsr r1
     274:	10000f00 	andne	r0, r0, r0, lsl #30
     278:	0000016c 	andeq	r0, r0, ip, ror #2
     27c:	000f3404 	andeq	r3, pc, r4, lsl #8
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
     714:	0004f700 	andeq	pc, r4, r0, lsl #14
     718:	13000400 	movwne	r0, #1024	; 0x400
     71c:	04000004 	streq	r0, [r0], #-4
     720:	0001c701 	andeq	ip, r1, r1, lsl #14
     724:	02e80100 	rsceq	r0, r8, #0, 2
     728:	00700000 	rsbseq	r0, r0, r0
     72c:	873c0000 	ldrhi	r0, [ip, -r0]!
     730:	02e00000 	rsceq	r0, r0, #0
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
     794:	9f3c0601 	svcls	0x003c0601
     798:	06000000 	streq	r0, [r0], -r0
     79c:	00000394 	muleq	r0, r4, r3
     7a0:	03170600 	tsteq	r7, #0, 12
     7a4:	06010000 	streq	r0, [r1], -r0
     7a8:	0000037e 	andeq	r0, r0, lr, ror r3
     7ac:	03420602 	movteq	r0, #9730	; 0x2602
     7b0:	00040000 	andeq	r0, r4, r0
     7b4:	00015c07 	andeq	r5, r1, r7, lsl #24
     7b8:	3c110100 	ldfccs	f0, [r1], {-0}
     7bc:	20000087 	andcs	r0, r0, r7, lsl #1
     7c0:	01000000 	mrseq	r0, (UNDEF: 0)
     7c4:	0000f09c 	muleq	r0, ip, r0
     7c8:	6c630800 	stclvs	8, cr0, [r3], #-0
     7cc:	1101006b 	tstne	r1, fp, rrx
     7d0:	00000053 	andeq	r0, r0, r3, asr r0
     7d4:	00000227 	andeq	r0, r0, r7, lsr #4
     7d8:	00874c09 	addeq	r4, r7, r9, lsl #24
     7dc:	00047d00 	andeq	r7, r4, r0, lsl #26
     7e0:	0000db00 	andeq	sp, r0, r0, lsl #22
     7e4:	51010a00 	tstpl	r1, r0, lsl #20
     7e8:	010a3401 	tsteq	sl, r1, lsl #8
     7ec:	00320150 	eorseq	r0, r2, r0, asr r1
     7f0:	0087580b 	addeq	r5, r7, fp, lsl #16
     7f4:	00047d00 	andeq	r7, r4, r0, lsl #26
     7f8:	51010a00 	tstpl	r1, r0, lsl #20
     7fc:	010a3401 	tsteq	sl, r1, lsl #8
     800:	00330150 	eorseq	r0, r3, r0, asr r1
     804:	036d0c00 	cmneq	sp, #0, 24
     808:	1b010000 	blne	40810 <__bss_end+0x34810>
     80c:	00000041 	andeq	r0, r0, r1, asr #32
     810:	0000875c 	andeq	r8, r0, ip, asr r7
     814:	00000114 	andeq	r0, r0, r4, lsl r1
     818:	02659c01 	rsbeq	r9, r5, #256	; 0x100
     81c:	62080000 	andvs	r0, r8, #0
     820:	01006675 	tsteq	r0, r5, ror r6
     824:	0002651b 	andeq	r6, r2, fp, lsl r5
     828:	00024800 	andeq	r4, r2, r0, lsl #16
     82c:	656c0800 	strbvs	r0, [ip, #-2048]!	; 0xfffff800
     830:	1b01006e 	blne	409f0 <__bss_end+0x349f0>
     834:	00000053 	andeq	r0, r0, r3, asr r0
     838:	00000281 	andeq	r0, r0, r1, lsl #5
     83c:	0002d30d 	andeq	sp, r2, sp, lsl #6
     840:	411b0100 	tstmi	fp, r0, lsl #2
     844:	a2000000 	andge	r0, r0, #0
     848:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
     84c:	00000368 	andeq	r0, r0, r8, ror #6
     850:	026b1d01 	rsbeq	r1, fp, #1, 26	; 0x40
     854:	40080000 	andmi	r0, r8, r0
     858:	e30e3f80 	movw	r3, #61312	; 0xef80
     85c:	01000002 	tsteq	r0, r2
     860:	00026b1e 	andeq	r6, r2, lr, lsl fp
     864:	80401000 	subhi	r1, r0, r0
     868:	03100e3f 	tsteq	r0, #1008	; 0x3f0
     86c:	1f010000 	svcne	0x00010000
     870:	0000026b 	andeq	r0, r0, fp, ror #4
     874:	3f804004 	svccc	0x00804004
     878:	0003a20e 	andeq	sl, r3, lr, lsl #4
     87c:	6b200100 	blvs	800c84 <__user_program+0x500c84>
     880:	00000002 	andeq	r0, r0, r2
     884:	0e3f8040 	cdpeq	0, 3, cr8, cr15, cr0, {2}
     888:	000002d2 	ldrdeq	r0, [r0], -r2
     88c:	026b2101 	rsbeq	r2, fp, #1073741824	; 0x40000000
     890:	400c0000 	andmi	r0, ip, r0
     894:	aa0f3f80 	bge	3d069c <__user_program+0xd069c>
     898:	01000003 	tsteq	r0, r3
     89c:	00006524 	andeq	r6, r0, r4, lsr #10
     8a0:	0002c300 	andeq	ip, r2, r0, lsl #6
     8a4:	00691000 	rsbeq	r1, r9, r0
     8a8:	00652501 	rsbeq	r2, r5, r1, lsl #10
     8ac:	03000000 	movweq	r0, #0
     8b0:	3b0f0000 	blcc	3c08b8 <__user_program+0xc08b8>
     8b4:	01000003 	tsteq	r0, r3
     8b8:	00004126 	andeq	r4, r0, r6, lsr #2
     8bc:	00031f00 	andeq	r1, r3, r0, lsl #30
     8c0:	87800900 	strhi	r0, [r0, r0, lsl #18]
     8c4:	04930000 	ldreq	r0, [r3], #0
     8c8:	01c40000 	biceq	r0, r4, r0
     8cc:	010a0000 	mrseq	r0, (UNDEF: 10)
     8d0:	0a400152 	beq	1000e20 <__user_program+0xd00e20>
     8d4:	40015101 	andmi	r5, r1, r1, lsl #2
     8d8:	87900900 	ldrhi	r0, [r0, r0, lsl #18]
     8dc:	04ae0000 	strteq	r0, [lr], #0
     8e0:	01d90000 	bicseq	r0, r9, r0
     8e4:	010a0000 	mrseq	r0, (UNDEF: 10)
     8e8:	020a0351 	andeq	r0, sl, #1140850689	; 0x44000001
     8ec:	a0090003 	andge	r0, r9, r3
     8f0:	ae000087 	cdpge	0, 0, cr0, cr0, cr7, {4}
     8f4:	ed000004 	stc	0, cr0, [r0, #-16]
     8f8:	0a000001 	beq	904 <__start-0x76fc>
     8fc:	76025101 	strvc	r5, [r2], -r1, lsl #2
     900:	b0090000 	andlt	r0, r9, r0
     904:	ae000087 	cdpge	0, 0, cr0, cr0, cr7, {4}
     908:	01000004 	tsteq	r0, r4
     90c:	0a000002 	beq	91c <__start-0x76e4>
     910:	74025101 	strvc	r5, [r2], #-257	; 0xfffffeff
     914:	d8090000 	stmdale	r9, {}	; <UNPREDICTABLE>
     918:	ae000087 	cdpge	0, 0, cr0, cr0, cr7, {4}
     91c:	15000004 	strne	r0, [r0, #-4]
     920:	0a000002 	beq	930 <__start-0x76d0>
     924:	76025001 	strvc	r5, [r2], -r1
     928:	04090000 	streq	r0, [r9], #-0
     92c:	ae000088 	cdpge	0, 0, cr0, cr0, cr8, {4}
     930:	2a000004 	bcs	948 <__start-0x76b8>
     934:	0a000002 	beq	944 <__start-0x76bc>
     938:	0a035101 	beq	d4d44 <__bss_end+0xc8d44>
     93c:	11008080 	smlabbne	r0, r0, r0, r8
     940:	00008810 	andeq	r8, r0, r0, lsl r8
     944:	000004c4 	andeq	r0, r0, r4, asr #9
     948:	00882811 	addeq	r2, r8, r1, lsl r8
     94c:	0004c400 	andeq	ip, r4, r0, lsl #8
     950:	884c0900 	stmdahi	ip, {r8, fp}^
     954:	04c40000 	strbeq	r0, [r4], #0
     958:	02500000 	subseq	r0, r0, #0
     95c:	010a0000 	mrseq	r0, (UNDEF: 10)
     960:	00740250 	rsbseq	r0, r4, r0, asr r2
     964:	88680b00 	stmdahi	r8!, {r8, r9, fp}^
     968:	04930000 	ldreq	r0, [r3], #0
     96c:	010a0000 	mrseq	r0, (UNDEF: 10)
     970:	0a320152 	beq	c80ec0 <__user_program+0x980ec0>
     974:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     978:	04120000 	ldreq	r0, [r2], #-0
     97c:	00000041 	andeq	r0, r0, r1, asr #32
     980:	02710412 	rsbseq	r0, r1, #301989888	; 0x12000000
     984:	65130000 	ldrvs	r0, [r3, #-0]
     988:	0c000000 	stceq	0, cr0, [r0], {-0}
     98c:	00000358 	andeq	r0, r0, r8, asr r3
     990:	00415501 	subeq	r5, r1, r1, lsl #10
     994:	88700000 	ldmdahi	r0!, {}^	; <UNPREDICTABLE>
     998:	01ac0000 			; <UNDEFINED> instruction: 0x01ac0000
     99c:	9c010000 	stcls	0, cr0, [r1], {-0}
     9a0:	0000047d 	andeq	r0, r0, sp, ror r4
     9a4:	66756208 	ldrbtvs	r6, [r5], -r8, lsl #4
     9a8:	65550100 	ldrbvs	r0, [r5, #-256]	; 0xffffff00
     9ac:	33000002 	movwcc	r0, #2
     9b0:	08000003 	stmdaeq	r0, {r0, r1}
     9b4:	006e656c 	rsbeq	r6, lr, ip, ror #10
     9b8:	00535501 	subseq	r5, r3, r1, lsl #10
     9bc:	03510000 	cmpeq	r1, #0
     9c0:	d30d0000 	movwle	r0, #53248	; 0xd000
     9c4:	01000002 	tsteq	r0, r2
     9c8:	00004155 	andeq	r4, r0, r5, asr r1
     9cc:	00037200 	andeq	r7, r3, r0, lsl #4
     9d0:	03680e00 	cmneq	r8, #0, 28
     9d4:	56010000 	strpl	r0, [r1], -r0
     9d8:	0000026b 	andeq	r0, r0, fp, ror #4
     9dc:	3f804008 	svccc	0x00804008
     9e0:	0002e30e 	andeq	lr, r2, lr, lsl #6
     9e4:	6b570100 	blvs	15c0dec <__user_program+0x12c0dec>
     9e8:	10000002 	andne	r0, r0, r2
     9ec:	0e3f8040 	cdpeq	0, 3, cr8, cr15, cr0, {2}
     9f0:	00000310 	andeq	r0, r0, r0, lsl r3
     9f4:	026b5801 	rsbeq	r5, fp, #65536	; 0x10000
     9f8:	40040000 	andmi	r0, r4, r0
     9fc:	a20e3f80 	andge	r3, lr, #128, 30	; 0x200
     a00:	01000003 	tsteq	r0, r3
     a04:	00026b59 	andeq	r6, r2, r9, asr fp
     a08:	80400000 	subhi	r0, r0, r0
     a0c:	02d20e3f 	sbcseq	r0, r2, #1008	; 0x3f0
     a10:	5a010000 	bpl	40a18 <__bss_end+0x34a18>
     a14:	0000026b 	andeq	r0, r0, fp, ror #4
     a18:	3f80400c 	svccc	0x0080400c
     a1c:	0003aa0f 	andeq	sl, r3, pc, lsl #20
     a20:	655c0100 	ldrbvs	r0, [ip, #-256]	; 0xffffff00
     a24:	93000000 	movwls	r0, #0
     a28:	10000003 	andne	r0, r0, r3
     a2c:	5d010069 	stcpl	0, cr0, [r1, #-420]	; 0xfffffe5c
     a30:	00000065 	andeq	r0, r0, r5, rrx
     a34:	000003e1 	andeq	r0, r0, r1, ror #7
     a38:	00033b0f 	andeq	r3, r3, pc, lsl #22
     a3c:	415e0100 	cmpmi	lr, r0, lsl #2
     a40:	10000000 	andne	r0, r0, r0
     a44:	09000004 	stmdbeq	r0, {r2}
     a48:	0000889c 	muleq	r0, ip, r8
     a4c:	00000493 	muleq	r0, r3, r4
     a50:	00000352 	andeq	r0, r0, r2, asr r3
     a54:	0252010a 	subseq	r0, r2, #-2147483646	; 0x80000002
     a58:	010a2008 	tsteq	sl, r8
     a5c:	20080251 	andcs	r0, r8, r1, asr r2
     a60:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     a64:	09000075 	stmdbeq	r0, {r0, r2, r4, r5, r6}
     a68:	000088ac 	andeq	r8, r0, ip, lsr #17
     a6c:	000004ae 	andeq	r0, r0, lr, lsr #9
     a70:	00000367 	andeq	r0, r0, r7, ror #6
     a74:	0351010a 	cmpeq	r1, #-2147483646	; 0x80000002
     a78:	0003020a 	andeq	r0, r3, sl, lsl #4
     a7c:	0088bc09 	addeq	fp, r8, r9, lsl #24
     a80:	0004ae00 	andeq	sl, r4, r0, lsl #28
     a84:	00037b00 	andeq	r7, r3, r0, lsl #22
     a88:	51010a00 	tstpl	r1, r0, lsl #20
     a8c:	00007402 	andeq	r7, r0, r2, lsl #8
     a90:	0088cc09 	addeq	ip, r8, r9, lsl #24
     a94:	0004ae00 	andeq	sl, r4, r0, lsl #28
     a98:	00038f00 	andeq	r8, r3, r0, lsl #30
     a9c:	51010a00 	tstpl	r1, r0, lsl #20
     aa0:	00007702 	andeq	r7, r0, r2, lsl #14
     aa4:	0088d809 	addeq	sp, r8, r9, lsl #16
     aa8:	0004ae00 	andeq	sl, r4, r0, lsl #28
     aac:	0003aa00 	andeq	sl, r3, r0, lsl #20
     ab0:	51010a00 	tstpl	r1, r0, lsl #20
     ab4:	80810a03 	addhi	r0, r1, r3, lsl #20
     ab8:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     abc:	09000075 	stmdbeq	r0, {r0, r2, r4, r5, r6}
     ac0:	000088f8 	strdeq	r8, [r0], -r8	; <UNPREDICTABLE>
     ac4:	000004c4 	andeq	r0, r0, r4, asr #9
     ac8:	000003be 			; <UNDEFINED> instruction: 0x000003be
     acc:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     ad0:	09000078 	stmdbeq	r0, {r3, r4, r5, r6}
     ad4:	00008910 	andeq	r8, r0, r0, lsl r9
     ad8:	000004c4 	andeq	r0, r0, r4, asr #9
     adc:	000003d2 	ldrdeq	r0, [r0], -r2
     ae0:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     ae4:	09000077 	stmdbeq	r0, {r0, r1, r2, r4, r5, r6}
     ae8:	00008920 	andeq	r8, r0, r0, lsr #18
     aec:	000004c4 	andeq	r0, r0, r4, asr #9
     af0:	000003e6 	andeq	r0, r0, r6, ror #7
     af4:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     af8:	11000077 	tstne	r0, r7, ror r0
     afc:	00008948 	andeq	r8, r0, r8, asr #18
     b00:	000004c4 	andeq	r0, r0, r4, asr #9
     b04:	00895c09 	addeq	r5, r9, r9, lsl #24
     b08:	0004d900 	andeq	sp, r4, r0, lsl #18
     b0c:	00040600 	andeq	r0, r4, r0, lsl #12
     b10:	50010a00 	andpl	r0, r1, r0, lsl #20
     b14:	a0380305 	eorsge	r0, r8, r5, lsl #6
     b18:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
     b1c:	0000898c 	andeq	r8, r0, ip, lsl #19
     b20:	000004d9 	ldrdeq	r0, [r0], -r9
     b24:	0000041a 	andeq	r0, r0, sl, lsl r4
     b28:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     b2c:	09000076 	stmdbeq	r0, {r1, r2, r4, r5, r6}
     b30:	00008994 	muleq	r0, r4, r9
     b34:	000004c4 	andeq	r0, r0, r4, asr #9
     b38:	0000042e 	andeq	r0, r0, lr, lsr #8
     b3c:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     b40:	09000078 	stmdbeq	r0, {r3, r4, r5, r6}
     b44:	000089a8 	andeq	r8, r0, r8, lsr #19
     b48:	000004c4 	andeq	r0, r0, r4, asr #9
     b4c:	00000442 	andeq	r0, r0, r2, asr #8
     b50:	0250010a 	subseq	r0, r0, #-2147483646	; 0x80000002
     b54:	11000077 	tstne	r0, r7, ror r0
     b58:	000089bc 			; <UNDEFINED> instruction: 0x000089bc
     b5c:	000004c4 	andeq	r0, r0, r4, asr #9
     b60:	0089d411 	addeq	sp, r9, r1, lsl r4
     b64:	0004c400 	andeq	ip, r4, r0, lsl #8
     b68:	89f80900 	ldmibhi	r8!, {r8, fp}^
     b6c:	04c40000 	strbeq	r0, [r4], #0
     b70:	04680000 	strbteq	r0, [r8], #-0
     b74:	010a0000 	mrseq	r0, (UNDEF: 10)
     b78:	00740250 	rsbseq	r0, r4, r0, asr r2
     b7c:	8a140b00 	bhi	503784 <__user_program+0x203784>
     b80:	04930000 	ldreq	r0, [r3], #0
     b84:	010a0000 	mrseq	r0, (UNDEF: 10)
     b88:	0a320152 	beq	c810d8 <__user_program+0x9810d8>
     b8c:	32015101 	andcc	r5, r1, #1073741824	; 0x40000000
     b90:	17140000 	ldrne	r0, [r4, -r0]
     b94:	03000001 	movweq	r0, #1
     b98:	00049337 	andeq	r9, r4, r7, lsr r3
     b9c:	00411500 	subeq	r1, r1, r0, lsl #10
     ba0:	41150000 	tstmi	r5, r0
     ba4:	00000000 	andeq	r0, r0, r0
     ba8:	00032d14 	andeq	r2, r3, r4, lsl sp
     bac:	ae0b0400 	cfcpysge	mvf0, mvf11
     bb0:	15000004 	strne	r0, [r0, #-4]
     bb4:	0000026b 	andeq	r0, r0, fp, ror #4
     bb8:	00006515 	andeq	r6, r0, r5, lsl r5
     bbc:	00651500 	rsbeq	r1, r5, r0, lsl #10
     bc0:	14000000 	strne	r0, [r0], #-0
     bc4:	000002d8 	ldrdeq	r0, [r0], -r8
     bc8:	04c40704 	strbeq	r0, [r4], #1796	; 0x704
     bcc:	6b150000 	blvs	540bd4 <__user_program+0x240bd4>
     bd0:	15000002 	strne	r0, [r0, #-2]
     bd4:	00000065 	andeq	r0, r0, r5, rrx
     bd8:	03061600 	movweq	r1, #26112	; 0x6600
     bdc:	04040000 	streq	r0, [r4], #-0
     be0:	00000065 	andeq	r0, r0, r5, rrx
     be4:	000004d9 	ldrdeq	r0, [r0], -r9
     be8:	00026b15 	andeq	r6, r2, r5, lsl fp
     bec:	66160000 	ldrvs	r0, [r6], -r0
     bf0:	05000002 	streq	r0, [r0, #-2]
     bf4:	00003313 	andeq	r3, r0, r3, lsl r3
     bf8:	0004ef00 	andeq	lr, r4, r0, lsl #30
     bfc:	04ef1500 	strbteq	r1, [pc], #1280	; c04 <__start-0x73fc>
     c00:	00170000 	andseq	r0, r7, r0
     c04:	04f50412 	ldrbteq	r0, [r5], #1042	; 0x412
     c08:	25180000 	ldrcs	r0, [r8, #-0]
     c0c:	00000000 	andeq	r0, r0, r0
     c10:	000005d8 	ldrdeq	r0, [r0], -r8
     c14:	055b0004 	ldrbeq	r0, [fp, #-4]
     c18:	01040000 	mrseq	r0, (UNDEF: 4)
     c1c:	000001c7 	andeq	r0, r0, r7, asr #3
     c20:	0003fd01 	andeq	pc, r3, r1, lsl #26
     c24:	00007000 	andeq	r7, r0, r0
     c28:	008a1c00 	addeq	r1, sl, r0, lsl #24
     c2c:	00034400 	andeq	r4, r3, r0, lsl #8
     c30:	00040c00 	andeq	r0, r4, r0, lsl #24
     c34:	08010200 	stmdaeq	r1, {r9}
     c38:	00000062 	andeq	r0, r0, r2, rrx
     c3c:	23050202 	movwcs	r0, #20994	; 0x5202
     c40:	03000001 	movweq	r0, #1
     c44:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     c48:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
     c4c:	00000005 	andeq	r0, r0, r5
     c50:	00510400 	subseq	r0, r1, r0, lsl #8
     c54:	16020000 	strne	r0, [r2], -r0
     c58:	0000004c 	andeq	r0, r0, ip, asr #32
     c5c:	59080102 	stmdbpl	r8, {r1, r8}
     c60:	04000000 	streq	r0, [r0], #-0
     c64:	000001be 			; <UNDEFINED> instruction: 0x000001be
     c68:	005e1802 	subseq	r1, lr, r2, lsl #16
     c6c:	02020000 	andeq	r0, r2, #0
     c70:	0000fe07 	andeq	pc, r0, r7, lsl #28
     c74:	00670400 	rsbeq	r0, r7, r0, lsl #8
     c78:	1a020000 	bne	80c80 <__bss_end+0x74c80>
     c7c:	00000070 	andeq	r0, r0, r0, ror r0
     c80:	34070402 	strcc	r0, [r7], #-1026	; 0xfffffbfe
     c84:	02000000 	andeq	r0, r0, #0
     c88:	002a0708 	eoreq	r0, sl, r8, lsl #14
     c8c:	cd050000 	stcgt	0, cr0, [r5, #-0]
     c90:	01000003 	tsteq	r0, r3
     c94:	008a1c10 	addeq	r1, sl, r0, lsl ip
     c98:	0000b800 	andeq	fp, r0, r0, lsl #16
     c9c:	a99c0100 	ldmibge	ip, {r8}
     ca0:	06000001 	streq	r0, [r0], -r1
     ca4:	000003f2 	strdeq	r0, [r0], -r2
     ca8:	00531001 	subseq	r1, r3, r1
     cac:	04240000 	strteq	r0, [r4], #-0
     cb0:	62070000 	andvs	r0, r7, #0
     cb4:	01006675 	tsteq	r0, r5, ror r6
     cb8:	0001a912 	andeq	sl, r1, r2, lsl r9
     cbc:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     cc0:	0003de08 	andeq	sp, r3, r8, lsl #28
     cc4:	65130100 	ldrvs	r0, [r3, #-256]	; 0xffffff00
     cc8:	45000000 	strmi	r0, [r0, #-0]
     ccc:	09000004 	stmdbeq	r0, {r2}
     cd0:	000003b4 			; <UNDEFINED> instruction: 0x000003b4
     cd4:	01c01b01 	biceq	r1, r0, r1, lsl #22
     cd8:	91020000 	mrsls	r0, (UNDEF: 2)
     cdc:	033b0870 	teqeq	fp, #112, 16	; 0x700000
     ce0:	1d010000 	stcne	0, cr0, [r1, #-0]
     ce4:	00000041 	andeq	r0, r0, r1, asr #32
     ce8:	00000469 	andeq	r0, r0, r9, ror #8
     cec:	008a480a 	addeq	r4, sl, sl, lsl #16
     cf0:	00057a00 	andeq	r7, r5, r0, lsl #20
     cf4:	0000f300 	andeq	pc, r0, r0, lsl #6
     cf8:	50010b00 	andpl	r0, r1, r0, lsl #22
     cfc:	a0800305 	addge	r0, r0, r5, lsl #6
     d00:	0a000000 	beq	d08 <__start-0x72f8>
     d04:	00008a58 	andeq	r8, r0, r8, asr sl
     d08:	0000059b 	muleq	r0, fp, r5
     d0c:	00000112 	andeq	r0, r0, r2, lsl r1
     d10:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     d14:	010b4908 	tsteq	fp, r8, lsl #18
     d18:	0b330151 	bleq	cc1264 <__user_program+0x9c1264>
     d1c:	91025001 	tstls	r2, r1
     d20:	6c0a006c 	stcvs	0, cr0, [sl], {108}	; 0x6c
     d24:	7a00008a 	bvc	f54 <__start-0x70ac>
     d28:	29000005 	stmdbcs	r0, {r0, r2}
     d2c:	0b000001 	bleq	d38 <__start-0x72c8>
     d30:	03055001 	movweq	r5, #20481	; 0x5001
     d34:	0000a098 	muleq	r0, r8, r0
     d38:	8a7c0a00 	bhi	1f03540 <__user_program+0x1c03540>
     d3c:	057a0000 	ldrbeq	r0, [sl, #-0]!
     d40:	01400000 	mrseq	r0, (UNDEF: 64)
     d44:	010b0000 	mrseq	r0, (UNDEF: 11)
     d48:	ac030550 	cfstr32ge	mvfx0, [r3], {80}	; 0x50
     d4c:	000000a0 	andeq	r0, r0, r0, lsr #1
     d50:	008a900a 	addeq	r9, sl, sl
     d54:	00059b00 	andeq	r9, r5, r0, lsl #22
     d58:	00015f00 	andeq	r5, r1, r0, lsl #30
     d5c:	52010b00 	andpl	r0, r1, #0, 22
     d60:	0b490802 	bleq	1242d70 <__user_program+0xf42d70>
     d64:	31015101 	tstcc	r1, r1, lsl #2
     d68:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     d6c:	0a006c91 	beq	1bfb8 <__bss_end+0xffb8>
     d70:	00008aa0 	andeq	r8, r0, r0, lsr #21
     d74:	000005c0 	andeq	r0, r0, r0, asr #11
     d78:	0000017e 	andeq	r0, r0, lr, ror r1
     d7c:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     d80:	010b4908 	tsteq	fp, r8, lsl #18
     d84:	0b320151 	bleq	c812d0 <__user_program+0x9812d0>
     d88:	7d025001 	stcvc	0, cr5, [r2, #-4]
     d8c:	b40a0000 	strlt	r0, [sl], #-0
     d90:	7a00008a 	bvc	fc0 <__start-0x7040>
     d94:	95000005 	strls	r0, [r0, #-5]
     d98:	0b000001 	bleq	da4 <__start-0x725c>
     d9c:	03055001 	movweq	r5, #20481	; 0x5001
     da0:	0000a0bc 	strheq	sl, [r0], -ip
     da4:	8acc0c00 	bhi	ff303dac <__user_program+0xff003dac>
     da8:	057a0000 	ldrbeq	r0, [sl, #-0]!
     dac:	010b0000 	mrseq	r0, (UNDEF: 11)
     db0:	e0030550 	and	r0, r3, r0, asr r5
     db4:	000000a0 	andeq	r0, r0, r0, lsr #1
     db8:	00410d00 	subeq	r0, r1, r0, lsl #26
     dbc:	01b90000 			; <UNDEFINED> instruction: 0x01b90000
     dc0:	b90e0000 	stmdblt	lr, {}	; <UNPREDICTABLE>
     dc4:	02000001 	andeq	r0, r0, #1
     dc8:	07040200 	streq	r0, [r4, -r0, lsl #4]
     dcc:	00000293 	muleq	r0, r3, r2
     dd0:	0000410d 	andeq	r4, r0, sp, lsl #2
     dd4:	0001d000 	andeq	sp, r1, r0
     dd8:	01b90e00 			; <UNDEFINED> instruction: 0x01b90e00
     ddc:	00010000 	andeq	r0, r1, r0
     de0:	0003b90f 	andeq	fp, r3, pc, lsl #18
     de4:	53330100 	teqpl	r3, #0, 2
     de8:	d4000000 	strle	r0, [r0], #-0
     dec:	7000008a 	andvc	r0, r0, sl, lsl #1
     df0:	01000000 	mrseq	r0, (UNDEF: 0)
     df4:	00028c9c 	muleq	r2, ip, ip
     df8:	75620700 	strbvc	r0, [r2, #-1792]!	; 0xfffff900
     dfc:	35010066 	strcc	r0, [r1, #-102]	; 0xffffff9a
     e00:	0000028c 	andeq	r0, r0, ip, lsl #5
     e04:	08749102 	ldmdaeq	r4!, {r1, r8, ip, pc}^
     e08:	0000033b 	andeq	r0, r0, fp, lsr r3
     e0c:	00413601 	subeq	r3, r1, r1, lsl #12
     e10:	04920000 	ldreq	r0, [r2], #0
     e14:	b4090000 	strlt	r0, [r9], #-0
     e18:	01000003 	tsteq	r0, r3
     e1c:	0001c040 	andeq	ip, r1, r0, asr #32
     e20:	70910200 	addsvc	r0, r1, r0, lsl #4
     e24:	0003de08 	andeq	sp, r3, r8, lsl #28
     e28:	53470100 	movtpl	r0, #28928	; 0x7100
     e2c:	b0000000 	andlt	r0, r0, r0
     e30:	0a000004 	beq	e48 <__start-0x71b8>
     e34:	00008af4 	strdeq	r8, [r0], -r4
     e38:	0000059b 	muleq	r0, fp, r5
     e3c:	00000242 	andeq	r0, r0, r2, asr #4
     e40:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     e44:	010b4908 	tsteq	fp, r8, lsl #18
     e48:	0b310151 	bleq	c41394 <__user_program+0x941394>
     e4c:	91025001 	tstls	r2, r1
     e50:	080a006c 	stmdaeq	sl, {r2, r3, r5, r6}
     e54:	7a00008b 	bvc	1088 <__start-0x6f78>
     e58:	59000005 	stmdbpl	r0, {r0, r2}
     e5c:	0b000002 	bleq	e6c <__start-0x7194>
     e60:	03055001 	movweq	r5, #20481	; 0x5001
     e64:	0000a0f8 	strdeq	sl, [r0], -r8
     e68:	8b180a00 	blhi	603670 <__user_program+0x303670>
     e6c:	05c00000 	strbeq	r0, [r0]
     e70:	02780000 	rsbseq	r0, r8, #0
     e74:	010b0000 	mrseq	r0, (UNDEF: 11)
     e78:	49080252 	stmdbmi	r8, {r1, r4, r6, r9}
     e7c:	0151010b 	cmpeq	r1, fp, lsl #2
     e80:	50010b32 	andpl	r0, r1, r2, lsr fp
     e84:	00007d02 	andeq	r7, r0, r2, lsl #26
     e88:	008b2c0c 	addeq	r2, fp, ip, lsl #24
     e8c:	00057a00 	andeq	r7, r5, r0, lsl #20
     e90:	50010b00 	andpl	r0, r1, r0, lsl #22
     e94:	a1380305 	teqge	r8, r5, lsl #6
     e98:	00000000 	andeq	r0, r0, r0
     e9c:	0000410d 	andeq	r4, r0, sp, lsl #2
     ea0:	00029c00 	andeq	r9, r2, r0, lsl #24
     ea4:	01b90e00 			; <UNDEFINED> instruction: 0x01b90e00
     ea8:	00000000 	andeq	r0, r0, r0
     eac:	00017e05 	andeq	r7, r1, r5, lsl #28
     eb0:	444d0100 	strbmi	r0, [sp], #-256	; 0xffffff00
     eb4:	f000008b 			; <UNDEFINED> instruction: 0xf000008b
     eb8:	01000000 	mrseq	r0, (UNDEF: 0)
     ebc:	0003ff9c 	muleq	r3, ip, pc	; <UNPREDICTABLE>
     ec0:	75620700 	strbvc	r0, [r2, #-1792]!	; 0xfffff900
     ec4:	4e010066 	cdpmi	0, 0, cr0, cr1, cr6, {3}
     ec8:	0000028c 	andeq	r0, r0, ip, lsl #5
     ecc:	096c9102 	stmdbeq	ip!, {r1, r8, ip, pc}^
     ed0:	000003b4 			; <UNDEFINED> instruction: 0x000003b4
     ed4:	01c04f01 	biceq	r4, r0, r1, lsl #30
     ed8:	91020000 	mrsls	r0, (UNDEF: 2)
     edc:	03de0868 	bicseq	r0, lr, #104, 16	; 0x680000
     ee0:	50010000 	andpl	r0, r1, r0
     ee4:	00000053 	andeq	r0, r0, r3, asr r0
     ee8:	000004f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     eec:	00033b08 	andeq	r3, r3, r8, lsl #22
     ef0:	41510100 	cmpmi	r1, r0, lsl #2
     ef4:	4c000000 	stcmi	0, cr0, [r0], {-0}
     ef8:	0a000005 	beq	f14 <__start-0x70ec>
     efc:	00008b60 	andeq	r8, r0, r0, ror #22
     f00:	0000059b 	muleq	r0, fp, r5
     f04:	0000030a 	andeq	r0, r0, sl, lsl #6
     f08:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     f0c:	010b4908 	tsteq	fp, r8, lsl #18
     f10:	0b310151 	bleq	c4145c <__user_program+0x94145c>
     f14:	91025001 	tstls	r2, r1
     f18:	700a0064 	andvc	r0, sl, r4, rrx
     f1c:	c000008b 	andgt	r0, r0, fp, lsl #1
     f20:	29000005 	stmdbcs	r0, {r0, r2}
     f24:	0b000003 	bleq	f38 <__start-0x70c8>
     f28:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     f2c:	51010b49 	tstpl	r1, r9, asr #22
     f30:	010b3201 	tsteq	fp, r1, lsl #4
     f34:	007d0250 	rsbseq	r0, sp, r0, asr r2
     f38:	8b840a00 	blhi	fe103740 <__user_program+0xfde03740>
     f3c:	057a0000 	ldrbeq	r0, [sl, #-0]!
     f40:	03400000 	movteq	r0, #0
     f44:	010b0000 	mrseq	r0, (UNDEF: 11)
     f48:	bc030550 	cfstr32lt	mvfx0, [r3], {80}	; 0x50
     f4c:	000000a0 	andeq	r0, r0, r0, lsr #1
     f50:	008ba00a 	addeq	sl, fp, sl
     f54:	00057a00 	andeq	r7, r5, r0, lsl #20
     f58:	00035700 	andeq	r5, r3, r0, lsl #14
     f5c:	50010b00 	andpl	r0, r1, r0, lsl #22
     f60:	a1640305 	cmnge	r4, r5, lsl #6
     f64:	0a000000 	beq	f6c <__start-0x7094>
     f68:	00008bbc 			; <UNDEFINED> instruction: 0x00008bbc
     f6c:	0000059b 	muleq	r0, fp, r5
     f70:	00000376 	andeq	r0, r0, r6, ror r3
     f74:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     f78:	010b4908 	tsteq	fp, r8, lsl #18
     f7c:	0b310151 	bleq	c414c8 <__user_program+0x9414c8>
     f80:	74025001 	strvc	r5, [r2], #-1
     f84:	cc0a0000 	stcgt	0, cr0, [sl], {-0}
     f88:	c000008b 	andgt	r0, r0, fp, lsl #1
     f8c:	95000005 	strls	r0, [r0, #-5]
     f90:	0b000003 	bleq	fa4 <__start-0x705c>
     f94:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
     f98:	51010b49 	tstpl	r1, r9, asr #22
     f9c:	010b3201 	tsteq	fp, r1, lsl #4
     fa0:	007d0250 	rsbseq	r0, sp, r0, asr r2
     fa4:	8be80a00 	blhi	ffa037ac <__user_program+0xff7037ac>
     fa8:	057a0000 	ldrbeq	r0, [sl, #-0]!
     fac:	03ac0000 			; <UNDEFINED> instruction: 0x03ac0000
     fb0:	010b0000 	mrseq	r0, (UNDEF: 11)
     fb4:	88030550 	stmdahi	r3, {r4, r6, r8, sl}
     fb8:	000000a1 	andeq	r0, r0, r1, lsr #1
     fbc:	008c000a 	addeq	r0, ip, sl
     fc0:	00059b00 	andeq	r9, r5, r0, lsl #22
     fc4:	0003cb00 	andeq	ip, r3, r0, lsl #22
     fc8:	52010b00 	andpl	r0, r1, #0, 22
     fcc:	0b490802 	bleq	1242fdc <__user_program+0xf42fdc>
     fd0:	31015101 	tstcc	r1, r1, lsl #2
     fd4:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     fd8:	0a000074 	beq	11b0 <__start-0x6e50>
     fdc:	00008c10 	andeq	r8, r0, r0, lsl ip
     fe0:	000005c0 	andeq	r0, r0, r0, asr #11
     fe4:	000003eb 	andeq	r0, r0, fp, ror #7
     fe8:	0252010b 	subseq	r0, r2, #-1073741822	; 0xc0000002
     fec:	010b4908 	tsteq	fp, r8, lsl #18
     ff0:	00750251 	rsbseq	r0, r5, r1, asr r2
     ff4:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
     ff8:	0c00007d 	stceq	0, cr0, [r0], {125}	; 0x7d
     ffc:	00008c2c 	andeq	r8, r0, ip, lsr #24
    1000:	0000057a 	andeq	r0, r0, sl, ror r5
    1004:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
    1008:	00a19803 	adceq	r9, r1, r3, lsl #16
    100c:	10000000 	andne	r0, r0, r0
    1010:	0000042b 	andeq	r0, r0, fp, lsr #8
    1014:	00537301 	subseq	r7, r3, r1, lsl #6
    1018:	8c340000 	ldchi	0, cr0, [r4], #-0
    101c:	00740000 	rsbseq	r0, r4, r0
    1020:	9c010000 	stcls	0, cr0, [r1], {-0}
    1024:	0000045a 	andeq	r0, r0, sl, asr r4
    1028:	00042306 	andeq	r2, r4, r6, lsl #6
    102c:	41730100 	cmnmi	r3, r0, lsl #2
    1030:	5f000000 	svcpl	0x00000000
    1034:	09000005 	stmdbeq	r0, {r0, r2}
    1038:	0000041f 	andeq	r0, r0, pc, lsl r4
    103c:	00337601 	eorseq	r7, r3, r1, lsl #12
    1040:	03050000 	movweq	r0, #20480	; 0x5000
    1044:	0000b004 	andeq	fp, r0, r4
    1048:	0003e508 	andeq	lr, r3, r8, lsl #10
    104c:	53770100 	cmnpl	r7, #0, 2
    1050:	e4000000 	str	r0, [r0], #-0
    1054:	11000005 	tstne	r0, r5
    1058:	00008c8c 	andeq	r8, r0, ip, lsl #25
    105c:	0000007e 	andeq	r0, r0, lr, ror r0
    1060:	008c9c11 	addeq	r9, ip, r1, lsl ip
    1064:	0001d000 	andeq	sp, r1, r0
    1068:	4e120000 	cdpmi	0, 1, cr0, cr2, cr0, {0}
    106c:	01000001 	tsteq	r0, r1
    1070:	008ca88e 	addeq	sl, ip, lr, lsl #17
    1074:	00002000 	andeq	r2, r0, r0
    1078:	a59c0100 	ldrge	r0, [ip, #256]	; 0x100
    107c:	13000004 	movwne	r0, #4
    1080:	006c6176 	rsbeq	r6, ip, r6, ror r1
    1084:	00538f01 	subseq	r8, r3, r1, lsl #30
    1088:	063d0000 	ldrteq	r0, [sp], -r0
    108c:	b40a0000 	strlt	r0, [sl], #-0
    1090:	ff00008c 			; <UNDEFINED> instruction: 0xff00008c
    1094:	91000003 	tstls	r0, r3
    1098:	0b000004 	bleq	10b0 <__start-0x6f50>
    109c:	33015001 	movwcc	r5, #4097	; 0x1001
    10a0:	8cc40c00 	stclhi	12, cr0, [r4], {0}
    10a4:	057a0000 	ldrbeq	r0, [sl, #-0]!
    10a8:	010b0000 	mrseq	r0, (UNDEF: 11)
    10ac:	a8030550 	stmdage	r3, {r4, r6, r8, sl}
    10b0:	000000a1 	andeq	r0, r0, r1, lsr #1
    10b4:	016c1200 	cmneq	ip, r0, lsl #4
    10b8:	92010000 	andls	r0, r1, #0
    10bc:	00008cc8 	andeq	r8, r0, r8, asr #25
    10c0:	00000098 	muleq	r0, r8, r0
    10c4:	057a9c01 	ldrbeq	r9, [sl, #-3073]!	; 0xfffff3ff
    10c8:	6d130000 	ldcvs	0, cr0, [r3, #-0]
    10cc:	01006e69 	tsteq	r0, r9, ror #28
    10d0:	00003393 	muleq	r0, r3, r3
    10d4:	00065000 	andeq	r5, r6, r0
    10d8:	616d1300 	cmnvs	sp, r0, lsl #6
    10dc:	94010078 	strls	r0, [r1], #-120	; 0xffffff88
    10e0:	00000033 	andeq	r0, r0, r3, lsr r0
    10e4:	00000694 	muleq	r0, r4, r6
    10e8:	6c617613 	stclvs	6, cr7, [r1], #-76	; 0xffffffb4
    10ec:	33950100 	orrscc	r0, r5, #0, 2
    10f0:	cc000000 	stcgt	0, cr0, [r0], {-0}
    10f4:	13000006 	movwne	r0, #6
    10f8:	95010069 	strls	r0, [r1, #-105]	; 0xffffff97
    10fc:	00000033 	andeq	r0, r0, r3, lsr r0
    1100:	000006ea 	andeq	r0, r0, sl, ror #13
    1104:	70616707 	rsbvc	r6, r1, r7, lsl #14
    1108:	33950100 	orrscc	r0, r5, #0, 2
    110c:	01000000 	mrseq	r0, (UNDEF: 0)
    1110:	8cf80a54 	vldmiahi	r8!, {s1-s84}
    1114:	03ff0000 	mvnseq	r0, #0
    1118:	05150000 	ldreq	r0, [r5, #-0]
    111c:	010b0000 	mrseq	r0, (UNDEF: 11)
    1120:	00780250 	rsbseq	r0, r8, r0, asr r2
    1124:	8d100a00 	vldrhi	s0, [r0, #-0]
    1128:	057a0000 	ldrbeq	r0, [sl, #-0]!
    112c:	052f0000 	streq	r0, [pc, #-0]!	; 1134 <__start-0x6ecc>
    1130:	010b0000 	mrseq	r0, (UNDEF: 11)
    1134:	00740251 	rsbseq	r0, r4, r1, asr r2
    1138:	0250010b 	subseq	r0, r0, #-1073741822	; 0xc0000002
    113c:	0a000079 	beq	1328 <__start-0x6cd8>
    1140:	00008d28 	andeq	r8, r0, r8, lsr #26
    1144:	0000057a 	andeq	r0, r0, sl, ror r5
    1148:	00000549 	andeq	r0, r0, r9, asr #10
    114c:	0251010b 	subseq	r0, r1, #-1073741822	; 0xc0000002
    1150:	010b0074 	tsteq	fp, r4, ror r0
    1154:	007a0250 	rsbseq	r0, sl, r0, asr r2
    1158:	8d480a00 	vstrhi	s1, [r8, #-0]
    115c:	057a0000 	ldrbeq	r0, [sl, #-0]!
    1160:	05660000 	strbeq	r0, [r6, #-0]!
    1164:	010b0000 	mrseq	r0, (UNDEF: 11)
    1168:	00740251 	rsbseq	r0, r4, r1, asr r2
    116c:	0550010b 	ldrbeq	r0, [r0, #-267]	; 0xfffffef5
    1170:	00a1dc03 	adceq	sp, r1, r3, lsl #24
    1174:	5c0c0000 	stcpl	0, cr0, [ip], {-0}
    1178:	7a00008d 	bvc	13b4 <__start-0x6c4c>
    117c:	0b000005 	bleq	1198 <__start-0x6e68>
    1180:	03055001 	movweq	r5, #20481	; 0x5001
    1184:	0000a1e8 	andeq	sl, r0, r8, ror #3
    1188:	66140000 	ldrvs	r0, [r4], -r0
    118c:	03000002 	movweq	r0, #2
    1190:	00003313 	andeq	r3, r0, r3, lsl r3
    1194:	00059000 	andeq	r9, r5, r0
    1198:	05901500 	ldreq	r1, [r0, #1280]	; 0x500
    119c:	00160000 	andseq	r0, r6, r0
    11a0:	05960417 	ldreq	r0, [r6, #1047]	; 0x417
    11a4:	25180000 	ldrcs	r0, [r8, #-0]
    11a8:	14000000 	strne	r0, [r0], #-0
    11ac:	0000036d 	andeq	r0, r0, sp, ror #6
    11b0:	00416304 	subeq	r6, r1, r4, lsl #6
    11b4:	05ba0000 	ldreq	r0, [sl, #0]!
    11b8:	ba150000 	blt	5411c0 <__user_program+0x2411c0>
    11bc:	15000005 	strne	r0, [r0, #-5]
    11c0:	00000053 	andeq	r0, r0, r3, asr r0
    11c4:	00004115 	andeq	r4, r0, r5, lsl r1
    11c8:	04170000 	ldreq	r0, [r7], #-0
    11cc:	00000041 	andeq	r0, r0, r1, asr #32
    11d0:	00035819 	andeq	r5, r3, r9, lsl r8
    11d4:	416c0400 	cmnmi	ip, r0, lsl #8
    11d8:	15000000 	strne	r0, [r0, #-0]
    11dc:	000005ba 			; <UNDEFINED> instruction: 0x000005ba
    11e0:	00005315 	andeq	r5, r0, r5, lsl r3
    11e4:	00411500 	subeq	r1, r1, r0, lsl #10
    11e8:	00000000 	andeq	r0, r0, r0
    11ec:	000001b2 			; <UNDEFINED> instruction: 0x000001b2
    11f0:	06ca0004 	strbeq	r0, [sl], r4
    11f4:	01040000 	mrseq	r0, (UNDEF: 4)
    11f8:	000001c7 	andeq	r0, r0, r7, asr #3
    11fc:	00043901 	andeq	r3, r4, r1, lsl #18
    1200:	00007000 	andeq	r7, r0, r0
    1204:	008d6000 	addeq	r6, sp, r0
    1208:	00003800 	andeq	r3, r0, r0, lsl #16
    120c:	00050800 	andeq	r0, r5, r0, lsl #16
    1210:	08010200 	stmdaeq	r1, {r9}
    1214:	00000062 	andeq	r0, r0, r2, rrx
    1218:	23050202 	movwcs	r0, #20994	; 0x5202
    121c:	03000001 	movweq	r0, #1
    1220:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    1224:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
    1228:	00000005 	andeq	r0, r0, r5
    122c:	08010200 	stmdaeq	r1, {r9}
    1230:	00000059 	andeq	r0, r0, r9, asr r0
    1234:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
    1238:	04000000 	streq	r0, [r0], #-0
    123c:	00000067 	andeq	r0, r0, r7, rrx
    1240:	005a1a02 	subseq	r1, sl, r2, lsl #20
    1244:	04020000 	streq	r0, [r2], #-0
    1248:	00003407 	andeq	r3, r0, r7, lsl #8
    124c:	07080200 	streq	r0, [r8, -r0, lsl #4]
    1250:	0000002a 	andeq	r0, r0, sl, lsr #32
    1254:	00030605 	andeq	r0, r3, r5, lsl #12
    1258:	4f040100 	svcmi	0x00040100
    125c:	01000000 	mrseq	r0, (UNDEF: 0)
    1260:	00000084 	andeq	r0, r0, r4, lsl #1
    1264:	0002d206 	andeq	sp, r2, r6, lsl #4
    1268:	84040100 	strhi	r0, [r4], #-256	; 0xffffff00
    126c:	00000000 	andeq	r0, r0, r0
    1270:	008a0407 	addeq	r0, sl, r7, lsl #8
    1274:	4f080000 	svcmi	0x00080000
    1278:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    127c:	00000068 	andeq	r0, r0, r8, rrx
    1280:	00008d60 	andeq	r8, r0, r0, ror #26
    1284:	00000008 	andeq	r0, r0, r8
    1288:	00ac9c01 	adceq	r9, ip, r1, lsl #24
    128c:	780a0000 	stmdavc	sl, {}	; <UNPREDICTABLE>
    1290:	31000000 	mrscc	r0, (UNDEF: 0)
    1294:	00000007 	andeq	r0, r0, r7
    1298:	0002d80b 	andeq	sp, r2, fp, lsl #16
    129c:	01080100 	mrseq	r0, (UNDEF: 24)
    12a0:	000000cf 	andeq	r0, r0, pc, asr #1
    12a4:	0002d206 	andeq	sp, r2, r6, lsl #4
    12a8:	84080100 	strhi	r0, [r8], #-256	; 0xffffff00
    12ac:	06000000 	streq	r0, [r0], -r0
    12b0:	000003ec 	andeq	r0, r0, ip, ror #7
    12b4:	004f0801 	subeq	r0, pc, r1, lsl #16
    12b8:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    12bc:	000000ac 	andeq	r0, r0, ip, lsr #1
    12c0:	00008d68 	andeq	r8, r0, r8, ror #26
    12c4:	00000008 	andeq	r0, r0, r8
    12c8:	00f19c01 	rscseq	r9, r1, r1, lsl #24
    12cc:	b80c0000 	stmdalt	ip, {}	; <UNPREDICTABLE>
    12d0:	01000000 	mrseq	r0, (UNDEF: 0)
    12d4:	00c30c50 	sbceq	r0, r3, r0, asr ip
    12d8:	51010000 	mrspl	r0, (UNDEF: 1)
    12dc:	032d0d00 			; <UNDEFINED> instruction: 0x032d0d00
    12e0:	0c010000 	stceq	0, cr0, [r1], {-0}
    12e4:	00008d70 	andeq	r8, r0, r0, ror sp
    12e8:	00000018 	andeq	r0, r0, r8, lsl r0
    12ec:	01769c01 	cmneq	r6, r1, lsl #24
    12f0:	d20e0000 	andle	r0, lr, #0
    12f4:	01000002 	tsteq	r0, r2
    12f8:	0000840c 	andeq	r8, r0, ip, lsl #8
    12fc:	0f500100 	svceq	0x00500100
    1300:	000003ec 	andeq	r0, r0, ip, ror #7
    1304:	004f0c01 	subeq	r0, pc, r1, lsl #24
    1308:	07520000 	ldrbeq	r0, [r2, -r0]
    130c:	340f0000 	strcc	r0, [pc], #-0	; 1314 <__start-0x6cec>
    1310:	01000004 	tsteq	r0, r4
    1314:	00004f0c 	andeq	r4, r0, ip, lsl #30
    1318:	00077300 	andeq	r7, r7, r0, lsl #6
    131c:	00761000 	rsbseq	r1, r6, r0
    1320:	004f0e01 	subeq	r0, pc, r1, lsl #28
    1324:	52010000 	andpl	r0, r1, #0
    1328:	00006811 	andeq	r6, r0, r1, lsl r8
    132c:	008d7000 	addeq	r7, sp, r0
    1330:	00000400 	andeq	r0, r0, r0, lsl #8
    1334:	570e0100 	strpl	r0, [lr, -r0, lsl #2]
    1338:	0c000001 	stceq	0, cr0, [r0], {1}
    133c:	00000078 	andeq	r0, r0, r8, ror r0
    1340:	12005001 	andne	r5, r0, #1
    1344:	000000ac 	andeq	r0, r0, ip, lsr #1
    1348:	00008d80 	andeq	r8, r0, r0, lsl #27
    134c:	00000008 	andeq	r0, r0, r8
    1350:	c30c1001 	movwgt	r1, #49153	; 0xc001
    1354:	01000000 	mrseq	r0, (UNDEF: 0)
    1358:	00b80c52 	adcseq	r0, r8, r2, asr ip
    135c:	50010000 	andpl	r0, r1, r0
    1360:	32130000 	andscc	r0, r3, #0
    1364:	01000003 	tsteq	r0, r3
    1368:	00004f13 	andeq	r4, r0, r3, lsl pc
    136c:	008d8800 	addeq	r8, sp, r0, lsl #16
    1370:	00001000 	andeq	r1, r0, r0
    1374:	149c0100 	ldrne	r0, [ip], #256	; 0x100
    1378:	13010076 	movwne	r0, #4214	; 0x1076
    137c:	0000004f 	andeq	r0, r0, pc, asr #32
    1380:	00000794 	muleq	r0, r4, r7
    1384:	0003ec0f 	andeq	lr, r3, pc, lsl #24
    1388:	4f130100 	svcmi	0x00130100
    138c:	b5000000 	strlt	r0, [r0, #-0]
    1390:	0e000007 	cdpeq	0, 0, cr0, cr0, cr7, {0}
    1394:	00000434 	andeq	r0, r0, r4, lsr r4
    1398:	004f1301 	subeq	r1, pc, r1, lsl #6
    139c:	52010000 	andpl	r0, r1, #0
    13a0:	00670000 	rsbeq	r0, r7, r0
    13a4:	00020000 	andeq	r0, r2, r0
    13a8:	000007fa 	strdeq	r0, [r0], -sl
    13ac:	05850104 	streq	r0, [r5, #260]	; 0x104
    13b0:	80000000 	andhi	r0, r0, r0
    13b4:	80540000 	subshi	r0, r4, r0
    13b8:	34330000 	ldrtcc	r0, [r3], #-0
    13bc:	62696c39 	rsbvs	r6, r9, #14592	; 0x3900
    13c0:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
    13c4:	6f622f63 	svcvs	0x00622f63
    13c8:	532e746f 			; <UNDEFINED> instruction: 0x532e746f
    13cc:	6f682f00 	svcvs	0x00682f00
    13d0:	7a2f656d 	bvc	bda98c <__user_program+0x8da98c>
    13d4:	72502f7a 	subsvc	r2, r0, #488	; 0x1e8
    13d8:	63656a6f 	cmnvs	r5, #454656	; 0x6f000
    13dc:	652f7374 	strvs	r7, [pc, #-884]!	; 1070 <__start-0x6f90>
    13e0:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
    13e4:	62616c5f 	rsbvs	r6, r1, #24320	; 0x5f00
    13e8:	616c2f31 	cmnvs	ip, r1, lsr pc
    13ec:	6a2d3162 	bvs	b4d97c <__user_program+0x84d97c>
    13f0:	616e686f 	cmnvs	lr, pc, ror #16
    13f4:	61657372 	smcvs	22322	; 0x5732
    13f8:	6f632f6c 	svcvs	0x00632f6c
    13fc:	47006564 	strmi	r6, [r0, -r4, ror #10]
    1400:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
    1404:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
    1408:	01003632 	tsteq	r0, r2, lsr r6
    140c:	00006680 	andeq	r6, r0, r0, lsl #13
    1410:	0e000200 	cdpeq	2, 0, cr0, cr0, cr0, {0}
    1414:	04000008 	streq	r0, [r0], #-8
    1418:	0005dd01 	andeq	sp, r5, r1, lsl #26
    141c:	008d9800 	addeq	r9, sp, r0, lsl #16
    1420:	008ddc00 	addeq	sp, sp, r0, lsl #24
    1424:	39343300 	ldmdbcc	r4!, {r8, r9, ip, sp}
    1428:	6b62696c 	blvs	189b9e0 <__user_program+0x159b9e0>
    142c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
    1430:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1434:	2f00532e 	svccs	0x0000532e
    1438:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xfffff098
    143c:	2f7a7a2f 	svccs	0x007a7a2f
    1440:	6a6f7250 	bvs	1bddd88 <__user_program+0x18ddd88>
    1444:	73746365 	cmnvc	r4, #-1811939327	; 0x94000001
    1448:	626d652f 	rsbvs	r6, sp, #197132288	; 0xbc00000
    144c:	6c5f6465 	cfldrdvs	mvd6, [pc], {101}	; 0x65
    1450:	2f316261 	svccs	0x00316261
    1454:	3162616c 	cmncc	r2, ip, ror #2
    1458:	686f6a2d 	stmdavs	pc!, {r0, r2, r3, r5, r9, fp, sp, lr}^	; <UNPREDICTABLE>
    145c:	7372616e 	cmnvc	r2, #-2147483621	; 0x8000001b
    1460:	2f6c6165 	svccs	0x006c6165
    1464:	65646f63 	strbvs	r6, [r4, #-3939]!	; 0xfffff09d
    1468:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    146c:	20534120 	subscs	r4, r3, r0, lsr #2
    1470:	36322e32 			; <UNDEFINED> instruction: 0x36322e32
    1474:	a6800100 	strge	r0, [r0], r0, lsl #2
    1478:	02000000 	andeq	r0, r0, #0
    147c:	00082200 	andeq	r2, r8, r0, lsl #4
    1480:	2e010400 	cfcpyscs	mvf0, mvf1
    1484:	dc000006 	stcle	0, cr0, [r0], {6}
    1488:	1800008d 	stmdane	r0, {r0, r2, r3, r7}
    148c:	2e00008e 	cdpcs	0, 0, cr0, cr0, cr14, {4}
    1490:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1494:	2f2e2e2f 	svccs	0x002e2e2f
    1498:	2f637273 	svccs	0x00637273
    149c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    14a0:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
    14a4:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
    14a8:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
    14ac:	70622f6d 	rsbvc	r2, r2, sp, ror #30
    14b0:	2e696261 	cdpcs	2, 6, cr6, cr9, cr1, {3}
    14b4:	622f0053 	eorvs	r0, pc, #83	; 0x53
    14b8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    14bc:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    14c0:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    14c4:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    14c8:	61652d65 	cmnvs	r5, r5, ror #26
    14cc:	442d6962 	strtmi	r6, [sp], #-2402	; 0xfffff69e
    14d0:	4c6e5252 	sfmmi	f5, 2, [lr], #-328	; 0xfffffeb8
    14d4:	63672f41 	cmnvs	r7, #260	; 0x104
    14d8:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    14dc:	6f6e2d6d 	svcvs	0x006e2d6d
    14e0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    14e4:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    14e8:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
    14ec:	76732b33 			; <UNDEFINED> instruction: 0x76732b33
    14f0:	3133326e 	teqcc	r3, lr, ror #4
    14f4:	2f373731 	svccs	0x00373731
    14f8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    14fc:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
    1500:	6f6e2d6d 	svcvs	0x006e2d6d
    1504:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1508:	2f696261 	svccs	0x00696261
    150c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    1510:	47006363 	strmi	r6, [r0, -r3, ror #6]
    1514:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
    1518:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
    151c:	01003532 	tsteq	r0, r2, lsr r5
    1520:	00016080 	andeq	r6, r1, r0, lsl #1
    1524:	36000400 	strcc	r0, [r0], -r0, lsl #8
    1528:	04000008 	streq	r0, [r0], #-8
    152c:	0004fc01 	andeq	pc, r4, r1, lsl #24
    1530:	04d50100 	ldrbeq	r0, [r5], #256	; 0x100
    1534:	04620000 	strbteq	r0, [r2], #-0
    1538:	8e180000 	cdphi	0, 1, cr0, cr8, cr0, {0}
    153c:	00840000 	addeq	r0, r4, r0
    1540:	068c0000 	streq	r0, [ip], r0
    1544:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1548:	00002a07 	andeq	r2, r0, r7, lsl #20
    154c:	05b60300 	ldreq	r0, [r6, #768]!	; 0x300
    1550:	23010000 	movwcs	r0, #4096	; 0x1000
    1554:	000000a6 	andeq	r0, r0, r6, lsr #1
    1558:	00008e18 	andeq	r8, r0, r8, lsl lr
    155c:	00000044 	andeq	r0, r0, r4, asr #32
    1560:	00a69c01 	adceq	r9, r6, r1, lsl #24
    1564:	61040000 	mrsvs	r0, (UNDEF: 4)
    1568:	a6230100 	strtge	r0, [r3], -r0, lsl #2
    156c:	d6000000 	strle	r0, [r0], -r0
    1570:	04000007 	streq	r0, [r0], #-7
    1574:	24010062 	strcs	r0, [r1], #-98	; 0xffffff9e
    1578:	000000a6 	andeq	r0, r0, r6, lsr #1
    157c:	000007fe 	strdeq	r0, [r0], -lr
    1580:	0005ac05 	andeq	sl, r5, r5, lsl #24
    1584:	ad250100 	stfges	f0, [r5, #-0]
    1588:	02000000 	andeq	r0, r0, #0
    158c:	d5060091 	strle	r0, [r6, #-145]	; 0xffffff6f
    1590:	01000005 	tsteq	r0, r5
    1594:	0000a627 	andeq	sl, r0, r7, lsr #12
    1598:	93500600 	cmpls	r0, #0, 12
    159c:	04935104 	ldreq	r5, [r3], #260	; 0x104
    15a0:	008e3407 	addeq	r3, lr, r7, lsl #8
    15a4:	00013300 	andeq	r3, r1, r0, lsl #6
    15a8:	52060800 	andpl	r0, r6, #0, 16
    15ac:	93530493 	cmpls	r3, #-1828716544	; 0x93000000
    15b0:	03f30504 	mvnseq	r0, #4, 10	; 0x1000000
    15b4:	082502f5 	stmdaeq	r5!, {r0, r2, r4, r5, r6, r7, r9}
    15b8:	04935006 	ldreq	r5, [r3], #6
    15bc:	05049351 	streq	r9, [r4, #-849]	; 0xfffffcaf
    15c0:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
    15c4:	02000025 	andeq	r0, r0, #37	; 0x25
    15c8:	00000508 	andeq	r0, r0, r8, lsl #10
    15cc:	04090000 	streq	r0, [r9], #-0
    15d0:	000000a6 	andeq	r0, r0, r6, lsr #1
    15d4:	0004bf03 	andeq	fp, r4, r3, lsl #30
    15d8:	252f0100 	strcs	r0, [pc, #-256]!	; 14e0 <__start-0x6b20>
    15dc:	5c000000 	stcpl	0, cr0, [r0], {-0}
    15e0:	4000008e 	andmi	r0, r0, lr, lsl #1
    15e4:	01000000 	mrseq	r0, (UNDEF: 0)
    15e8:	00012d9c 	muleq	r1, ip, sp
    15ec:	00610400 	rsbeq	r0, r1, r0, lsl #8
    15f0:	00252f01 	eoreq	r2, r5, r1, lsl #30
    15f4:	08260000 	stmdaeq	r6!, {}	; <UNPREDICTABLE>
    15f8:	62040000 	andvs	r0, r4, #0
    15fc:	25300100 	ldrcs	r0, [r0, #-256]!	; 0xffffff00
    1600:	4e000000 	cdpmi	0, 0, cr0, cr0, cr0, {0}
    1604:	05000008 	streq	r0, [r0, #-8]
    1608:	000005ac 	andeq	r0, r0, ip, lsr #11
    160c:	012d3101 			; <UNDEFINED> instruction: 0x012d3101
    1610:	91020000 	mrsls	r0, (UNDEF: 2)
    1614:	05d50600 	ldrbeq	r0, [r5, #1536]	; 0x600
    1618:	33010000 	movwcc	r0, #4096	; 0x1000
    161c:	00000025 	andeq	r0, r0, r5, lsr #32
    1620:	04935006 	ldreq	r5, [r3], #6
    1624:	07049351 	smlsdeq	r4, r1, r3, r9
    1628:	00008e78 	andeq	r8, r0, r8, ror lr
    162c:	0000014d 	andeq	r0, r0, sp, asr #2
    1630:	93520608 	cmpls	r2, #8, 12	; 0x800000
    1634:	04935304 	ldreq	r5, [r3], #772	; 0x304
    1638:	f503f305 			; <UNDEFINED> instruction: 0xf503f305
    163c:	06082502 	streq	r2, [r8], -r2, lsl #10
    1640:	51049350 	tstpl	r4, r0, asr r3
    1644:	f3050493 	vqshl.u8	d0, d3, d21
    1648:	2500f503 	strcs	pc, [r0, #-1283]	; 0xfffffafd
    164c:	04090000 	streq	r0, [r9], #-0
    1650:	00000025 	andeq	r0, r0, r5, lsr #32
    1654:	0004590a 	andeq	r5, r4, sl, lsl #18
    1658:	a6190100 	ldrge	r0, [r9], -r0, lsl #2
    165c:	4d000000 	stcmi	0, cr0, [r0, #-0]
    1660:	0b000001 	bleq	166c <__start-0x6994>
    1664:	000000a6 	andeq	r0, r0, r6, lsr #1
    1668:	0000a60b 	andeq	sl, r0, fp, lsl #12
    166c:	cb0c0000 	blgt	301674 <__user_program+0x1674>
    1670:	01000005 	tsteq	r0, r5
    1674:	0000251a 	andeq	r2, r0, sl, lsl r5
    1678:	00250b00 	eoreq	r0, r5, r0, lsl #22
    167c:	250b0000 	strcs	r0, [fp, #-0]
    1680:	00000000 	andeq	r0, r0, r0
    1684:	0000aa00 	andeq	sl, r0, r0, lsl #20
    1688:	ed000200 	sfm	f0, 4, [r0, #-0]
    168c:	04000008 	streq	r0, [r0], #-8
    1690:	0006eb01 	andeq	lr, r6, r1, lsl #22
    1694:	008e9c00 	addeq	r9, lr, r0, lsl #24
    1698:	008ea000 	addeq	sl, lr, r0
    169c:	2f2e2e00 	svccs	0x002e2e00
    16a0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    16a4:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
    16a8:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
    16ac:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    16b0:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
    16b4:	2f676966 	svccs	0x00676966
    16b8:	2f6d7261 	svccs	0x006d7261
    16bc:	3162696c 	cmncc	r2, ip, ror #18
    16c0:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
    16c4:	00532e73 	subseq	r2, r3, r3, ror lr
    16c8:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    16cc:	672f646c 	strvs	r6, [pc, -ip, ror #8]!
    16d0:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    16d4:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    16d8:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    16dc:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    16e0:	5252442d 	subspl	r4, r2, #754974720	; 0x2d000000
    16e4:	2f414c6e 	svccs	0x00414c6e
    16e8:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    16ec:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    16f0:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    16f4:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    16f8:	2e342d69 	cdpcs	13, 3, cr2, cr4, cr9, {3}
    16fc:	2b332e39 	blcs	cccfe8 <__user_program+0x9ccfe8>
    1700:	326e7673 	rsbcc	r7, lr, #120586240	; 0x7300000
    1704:	37313133 			; <UNDEFINED> instruction: 0x37313133
    1708:	75622f37 	strbvc	r2, [r2, #-3895]!	; 0xfffff0c9
    170c:	2f646c69 	svccs	0x00646c69
    1710:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    1714:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1718:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    171c:	696c2f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, sp}^
    1720:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    1724:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    1728:	20534120 	subscs	r4, r3, r0, lsr #2
    172c:	35322e32 	ldrcc	r2, [r2, #-3634]!	; 0xfffff1ce
    1730:	65800100 	strvs	r0, [r0, #256]	; 0x100
    1734:	04000002 	streq	r0, [r0], #-2
    1738:	00090100 	andeq	r0, r9, r0, lsl #2
    173c:	34010400 	strcc	r0, [r1], #-1024	; 0xfffffc00
    1740:	01000006 	tsteq	r0, r6
    1744:	000005f8 	strdeq	r0, [r0], -r8
    1748:	00000462 	andeq	r0, r0, r2, ror #8
    174c:	00008ea0 	andeq	r8, r0, r0, lsr #29
    1750:	00000178 	andeq	r0, r0, r8, ror r1
    1754:	00000746 	andeq	r0, r0, r6, asr #14
    1758:	2a070802 	bcs	1c3768 <__end+0x96768>
    175c:	03000000 	movweq	r0, #0
    1760:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    1764:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
    1768:	00003407 	andeq	r3, r0, r7, lsl #8
    176c:	08010200 	stmdaeq	r1, {r9}
    1770:	00000059 	andeq	r0, r0, r9, asr r0
    1774:	62080102 	andvs	r0, r8, #-2147483648	; 0x80000000
    1778:	02000000 	andeq	r0, r0, #0
    177c:	002f0704 	eoreq	r0, pc, r4, lsl #14
    1780:	04020000 	streq	r0, [r2], #-0
    1784:	00029307 	andeq	r9, r2, r7, lsl #6
    1788:	06010200 	streq	r0, [r1], -r0, lsl #4
    178c:	0000005b 	andeq	r0, r0, fp, asr r0
    1790:	23050202 	movwcs	r0, #20994	; 0x5202
    1794:	02000001 	andeq	r0, r0, #1
    1798:	00fe0702 	rscseq	r0, lr, r2, lsl #14
    179c:	f1040000 	cps	#0
    17a0:	02000005 	andeq	r0, r0, #5
    17a4:	00002c81 	andeq	r2, r0, r1, lsl #25
    17a8:	05f00400 	ldrbeq	r0, [r0, #1024]!	; 0x400
    17ac:	82020000 	andhi	r0, r2, #0
    17b0:	00000033 	andeq	r0, r0, r3, lsr r0
    17b4:	00061f04 	andeq	r1, r6, r4, lsl #30
    17b8:	8c850200 	sfmhi	f0, 4, [r5], {0}
    17bc:	02000000 	andeq	r0, r0, #0
    17c0:	00000508 	andeq	r0, r0, r8, lsl #10
    17c4:	1e040000 	cdpne	0, 0, cr0, cr4, cr0, {0}
    17c8:	02000006 	andeq	r0, r0, #6
    17cc:	00002586 	andeq	r2, r0, r6, lsl #11
    17d0:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
    17d4:	0000062e 	andeq	r0, r0, lr, lsr #12
    17d8:	26030802 	strcs	r0, [r3], -r2, lsl #16
    17dc:	02000006 	andeq	r0, r0, #6
    17e0:	06f90408 	ldrbteq	r0, [r9], r8, lsl #8
    17e4:	10020000 	andne	r0, r2, r0
    17e8:	0006f103 	andeq	pc, r6, r3, lsl #2
    17ec:	07000500 	streq	r0, [r0, -r0, lsl #10]
    17f0:	02080000 	andeq	r0, r8, #0
    17f4:	00e201e3 	rsceq	r0, r2, r3, ror #3
    17f8:	6c060000 	stcvs	0, cr0, [r6], {-0}
    17fc:	0200776f 	andeq	r7, r0, #29097984	; 0x1bc0000
    1800:	006b01e3 	rsbeq	r0, fp, r3, ror #3
    1804:	07000000 	streq	r0, [r0, -r0]
    1808:	000005de 	ldrdeq	r0, [r0], -lr
    180c:	6b01e302 	blvs	7a41c <__bss_end+0x6e41c>
    1810:	04000000 	streq	r0, [r0], #-0
    1814:	02080800 	andeq	r0, r8, #0, 16
    1818:	010101ea 	smlatteq	r1, sl, r1, r0
    181c:	73090000 	movwvc	r0, #36864	; 0x9000
    1820:	01ec0200 	mvneq	r0, r0, lsl #4
    1824:	000000ba 	strheq	r0, [r0], -sl
    1828:	006c6c09 	rsbeq	r6, ip, r9, lsl #24
    182c:	8101ed02 	tsthi	r1, r2, lsl #26
    1830:	00000000 	andeq	r0, r0, r0
    1834:	0006160a 	andeq	r1, r6, sl, lsl #12
    1838:	01ee0200 	mvneq	r0, r0, lsl #4
    183c:	000000e2 	andeq	r0, r0, r2, ror #1
    1840:	0005e30b 	andeq	lr, r5, fp, lsl #6
    1844:	03b00100 	movseq	r0, #0, 2
    1848:	00000093 	muleq	r0, r3, r0
    184c:	00018803 	andeq	r8, r1, r3, lsl #16
    1850:	006e0c00 	rsbeq	r0, lr, r0, lsl #24
    1854:	9303b001 	movwls	fp, #12289	; 0x3001
    1858:	0c000000 	stceq	0, cr0, [r0], {-0}
    185c:	b0010064 	andlt	r0, r1, r4, rrx
    1860:	00009303 	andeq	r9, r0, r3, lsl #6
    1864:	70720c00 	rsbsvc	r0, r2, r0, lsl #24
    1868:	03b00100 	movseq	r0, #0, 2
    186c:	00000188 	andeq	r0, r0, r8, lsl #3
    1870:	0100710d 	tsteq	r0, sp, lsl #2
    1874:	009303b2 			; <UNDEFINED> instruction: 0x009303b2
    1878:	720d0000 	andvc	r0, sp, #0
    187c:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
    1880:	00000093 	muleq	r0, r3, r0
    1884:	0100790d 	tsteq	r0, sp, lsl #18
    1888:	009303b2 			; <UNDEFINED> instruction: 0x009303b2
    188c:	6c0d0000 	stcvs	0, cr0, [sp], {-0}
    1890:	0100317a 	tsteq	r0, sl, ror r1
    1894:	007603b3 	ldrhteq	r0, [r6], #-51	; 0xffffffcd
    1898:	6c0d0000 	stcvs	0, cr0, [sp], {-0}
    189c:	0100327a 	tsteq	r0, sl, ror r2
    18a0:	007603b3 	ldrhteq	r0, [r6], #-51	; 0xffffffcd
    18a4:	690d0000 	stmdbvs	sp, {}	; <UNPREDICTABLE>
    18a8:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    18ac:	00000076 	andeq	r0, r0, r6, ror r0
    18b0:	01006b0d 	tsteq	r0, sp, lsl #22
    18b4:	007603b3 	ldrhteq	r0, [r6], #-51	; 0xffffffcd
    18b8:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    18bc:	00009304 	andeq	r9, r0, r4, lsl #6
    18c0:	04590f00 	ldrbeq	r0, [r9], #-3840	; 0xfffff100
    18c4:	cb010000 	blgt	418cc <__bss_end+0x358cc>
    18c8:	00008104 	andeq	r8, r0, r4, lsl #2
    18cc:	008ea000 	addeq	sl, lr, r0
    18d0:	00017800 	andeq	r7, r1, r0, lsl #16
    18d4:	109c0100 	addsne	r0, ip, r0, lsl #2
    18d8:	cb010075 	blgt	41ab4 <__bss_end+0x35ab4>
    18dc:	00008104 	andeq	r8, r0, r4, lsl #2
    18e0:	00087600 	andeq	r7, r8, r0, lsl #12
    18e4:	00761000 	rsbseq	r1, r6, r0
    18e8:	8104cb01 	tsthi	r4, r1, lsl #22
    18ec:	ae000000 	cdpge	0, 0, cr0, cr0, cr0, {0}
    18f0:	11000008 	tstne	r0, r8
    18f4:	cd010063 	stcgt	0, cr0, [r1, #-396]	; 0xfffffe74
    18f8:	00006b04 	andeq	r6, r0, r4, lsl #22
    18fc:	0008e600 	andeq	lr, r8, r0, lsl #12
    1900:	75750d00 	ldrbvc	r0, [r5, #-3328]!	; 0xfffff300
    1904:	04ce0100 	strbeq	r0, [lr], #256	; 0x100
    1908:	00000101 	andeq	r0, r0, r1, lsl #2
    190c:	0076760d 	rsbseq	r7, r6, sp, lsl #12
    1910:	0104cf01 	tsteq	r4, r1, lsl #30
    1914:	11000001 	tstne	r0, r1
    1918:	d0010077 	andle	r0, r1, r7, ror r0
    191c:	00008104 	andeq	r8, r0, r4, lsl #2
    1920:	00091d00 	andeq	r1, r9, r0, lsl #26
    1924:	010d1200 	mrseq	r1, SP_fiq
    1928:	8ec80000 	cdphi	0, 12, cr0, cr8, cr0, {0}
    192c:	01200000 			; <UNDEFINED> instruction: 0x01200000
    1930:	d9010000 	stmdble	r1, {}	; <UNPREDICTABLE>
    1934:	01321304 	teqeq	r2, r4, lsl #6
    1938:	094c0000 	stmdbeq	ip, {}^	; <UNPREDICTABLE>
    193c:	28130000 	ldmdacs	r3, {}	; <UNPREDICTABLE>
    1940:	60000001 	andvs	r0, r0, r1
    1944:	13000009 	movwne	r0, #9
    1948:	0000011e 	andeq	r0, r0, lr, lsl r1
    194c:	00000978 	andeq	r0, r0, r8, ror r9
    1950:	008ec814 	addeq	ip, lr, r4, lsl r8
    1954:	00012000 	andeq	r2, r1, r0
    1958:	013d1500 	teqeq	sp, r0, lsl #10
    195c:	09900000 	ldmibeq	r0, {}	; <UNPREDICTABLE>
    1960:	47150000 	ldrmi	r0, [r5, -r0]
    1964:	bc000001 	stclt	0, cr0, [r0], {1}
    1968:	15000009 	strne	r0, [r0, #-9]
    196c:	00000151 	andeq	r0, r0, r1, asr r1
    1970:	00000a04 	andeq	r0, r0, r4, lsl #20
    1974:	00015b15 	andeq	r5, r1, r5, lsl fp
    1978:	000a2c00 	andeq	r2, sl, r0, lsl #24
    197c:	01671500 	cmneq	r7, r0, lsl #10
    1980:	0a4a0000 	beq	1281988 <__user_program+0xf81988>
    1984:	73150000 	tstvc	r5, #0
    1988:	5d000001 	stcpl	0, cr0, [r0, #-4]
    198c:	1500000a 	strne	r0, [r0, #-10]
    1990:	0000017d 	andeq	r0, r0, sp, ror r1
    1994:	00000aa0 	andeq	r0, r0, r0, lsr #21
    1998:	00000000 	andeq	r0, r0, r0
    199c:	000001c3 	andeq	r0, r0, r3, asr #3
    19a0:	0a240004 	beq	9019b8 <__user_program+0x6019b8>
    19a4:	01040000 	mrseq	r0, (UNDEF: 4)
    19a8:	00000634 	andeq	r0, r0, r4, lsr r6
    19ac:	0005f801 	andeq	pc, r5, r1, lsl #16
    19b0:	00046200 	andeq	r6, r4, r0, lsl #4
    19b4:	00901800 	addseq	r1, r0, r0, lsl #16
    19b8:	00012000 	andeq	r2, r1, r0
    19bc:	0007de00 	andeq	sp, r7, r0, lsl #28
    19c0:	07080200 	streq	r0, [r8, -r0, lsl #4]
    19c4:	0000002a 	andeq	r0, r0, sl, lsr #32
    19c8:	34070402 	strcc	r0, [r7], #-1026	; 0xfffffbfe
    19cc:	03000000 	movweq	r0, #0
    19d0:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    19d4:	01020074 	tsteq	r2, r4, ror r0
    19d8:	00005908 	andeq	r5, r0, r8, lsl #18
    19dc:	08010200 	stmdaeq	r1, {r9}
    19e0:	00000062 	andeq	r0, r0, r2, rrx
    19e4:	2f070402 	svccs	0x00070402
    19e8:	02000000 	andeq	r0, r0, #0
    19ec:	02930704 	addseq	r0, r3, #4, 14	; 0x100000
    19f0:	01020000 	mrseq	r0, (UNDEF: 2)
    19f4:	00005b06 	andeq	r5, r0, r6, lsl #22
    19f8:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
    19fc:	00000123 	andeq	r0, r0, r3, lsr #2
    1a00:	fe070202 	cdp2	2, 0, cr0, cr7, cr2, {0}
    1a04:	04000000 	streq	r0, [r0], #-0
    1a08:	000005f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1a0c:	002c8202 	eoreq	r8, ip, r2, lsl #4
    1a10:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1a14:	00000005 	andeq	r0, r0, r5
    1a18:	061e0400 	ldreq	r0, [lr], -r0, lsl #8
    1a1c:	86020000 	strhi	r0, [r2], -r0
    1a20:	00000025 	andeq	r0, r0, r5, lsr #32
    1a24:	2e040402 	cdpcs	4, 0, cr0, cr4, cr2, {0}
    1a28:	02000006 	andeq	r0, r0, #6
    1a2c:	06260308 	strteq	r0, [r6], -r8, lsl #6
    1a30:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1a34:	0006f904 	andeq	pc, r6, r4, lsl #18
    1a38:	03100200 	tsteq	r0, #0, 4
    1a3c:	000006f1 	strdeq	r0, [r0], -r1
    1a40:	0005e305 	andeq	lr, r5, r5, lsl #6
    1a44:	03b00100 	movseq	r0, #0, 2
    1a48:	0000007d 	andeq	r0, r0, sp, ror r0
    1a4c:	00011f03 	andeq	r1, r1, r3, lsl #30
    1a50:	006e0600 	rsbeq	r0, lr, r0, lsl #12
    1a54:	7d03b001 	stcvc	0, cr11, [r3, #-4]
    1a58:	06000000 	streq	r0, [r0], -r0
    1a5c:	b0010064 	andlt	r0, r1, r4, rrx
    1a60:	00007d03 	andeq	r7, r0, r3, lsl #26
    1a64:	70720600 	rsbsvc	r0, r2, r0, lsl #12
    1a68:	03b00100 	movseq	r0, #0, 2
    1a6c:	0000011f 	andeq	r0, r0, pc, lsl r1
    1a70:	01007107 	tsteq	r0, r7, lsl #2
    1a74:	007d03b2 	ldrhteq	r0, [sp], #-50	; 0xffffffce
    1a78:	72070000 	andvc	r0, r7, #0
    1a7c:	03b20100 			; <UNDEFINED> instruction: 0x03b20100
    1a80:	0000007d 	andeq	r0, r0, sp, ror r0
    1a84:	01007907 	tsteq	r0, r7, lsl #18
    1a88:	007d03b2 	ldrhteq	r0, [sp], #-50	; 0xffffffce
    1a8c:	6c070000 	stcvs	0, cr0, [r7], {-0}
    1a90:	0100317a 	tsteq	r0, sl, ror r1
    1a94:	006b03b3 	strhteq	r0, [fp], #-51	; 0xffffffcd
    1a98:	6c070000 	stcvs	0, cr0, [r7], {-0}
    1a9c:	0100327a 	tsteq	r0, sl, ror r2
    1aa0:	006b03b3 	strhteq	r0, [fp], #-51	; 0xffffffcd
    1aa4:	69070000 	stmdbvs	r7, {}	; <UNPREDICTABLE>
    1aa8:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    1aac:	0000006b 	andeq	r0, r0, fp, rrx
    1ab0:	01006b07 	tsteq	r0, r7, lsl #22
    1ab4:	006b03b3 	strhteq	r0, [fp], #-51	; 0xffffffcd
    1ab8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    1abc:	00007d04 	andeq	r7, r0, r4, lsl #26
    1ac0:	05cb0900 	strbeq	r0, [fp, #2304]	; 0x900
    1ac4:	06010000 	streq	r0, [r1], -r0
    1ac8:	00007d05 	andeq	r7, r0, r5, lsl #26
    1acc:	00901800 	addseq	r1, r0, r0, lsl #16
    1ad0:	00012000 	andeq	r2, r1, r0
    1ad4:	0a9c0100 	beq	fe701edc <__user_program+0xfe401edc>
    1ad8:	0601006e 	streq	r0, [r1], -lr, rrx
    1adc:	00007d05 	andeq	r7, r0, r5, lsl #26
    1ae0:	000abe00 	andeq	fp, sl, r0, lsl #28
    1ae4:	00640a00 	rsbeq	r0, r4, r0, lsl #20
    1ae8:	7d050601 	stcvc	6, cr0, [r5, #-4]
    1aec:	e6000000 	str	r0, [r0], -r0
    1af0:	0b00000a 	bleq	1b20 <__start-0x64e0>
    1af4:	000000a4 	andeq	r0, r0, r4, lsr #1
    1af8:	00009018 	andeq	r9, r0, r8, lsl r0
    1afc:	00000030 	andeq	r0, r0, r0, lsr r0
    1b00:	0c050801 	stceq	8, cr0, [r5], {1}
    1b04:	000000c9 	andeq	r0, r0, r9, asr #1
    1b08:	00bf0d00 	adcseq	r0, pc, r0, lsl #26
    1b0c:	0b0e0000 	bleq	381b14 <__user_program+0x81b14>
    1b10:	b50d0000 	strlt	r0, [sp, #-0]
    1b14:	26000000 	strcs	r0, [r0], -r0
    1b18:	0e00000b 	cdpeq	0, 0, cr0, cr0, cr11, {0}
    1b1c:	00000030 	andeq	r0, r0, r0, lsr r0
    1b20:	0000d40f 	andeq	sp, r0, pc, lsl #8
    1b24:	000b3e00 	andeq	r3, fp, r0, lsl #28
    1b28:	00de0f00 	sbcseq	r0, lr, r0, lsl #30
    1b2c:	0b8a0000 	bleq	fe281b34 <__user_program+0xfdf81b34>
    1b30:	e80f0000 	stmda	pc, {}	; <UNPREDICTABLE>
    1b34:	e7000000 	str	r0, [r0, -r0]
    1b38:	0f00000b 	svceq	0x0000000b
    1b3c:	000000f2 	strdeq	r0, [r0], -r2
    1b40:	00000c0f 	andeq	r0, r0, pc, lsl #24
    1b44:	0000fe0f 	andeq	pc, r0, pc, lsl #28
    1b48:	000c2d00 	andeq	r2, ip, r0, lsl #26
    1b4c:	010a0f00 	tsteq	sl, r0, lsl #30
    1b50:	0c400000 	mareq	acc0, r0, r0
    1b54:	140f0000 	strne	r0, [pc], #-0	; 1b5c <__start-0x64a4>
    1b58:	83000001 	movwhi	r0, #1
    1b5c:	0000000c 	andeq	r0, r0, ip
    1b60:	aa000000 	bge	1b68 <__start-0x6498>
    1b64:	02000000 	andeq	r0, r0, #0
    1b68:	000aeb00 	andeq	lr, sl, r0, lsl #22
    1b6c:	70010400 	andvc	r0, r1, r0, lsl #8
    1b70:	38000008 	stmdacc	r0, {r3}
    1b74:	60000091 	mulvs	r0, r1, r0
    1b78:	2e000091 	mcrcs	0, 0, r0, cr0, cr1, {4}
    1b7c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1b80:	2f2e2e2f 	svccs	0x002e2e2f
    1b84:	2f637273 	svccs	0x00637273
    1b88:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    1b8c:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
    1b90:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
    1b94:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
    1b98:	696c2f6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp}^
    1b9c:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
    1ba0:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
    1ba4:	622f0053 	eorvs	r0, pc, #83	; 0x53
    1ba8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    1bac:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    1bb0:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
    1bb4:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1bb8:	61652d65 	cmnvs	r5, r5, ror #26
    1bbc:	442d6962 	strtmi	r6, [sp], #-2402	; 0xfffff69e
    1bc0:	4c6e5252 	sfmmi	f5, 2, [lr], #-328	; 0xfffffeb8
    1bc4:	63672f41 	cmnvs	r7, #260	; 0x104
    1bc8:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
    1bcc:	6f6e2d6d 	svcvs	0x006e2d6d
    1bd0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1bd4:	2d696261 	sfmcs	f6, 2, [r9, #-388]!	; 0xfffffe7c
    1bd8:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
    1bdc:	76732b33 			; <UNDEFINED> instruction: 0x76732b33
    1be0:	3133326e 	teqcc	r3, lr, ror #4
    1be4:	2f373731 	svccs	0x00373731
    1be8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1bec:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
    1bf0:	6f6e2d6d 	svcvs	0x006e2d6d
    1bf4:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1bf8:	2f696261 	svccs	0x00696261
    1bfc:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    1c00:	47006363 	strmi	r6, [r0, -r3, ror #6]
    1c04:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
    1c08:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
    1c0c:	01003532 	tsteq	r0, r2, lsr r5
    1c10:	0000aa80 	andeq	sl, r0, r0, lsl #21
    1c14:	ff000200 			; <UNDEFINED> instruction: 0xff000200
    1c18:	0400000a 	streq	r0, [r0], #-10
    1c1c:	0008d501 	andeq	sp, r8, r1, lsl #10
    1c20:	00916000 	addseq	r6, r1, r0
    1c24:	0091a800 	addseq	sl, r1, r0, lsl #16
    1c28:	2f2e2e00 	svccs	0x002e2e00
    1c2c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1c30:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
    1c34:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
    1c38:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    1c3c:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
    1c40:	2f676966 	svccs	0x00676966
    1c44:	2f6d7261 	svccs	0x006d7261
    1c48:	3162696c 	cmncc	r2, ip, ror #18
    1c4c:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
    1c50:	00532e73 	subseq	r2, r3, r3, ror lr
    1c54:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1c58:	672f646c 	strvs	r6, [pc, -ip, ror #8]!
    1c5c:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
    1c60:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1c64:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1c68:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1c6c:	5252442d 	subspl	r4, r2, #754974720	; 0x2d000000
    1c70:	2f414c6e 	svccs	0x00414c6e
    1c74:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
    1c78:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    1c7c:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1c80:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    1c84:	2e342d69 	cdpcs	13, 3, cr2, cr4, cr9, {3}
    1c88:	2b332e39 	blcs	ccd574 <__user_program+0x9cd574>
    1c8c:	326e7673 	rsbcc	r7, lr, #120586240	; 0x7300000
    1c90:	37313133 			; <UNDEFINED> instruction: 0x37313133
    1c94:	75622f37 	strbvc	r2, [r2, #-3895]!	; 0xfffff0c9
    1c98:	2f646c69 	svccs	0x00646c69
    1c9c:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
    1ca0:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
    1ca4:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
    1ca8:	696c2f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, sp}^
    1cac:	63636762 	cmnvs	r3, #25690112	; 0x1880000
    1cb0:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    1cb4:	20534120 	subscs	r4, r3, r0, lsr #2
    1cb8:	35322e32 	ldrcc	r2, [r2, #-3634]!	; 0xfffff1ce
    1cbc:	Address 0x0000000000001cbc is out of bounds.


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
 4d8:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 4dc:	0b3b0b3a 	bleq	ec31cc <__user_program+0xbc31cc>
 4e0:	061c1349 	ldreq	r1, [ip], -r9, asr #6
 4e4:	340f0000 	strcc	r0, [pc], #-0	; 4ec <__start-0x7b14>
 4e8:	3a0e0300 	bcc	3810f0 <__user_program+0x810f0>
 4ec:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 4f0:	00170213 	andseq	r0, r7, r3, lsl r2
 4f4:	00341000 	eorseq	r1, r4, r0
 4f8:	0b3a0803 	bleq	e8250c <__user_program+0xb8250c>
 4fc:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 500:	00001702 	andeq	r1, r0, r2, lsl #14
 504:	01828911 	orreq	r8, r2, r1, lsl r9
 508:	31011100 	mrscc	r1, (UNDEF: 17)
 50c:	12000013 	andne	r0, r0, #19
 510:	0b0b000f 	bleq	2c0554 <__end+0x193554>
 514:	00001349 	andeq	r1, r0, r9, asr #6
 518:	49003513 	stmdbmi	r0, {r0, r1, r4, r8, sl, ip, sp}
 51c:	14000013 	strne	r0, [r0], #-19	; 0xffffffed
 520:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 524:	0b3a0e03 	bleq	e83d38 <__user_program+0xb83d38>
 528:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 52c:	1301193c 	movwne	r1, #6460	; 0x193c
 530:	05150000 	ldreq	r0, [r5, #-0]
 534:	00134900 	andseq	r4, r3, r0, lsl #18
 538:	012e1600 			; <UNDEFINED> instruction: 0x012e1600
 53c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 540:	0b3b0b3a 	bleq	ec3230 <__user_program+0xbc3230>
 544:	13491927 	movtne	r1, #39207	; 0x9927
 548:	1301193c 	movwne	r1, #6460	; 0x193c
 54c:	18170000 	ldmdane	r7, {}	; <UNPREDICTABLE>
 550:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 554:	13490026 	movtne	r0, #36902	; 0x9026
 558:	01000000 	mrseq	r0, (UNDEF: 0)
 55c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 560:	0e030b13 	vmoveq.32	d3[0], r0
 564:	01110e1b 	tsteq	r1, fp, lsl lr
 568:	17100612 			; <UNDEFINED> instruction: 0x17100612
 56c:	24020000 	strcs	r0, [r2], #-0
 570:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 574:	000e030b 	andeq	r0, lr, fp, lsl #6
 578:	00240300 	eoreq	r0, r4, r0, lsl #6
 57c:	0b3e0b0b 	bleq	f831b0 <__user_program+0xc831b0>
 580:	00000803 	andeq	r0, r0, r3, lsl #16
 584:	03001604 	movweq	r1, #1540	; 0x604
 588:	3b0b3a0e 	blcc	2cedc8 <__end+0x1a1dc8>
 58c:	0013490b 	andseq	r4, r3, fp, lsl #18
 590:	012e0500 			; <UNDEFINED> instruction: 0x012e0500
 594:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 598:	0b3b0b3a 	bleq	ec3288 <__user_program+0xbc3288>
 59c:	01111927 	tsteq	r1, r7, lsr #18
 5a0:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 5a4:	01194297 			; <UNDEFINED> instruction: 0x01194297
 5a8:	06000013 			; <UNDEFINED> instruction: 0x06000013
 5ac:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 5b0:	0b3b0b3a 	bleq	ec32a0 <__user_program+0xbc32a0>
 5b4:	17021349 	strne	r1, [r2, -r9, asr #6]
 5b8:	34070000 	strcc	r0, [r7], #-0
 5bc:	3a080300 	bcc	2011c4 <__end+0xd41c4>
 5c0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 5c4:	00180213 	andseq	r0, r8, r3, lsl r2
 5c8:	00340800 	eorseq	r0, r4, r0, lsl #16
 5cc:	0b3a0e03 	bleq	e83de0 <__user_program+0xb83de0>
 5d0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 5d4:	00001702 	andeq	r1, r0, r2, lsl #14
 5d8:	03003409 	movweq	r3, #1033	; 0x409
 5dc:	3b0b3a0e 	blcc	2cee1c <__end+0x1a1e1c>
 5e0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 5e4:	0a000018 	beq	64c <__start-0x79b4>
 5e8:	01018289 	smlabbeq	r1, r9, r2, r8
 5ec:	13310111 	teqne	r1, #1073741828	; 0x40000004
 5f0:	00001301 	andeq	r1, r0, r1, lsl #6
 5f4:	01828a0b 	orreq	r8, r2, fp, lsl #20
 5f8:	91180200 	tstls	r8, r0, lsl #4
 5fc:	00001842 	andeq	r1, r0, r2, asr #16
 600:	0182890c 	orreq	r8, r2, ip, lsl #18
 604:	31011101 	tstcc	r1, r1, lsl #2
 608:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 60c:	13490101 	movtne	r0, #37121	; 0x9101
 610:	00001301 	andeq	r1, r0, r1, lsl #6
 614:	4900210e 	stmdbmi	r0, {r1, r2, r3, r8, sp}
 618:	000b2f13 	andeq	r2, fp, r3, lsl pc
 61c:	012e0f00 			; <UNDEFINED> instruction: 0x012e0f00
 620:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 624:	0b3b0b3a 	bleq	ec3314 <__user_program+0xbc3314>
 628:	01111349 	tsteq	r1, r9, asr #6
 62c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 630:	01194297 			; <UNDEFINED> instruction: 0x01194297
 634:	10000013 	andne	r0, r0, r3, lsl r0
 638:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 63c:	0b3a0e03 	bleq	e83e50 <__user_program+0xb83e50>
 640:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 644:	01111349 	tsteq	r1, r9, asr #6
 648:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 64c:	01194297 			; <UNDEFINED> instruction: 0x01194297
 650:	11000013 	tstne	r0, r3, lsl r0
 654:	00018289 	andeq	r8, r1, r9, lsl #5
 658:	13310111 	teqne	r1, #1073741828	; 0x40000004
 65c:	2e120000 	cdpcs	0, 1, cr0, cr2, cr0, {0}
 660:	03193f01 	tsteq	r9, #1, 30
 664:	3b0b3a0e 	blcc	2ceea4 <__end+0x1a1ea4>
 668:	1201110b 	andne	r1, r1, #-1073741822	; 0xc0000002
 66c:	97184006 	ldrls	r4, [r8, -r6]
 670:	13011942 	movwne	r1, #6466	; 0x1942
 674:	34130000 	ldrcc	r0, [r3], #-0
 678:	3a080300 	bcc	201280 <__end+0xd4280>
 67c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 680:	00170213 	andseq	r0, r7, r3, lsl r2
 684:	012e1400 			; <UNDEFINED> instruction: 0x012e1400
 688:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 68c:	0b3b0b3a 	bleq	ec337c <__user_program+0xbc337c>
 690:	13491927 	movtne	r1, #39207	; 0x9927
 694:	1301193c 	movwne	r1, #6460	; 0x193c
 698:	05150000 	ldreq	r0, [r5, #-0]
 69c:	00134900 	andseq	r4, r3, r0, lsl #18
 6a0:	00181600 	andseq	r1, r8, r0, lsl #12
 6a4:	0f170000 	svceq	0x00170000
 6a8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 6ac:	18000013 	stmdane	r0, {r0, r1, r4}
 6b0:	13490026 	movtne	r0, #36902	; 0x9026
 6b4:	2e190000 	cdpcs	0, 1, cr0, cr9, cr0, {0}
 6b8:	03193f01 	tsteq	r9, #1, 30
 6bc:	3b0b3a0e 	blcc	2ceefc <__end+0x1a1efc>
 6c0:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 6c4:	00193c13 	andseq	r3, r9, r3, lsl ip
 6c8:	11010000 	mrsne	r0, (UNDEF: 1)
 6cc:	130e2501 	movwne	r2, #58625	; 0xe501
 6d0:	1b0e030b 	blne	381304 <__user_program+0x81304>
 6d4:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 6d8:	00171006 	andseq	r1, r7, r6
 6dc:	00240200 	eoreq	r0, r4, r0, lsl #4
 6e0:	0b3e0b0b 	bleq	f83314 <__user_program+0xc83314>
 6e4:	00000e03 	andeq	r0, r0, r3, lsl #28
 6e8:	0b002403 	bleq	96fc <__clzsi2+0x59c>
 6ec:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 6f0:	04000008 	streq	r0, [r0], #-8
 6f4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 6f8:	0b3b0b3a 	bleq	ec33e8 <__user_program+0xbc33e8>
 6fc:	00001349 	andeq	r1, r0, r9, asr #6
 700:	3f012e05 	svccc	0x00012e05
 704:	3a0e0319 	bcc	381370 <__user_program+0x81370>
 708:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 70c:	20134919 	andscs	r4, r3, r9, lsl r9
 710:	0013010b 	andseq	r0, r3, fp, lsl #2
 714:	00050600 	andeq	r0, r5, r0, lsl #12
 718:	0b3a0e03 	bleq	e83f2c <__user_program+0xb83f2c>
 71c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 720:	0f070000 	svceq	0x00070000
 724:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 728:	08000013 	stmdaeq	r0, {r0, r1, r4}
 72c:	13490035 	movtne	r0, #36917	; 0x9035
 730:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 734:	11133101 	tstne	r3, r1, lsl #2
 738:	40061201 	andmi	r1, r6, r1, lsl #4
 73c:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 740:	00001301 	andeq	r1, r0, r1, lsl #6
 744:	3100050a 	tstcc	r0, sl, lsl #10
 748:	00170213 	andseq	r0, r7, r3, lsl r2
 74c:	012e0b00 			; <UNDEFINED> instruction: 0x012e0b00
 750:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 754:	0b3b0b3a 	bleq	ec3444 <__user_program+0xbc3444>
 758:	0b201927 	bleq	806bfc <__user_program+0x506bfc>
 75c:	00001301 	andeq	r1, r0, r1, lsl #6
 760:	3100050c 	tstcc	r0, ip, lsl #10
 764:	00180213 	andseq	r0, r8, r3, lsl r2
 768:	012e0d00 			; <UNDEFINED> instruction: 0x012e0d00
 76c:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 770:	0b3b0b3a 	bleq	ec3460 <__user_program+0xbc3460>
 774:	01111927 	tsteq	r1, r7, lsr #18
 778:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 77c:	01194297 			; <UNDEFINED> instruction: 0x01194297
 780:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 784:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 788:	0b3b0b3a 	bleq	ec3478 <__user_program+0xbc3478>
 78c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 790:	050f0000 	streq	r0, [pc, #-0]	; 798 <__start-0x7868>
 794:	3a0e0300 	bcc	38139c <__user_program+0x8139c>
 798:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 79c:	00170213 	andseq	r0, r7, r3, lsl r2
 7a0:	00341000 	eorseq	r1, r4, r0
 7a4:	0b3a0803 	bleq	e827b8 <__user_program+0xb827b8>
 7a8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 7ac:	00001802 	andeq	r1, r0, r2, lsl #16
 7b0:	31011d11 	tstcc	r1, r1, lsl sp
 7b4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 7b8:	590b5806 	stmdbpl	fp, {r1, r2, fp, ip, lr}
 7bc:	0013010b 	andseq	r0, r3, fp, lsl #2
 7c0:	011d1200 	tsteq	sp, r0, lsl #4
 7c4:	01111331 	tsteq	r1, r1, lsr r3
 7c8:	0b580612 	bleq	1602018 <__user_program+0x1302018>
 7cc:	00000b59 	andeq	r0, r0, r9, asr fp
 7d0:	3f012e13 	svccc	0x00012e13
 7d4:	3a0e0319 	bcc	381440 <__user_program+0x81440>
 7d8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 7dc:	11134919 	tstne	r3, r9, lsl r9
 7e0:	40061201 	andmi	r1, r6, r1, lsl #4
 7e4:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 7e8:	05140000 	ldreq	r0, [r4, #-0]
 7ec:	3a080300 	bcc	2013f4 <__end+0xd43f4>
 7f0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 7f4:	00170213 	andseq	r0, r7, r3, lsl r2
 7f8:	11010000 	mrsne	r0, (UNDEF: 1)
 7fc:	11061000 	mrsne	r1, (UNDEF: 6)
 800:	03011201 	movweq	r1, #4609	; 0x1201
 804:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 808:	00051308 	andeq	r1, r5, r8, lsl #6
 80c:	11010000 	mrsne	r0, (UNDEF: 1)
 810:	11061000 	mrsne	r1, (UNDEF: 6)
 814:	03011201 	movweq	r1, #4609	; 0x1201
 818:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 81c:	00051308 	andeq	r1, r5, r8, lsl #6
 820:	11010000 	mrsne	r0, (UNDEF: 1)
 824:	11061000 	mrsne	r1, (UNDEF: 6)
 828:	03011201 	movweq	r1, #4609	; 0x1201
 82c:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 830:	00051308 	andeq	r1, r5, r8, lsl #6
 834:	11010000 	mrsne	r0, (UNDEF: 1)
 838:	130e2501 	movwne	r2, #58625	; 0xe501
 83c:	1b0e030b 	blne	381470 <__user_program+0x81470>
 840:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 844:	00171006 	andseq	r1, r7, r6
 848:	00240200 	eoreq	r0, r4, r0, lsl #4
 84c:	0b3e0b0b 	bleq	f83480 <__user_program+0xc83480>
 850:	00000e03 	andeq	r0, r0, r3, lsl #28
 854:	3f012e03 	svccc	0x00012e03
 858:	3a0e0319 	bcc	3814c4 <__user_program+0x814c4>
 85c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 860:	11134919 	tstne	r3, r9, lsl r9
 864:	40061201 	andmi	r1, r6, r1, lsl #4
 868:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 86c:	00001301 	andeq	r1, r0, r1, lsl #6
 870:	03000504 	movweq	r0, #1284	; 0x504
 874:	3b0b3a08 	blcc	2cf09c <__end+0x1a209c>
 878:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 87c:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
 880:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 884:	0b3b0b3a 	bleq	ec3574 <__user_program+0xbc3574>
 888:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 88c:	34060000 	strcc	r0, [r6], #-0
 890:	3a0e0300 	bcc	381498 <__user_program+0x81498>
 894:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 898:	00180213 	andseq	r0, r8, r3, lsl r2
 89c:	82890700 	addhi	r0, r9, #0, 14
 8a0:	01110101 	tsteq	r1, r1, lsl #2
 8a4:	00001331 	andeq	r1, r0, r1, lsr r3
 8a8:	01828a08 	orreq	r8, r2, r8, lsl #20
 8ac:	91180200 	tstls	r8, r0, lsl #4
 8b0:	00001842 	andeq	r1, r0, r2, asr #16
 8b4:	0b000f09 	bleq	44e0 <__start-0x3b20>
 8b8:	0013490b 	andseq	r4, r3, fp, lsl #18
 8bc:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
 8c0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 8c4:	0b3b0b3a 	bleq	ec35b4 <__user_program+0xbc35b4>
 8c8:	13491927 	movtne	r1, #39207	; 0x9927
 8cc:	1301193c 	movwne	r1, #6460	; 0x193c
 8d0:	050b0000 	streq	r0, [fp, #-0]
 8d4:	00134900 	andseq	r4, r3, r0, lsl #18
 8d8:	012e0c00 			; <UNDEFINED> instruction: 0x012e0c00
 8dc:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 8e0:	0b3b0b3a 	bleq	ec35d0 <__user_program+0xbc35d0>
 8e4:	13491927 	movtne	r1, #39207	; 0x9927
 8e8:	0000193c 	andeq	r1, r0, ip, lsr r9
 8ec:	00110100 	andseq	r0, r1, r0, lsl #2
 8f0:	01110610 	tsteq	r1, r0, lsl r6
 8f4:	08030112 	stmdaeq	r3, {r1, r4, r8}
 8f8:	0825081b 	stmdaeq	r5!, {r0, r1, r3, r4, fp}
 8fc:	00000513 	andeq	r0, r0, r3, lsl r5
 900:	01110100 	tsteq	r1, r0, lsl #2
 904:	0b130e25 	bleq	4c41a0 <__user_program+0x1c41a0>
 908:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 90c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 910:	00001710 	andeq	r1, r0, r0, lsl r7
 914:	0b002402 	bleq	9924 <__clzsi2+0x7c4>
 918:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 91c:	0300000e 	movweq	r0, #14
 920:	0b0b0024 	bleq	2c09b8 <__end+0x1939b8>
 924:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 928:	16040000 	strne	r0, [r4], -r0
 92c:	3a0e0300 	bcc	381534 <__user_program+0x81534>
 930:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 934:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 938:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 93c:	0b3a0b0b 	bleq	e83570 <__user_program+0xb83570>
 940:	1301053b 	movwne	r0, #5435	; 0x153b
 944:	0d060000 	stceq	0, cr0, [r6, #-0]
 948:	3a080300 	bcc	201550 <__end+0xd4550>
 94c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 950:	000b3813 	andeq	r3, fp, r3, lsl r8
 954:	000d0700 	andeq	r0, sp, r0, lsl #14
 958:	0b3a0e03 	bleq	e8416c <__user_program+0xb8416c>
 95c:	1349053b 	movtne	r0, #38203	; 0x953b
 960:	00000b38 	andeq	r0, r0, r8, lsr fp
 964:	0b011708 	bleq	4658c <__bss_end+0x3a58c>
 968:	3b0b3a0b 	blcc	2cf19c <__end+0x1a219c>
 96c:	00130105 	andseq	r0, r3, r5, lsl #2
 970:	000d0900 	andeq	r0, sp, r0, lsl #18
 974:	0b3a0803 	bleq	e82988 <__user_program+0xb82988>
 978:	1349053b 	movtne	r0, #38203	; 0x953b
 97c:	160a0000 	strne	r0, [sl], -r0
 980:	3a0e0300 	bcc	381588 <__user_program+0x81588>
 984:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 988:	0b000013 	bleq	9dc <__start-0x7624>
 98c:	0e03012e 	adfeqsp	f0, f3, #0.5
 990:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 994:	13491927 	movtne	r1, #39207	; 0x9927
 998:	13010b20 	movwne	r0, #6944	; 0x1b20
 99c:	050c0000 	streq	r0, [ip, #-0]
 9a0:	3a080300 	bcc	2015a8 <__end+0xd45a8>
 9a4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 9a8:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 9ac:	08030034 	stmdaeq	r3, {r2, r4, r5}
 9b0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9b4:	00001349 	andeq	r1, r0, r9, asr #6
 9b8:	0b000f0e 	bleq	45f8 <__start-0x3a08>
 9bc:	0013490b 	andseq	r4, r3, fp, lsl #18
 9c0:	012e0f00 			; <UNDEFINED> instruction: 0x012e0f00
 9c4:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 9c8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9cc:	13491927 	movtne	r1, #39207	; 0x9927
 9d0:	06120111 			; <UNDEFINED> instruction: 0x06120111
 9d4:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 9d8:	10000019 	andne	r0, r0, r9, lsl r0
 9dc:	08030005 	stmdaeq	r3, {r0, r2}
 9e0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9e4:	17021349 	strne	r1, [r2, -r9, asr #6]
 9e8:	34110000 	ldrcc	r0, [r1], #-0
 9ec:	3a080300 	bcc	2015f4 <__end+0xd45f4>
 9f0:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 9f4:	00170213 	andseq	r0, r7, r3, lsl r2
 9f8:	011d1200 	tsteq	sp, r0, lsl #4
 9fc:	01111331 	tsteq	r1, r1, lsr r3
 a00:	0b580612 	bleq	1602250 <__user_program+0x1302250>
 a04:	00000559 	andeq	r0, r0, r9, asr r5
 a08:	31000513 	tstcc	r0, r3, lsl r5
 a0c:	00170213 	andseq	r0, r7, r3, lsl r2
 a10:	010b1400 	tsteq	fp, r0, lsl #8
 a14:	06120111 			; <UNDEFINED> instruction: 0x06120111
 a18:	34150000 	ldrcc	r0, [r5], #-0
 a1c:	02133100 	andseq	r3, r3, #0, 2
 a20:	00000017 	andeq	r0, r0, r7, lsl r0
 a24:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 a28:	030b130e 	movweq	r1, #45838	; 0xb30e
 a2c:	110e1b0e 	tstne	lr, lr, lsl #22
 a30:	10061201 	andne	r1, r6, r1, lsl #4
 a34:	02000017 	andeq	r0, r0, #23
 a38:	0b0b0024 	bleq	2c0ad0 <__end+0x193ad0>
 a3c:	0e030b3e 	vmoveq.16	d3[0], r0
 a40:	24030000 	strcs	r0, [r3], #-0
 a44:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 a48:	0008030b 	andeq	r0, r8, fp, lsl #6
 a4c:	00160400 	andseq	r0, r6, r0, lsl #8
 a50:	0b3a0e03 	bleq	e84264 <__user_program+0xb84264>
 a54:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 a58:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 a5c:	3a0e0301 	bcc	381668 <__user_program+0x81668>
 a60:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 a64:	20134919 	andscs	r4, r3, r9, lsl r9
 a68:	0013010b 	andseq	r0, r3, fp, lsl #2
 a6c:	00050600 	andeq	r0, r5, r0, lsl #12
 a70:	0b3a0803 	bleq	e82a84 <__user_program+0xb82a84>
 a74:	1349053b 	movtne	r0, #38203	; 0x953b
 a78:	34070000 	strcc	r0, [r7], #-0
 a7c:	3a080300 	bcc	201684 <__end+0xd4684>
 a80:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 a84:	08000013 	stmdaeq	r0, {r0, r1, r4}
 a88:	0b0b000f 	bleq	2c0acc <__end+0x193acc>
 a8c:	00001349 	andeq	r1, r0, r9, asr #6
 a90:	3f012e09 	svccc	0x00012e09
 a94:	3a0e0319 	bcc	381700 <__user_program+0x81700>
 a98:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 a9c:	11134919 	tstne	r3, r9, lsl r9
 aa0:	40061201 	andmi	r1, r6, r1, lsl #4
 aa4:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 aa8:	050a0000 	streq	r0, [sl, #-0]
 aac:	3a080300 	bcc	2016b4 <__end+0xd46b4>
 ab0:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 ab4:	00170213 	andseq	r0, r7, r3, lsl r2
 ab8:	011d0b00 	tsteq	sp, r0, lsl #22
 abc:	01521331 	cmpeq	r2, r1, lsr r3
 ac0:	0b581755 	bleq	160681c <__user_program+0x130681c>
 ac4:	00000559 	andeq	r0, r0, r9, asr r5
 ac8:	3100050c 	tstcc	r0, ip, lsl #10
 acc:	000b1c13 	andeq	r1, fp, r3, lsl ip
 ad0:	00050d00 	andeq	r0, r5, r0, lsl #26
 ad4:	17021331 	smladxne	r2, r1, r3, r1
 ad8:	0b0e0000 	bleq	380ae0 <__user_program+0x80ae0>
 adc:	00175501 	andseq	r5, r7, r1, lsl #10
 ae0:	00340f00 	eorseq	r0, r4, r0, lsl #30
 ae4:	17021331 	smladxne	r2, r1, r3, r1
 ae8:	01000000 	mrseq	r0, (UNDEF: 0)
 aec:	06100011 			; <UNDEFINED> instruction: 0x06100011
 af0:	01120111 	tsteq	r2, r1, lsl r1
 af4:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 af8:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 afc:	01000000 	mrseq	r0, (UNDEF: 0)
 b00:	06100011 			; <UNDEFINED> instruction: 0x06100011
 b04:	01120111 	tsteq	r2, r1, lsl r1
 b08:	081b0803 	ldmdaeq	fp, {r0, r1, fp}
 b0c:	05130825 	ldreq	r0, [r3, #-2085]	; 0xfffff7db
 b10:	Address 0x0000000000000b10 is out of bounds.


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
  94:	000002e0 	andeq	r0, r0, r0, ror #5
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	0c100002 	ldceq	0, cr0, [r0], {2}
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008a1c 	andeq	r8, r0, ip, lsl sl
  b4:	00000344 	andeq	r0, r0, r4, asr #6
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	11ec0002 	mvnne	r0, r2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008d60 	andeq	r8, r0, r0, ror #26
  d4:	00000038 	andeq	r0, r0, r8, lsr r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	13a20002 			; <UNDEFINED> instruction: 0x13a20002
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008000 	andeq	r8, r0, r0
  f4:	00000054 	andeq	r0, r0, r4, asr r0
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	140d0002 	strne	r0, [sp], #-2
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008d98 	muleq	r0, r8, sp
 114:	00000044 	andeq	r0, r0, r4, asr #32
	...
 120:	0000001c 	andeq	r0, r0, ip, lsl r0
 124:	14770002 	ldrbtne	r0, [r7], #-2
 128:	00040000 	andeq	r0, r4, r0
 12c:	00000000 	andeq	r0, r0, r0
 130:	00008ddc 	ldrdeq	r8, [r0], -ip
 134:	0000003c 	andeq	r0, r0, ip, lsr r0
	...
 140:	0000001c 	andeq	r0, r0, ip, lsl r0
 144:	15210002 	strne	r0, [r1, #-2]!
 148:	00040000 	andeq	r0, r4, r0
 14c:	00000000 	andeq	r0, r0, r0
 150:	00008e18 	andeq	r8, r0, r8, lsl lr
 154:	00000084 	andeq	r0, r0, r4, lsl #1
	...
 160:	0000001c 	andeq	r0, r0, ip, lsl r0
 164:	16850002 	strne	r0, [r5], r2
 168:	00040000 	andeq	r0, r4, r0
 16c:	00000000 	andeq	r0, r0, r0
 170:	00008e9c 	muleq	r0, ip, lr
 174:	00000004 	andeq	r0, r0, r4
	...
 180:	0000001c 	andeq	r0, r0, ip, lsl r0
 184:	17330002 	ldrne	r0, [r3, -r2]!
 188:	00040000 	andeq	r0, r4, r0
 18c:	00000000 	andeq	r0, r0, r0
 190:	00008ea0 	andeq	r8, r0, r0, lsr #29
 194:	00000178 	andeq	r0, r0, r8, ror r1
	...
 1a0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1a4:	199c0002 	ldmibne	ip, {r1}
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	00009018 	andeq	r9, r0, r8, lsl r0
 1b4:	00000120 	andeq	r0, r0, r0, lsr #2
	...
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	1b630002 	blne	18c01d4 <__user_program+0x15c01d4>
 1c8:	00040000 	andeq	r0, r4, r0
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	00009138 	andeq	r9, r0, r8, lsr r1
 1d4:	00000028 	andeq	r0, r0, r8, lsr #32
	...
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	1c110002 	ldcne	0, cr0, [r1], {2}
 1e8:	00040000 	andeq	r0, r4, r0
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	00009160 	andeq	r9, r0, r0, ror #2
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
 300:	01060101 	tsteq	r6, r1, lsl #2
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
 38c:	69727000 	ldmdbvs	r2!, {ip, sp, lr}^
 390:	2e6b746e 	cdpcs	4, 6, cr7, cr11, cr14, {3}
 394:	00030068 	andeq	r0, r3, r8, rrx
 398:	63326900 	teqvs	r2, #0, 18
 39c:	0300682e 	movweq	r6, #2094	; 0x82e
 3a0:	00000000 	andeq	r0, r0, r0
 3a4:	873c0205 	ldrhi	r0, [ip, -r5, lsl #4]!
 3a8:	10030000 	andne	r0, r3, r0
 3ac:	87673201 	strbhi	r3, [r7, -r1, lsl #4]!
 3b0:	a0820f03 	addge	r0, r2, r3, lsl #30
 3b4:	a0858484 	addge	r8, r5, r4, lsl #9
 3b8:	09032aa0 	stmdbeq	r3, {r5, r7, r9, fp, sp}
 3bc:	2c8486ba 	stccs	6, cr8, [r4], {186}	; 0xba
 3c0:	02008434 	andeq	r8, r0, #52, 8	; 0x34000000
 3c4:	be860104 	rmflts	f0, f6, f4
 3c8:	35894ca1 	strcc	r4, [r9, #3233]	; 0xca1
 3cc:	868484bc 			; <UNDEFINED> instruction: 0x868484bc
 3d0:	03667003 	cmneq	r6, #3
 3d4:	03502e14 	cmpeq	r0, #20, 28	; 0x140
 3d8:	69344a7a 	ldmdbvs	r4!, {r1, r3, r4, r5, r6, r9, fp, lr}
 3dc:	002e7a03 	eoreq	r7, lr, r3, lsl #20
 3e0:	06010402 	streq	r0, [r1], -r2, lsl #8
 3e4:	857f064a 	ldrbhi	r0, [pc, #-1610]!	; fffffda2 <__user_program+0xffcffda2>
 3e8:	9f9e0a03 	svcls	0x009e0a03
 3ec:	644ca06b 	strbvs	sl, [ip], #-107	; 0xffffff95
 3f0:	0200624c 	andeq	r6, r0, #76, 4	; 0xc0000004
 3f4:	4a060104 	bmi	18080c <__end+0x5380c>
 3f8:	820a0306 	andhi	r0, sl, #402653184	; 0x18000000
 3fc:	84342c84 	ldrthi	r2, [r4], #-3204	; 0xfffff37c
 400:	01040200 	mrseq	r0, R12_usr
 404:	02a2be85 	adceq	fp, r2, #2128	; 0x850
 408:	01010004 	tsteq	r1, r4
 40c:	000000f8 	strdeq	r0, [r0], -r8
 410:	00860002 	addeq	r0, r6, r2
 414:	01020000 	mrseq	r0, (UNDEF: 2)
 418:	000d0efb 	strdeq	r0, [sp], -fp
 41c:	01010101 	tsteq	r1, r1, lsl #2
 420:	01000000 	mrseq	r0, (UNDEF: 0)
 424:	6b010000 	blvs	4042c <__bss_end+0x3442c>
 428:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 42c:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 430:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 434:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 438:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 43c:	33006372 	movwcc	r6, #882	; 0x372
 440:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 444:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 448:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 44c:	6b006564 	blvs	199e4 <__bss_end+0xd9e4>
 450:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 454:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 458:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 45c:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 460:	692f726f 	stmdbvs	pc!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}	; <UNPREDICTABLE>
 464:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 468:	00006564 	andeq	r6, r0, r4, ror #10
 46c:	31736461 	cmncc	r3, r1, ror #8
 470:	2e353130 	mrccs	1, 1, r3, cr5, cr0, {1}
 474:	00010063 	andeq	r0, r1, r3, rrx
 478:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xfffff500
 47c:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 480:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 484:	72700000 	rsbsvc	r0, r0, #0
 488:	6b746e69 	blvs	1d1be34 <__user_program+0x1a1be34>
 48c:	0300682e 	movweq	r6, #2094	; 0x82e
 490:	32690000 	rsbcc	r0, r9, #0
 494:	00682e63 	rsbeq	r2, r8, r3, ror #28
 498:	00000003 	andeq	r0, r0, r3
 49c:	1c020500 	cfstr32ne	mvfx0, [r2], {-0}
 4a0:	0300008a 	movweq	r0, #138	; 0x8a
 4a4:	4b6c010f 	blmi	1b008e8 <__user_program+0x18008e8>
 4a8:	bb6b2f4b 	bllt	1acc1dc <__user_program+0x17cc1dc>
 4ac:	4b676b85 	blmi	19db2c8 <__user_program+0x16db2c8>
 4b0:	844b68bb 	strbhi	r6, [fp], #-2235	; 0xfffff745
 4b4:	9f68514e 	svcls	0x0068514e
 4b8:	6969bb6c 	stmdbvs	r9!, {r2, r3, r5, r6, r8, r9, fp, ip, sp, pc}^
 4bc:	4b675269 	blmi	19d4e68 <__user_program+0x16d4e68>
 4c0:	876768bb 			; <UNDEFINED> instruction: 0x876768bb
 4c4:	67838467 	strvs	r8, [r3, r7, ror #8]
 4c8:	83844b86 	orrhi	r4, r4, #137216	; 0x21800
 4cc:	4f4d8467 	svcmi	0x004d8467
 4d0:	2f4cd9a0 	svccs	0x004cd9a0
 4d4:	79032f2f 	stmdbvc	r3, {r0, r1, r2, r3, r5, r8, r9, sl, fp, sp}
 4d8:	2e0c032e 	cdpcs	3, 0, cr0, cr12, cr14, {1}
 4dc:	7a03682f 	bvc	da5a0 <__bss_end+0xce5a0>
 4e0:	2f30364a 	svccs	0x0030364a
 4e4:	49308467 	ldmdbmi	r0!, {r0, r1, r2, r5, r6, sl, pc}
 4e8:	462e0d03 	strtmi	r0, [lr], -r3, lsl #26
 4ec:	344a7703 	strbcc	r7, [sl], #-1795	; 0xfffff8fd
 4f0:	31654c83 	cmncc	r5, r3, lsl #25
 4f4:	0200654c 	andeq	r6, r0, #76, 10	; 0x13000000
 4f8:	79030204 	stmdbvc	r3, {r2, r9}
 4fc:	4a0b032e 	bmi	2c11bc <__end+0x1941bc>
 500:	024b832f 	subeq	r8, fp, #-1140850688	; 0xbc000000
 504:	01010008 	tsteq	r1, r8
 508:	00000079 	andeq	r0, r0, r9, ror r0
 50c:	00530002 	subseq	r0, r3, r2
 510:	01020000 	mrseq	r0, (UNDEF: 2)
 514:	000d0efb 	strdeq	r0, [sp], -fp
 518:	01010101 	tsteq	r1, r1, lsl #2
 51c:	01000000 	mrseq	r0, (UNDEF: 0)
 520:	6b010000 	blvs	40528 <__bss_end+0x34528>
 524:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 528:	6c635f6c 	stclvs	15, cr5, [r3], #-432	; 0xfffffe50
 52c:	65647061 	strbvs	r7, [r4, #-97]!	; 0xffffff9f
 530:	74636574 	strbtvc	r6, [r3], #-1396	; 0xfffffa8c
 534:	732f726f 			; <UNDEFINED> instruction: 0x732f726f
 538:	33006372 	movwcc	r6, #882	; 0x372
 53c:	696c3934 	stmdbvs	ip!, {r2, r4, r5, r8, fp, ip, sp}^
 540:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 544:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 548:	00006564 	andeq	r6, r0, r4, ror #10
 54c:	6c697475 	cfstrdvs	mvd7, [r9], #-468	; 0xfffffe2c
 550:	00632e73 	rsbeq	r2, r3, r3, ror lr
 554:	6b000001 	blvs	560 <__start-0x7aa0>
 558:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 55c:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 560:	00000200 	andeq	r0, r0, r0, lsl #4
 564:	02050000 	andeq	r0, r5, #0
 568:	00008d60 	andeq	r8, r0, r0, ror #26
 56c:	302f1315 	eorcc	r1, pc, r5, lsl r3	; <UNPREDICTABLE>
 570:	78034e13 	stmdavc	r3, {r0, r1, r4, r9, sl, fp, lr}
 574:	2e0a0301 	cdpcs	3, 0, cr0, cr10, cr1, {0}
 578:	03667a03 	cmneq	r6, #12288	; 0x3000
 57c:	4b134a0b 	blmi	4d2db0 <__user_program+0x1d2db0>
 580:	01000402 	tsteq	r0, r2, lsl #8
 584:	00005401 	andeq	r5, r0, r1, lsl #8
 588:	29000200 	stmdbcs	r0, {r9}
 58c:	02000000 	andeq	r0, r0, #0
 590:	0d0efb01 	vstreq	d15, [lr, #-4]
 594:	01010100 	mrseq	r0, (UNDEF: 17)
 598:	00000001 	andeq	r0, r0, r1
 59c:	01000001 	tsteq	r0, r1
 5a0:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 5a4:	2f6b6269 	svccs	0x006b6269
 5a8:	00637273 	rsbeq	r7, r3, r3, ror r2
 5ac:	6f6f6200 	svcvs	0x006f6200
 5b0:	00532e74 	subseq	r2, r3, r4, ror lr
 5b4:	00000001 	andeq	r0, r0, r1
 5b8:	00020500 	andeq	r0, r2, r0, lsl #10
 5bc:	03000080 	movweq	r0, #128	; 0x80
 5c0:	2f2f011b 	svccs	0x002f011b
 5c4:	2f2f302f 	svccs	0x002f302f
 5c8:	2f2f2f2f 	svccs	0x002f2f2f
 5cc:	312f2f31 			; <UNDEFINED> instruction: 0x312f2f31
 5d0:	69032f33 	stmdbvs	r3, {r0, r1, r4, r5, r8, r9, sl, fp, sp}
 5d4:	2f2f312e 	svccs	0x002f312e
 5d8:	01000202 	tsteq	r0, r2, lsl #4
 5dc:	00004d01 	andeq	r4, r0, r1, lsl #26
 5e0:	28000200 	stmdacs	r0, {r9}
 5e4:	02000000 	andeq	r0, r0, #0
 5e8:	0d0efb01 	vstreq	d15, [lr, #-4]
 5ec:	01010100 	mrseq	r0, (UNDEF: 17)
 5f0:	00000001 	andeq	r0, r0, r1
 5f4:	01000001 	tsteq	r0, r1
 5f8:	6c393433 	cfldrsvs	mvf3, [r9], #-204	; 0xffffff34
 5fc:	2f6b6269 	svccs	0x006b6269
 600:	00637273 	rsbeq	r7, r3, r3, ror r2
 604:	6d726100 	ldfvse	f6, [r2, #-0]
 608:	0100532e 	tsteq	r0, lr, lsr #6
 60c:	00000000 	andeq	r0, r0, r0
 610:	8d980205 	lfmhi	f0, 4, [r8, #20]
 614:	10030000 	andne	r0, r3, r0
 618:	332f2f01 			; <UNDEFINED> instruction: 0x332f2f01
 61c:	332f332f 			; <UNDEFINED> instruction: 0x332f332f
 620:	2f2f2f2f 	svccs	0x002f2f2f
 624:	2f2f2f33 	svccs	0x002f2f33
 628:	0002022f 	andeq	r0, r2, pc, lsr #4
 62c:	005a0101 	subseq	r0, sl, r1, lsl #2
 630:	00020000 	andeq	r0, r2, r0
 634:	0000003d 	andeq	r0, r0, sp, lsr r0
 638:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 63c:	0101000d 	tsteq	r1, sp
 640:	00000101 	andeq	r0, r0, r1, lsl #2
 644:	00000100 	andeq	r0, r0, r0, lsl #2
 648:	2f2e2e01 	svccs	0x002e2e01
 64c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 650:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 654:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 658:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 65c:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 660:	2f676966 	svccs	0x00676966
 664:	006d7261 	rsbeq	r7, sp, r1, ror #4
 668:	61706200 	cmnvs	r0, r0, lsl #4
 66c:	532e6962 			; <UNDEFINED> instruction: 0x532e6962
 670:	00000100 	andeq	r0, r0, r0, lsl #2
 674:	02050000 	andeq	r0, r5, #0
 678:	00008ddc 	ldrdeq	r8, [r0], -ip
 67c:	01019b03 	tsteq	r1, r3, lsl #22
 680:	2f3133f4 	svccs	0x003133f4
 684:	022f2f2f 	eoreq	r2, pc, #47, 30	; 0xbc
 688:	01010002 	tsteq	r1, r2
 68c:	0000005b 	andeq	r0, r0, fp, asr r0
 690:	003d0002 	eorseq	r0, sp, r2
 694:	01020000 	mrseq	r0, (UNDEF: 2)
 698:	000d0efb 	strdeq	r0, [sp], -fp
 69c:	01010101 	tsteq	r1, r1, lsl #2
 6a0:	01000000 	mrseq	r0, (UNDEF: 0)
 6a4:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 6a8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 6ac:	2f2e2e2f 	svccs	0x002e2e2f
 6b0:	2f637273 	svccs	0x00637273
 6b4:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 6b8:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 6bc:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 6c0:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 6c4:	6200006d 	andvs	r0, r0, #109	; 0x6d
 6c8:	69626170 	stmdbvs	r2!, {r4, r5, r6, r8, sp, lr}^
 6cc:	0100632e 	tsteq	r0, lr, lsr #6
 6d0:	00000000 	andeq	r0, r0, r0
 6d4:	8e180205 	cdphi	2, 1, cr0, cr8, cr5, {0}
 6d8:	25030000 	strcs	r0, [r3, #-0]
 6dc:	4ba12e01 	blmi	fe84bee8 <__user_program+0xfe54bee8>
 6e0:	a12e50d8 	ldrdge	r5, [lr, -r8]!
 6e4:	0402d82f 	streq	sp, [r2], #-2095	; 0xfffff7d1
 6e8:	57010100 	strpl	r0, [r1, -r0, lsl #2]
 6ec:	02000000 	andeq	r0, r0, #0
 6f0:	00004100 	andeq	r4, r0, r0, lsl #2
 6f4:	fb010200 	blx	40efe <__bss_end+0x34efe>
 6f8:	01000d0e 	tsteq	r0, lr, lsl #26
 6fc:	00010101 	andeq	r0, r1, r1, lsl #2
 700:	00010000 	andeq	r0, r1, r0
 704:	2e2e0100 	sufcse	f0, f6, f0
 708:	2f2e2e2f 	svccs	0x002e2e2f
 70c:	732f2e2e 			; <UNDEFINED> instruction: 0x732f2e2e
 710:	6c2f6372 	stcvs	3, cr6, [pc], #-456	; 550 <__start-0x7ab0>
 714:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 718:	6f632f63 	svcvs	0x00632f63
 71c:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 720:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 724:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 728:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
 72c:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 730:	00010053 	andeq	r0, r1, r3, asr r0
 734:	05000000 	streq	r0, [r0, #-0]
 738:	008e9c02 	addeq	r9, lr, r2, lsl #24
 73c:	0bae0300 	bleq	feb81344 <__user_program+0xfe881344>
 740:	00020201 	andeq	r0, r2, r1, lsl #4
 744:	00940101 	addseq	r0, r4, r1, lsl #2
 748:	00020000 	andeq	r0, r2, r0
 74c:	00000041 	andeq	r0, r0, r1, asr #32
 750:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 754:	0101000d 	tsteq	r1, sp
 758:	00000101 	andeq	r0, r0, r1, lsl #2
 75c:	00000100 	andeq	r0, r0, r0, lsl #2
 760:	2f2e2e01 	svccs	0x002e2e01
 764:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 768:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 76c:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 770:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 774:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 778:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 77c:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 780:	6c000001 	stcvs	0, cr0, [r0], {1}
 784:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 788:	682e3263 	stmdavs	lr!, {r0, r1, r5, r6, r9, ip, sp}
 78c:	00000100 	andeq	r0, r0, r0, lsl #2
 790:	02050000 	andeq	r0, r5, #0
 794:	00008ea0 	andeq	r8, r0, r0, lsr #29
 798:	0109cb03 	tsteq	r9, r3, lsl #22
 79c:	2e7a0318 	mrccs	3, 3, r0, cr10, cr8, {0}
 7a0:	03313367 	teqeq	r1, #-1677721599	; 0x9c000001
 7a4:	a0827de8 	addge	r7, r2, r8, ror #27
 7a8:	4c2f2d67 	stcmi	13, cr2, [pc], #-412	; 614 <__start-0x79ec>
 7ac:	7903a52f 	stmdbvc	r3, {r0, r1, r2, r3, r5, r8, sl, sp, pc}
 7b0:	7903352e 	stmdbvc	r3, {r1, r2, r3, r5, r8, sl, ip, sp}
 7b4:	2e6f032e 	cdpcs	3, 6, cr0, cr15, cr14, {1}
 7b8:	314a1803 	cmpcc	sl, r3, lsl #16
 7bc:	2f492f2d 	svccs	0x00492f2d
 7c0:	be6e4c31 	mcrlt	12, 3, r4, cr14, cr1, {1}
 7c4:	4f4c6945 	svcmi	0x004c6945
 7c8:	64832f49 	strvs	r2, [r3], #3913	; 0xf49
 7cc:	01fa0330 	mvnseq	r0, r0, lsr r3
 7d0:	79033c08 	stmdbvc	r3, {r3, sl, fp, ip, sp}
 7d4:	472f2d82 	strmi	r2, [pc, -r2, lsl #27]!
 7d8:	00040249 	andeq	r0, r4, r9, asr #4
 7dc:	008e0101 	addeq	r0, lr, r1, lsl #2
 7e0:	00020000 	andeq	r0, r2, r0
 7e4:	00000041 	andeq	r0, r0, r1, asr #32
 7e8:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 7ec:	0101000d 	tsteq	r1, sp
 7f0:	00000101 	andeq	r0, r0, r1, lsl #2
 7f4:	00000100 	andeq	r0, r0, r0, lsl #2
 7f8:	2f2e2e01 	svccs	0x002e2e01
 7fc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 800:	72732f2e 	rsbsvc	r2, r3, #46, 30	; 0xb8
 804:	696c2f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, sp}^
 808:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 80c:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 810:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 814:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 818:	6c000001 	stcvs	0, cr0, [r0], {1}
 81c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 820:	682e3263 	stmdavs	lr!, {r0, r1, r5, r6, r9, ip, sp}
 824:	00000100 	andeq	r0, r0, r0, lsl #2
 828:	02050000 	andeq	r0, r5, #0
 82c:	00009018 	andeq	r9, r0, r8, lsl r0
 830:	010a8603 	tsteq	sl, r3, lsl #12
 834:	017db603 	cmneq	sp, r3, lsl #12
 838:	4a02ca03 	bmi	b304c <__bss_end+0xa704c>
 83c:	7dab032e 	stcvc	3, cr0, [fp, #184]!	; 0xb8
 840:	4a0b0382 	bmi	2c1650 <__end+0x194650>
 844:	2f2d6730 	svccs	0x002d6730
 848:	03a52f4c 			; <UNDEFINED> instruction: 0x03a52f4c
 84c:	03352e79 	teqeq	r5, #1936	; 0x790
 850:	6f032e79 	svcvs	0x00032e79
 854:	4a18032e 	bmi	601514 <__user_program+0x301514>
 858:	492f2d31 	stmdbmi	pc!, {r0, r4, r5, r8, sl, fp, sp}	; <UNPREDICTABLE>
 85c:	6e4c312f 	dvfvsep	f3, f4, #10.0
 860:	4c6945be 	cfstr64mi	mvdx4, [r9], #-760	; 0xfffffd08
 864:	03bb4b4e 			; <UNDEFINED> instruction: 0x03bb4b4e
 868:	02ba02a5 	adcseq	r0, sl, #1342177290	; 0x5000000a
 86c:	01010004 	tsteq	r1, r4
 870:	00000061 	andeq	r0, r0, r1, rrx
 874:	00410002 	subeq	r0, r1, r2
 878:	01020000 	mrseq	r0, (UNDEF: 2)
 87c:	000d0efb 	strdeq	r0, [sp], -fp
 880:	01010101 	tsteq	r1, r1, lsl #2
 884:	01000000 	mrseq	r0, (UNDEF: 0)
 888:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 88c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 890:	2f2e2e2f 	svccs	0x002e2e2f
 894:	2f637273 	svccs	0x00637273
 898:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 89c:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
 8a0:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 8a4:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
 8a8:	6c00006d 	stcvs	0, cr0, [r0], {109}	; 0x6d
 8ac:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
 8b0:	73636e75 	cmnvc	r3, #1872	; 0x750
 8b4:	0100532e 	tsteq	r0, lr, lsr #6
 8b8:	00000000 	andeq	r0, r0, r0
 8bc:	91380205 	teqls	r8, r5, lsl #4
 8c0:	ae030000 	cdpge	0, 0, cr0, cr3, cr0, {0}
 8c4:	2f30010d 	svccs	0x0030010d
 8c8:	2f2e0903 	svccs	0x002e0903
 8cc:	342f302f 	strtcc	r3, [pc], #-47	; 8d4 <__start-0x772c>
 8d0:	01000402 	tsteq	r0, r2, lsl #8
 8d4:	00006401 	andeq	r6, r0, r1, lsl #8
 8d8:	41000200 	mrsmi	r0, R8_usr
 8dc:	02000000 	andeq	r0, r0, #0
 8e0:	0d0efb01 	vstreq	d15, [lr, #-4]
 8e4:	01010100 	mrseq	r0, (UNDEF: 17)
 8e8:	00000001 	andeq	r0, r0, r1
 8ec:	01000001 	tsteq	r0, r1
 8f0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 8f4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 8f8:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 8fc:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 900:	2f636367 	svccs	0x00636367
 904:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 908:	612f6769 			; <UNDEFINED> instruction: 0x612f6769
 90c:	00006d72 	andeq	r6, r0, r2, ror sp
 910:	3162696c 	cmncc	r2, ip, ror #18
 914:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 918:	00532e73 	subseq	r2, r3, r3, ror lr
 91c:	00000001 	andeq	r0, r0, r1
 920:	60020500 	andvs	r0, r2, r0, lsl #10
 924:	03000091 	movweq	r0, #145	; 0x91
 928:	2f010d8d 	svccs	0x00010d8d
 92c:	302f2f30 	eorcc	r2, pc, r0, lsr pc	; <UNPREDICTABLE>
 930:	2f302f2f 	svccs	0x00302f2f
 934:	2f2f2f2f 	svccs	0x002f2f2f
 938:	01000a02 	tsteq	r0, r2, lsl #20
 93c:	Address 0x000000000000093c is out of bounds.


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
 1b8:	00000020 	andeq	r0, r0, r0, lsr #32
 1bc:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1c0:	00018e02 	andeq	r8, r1, r2, lsl #28
 1c4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c8:	0000019c 	muleq	r0, ip, r1
 1cc:	0000875c 	andeq	r8, r0, ip, asr r7
 1d0:	00000114 	andeq	r0, r0, r4, lsl r1
 1d4:	83180e42 	tsthi	r8, #1056	; 0x420
 1d8:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 1dc:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 1e0:	00018e02 	andeq	r8, r1, r2, lsl #28
 1e4:	00000020 	andeq	r0, r0, r0, lsr #32
 1e8:	0000019c 	muleq	r0, ip, r1
 1ec:	00008870 	andeq	r8, r0, r0, ror r8
 1f0:	000001ac 	andeq	r0, r0, ip, lsr #3
 1f4:	83200e42 			; <UNDEFINED> instruction: 0x83200e42
 1f8:	85078408 	strhi	r8, [r7, #-1032]	; 0xfffffbf8
 1fc:	87058606 	strhi	r8, [r5, -r6, lsl #12]
 200:	89038804 	stmdbhi	r3, {r2, fp, pc}
 204:	00018e02 	andeq	r8, r1, r2, lsl #28
 208:	0000000c 	andeq	r0, r0, ip
 20c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 210:	7c020001 	stcvc	0, cr0, [r2], {1}
 214:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 218:	00000018 	andeq	r0, r0, r8, lsl r0
 21c:	00000208 	andeq	r0, r0, r8, lsl #4
 220:	00008a1c 	andeq	r8, r0, ip, lsl sl
 224:	000000b8 	strheq	r0, [r0], -r8
 228:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 22c:	100e4201 	andne	r4, lr, r1, lsl #4
 230:	040e5602 	streq	r5, [lr], #-1538	; 0xfffff9fe
 234:	00000018 	andeq	r0, r0, r8, lsl r0
 238:	00000208 	andeq	r0, r0, r8, lsl #4
 23c:	00008ad4 	ldrdeq	r8, [r0], -r4
 240:	00000070 	andeq	r0, r0, r0, ror r0
 244:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
 248:	100e4201 	andne	r4, lr, r1, lsl #4
 24c:	00040e72 	andeq	r0, r4, r2, ror lr
 250:	0000001c 	andeq	r0, r0, ip, lsl r0
 254:	00000208 	andeq	r0, r0, r8, lsl #4
 258:	00008b44 	andeq	r8, r0, r4, asr #22
 25c:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 260:	840c0e42 	strhi	r0, [ip], #-3650	; 0xfffff1be
 264:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 268:	180e4201 	stmdane	lr, {r0, r9, lr}
 26c:	0c0e7202 	sfmeq	f7, 4, [lr], {2}
 270:	00000014 	andeq	r0, r0, r4, lsl r0
 274:	00000208 	andeq	r0, r0, r8, lsl #4
 278:	00008c34 	andeq	r8, r0, r4, lsr ip
 27c:	00000074 	andeq	r0, r0, r4, ror r0
 280:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
 284:	00018e02 	andeq	r8, r1, r2, lsl #28
 288:	00000014 	andeq	r0, r0, r4, lsl r0
 28c:	00000208 	andeq	r0, r0, r8, lsl #4
 290:	00008ca8 	andeq	r8, r0, r8, lsr #25
 294:	00000020 	andeq	r0, r0, r0, lsr #32
 298:	83080e42 	movwhi	r0, #36418	; 0x8e42
 29c:	00018e02 	andeq	r8, r1, r2, lsl #28
 2a0:	00000020 	andeq	r0, r0, r0, lsr #32
 2a4:	00000208 	andeq	r0, r0, r8, lsl #4
 2a8:	00008cc8 	andeq	r8, r0, r8, asr #25
 2ac:	00000098 	muleq	r0, r8, r0
 2b0:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 2b4:	86078508 	strhi	r8, [r7], -r8, lsl #10
 2b8:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 2bc:	8a038904 	bhi	e26d4 <__bss_end+0xd66d4>
 2c0:	00018e02 	andeq	r8, r1, r2, lsl #28
 2c4:	0000000c 	andeq	r0, r0, ip
 2c8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2cc:	7c020001 	stcvc	0, cr0, [r2], {1}
 2d0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2d4:	0000000c 	andeq	r0, r0, ip
 2d8:	000002c4 	andeq	r0, r0, r4, asr #5
 2dc:	00008d60 	andeq	r8, r0, r0, ror #26
 2e0:	00000008 	andeq	r0, r0, r8
 2e4:	0000000c 	andeq	r0, r0, ip
 2e8:	000002c4 	andeq	r0, r0, r4, asr #5
 2ec:	00008d68 	andeq	r8, r0, r8, ror #26
 2f0:	00000008 	andeq	r0, r0, r8
 2f4:	0000000c 	andeq	r0, r0, ip
 2f8:	000002c4 	andeq	r0, r0, r4, asr #5
 2fc:	00008d70 	andeq	r8, r0, r0, ror sp
 300:	00000018 	andeq	r0, r0, r8, lsl r0
 304:	0000000c 	andeq	r0, r0, ip
 308:	000002c4 	andeq	r0, r0, r4, asr #5
 30c:	00008d88 	andeq	r8, r0, r8, lsl #27
 310:	00000010 	andeq	r0, r0, r0, lsl r0
 314:	0000000c 	andeq	r0, r0, ip
 318:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 31c:	7c010001 	stcvc	0, cr0, [r1], {1}
 320:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 324:	00000014 	andeq	r0, r0, r4, lsl r0
 328:	00000314 	andeq	r0, r0, r4, lsl r3
 32c:	00008ddc 	ldrdeq	r8, [r0], -ip
 330:	0000003c 	andeq	r0, r0, ip, lsr r0
 334:	0e038e68 	cdpeq	14, 0, cr8, cr3, cr8, {3}
 338:	00000010 	andeq	r0, r0, r0, lsl r0
 33c:	0000000c 	andeq	r0, r0, ip
 340:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 344:	7c020001 	stcvc	0, cr0, [r2], {1}
 348:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 34c:	0000002c 	andeq	r0, r0, ip, lsr #32
 350:	0000033c 	andeq	r0, r0, ip, lsr r3
 354:	00008e18 	andeq	r8, r0, r8, lsl lr
 358:	00000044 	andeq	r0, r0, r4, asr #32
 35c:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 360:	86078508 	strhi	r8, [r7], -r8, lsl #10
 364:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 368:	8a038904 	bhi	e2780 <__bss_end+0xd6780>
 36c:	5e018e02 	cdppl	14, 0, cr8, cr1, cr2, {0}
 370:	c8c9cace 	stmiagt	r9, {r1, r2, r3, r6, r7, r9, fp, lr, pc}^
 374:	c4c5c6c7 	strbgt	ip, [r5], #1735	; 0x6c7
 378:	0000000e 	andeq	r0, r0, lr
 37c:	00000024 	andeq	r0, r0, r4, lsr #32
 380:	0000033c 	andeq	r0, r0, ip, lsr r3
 384:	00008e5c 	andeq	r8, r0, ip, asr lr
 388:	00000040 	andeq	r0, r0, r0, asr #32
 38c:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 390:	86058506 	strhi	r8, [r5], -r6, lsl #10
 394:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 398:	5c018e02 	stcpl	14, cr8, [r1], {2}
 39c:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 3a0:	000ec4c5 	andeq	ip, lr, r5, asr #9
 3a4:	0000000c 	andeq	r0, r0, ip
 3a8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3ac:	7c020001 	stcvc	0, cr0, [r2], {1}
 3b0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3b4:	00000034 	andeq	r0, r0, r4, lsr r0
 3b8:	000003a4 	andeq	r0, r0, r4, lsr #7
 3bc:	00008ea0 	andeq	r8, r0, r0, lsr #29
 3c0:	00000178 	andeq	r0, r0, r8, ror r1
 3c4:	83280e44 			; <UNDEFINED> instruction: 0x83280e44
 3c8:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
 3cc:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 3d0:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 3d4:	8b038a04 	blhi	e2bec <__bss_end+0xd6bec>
 3d8:	02018e02 	andeq	r8, r1, #2, 28
 3dc:	cbce0aa6 	blgt	ff382e7c <__user_program+0xff082e7c>
 3e0:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 3e4:	c3c4c5c6 	bicgt	ip, r4, #830472192	; 0x31800000
 3e8:	0b42000e 	bleq	1080428 <__user_program+0xd80428>
 3ec:	0000000c 	andeq	r0, r0, ip
 3f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3f4:	7c020001 	stcvc	0, cr0, [r2], {1}
 3f8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3fc:	0000002c 	andeq	r0, r0, ip, lsr #32
 400:	000003ec 	andeq	r0, r0, ip, ror #7
 404:	00009018 	andeq	r9, r0, r8, lsl r0
 408:	00000120 	andeq	r0, r0, r0, lsr #2
 40c:	84200e46 	strthi	r0, [r0], #-3654	; 0xfffff1ba
 410:	86078508 	strhi	r8, [r7], -r8, lsl #10
 414:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 418:	8a038904 	bhi	e2830 <__bss_end+0xd6830>
 41c:	02018e02 	andeq	r8, r1, #2, 28
 420:	c9cace88 	stmibgt	sl, {r3, r7, r9, sl, fp, lr, pc}^
 424:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 428:	00000ec4 	andeq	r0, r0, r4, asr #29

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
 228:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 22c:	01000000 	mrseq	r0, (UNDEF: 0)
 230:	00085000 	andeq	r5, r8, r0
 234:	00200000 	eoreq	r0, r0, r0
 238:	00040000 	andeq	r0, r4, r0
 23c:	9f5001f3 	svcls	0x005001f3
	...
 248:	00000020 	andeq	r0, r0, r0, lsr #32
 24c:	00000034 	andeq	r0, r0, r4, lsr r0
 250:	34500001 	ldrbcc	r0, [r0], #-1
 254:	84000000 	strhi	r0, [r0], #-0
 258:	01000000 	mrseq	r0, (UNDEF: 0)
 25c:	00845500 	addeq	r5, r4, r0, lsl #10
 260:	00900000 	addseq	r0, r0, r0
 264:	00030000 	andeq	r0, r3, r0
 268:	909f0175 	addsls	r0, pc, r5, ror r1	; <UNPREDICTABLE>
 26c:	34000000 	strcc	r0, [r0], #-0
 270:	04000001 	streq	r0, [r0], #-1
 274:	5001f300 	andpl	pc, r1, r0, lsl #6
 278:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 27c:	00000000 	andeq	r0, r0, r0
 280:	00002000 	andeq	r2, r0, r0
 284:	00003c00 	andeq	r3, r0, r0, lsl #24
 288:	51000100 	mrspl	r0, (UNDEF: 16)
 28c:	0000003c 	andeq	r0, r0, ip, lsr r0
 290:	00000134 	andeq	r0, r0, r4, lsr r1
 294:	01f30004 	mvnseq	r0, r4
 298:	00009f51 	andeq	r9, r0, r1, asr pc
 29c:	00000000 	andeq	r0, r0, r0
 2a0:	00200000 	eoreq	r0, r0, r0
 2a4:	00400000 	subeq	r0, r0, r0
 2a8:	00010000 	andeq	r0, r1, r0
 2ac:	00004052 	andeq	r4, r0, r2, asr r0
 2b0:	00013400 	andeq	r3, r1, r0, lsl #8
 2b4:	f3000400 	vshl.u8	d0, d0, d0
 2b8:	009f5201 	addseq	r5, pc, r1, lsl #4
 2bc:	00000000 	andeq	r0, r0, r0
 2c0:	30000000 	andcc	r0, r0, r0
 2c4:	3c000000 	stccc	0, cr0, [r0], {-0}
 2c8:	01000000 	mrseq	r0, (UNDEF: 0)
 2cc:	003c5100 	eorseq	r5, ip, r0, lsl #2
 2d0:	00880000 	addeq	r0, r8, r0
 2d4:	00010000 	andeq	r0, r1, r0
 2d8:	00008854 	andeq	r8, r0, r4, asr r8
 2dc:	00009000 	andeq	r9, r0, r0
 2e0:	57000100 	strpl	r0, [r0, -r0, lsl #2]
 2e4:	00000090 	muleq	r0, r0, r0
 2e8:	000000b8 	strheq	r0, [r0], -r8
 2ec:	0077000a 	rsbseq	r0, r7, sl
 2f0:	1affff0a 	bne	ffffff20 <__user_program+0xffcfff20>
 2f4:	9f1c0074 	svcls	0x001c0074
	...
 300:	00000030 	andeq	r0, r0, r0, lsr r0
 304:	00000090 	muleq	r0, r0, r0
 308:	9f300002 	svcls	0x00300002
 30c:	00000090 	muleq	r0, r0, r0
 310:	000000b8 	strheq	r0, [r0], -r8
 314:	00540001 	subseq	r0, r4, r1
 318:	00000000 	andeq	r0, r0, r0
 31c:	30000000 	andcc	r0, r0, r0
 320:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 324:	02000001 	andeq	r0, r0, #1
 328:	009f3000 	addseq	r3, pc, r0
 32c:	00000000 	andeq	r0, r0, r0
 330:	34000000 	strcc	r0, [r0], #-0
 334:	54000001 	strpl	r0, [r0], #-1
 338:	01000001 	tsteq	r0, r1
 33c:	01545000 	cmpeq	r4, r0
 340:	02e00000 	rsceq	r0, r0, #0
 344:	00010000 	andeq	r0, r1, r0
 348:	00000059 	andeq	r0, r0, r9, asr r0
 34c:	00000000 	andeq	r0, r0, r0
 350:	00013400 	andeq	r3, r1, r0, lsl #8
 354:	00015800 	andeq	r5, r1, r0, lsl #16
 358:	51000100 	mrspl	r0, (UNDEF: 16)
 35c:	00000158 	andeq	r0, r0, r8, asr r1
 360:	000002e0 	andeq	r0, r0, r0, ror #5
 364:	01f30004 	mvnseq	r0, r4
 368:	00009f51 	andeq	r9, r0, r1, asr pc
 36c:	00000000 	andeq	r0, r0, r0
 370:	01340000 	teqeq	r4, r0
 374:	015c0000 	cmpeq	ip, r0
 378:	00010000 	andeq	r0, r1, r0
 37c:	00015c52 	andeq	r5, r1, r2, asr ip
 380:	0002e000 	andeq	lr, r2, r0
 384:	f3000400 	vshl.u8	d0, d0, d0
 388:	009f5201 	addseq	r5, pc, r1, lsl #4
 38c:	00000000 	andeq	r0, r0, r0
 390:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
 394:	58000001 	stmdapl	r0, {r0}
 398:	01000001 	tsteq	r0, r1
 39c:	01585100 	cmpeq	r8, r0, lsl #2
 3a0:	01c00000 	biceq	r0, r0, r0
 3a4:	00010000 	andeq	r0, r1, r0
 3a8:	0001c054 	andeq	ip, r1, r4, asr r0
 3ac:	0001c800 	andeq	ip, r1, r0, lsl #16
 3b0:	74000300 	strvc	r0, [r0], #-768	; 0xfffffd00
 3b4:	01c89f7f 	biceq	r9, r8, pc, ror pc
 3b8:	025c0000 	subseq	r0, ip, #0
 3bc:	00010000 	andeq	r0, r1, r0
 3c0:	00025c54 	andeq	r5, r2, r4, asr ip
 3c4:	00026000 	andeq	r6, r2, r0
 3c8:	74000300 	strvc	r0, [r0], #-768	; 0xfffffd00
 3cc:	02609f7f 	rsbeq	r9, r0, #508	; 0x1fc
 3d0:	02b00000 	adcseq	r0, r0, #0
 3d4:	00010000 	andeq	r0, r1, r0
 3d8:	00000054 	andeq	r0, r0, r4, asr r0
 3dc:	00000000 	andeq	r0, r0, r0
 3e0:	00014800 	andeq	r4, r1, r0, lsl #16
 3e4:	0001b400 	andeq	fp, r1, r0, lsl #8
 3e8:	30000200 	andcc	r0, r0, r0, lsl #4
 3ec:	0001b49f 	muleq	r1, pc, r4	; <UNPREDICTABLE>
 3f0:	00022c00 	andeq	r2, r2, r0, lsl #24
 3f4:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
 3f8:	00000248 	andeq	r0, r0, r8, asr #4
 3fc:	00000274 	andeq	r0, r0, r4, ror r2
 400:	00750006 	rsbseq	r0, r5, r6
 404:	9f1c0079 	svcls	0x001c0079
	...
 410:	00000148 	andeq	r0, r0, r8, asr #2
 414:	000002b4 			; <UNDEFINED> instruction: 0x000002b4
 418:	9f300002 	svcls	0x00300002
	...
 428:	00000024 	andeq	r0, r0, r4, lsr #32
 42c:	24500001 	ldrbcs	r0, [r0], #-1
 430:	b8000000 	stmdalt	r0, {}	; <UNPREDICTABLE>
 434:	04000000 	streq	r0, [r0], #-0
 438:	5001f300 	andpl	pc, r1, r0, lsl #6
 43c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 440:	00000000 	andeq	r0, r0, r0
 444:	00009800 	andeq	r9, r0, r0, lsl #16
 448:	0000af00 	andeq	sl, r0, r0, lsl #30
 44c:	7d001200 	sfmvc	f1, 4, [r0, #-0]
 450:	08019400 	stmdaeq	r1, {sl, ip, pc}
 454:	24381aff 	ldrtcs	r1, [r8], #-2815	; 0xfffff501
 458:	01946991 			; <UNDEFINED> instruction: 0x01946991
 45c:	221aff08 	andscs	pc, sl, #8, 30
 460:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 464:	00000000 	andeq	r0, r0, r0
 468:	00003c00 	andeq	r3, r0, r0, lsl #24
 46c:	00004800 	andeq	r4, r0, r0, lsl #16
 470:	50000100 	andpl	r0, r0, r0, lsl #2
 474:	00000054 	andeq	r0, r0, r4, asr r0
 478:	00000058 	andeq	r0, r0, r8, asr r0
 47c:	84500001 	ldrbhi	r0, [r0], #-1
 480:	90000000 	andls	r0, r0, r0
 484:	01000000 	mrseq	r0, (UNDEF: 0)
 488:	00005000 	andeq	r5, r0, r0
 48c:	00000000 	andeq	r0, r0, r0
 490:	00d80000 	sbcseq	r0, r8, r0
 494:	00e40000 	rsceq	r0, r4, r0
 498:	00010000 	andeq	r0, r1, r0
 49c:	0000fc50 	andeq	pc, r0, r0, asr ip	; <UNPREDICTABLE>
 4a0:	00010800 	andeq	r0, r1, r0, lsl #16
 4a4:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 4b0:	00000110 	andeq	r0, r0, r0, lsl r1
 4b4:	00000124 	andeq	r0, r0, r4, lsr #2
 4b8:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 4bc:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 4c0:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 4c4:	08019469 	stmdaeq	r1, {r0, r3, r5, r6, sl, ip, pc}
 4c8:	9f221aff 	svcls	0x00221aff
 4cc:	00000124 	andeq	r0, r0, r4, lsr #2
 4d0:	00000128 	andeq	r0, r0, r8, lsr #2
 4d4:	68910012 	ldmvs	r1, {r1, r4}
 4d8:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 4dc:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 4e0:	08019469 	stmdaeq	r1, {r0, r3, r5, r6, sl, ip, pc}
 4e4:	9f221aff 	svcls	0x00221aff
	...
 4f0:	00000168 	andeq	r0, r0, r8, ror #2
 4f4:	00000183 	andeq	r0, r0, r3, lsl #3
 4f8:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 4fc:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 500:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 504:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 508:	9f221aff 	svcls	0x00221aff
 50c:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
 510:	000001cb 	andeq	r0, r0, fp, asr #3
 514:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 518:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 51c:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 520:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 524:	9f221aff 	svcls	0x00221aff
 528:	000001f4 	strdeq	r0, [r0], -r4
 52c:	0000020f 	andeq	r0, r0, pc, lsl #4
 530:	007d0012 	rsbseq	r0, sp, r2, lsl r0
 534:	ff080194 			; <UNDEFINED> instruction: 0xff080194
 538:	9124381a 			; <UNDEFINED> instruction: 0x9124381a
 53c:	08019461 	stmdaeq	r1, {r0, r5, r6, sl, ip, pc}
 540:	9f221aff 	svcls	0x00221aff
	...
 54c:	00000154 	andeq	r0, r0, r4, asr r1
 550:	00000160 	andeq	r0, r0, r0, ror #2
 554:	00500001 	subseq	r0, r0, r1
 558:	00000000 	andeq	r0, r0, r0
 55c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
 560:	54000002 	strpl	r0, [r0], #-2
 564:	01000002 	tsteq	r0, r2
 568:	02545000 	subseq	r5, r4, #0
 56c:	02580000 	subseq	r0, r8, #0
 570:	00040000 	andeq	r0, r4, r0
 574:	9f5001f3 	svcls	0x005001f3
 578:	00000258 	andeq	r0, r0, r8, asr r2
 57c:	0000025c 	andeq	r0, r0, ip, asr r2
 580:	5c500001 	mrrcpl	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
 584:	60000002 	andvs	r0, r0, r2
 588:	04000002 	streq	r0, [r0], #-2
 58c:	5001f300 	andpl	pc, r1, r0, lsl #6
 590:	0002609f 	muleq	r2, pc, r0	; <UNPREDICTABLE>
 594:	00026400 	andeq	r6, r2, r0, lsl #8
 598:	50000100 	andpl	r0, r0, r0, lsl #2
 59c:	00000264 	andeq	r0, r0, r4, ror #4
 5a0:	00000268 	andeq	r0, r0, r8, ror #4
 5a4:	01f30004 	mvnseq	r0, r4
 5a8:	02689f50 	rsbeq	r9, r8, #80, 30	; 0x140
 5ac:	026c0000 	rsbeq	r0, ip, #0
 5b0:	00010000 	andeq	r0, r1, r0
 5b4:	00026c50 	andeq	r6, r2, r0, asr ip
 5b8:	00028400 	andeq	r8, r2, r0, lsl #8
 5bc:	f3000400 	vshl.u8	d0, d0, d0
 5c0:	849f5001 	ldrhi	r5, [pc], #1	; 5c8 <__start-0x7a38>
 5c4:	88000002 	stmdahi	r0, {r1}
 5c8:	01000002 	tsteq	r0, r2
 5cc:	02885000 	addeq	r5, r8, #0
 5d0:	028c0000 	addeq	r0, ip, #0
 5d4:	00040000 	andeq	r0, r4, r0
 5d8:	9f5001f3 	svcls	0x005001f3
	...
 5e4:	00000234 	andeq	r0, r0, r4, lsr r2
 5e8:	00000258 	andeq	r0, r0, r8, asr r2
 5ec:	830a0004 	movwhi	r0, #40964	; 0xa004
 5f0:	02589f40 	subseq	r9, r8, #64, 30	; 0x100
 5f4:	02600000 	rsbeq	r0, r0, #0
 5f8:	00040000 	andeq	r0, r4, r0
 5fc:	9f60830a 	svcls	0x0060830a
 600:	00000260 	andeq	r0, r0, r0, ror #4
 604:	00000268 	andeq	r0, r0, r8, ror #4
 608:	830a0004 	movwhi	r0, #40964	; 0xa004
 60c:	02689f70 	rsbeq	r9, r8, #112, 30	; 0x1c0
 610:	026c0000 	rsbeq	r0, ip, #0
 614:	00040000 	andeq	r0, r4, r0
 618:	9f40830a 	svcls	0x0040830a
 61c:	0000026c 	andeq	r0, r0, ip, ror #4
 620:	0000026f 	andeq	r0, r0, pc, ror #4
 624:	84500001 	ldrbhi	r0, [r0], #-1
 628:	8c000002 	stchi	0, cr0, [r0], {2}
 62c:	04000002 	streq	r0, [r0], #-2
 630:	40830a00 	addmi	r0, r3, r0, lsl #20
 634:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 638:	00000000 	andeq	r0, r0, r0
 63c:	00029c00 	andeq	r9, r2, r0, lsl #24
 640:	0002a700 	andeq	sl, r2, r0, lsl #14
 644:	51000100 	mrspl	r0, (UNDEF: 16)
	...
 650:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 654:	000002cc 	andeq	r0, r0, ip, asr #5
 658:	ff0c0006 			; <UNDEFINED> instruction: 0xff0c0006
 65c:	9f7fffff 	svcls	0x007fffff
 660:	000002cc 	andeq	r0, r0, ip, asr #5
 664:	000002e8 	andeq	r0, r0, r8, ror #5
 668:	e8570001 	ldmda	r7, {r0}^
 66c:	ec000002 	stc	0, cr0, [r0], {2}
 670:	01000002 	tsteq	r0, r2
 674:	02ec5000 	rsceq	r5, ip, #0
 678:	02f80000 	rscseq	r0, r8, #0
 67c:	00010000 	andeq	r0, r1, r0
 680:	0002f854 	andeq	pc, r2, r4, asr r8	; <UNPREDICTABLE>
 684:	00034400 	andeq	r4, r3, r0, lsl #8
 688:	57000100 	strpl	r0, [r0, -r0, lsl #2]
	...
 694:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 698:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
 69c:	c1110005 	tstgt	r1, r5
 6a0:	cc9f42fb 	lfmgt	f4, 4, [pc], {251}	; 0xfb
 6a4:	00000002 	andeq	r0, r0, r2
 6a8:	01000003 	tsteq	r0, r3
 6ac:	03005600 	movweq	r5, #1536	; 0x600
 6b0:	03100000 	tsteq	r0, #0
 6b4:	00010000 	andeq	r0, r1, r0
 6b8:	00031054 	andeq	r1, r3, r4, asr r0
 6bc:	00034400 	andeq	r4, r3, r0, lsl #8
 6c0:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
 6cc:	000002e0 	andeq	r0, r0, r0, ror #5
 6d0:	000002ec 	andeq	r0, r0, ip, ror #5
 6d4:	ec500001 	mrrc	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
 6d8:	1c000002 	stcne	0, cr0, [r0], {2}
 6dc:	01000003 	tsteq	r0, r3
 6e0:	00005400 	andeq	r5, r0, r0, lsl #8
 6e4:	00000000 	andeq	r0, r0, r0
 6e8:	02cc0000 	sbceq	r0, ip, #0
 6ec:	02d40000 	sbcseq	r0, r4, #0
 6f0:	00020000 	andeq	r0, r2, r0
 6f4:	02d49f30 	sbcseq	r9, r4, #48, 30	; 0xc0
 6f8:	03100000 	tsteq	r0, #0
 6fc:	00070000 	andeq	r0, r7, r0
 700:	7503e80a 	strvc	lr, [r3, #-2058]	; 0xfffff7f6
 704:	109f1c00 	addsne	r1, pc, r0, lsl #24
 708:	14000003 	strne	r0, [r0], #-3
 70c:	07000003 	streq	r0, [r0, -r3]
 710:	03e90a00 	mvneq	r0, #0, 20
 714:	9f1c0075 	svcls	0x001c0075
 718:	00000314 	andeq	r0, r0, r4, lsl r3
 71c:	00000344 	andeq	r0, r0, r4, asr #6
 720:	e80a0007 	stmda	sl, {r0, r1, r2}
 724:	1c007503 	cfstr32ne	mvfx7, [r0], {3}
 728:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 734:	00000400 	andeq	r0, r0, r0, lsl #8
 738:	50000100 	andpl	r0, r0, r0, lsl #2
 73c:	00000004 	andeq	r0, r0, r4
 740:	00000008 	andeq	r0, r0, r8
 744:	01f30004 	mvnseq	r0, r4
 748:	00009f50 	andeq	r9, r0, r0, asr pc
 74c:	00000000 	andeq	r0, r0, r0
 750:	00100000 	andseq	r0, r0, r0
 754:	001c0000 	andseq	r0, ip, r0
 758:	00010000 	andeq	r0, r1, r0
 75c:	00001c51 	andeq	r1, r0, r1, asr ip
 760:	00002800 	andeq	r2, r0, r0, lsl #16
 764:	f3000400 	vshl.u8	d0, d0, d0
 768:	009f5101 	addseq	r5, pc, r1, lsl #2
 76c:	00000000 	andeq	r0, r0, r0
 770:	10000000 	andne	r0, r0, r0
 774:	20000000 	andcs	r0, r0, r0
 778:	01000000 	mrseq	r0, (UNDEF: 0)
 77c:	00205200 	eoreq	r5, r0, r0, lsl #4
 780:	00280000 	eoreq	r0, r8, r0
 784:	00040000 	andeq	r0, r4, r0
 788:	9f5201f3 	svcls	0x005201f3
	...
 794:	00000028 	andeq	r0, r0, r8, lsr #32
 798:	0000002c 	andeq	r0, r0, ip, lsr #32
 79c:	2c500001 	mrrccs	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
 7a0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 7a4:	04000000 	streq	r0, [r0], #-0
 7a8:	5001f300 	andpl	pc, r1, r0, lsl #6
 7ac:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 7b0:	00000000 	andeq	r0, r0, r0
 7b4:	00002800 	andeq	r2, r0, r0, lsl #16
 7b8:	00003000 	andeq	r3, r0, r0
 7bc:	51000100 	mrspl	r0, (UNDEF: 16)
 7c0:	00000030 	andeq	r0, r0, r0, lsr r0
 7c4:	00000038 	andeq	r0, r0, r8, lsr r0
 7c8:	01f30004 	mvnseq	r0, r4
 7cc:	00009f51 	andeq	r9, r0, r1, asr pc
	...
 7d8:	001b0000 	andseq	r0, fp, r0
 7dc:	00060000 	andeq	r0, r6, r0
 7e0:	51049350 	tstpl	r4, r0, asr r3
 7e4:	001b0493 	mulseq	fp, r3, r4
 7e8:	00440000 	subeq	r0, r4, r0
 7ec:	00060000 	andeq	r0, r6, r0
 7f0:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
 7f4:	00009f25 	andeq	r9, r0, r5, lsr #30
	...
 800:	001b0000 	andseq	r0, fp, r0
 804:	00060000 	andeq	r0, r6, r0
 808:	53049352 	movwpl	r9, #17234	; 0x4352
 80c:	001b0493 	mulseq	fp, r3, r4
 810:	00440000 	subeq	r0, r4, r0
 814:	00060000 	andeq	r0, r6, r0
 818:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
 81c:	00009f25 	andeq	r9, r0, r5, lsr #30
 820:	00000000 	andeq	r0, r0, r0
 824:	00440000 	subeq	r0, r4, r0
 828:	005f0000 	subseq	r0, pc, r0
 82c:	00060000 	andeq	r0, r6, r0
 830:	51049350 	tstpl	r4, r0, asr r3
 834:	005f0493 			; <UNDEFINED> instruction: 0x005f0493
 838:	00840000 	addeq	r0, r4, r0
 83c:	00060000 	andeq	r0, r6, r0
 840:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
 844:	00009f25 	andeq	r9, r0, r5, lsr #30
 848:	00000000 	andeq	r0, r0, r0
 84c:	00440000 	subeq	r0, r4, r0
 850:	005f0000 	subseq	r0, pc, r0
 854:	00060000 	andeq	r0, r6, r0
 858:	53049352 	movwpl	r9, #17234	; 0x4352
 85c:	005f0493 			; <UNDEFINED> instruction: 0x005f0493
 860:	00840000 	addeq	r0, r4, r0
 864:	00060000 	andeq	r0, r6, r0
 868:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
 86c:	00009f25 	andeq	r9, r0, r5, lsr #30
	...
 878:	00440000 	subeq	r0, r4, r0
 87c:	00060000 	andeq	r0, r6, r0
 880:	51049350 	tstpl	r4, r0, asr r3
 884:	00440493 	umaaleq	r0, r4, r3, r4
 888:	01580000 	cmpeq	r8, r0
 88c:	00060000 	andeq	r0, r6, r0
 890:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
 894:	01589f25 	cmpeq	r8, r5, lsr #30
 898:	01780000 	cmneq	r8, r0
 89c:	00060000 	andeq	r0, r6, r0
 8a0:	51049350 	tstpl	r4, r0, asr r3
 8a4:	00000493 	muleq	r0, r3, r4
	...
 8b0:	00340000 	eorseq	r0, r4, r0
 8b4:	00060000 	andeq	r0, r6, r0
 8b8:	53049352 	movwpl	r9, #17234	; 0x4352
 8bc:	00340493 	mlaseq	r4, r3, r4, r0
 8c0:	01580000 	cmpeq	r8, r0
 8c4:	00060000 	andeq	r0, r6, r0
 8c8:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
 8cc:	01589f25 	cmpeq	r8, r5, lsr #30
 8d0:	01780000 	cmneq	r8, r0
 8d4:	00060000 	andeq	r0, r6, r0
 8d8:	53049352 	movwpl	r9, #17234	; 0x4352
 8dc:	00000493 	muleq	r0, r3, r4
	...
 8e8:	00180000 	andseq	r0, r8, r0
 8ec:	00020000 	andeq	r0, r2, r0
 8f0:	00189f30 	andseq	r9, r8, r0, lsr pc
 8f4:	01540000 	cmpeq	r4, r0
 8f8:	00010000 	andeq	r0, r1, r0
 8fc:	0001585a 	andeq	r5, r1, sl, asr r8
 900:	00016800 	andeq	r6, r1, r0, lsl #16
 904:	5a000100 	bpl	d0c <__start-0x72f4>
 908:	00000168 	andeq	r0, r0, r8, ror #2
 90c:	00000178 	andeq	r0, r0, r8, ror r1
 910:	ff090003 			; <UNDEFINED> instruction: 0xff090003
 914:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 918:	00000000 	andeq	r0, r0, r0
 91c:	00012c00 	andeq	r2, r1, r0, lsl #24
 920:	00013800 	andeq	r3, r1, r0, lsl #16
 924:	52000600 	andpl	r0, r0, #0, 12
 928:	93530493 	cmpls	r3, #-1828716544	; 0x93000000
 92c:	00013804 	andeq	r3, r1, r4, lsl #16
 930:	00014400 	andeq	r4, r1, r0, lsl #8
 934:	f5000d00 			; <UNDEFINED> instruction: 0xf5000d00
 938:	f51f2500 			; <UNDEFINED> instruction: 0xf51f2500
 93c:	f5272502 			; <UNDEFINED> instruction: 0xf5272502
 940:	9f222500 	svcls	0x00222500
	...
 94c:	00000028 	andeq	r0, r0, r8, lsr #32
 950:	00000158 	andeq	r0, r0, r8, asr r1
 954:	9f300002 	svcls	0x00300002
	...
 960:	00000028 	andeq	r0, r0, r8, lsr #32
 964:	00000090 	muleq	r0, r0, r0
 968:	93580006 	cmpls	r8, #6
 96c:	04935904 	ldreq	r5, [r3], #2308	; 0x904
	...
 978:	00000028 	andeq	r0, r0, r8, lsr #32
 97c:	00000094 	muleq	r0, r4, r0
 980:	93540006 	cmpls	r4, #6
 984:	04935504 	ldreq	r5, [r3], #1284	; 0x504
	...
 990:	00000028 	andeq	r0, r0, r8, lsr #32
 994:	000000a4 	andeq	r0, r0, r4, lsr #1
 998:	089e000a 	ldmeq	lr, {r1, r3}
	...
 9a4:	000000a4 	andeq	r0, r0, r4, lsr #1
 9a8:	00000100 	andeq	r0, r0, r0, lsl #2
 9ac:	93520006 	cmpls	r2, #6
 9b0:	04935304 	ldreq	r5, [r3], #772	; 0x304
	...
 9bc:	00000028 	andeq	r0, r0, r8, lsr #32
 9c0:	00000094 	muleq	r0, r4, r0
 9c4:	93540006 	cmpls	r4, #6
 9c8:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 9cc:	000000a0 	andeq	r0, r0, r0, lsr #1
 9d0:	000000bc 	strheq	r0, [r0], -ip
 9d4:	93540006 	cmpls	r4, #6
 9d8:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 9dc:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 9e0:	000000e8 	andeq	r0, r0, r8, ror #1
 9e4:	93540006 	cmpls	r4, #6
 9e8:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 9ec:	000000ec 	andeq	r0, r0, ip, ror #1
 9f0:	0000010c 	andeq	r0, r0, ip, lsl #2
 9f4:	93540006 	cmpls	r4, #6
 9f8:	04935504 	ldreq	r5, [r3], #1284	; 0x504
	...
 a04:	00000028 	andeq	r0, r0, r8, lsr #32
 a08:	00000078 	andeq	r0, r0, r8, ror r0
 a0c:	93580006 	cmpls	r8, #6
 a10:	04935904 	ldreq	r5, [r3], #2308	; 0x904
 a14:	00000078 	andeq	r0, r0, r8, ror r0
 a18:	0000011c 	andeq	r0, r0, ip, lsl r1
 a1c:	93560006 	cmpls	r6, #6
 a20:	04935704 	ldreq	r5, [r3], #1796	; 0x704
	...
 a2c:	00000050 	andeq	r0, r0, r0, asr r0
 a30:	00000054 	andeq	r0, r0, r4, asr r0
 a34:	54500001 	ldrbpl	r0, [r0], #-1
 a38:	2c000000 	stccs	0, cr0, [r0], {-0}
 a3c:	01000001 	tsteq	r0, r1
 a40:	00005b00 	andeq	r5, r0, r0, lsl #22
 a44:	00000000 	andeq	r0, r0, r0
 a48:	00580000 	subseq	r0, r8, r0
 a4c:	005c0000 	subseq	r0, ip, r0
 a50:	00010000 	andeq	r0, r1, r0
 a54:	00000050 	andeq	r0, r0, r0, asr r0
 a58:	00000000 	andeq	r0, r0, r0
 a5c:	0000b400 	andeq	fp, r0, r0, lsl #8
 a60:	0000d000 	andeq	sp, r0, r0
 a64:	50000100 	andpl	r0, r0, r0, lsl #2
 a68:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 a6c:	000000d4 	ldrdeq	r0, [r0], -r4
 a70:	7f700003 	svcvc	0x00700003
 a74:	0000d49f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
 a78:	0000ec00 	andeq	lr, r0, r0, lsl #24
 a7c:	50000100 	andpl	r0, r0, r0, lsl #2
 a80:	000000ec 	andeq	r0, r0, ip, ror #1
 a84:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 a88:	7f700003 	svcvc	0x00700003
 a8c:	0000f09f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 a90:	0000fc00 	andeq	pc, r0, r0, lsl #24
 a94:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 aa0:	0000005c 	andeq	r0, r0, ip, asr r0
 aa4:	000000b8 	strheq	r0, [r0], -r8
 aa8:	b8500001 	ldmdalt	r0, {r0}^
 aac:	2c000000 	stccs	0, cr0, [r0], {-0}
 ab0:	01000001 	tsteq	r0, r1
 ab4:	00005100 	andeq	r5, r0, r0, lsl #2
	...
 ac0:	00200000 	eoreq	r0, r0, r0
 ac4:	00060000 	andeq	r0, r6, r0
 ac8:	51049350 	tstpl	r4, r0, asr r3
 acc:	00200493 	mlaeq	r0, r3, r4, r0
 ad0:	01200000 			; <UNDEFINED> instruction: 0x01200000
 ad4:	00060000 	andeq	r0, r6, r0
 ad8:	00f503f3 	ldrshteq	r0, [r5], #51	; 0x33
 adc:	00009f25 	andeq	r9, r0, r5, lsr #30
	...
 ae8:	00330000 	eorseq	r0, r3, r0
 aec:	00060000 	andeq	r0, r6, r0
 af0:	53049352 	movwpl	r9, #17234	; 0x4352
 af4:	00330493 	mlaseq	r3, r3, r4, r0
 af8:	01200000 			; <UNDEFINED> instruction: 0x01200000
 afc:	00060000 	andeq	r0, r6, r0
 b00:	02f503f3 	rscseq	r0, r5, #-872415229	; 0xcc000003
 b04:	00009f25 	andeq	r9, r0, r5, lsr #30
 b08:	00000000 	andeq	r0, r0, r0
 b0c:	001c0000 	andseq	r0, ip, r0
 b10:	007c0000 	rsbseq	r0, ip, r0
 b14:	00060000 	andeq	r0, r6, r0
 b18:	59049358 	stmdbpl	r4, {r3, r4, r6, r8, r9, ip, pc}
 b1c:	00000493 	muleq	r0, r3, r4
 b20:	00000000 	andeq	r0, r0, r0
 b24:	00140000 	andseq	r0, r4, r0
 b28:	00800000 	addeq	r0, r0, r0
 b2c:	00060000 	andeq	r0, r6, r0
 b30:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 b34:	00000493 	muleq	r0, r3, r4
 b38:	00000000 	andeq	r0, r0, r0
 b3c:	001c0000 	andseq	r0, ip, r0
 b40:	00900000 	addseq	r0, r0, r0
 b44:	000a0000 	andeq	r0, sl, r0
 b48:	0000089e 	muleq	r0, lr, r8
 b4c:	00000000 	andeq	r0, r0, r0
 b50:	00900000 	addseq	r0, r0, r0
 b54:	00e80000 	rsceq	r0, r8, r0
 b58:	00060000 	andeq	r0, r6, r0
 b5c:	51049350 	tstpl	r4, r0, asr r3
 b60:	00e80493 	smlaleq	r0, r8, r3, r4
 b64:	01180000 	tsteq	r8, r0
 b68:	00060000 	andeq	r0, r6, r0
 b6c:	59049358 	stmdbpl	r4, {r3, r4, r6, r8, r9, ip, pc}
 b70:	01180493 			; <UNDEFINED> instruction: 0x01180493
 b74:	01200000 			; <UNDEFINED> instruction: 0x01200000
 b78:	00060000 	andeq	r0, r6, r0
 b7c:	51049350 	tstpl	r4, r0, asr r3
 b80:	00000493 	muleq	r0, r3, r4
 b84:	00000000 	andeq	r0, r0, r0
 b88:	001c0000 	andseq	r0, ip, r0
 b8c:	00800000 	addeq	r0, r0, r0
 b90:	00060000 	andeq	r0, r6, r0
 b94:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 b98:	008c0493 	umulleq	r0, ip, r3, r4
 b9c:	00a80000 	adceq	r0, r8, r0
 ba0:	00060000 	andeq	r0, r6, r0
 ba4:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 ba8:	00bc0493 	umlalseq	r0, ip, r3, r4
 bac:	00d40000 	sbcseq	r0, r4, r0
 bb0:	00060000 	andeq	r0, r6, r0
 bb4:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 bb8:	00d80493 	smullseq	r0, r8, r3, r4
 bbc:	00e80000 	rsceq	r0, r8, r0
 bc0:	00060000 	andeq	r0, r6, r0
 bc4:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 bc8:	00e80493 	smlaleq	r0, r8, r3, r4
 bcc:	01180000 	tsteq	r8, r0
 bd0:	000b0000 	andeq	r0, fp, r0
 bd4:	722504f5 	eorvc	r0, r5, #-184549376	; 0xf5000000
 bd8:	f72cf700 			; <UNDEFINED> instruction: 0xf72cf700
 bdc:	009f2525 	addseq	r2, pc, r5, lsr #10
 be0:	00000000 	andeq	r0, r0, r0
 be4:	1c000000 	stcne	0, cr0, [r0], {-0}
 be8:	64000000 	strvs	r0, [r0], #-0
 bec:	06000000 	streq	r0, [r0], -r0
 bf0:	04935800 	ldreq	r5, [r3], #2048	; 0x800
 bf4:	64049359 	strvs	r9, [r4], #-857	; 0xfffffca7
 bf8:	0c000000 	stceq	0, cr0, [r0], {-0}
 bfc:	06000001 	streq	r0, [r0], -r1
 c00:	04935600 	ldreq	r5, [r3], #1536	; 0x600
 c04:	00049357 	andeq	r9, r4, r7, asr r3
 c08:	00000000 	andeq	r0, r0, r0
 c0c:	3c000000 	stccc	0, cr0, [r0], {-0}
 c10:	40000000 	andmi	r0, r0, r0
 c14:	01000000 	mrseq	r0, (UNDEF: 0)
 c18:	00405000 	subeq	r5, r0, r0
 c1c:	01180000 	tsteq	r8, r0
 c20:	00010000 	andeq	r0, r1, r0
 c24:	0000005a 	andeq	r0, r0, sl, asr r0
 c28:	00000000 	andeq	r0, r0, r0
 c2c:	00004400 	andeq	r4, r0, r0, lsl #8
 c30:	00007000 	andeq	r7, r0, r0
 c34:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 c40:	000000a0 	andeq	r0, r0, r0, lsr #1
 c44:	000000bc 	strheq	r0, [r0], -ip
 c48:	bc530001 	mrrclt	0, 0, r0, r3, cr1
 c4c:	c0000000 	andgt	r0, r0, r0
 c50:	03000000 	movweq	r0, #0
 c54:	9f7f7300 	svcls	0x007f7300
 c58:	000000c0 	andeq	r0, r0, r0, asr #1
 c5c:	000000d8 	ldrdeq	r0, [r0], -r8
 c60:	d8530001 	ldmdale	r3, {r0}^
 c64:	dc000000 	stcle	0, cr0, [r0], {-0}
 c68:	03000000 	movweq	r0, #0
 c6c:	9f7f7300 	svcls	0x007f7300
 c70:	000000dc 	ldrdeq	r0, [r0], -ip
 c74:	000000ec 	andeq	r0, r0, ip, ror #1
 c78:	00530001 	subseq	r0, r3, r1
 c7c:	00000000 	andeq	r0, r0, r0
 c80:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
 c84:	a4000000 	strge	r0, [r0], #-0
 c88:	01000000 	mrseq	r0, (UNDEF: 0)
 c8c:	00a45300 	adceq	r5, r4, r0, lsl #6
 c90:	01180000 	tsteq	r8, r0
 c94:	00010000 	andeq	r0, r1, r0
 c98:	00000052 	andeq	r0, r0, r2, asr r0
 c9c:	00000000 	andeq	r0, r0, r0
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
