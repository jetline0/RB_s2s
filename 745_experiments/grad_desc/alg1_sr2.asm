
grad_desc/alg1_sr2:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 72 2f 00 00    	push   0x2f72(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 73 2f 00 00 	bnd jmp *0x2f73(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010a0 <free@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <free@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <puts@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <puts@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <clock_gettime@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <clock_gettime@GLIBC_2.17>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__printf_chk@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fc8 <__printf_chk@GLIBC_2.3.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <posix_memalign@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fd0 <posix_memalign@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001100 <main>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	53                   	push   %rbx
    1105:	31 db                	xor    %ebx,%ebx
    1107:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
    110e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1115:	00 00 
    1117:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    111e:	00 
    111f:	31 c0                	xor    %eax,%eax
    1121:	e8 5a 03 00 00       	call   1480 <gradient_descent_init>
    1126:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    112b:	89 da                	mov    %ebx,%edx
    112d:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1134:	54 43 
    1136:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    113d:	00 00 
    113f:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1146:	00 00 
    1148:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    114f:	00 00 
    1151:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1158:	00 00 
    115a:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1161:	00 00 
    1163:	48 c1 c7 03          	rol    $0x3,%rdi
    1167:	48 c1 c7 0d          	rol    $0xd,%rdi
    116b:	48 c1 c7 3d          	rol    $0x3d,%rdi
    116f:	48 c1 c7 33          	rol    $0x33,%rdi
    1173:	48 87 db             	xchg   %rbx,%rbx
    1176:	48 89 14 24          	mov    %rdx,(%rsp)
    117a:	89 da                	mov    %ebx,%edx
    117c:	48 8b 04 24          	mov    (%rsp),%rax
    1180:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1185:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    118c:	54 43 
    118e:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1195:	00 00 
    1197:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    119e:	00 00 00 00 00 
    11a3:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    11aa:	00 00 00 00 00 
    11af:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    11b6:	00 00 00 00 00 
    11bb:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    11c2:	00 00 00 00 00 
    11c7:	48 c1 c7 03          	rol    $0x3,%rdi
    11cb:	48 c1 c7 0d          	rol    $0xd,%rdi
    11cf:	48 c1 c7 3d          	rol    $0x3d,%rdi
    11d3:	48 c1 c7 33          	rol    $0x33,%rdi
    11d7:	48 87 db             	xchg   %rbx,%rbx
    11da:	bf 01 00 00 00       	mov    $0x1,%edi
    11df:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    11e4:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    11e9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    11ee:	e8 cd fe ff ff       	call   10c0 <clock_gettime@plt>
    11f3:	31 c0                	xor    %eax,%eax
    11f5:	e8 f6 05 00 00       	call   17f0 <gradient_descent>
    11fa:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    11ff:	bf 01 00 00 00       	mov    $0x1,%edi
    1204:	e8 b7 fe ff ff       	call   10c0 <clock_gettime@plt>
    1209:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1210:	00 
    1211:	89 da                	mov    %ebx,%edx
    1213:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    121a:	00 02 00 54 43 
    121f:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1226:	00 00 00 00 00 
    122b:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1232:	00 00 00 00 00 
    1237:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    123e:	00 00 00 00 00 
    1243:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    124a:	00 00 00 00 00 
    124f:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1256:	00 00 00 00 00 
    125b:	48 c1 c7 03          	rol    $0x3,%rdi
    125f:	48 c1 c7 0d          	rol    $0xd,%rdi
    1263:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1267:	48 c1 c7 33          	rol    $0x33,%rdi
    126b:	48 87 db             	xchg   %rbx,%rbx
    126e:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1273:	89 da                	mov    %ebx,%edx
    1275:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    127a:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1281:	00 
    1282:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1289:	00 05 00 54 43 
    128e:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1295:	00 00 00 00 00 
    129a:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    12a1:	00 00 00 00 00 
    12a6:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    12ad:	00 00 00 00 00 
    12b2:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    12b9:	00 00 00 00 00 
    12be:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    12c5:	00 00 00 00 00 
    12ca:	48 c1 c7 03          	rol    $0x3,%rdi
    12ce:	48 c1 c7 0d          	rol    $0xd,%rdi
    12d2:	48 c1 c7 3d          	rol    $0x3d,%rdi
    12d6:	48 c1 c7 33          	rol    $0x33,%rdi
    12da:	48 87 db             	xchg   %rbx,%rbx
    12dd:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    12e2:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    12e7:	31 c0                	xor    %eax,%eax
    12e9:	e8 d2 08 00 00       	call   1bc0 <Compare_gradient_descent>
    12ee:	66 85 c0             	test   %ax,%ax
    12f1:	75 7c                	jne    136f <main+0x26f>
    12f3:	48 8d 3d 0a 0d 00 00 	lea    0xd0a(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12fa:	e8 b1 fd ff ff       	call   10b0 <puts@plt>
    12ff:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1304:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1309:	48 8d 35 14 0d 00 00 	lea    0xd14(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    1310:	31 c0                	xor    %eax,%eax
    1312:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1319:	bf 01 00 00 00       	mov    $0x1,%edi
    131e:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1323:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1328:	e8 b3 fd ff ff       	call   10e0 <__printf_chk@plt>
    132d:	48 8b 3d fc 2c 00 00 	mov    0x2cfc(%rip),%rdi        # 4030 <in>
    1334:	e8 67 fd ff ff       	call   10a0 <free@plt>
    1339:	48 8b 3d e8 2c 00 00 	mov    0x2ce8(%rip),%rdi        # 4028 <out>
    1340:	e8 5b fd ff ff       	call   10a0 <free@plt>
    1345:	48 8b 3d cc 2c 00 00 	mov    0x2ccc(%rip),%rdi        # 4018 <filter>
    134c:	e8 4f fd ff ff       	call   10a0 <free@plt>
    1351:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1358:	00 
    1359:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1360:	00 00 
    1362:	75 19                	jne    137d <main+0x27d>
    1364:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
    136b:	31 c0                	xor    %eax,%eax
    136d:	5b                   	pop    %rbx
    136e:	c3                   	ret    
    136f:	48 8d 3d 9d 0c 00 00 	lea    0xc9d(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1376:	e8 35 fd ff ff       	call   10b0 <puts@plt>
    137b:	eb 82                	jmp    12ff <main+0x1ff>
    137d:	e8 4e fd ff ff       	call   10d0 <__stack_chk_fail@plt>
    1382:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1389:	00 00 00 
    138c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001390 <_start>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	31 ed                	xor    %ebp,%ebp
    1396:	49 89 d1             	mov    %rdx,%r9
    1399:	5e                   	pop    %rsi
    139a:	48 89 e2             	mov    %rsp,%rdx
    139d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13a1:	50                   	push   %rax
    13a2:	54                   	push   %rsp
    13a3:	45 31 c0             	xor    %r8d,%r8d
    13a6:	31 c9                	xor    %ecx,%ecx
    13a8:	48 8d 3d 51 fd ff ff 	lea    -0x2af(%rip),%rdi        # 1100 <main>
    13af:	ff 15 23 2c 00 00    	call   *0x2c23(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    13b5:	f4                   	hlt    
    13b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13bd:	00 00 00 

00000000000013c0 <deregister_tm_clones>:
    13c0:	48 8d 3d 49 2c 00 00 	lea    0x2c49(%rip),%rdi        # 4010 <__TMC_END__>
    13c7:	48 8d 05 42 2c 00 00 	lea    0x2c42(%rip),%rax        # 4010 <__TMC_END__>
    13ce:	48 39 f8             	cmp    %rdi,%rax
    13d1:	74 15                	je     13e8 <deregister_tm_clones+0x28>
    13d3:	48 8b 05 06 2c 00 00 	mov    0x2c06(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    13da:	48 85 c0             	test   %rax,%rax
    13dd:	74 09                	je     13e8 <deregister_tm_clones+0x28>
    13df:	ff e0                	jmp    *%rax
    13e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13e8:	c3                   	ret    
    13e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013f0 <register_tm_clones>:
    13f0:	48 8d 3d 19 2c 00 00 	lea    0x2c19(%rip),%rdi        # 4010 <__TMC_END__>
    13f7:	48 8d 35 12 2c 00 00 	lea    0x2c12(%rip),%rsi        # 4010 <__TMC_END__>
    13fe:	48 29 fe             	sub    %rdi,%rsi
    1401:	48 89 f0             	mov    %rsi,%rax
    1404:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1408:	48 c1 f8 03          	sar    $0x3,%rax
    140c:	48 01 c6             	add    %rax,%rsi
    140f:	48 d1 fe             	sar    %rsi
    1412:	74 14                	je     1428 <register_tm_clones+0x38>
    1414:	48 8b 05 d5 2b 00 00 	mov    0x2bd5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    141b:	48 85 c0             	test   %rax,%rax
    141e:	74 08                	je     1428 <register_tm_clones+0x38>
    1420:	ff e0                	jmp    *%rax
    1422:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1428:	c3                   	ret    
    1429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001430 <__do_global_dtors_aux>:
    1430:	f3 0f 1e fa          	endbr64 
    1434:	80 3d d5 2b 00 00 00 	cmpb   $0x0,0x2bd5(%rip)        # 4010 <__TMC_END__>
    143b:	75 2b                	jne    1468 <__do_global_dtors_aux+0x38>
    143d:	55                   	push   %rbp
    143e:	48 83 3d b2 2b 00 00 	cmpq   $0x0,0x2bb2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1445:	00 
    1446:	48 89 e5             	mov    %rsp,%rbp
    1449:	74 0c                	je     1457 <__do_global_dtors_aux+0x27>
    144b:	48 8b 3d b6 2b 00 00 	mov    0x2bb6(%rip),%rdi        # 4008 <__dso_handle>
    1452:	e8 39 fc ff ff       	call   1090 <__cxa_finalize@plt>
    1457:	e8 64 ff ff ff       	call   13c0 <deregister_tm_clones>
    145c:	c6 05 ad 2b 00 00 01 	movb   $0x1,0x2bad(%rip)        # 4010 <__TMC_END__>
    1463:	5d                   	pop    %rbp
    1464:	c3                   	ret    
    1465:	0f 1f 00             	nopl   (%rax)
    1468:	c3                   	ret    
    1469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001470 <frame_dummy>:
    1470:	f3 0f 1e fa          	endbr64 
    1474:	e9 77 ff ff ff       	jmp    13f0 <register_tm_clones>
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <gradient_descent_init>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	41 57                	push   %r15
    1486:	ba a0 01 00 00       	mov    $0x1a0,%edx
    148b:	be 40 00 00 00       	mov    $0x40,%esi
    1490:	41 56                	push   %r14
    1492:	41 55                	push   %r13
    1494:	41 54                	push   %r12
    1496:	41 bc cd cc cc cc    	mov    $0xcccccccd,%r12d
    149c:	55                   	push   %rbp
    149d:	53                   	push   %rbx
    149e:	31 db                	xor    %ebx,%ebx
    14a0:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
    14a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14ae:	00 00 
    14b0:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    14b7:	00 
    14b8:	31 c0                	xor    %eax,%eax
    14ba:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
    14bf:	4c 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%r15
    14c6:	00 
    14c7:	e8 24 fc ff ff       	call   10f0 <posix_memalign@plt>
    14cc:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    14d1:	ba a0 01 00 00       	mov    $0x1a0,%edx
    14d6:	be 40 00 00 00       	mov    $0x40,%esi
    14db:	85 c0                	test   %eax,%eax
    14dd:	48 89 d8             	mov    %rbx,%rax
    14e0:	48 0f 44 44 24 70    	cmove  0x70(%rsp),%rax
    14e6:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    14eb:	48 89 05 3e 2b 00 00 	mov    %rax,0x2b3e(%rip)        # 4030 <in>
    14f2:	e8 f9 fb ff ff       	call   10f0 <posix_memalign@plt>
    14f7:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
    14fc:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1501:	be 40 00 00 00       	mov    $0x40,%esi
    1506:	85 c0                	test   %eax,%eax
    1508:	48 89 d8             	mov    %rbx,%rax
    150b:	48 0f 44 44 24 68    	cmove  0x68(%rsp),%rax
    1511:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1516:	48 89 05 03 2b 00 00 	mov    %rax,0x2b03(%rip)        # 4020 <test>
    151d:	e8 ce fb ff ff       	call   10f0 <posix_memalign@plt>
    1522:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    1529:	00 00 
    152b:	85 c0                	test   %eax,%eax
    152d:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    1534:	00 
    1535:	48 0f 44 5c 24 60    	cmove  0x60(%rsp),%rbx
    153b:	31 ed                	xor    %ebp,%ebp
    153d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    1542:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    1549:	00 
    154a:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    154f:	48 8d 44 24 78       	lea    0x78(%rsp),%rax
    1554:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1559:	48 8d 84 24 98 00 00 	lea    0x98(%rsp),%rax
    1560:	00 
    1561:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    1566:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
    156d:	00 
    156e:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
    1573:	48 89 1d ae 2a 00 00 	mov    %rbx,0x2aae(%rip)        # 4028 <out>
    157a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    157f:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
    1584:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1589:	be 40 00 00 00       	mov    $0x40,%esi
    158e:	e8 5d fb ff ff       	call   10f0 <posix_memalign@plt>
    1593:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    1598:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
    159d:	ba a0 01 00 00       	mov    $0x1a0,%edx
    15a2:	85 c0                	test   %eax,%eax
    15a4:	48 89 e8             	mov    %rbp,%rax
    15a7:	be 40 00 00 00       	mov    $0x40,%esi
    15ac:	48 0f 44 84 24 88 00 	cmove  0x88(%rsp),%rax
    15b3:	00 00 
    15b5:	48 89 04 1f          	mov    %rax,(%rdi,%rbx,1)
    15b9:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    15be:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    15c3:	e8 28 fb ff ff       	call   10f0 <posix_memalign@plt>
    15c8:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    15cd:	ba a0 01 00 00       	mov    $0x1a0,%edx
    15d2:	be 40 00 00 00       	mov    $0x40,%esi
    15d7:	85 c0                	test   %eax,%eax
    15d9:	48 89 e8             	mov    %rbp,%rax
    15dc:	48 0f 44 84 24 80 00 	cmove  0x80(%rsp),%rax
    15e3:	00 00 
    15e5:	48 89 04 1f          	mov    %rax,(%rdi,%rbx,1)
    15e9:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
    15ee:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    15f3:	e8 f8 fa ff ff       	call   10f0 <posix_memalign@plt>
    15f8:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    15fd:	85 c0                	test   %eax,%eax
    15ff:	48 89 e8             	mov    %rbp,%rax
    1602:	48 0f 44 44 24 78    	cmove  0x78(%rsp),%rax
    1608:	48 89 04 24          	mov    %rax,(%rsp)
    160c:	48 89 04 1f          	mov    %rax,(%rdi,%rbx,1)
    1610:	31 db                	xor    %ebx,%ebx
    1612:	ba 00 04 00 00       	mov    $0x400,%edx
    1617:	be 40 00 00 00       	mov    $0x40,%esi
    161c:	4c 89 ff             	mov    %r15,%rdi
    161f:	49 89 ee             	mov    %rbp,%r14
    1622:	e8 c9 fa ff ff       	call   10f0 <posix_memalign@plt>
    1627:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    162c:	ba 00 04 00 00       	mov    $0x400,%edx
    1631:	49 89 ed             	mov    %rbp,%r13
    1634:	85 c0                	test   %eax,%eax
    1636:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    163b:	be 40 00 00 00       	mov    $0x40,%esi
    1640:	4c 0f 44 b4 24 a0 00 	cmove  0xa0(%rsp),%r14
    1647:	00 00 
    1649:	4c 89 34 18          	mov    %r14,(%rax,%rbx,1)
    164d:	e8 9e fa ff ff       	call   10f0 <posix_memalign@plt>
    1652:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    1657:	ba 00 02 00 00       	mov    $0x200,%edx
    165c:	be 40 00 00 00       	mov    $0x40,%esi
    1661:	85 c0                	test   %eax,%eax
    1663:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1668:	4c 0f 44 ac 24 98 00 	cmove  0x98(%rsp),%r13
    166f:	00 00 
    1671:	4c 89 2c 18          	mov    %r13,(%rax,%rbx,1)
    1675:	e8 76 fa ff ff       	call   10f0 <posix_memalign@plt>
    167a:	48 89 ee             	mov    %rbp,%rsi
    167d:	b9 80 00 00 00       	mov    $0x80,%ecx
    1682:	4c 89 f7             	mov    %r14,%rdi
    1685:	85 c0                	test   %eax,%eax
    1687:	48 8b 04 24          	mov    (%rsp),%rax
    168b:	f3 0f 10 0d ad 09 00 	movss  0x9ad(%rip),%xmm1        # 2040 <_IO_stdin_used+0x40>
    1692:	00 
    1693:	48 0f 44 b4 24 90 00 	cmove  0x90(%rsp),%rsi
    169a:	00 00 
    169c:	31 d2                	xor    %edx,%edx
    169e:	48 89 34 18          	mov    %rsi,(%rax,%rbx,1)
    16a2:	48 89 e8             	mov    %rbp,%rax
    16a5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    16a8:	b9 80 00 00 00       	mov    $0x80,%ecx
    16ad:	4c 89 ef             	mov    %r13,%rdi
    16b0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    16b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    16b8:	89 d0                	mov    %edx,%eax
    16ba:	66 0f ef c0          	pxor   %xmm0,%xmm0
    16be:	49 0f af c4          	imul   %r12,%rax
    16c2:	48 c1 e8 22          	shr    $0x22,%rax
    16c6:	8d 0c 80             	lea    (%rax,%rax,4),%ecx
    16c9:	89 d0                	mov    %edx,%eax
    16cb:	29 c8                	sub    %ecx,%eax
    16cd:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    16d1:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    16d5:	f3 0f 11 04 96       	movss  %xmm0,(%rsi,%rdx,4)
    16da:	48 83 c2 01          	add    $0x1,%rdx
    16de:	48 81 fa 80 00 00 00 	cmp    $0x80,%rdx
    16e5:	75 d1                	jne    16b8 <gradient_descent_init+0x238>
    16e7:	48 83 c3 08          	add    $0x8,%rbx
    16eb:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    16f2:	0f 85 1a ff ff ff    	jne    1612 <gradient_descent_init+0x192>
    16f8:	48 83 44 24 28 08    	addq   $0x8,0x28(%rsp)
    16fe:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1703:	48 3d a0 01 00 00    	cmp    $0x1a0,%rax
    1709:	0f 85 70 fe ff ff    	jne    157f <gradient_descent_init+0xff>
    170f:	48 8d bc 24 a8 00 00 	lea    0xa8(%rsp),%rdi
    1716:	00 
    1717:	ba 00 04 00 00       	mov    $0x400,%edx
    171c:	be 40 00 00 00       	mov    $0x40,%esi
    1721:	45 31 e4             	xor    %r12d,%r12d
    1724:	e8 c7 f9 ff ff       	call   10f0 <posix_memalign@plt>
    1729:	4c 8d ac 24 b0 00 00 	lea    0xb0(%rsp),%r13
    1730:	00 
    1731:	bd ab aa aa aa       	mov    $0xaaaaaaab,%ebp
    1736:	85 c0                	test   %eax,%eax
    1738:	4c 0f 44 a4 24 a8 00 	cmove  0xa8(%rsp),%r12
    173f:	00 00 
    1741:	4c 89 25 d0 28 00 00 	mov    %r12,0x28d0(%rip)        # 4018 <filter>
    1748:	49 8d 9c 24 00 04 00 	lea    0x400(%r12),%rbx
    174f:	00 
    1750:	ba 00 04 00 00       	mov    $0x400,%edx
    1755:	be 40 00 00 00       	mov    $0x40,%esi
    175a:	4c 89 ef             	mov    %r13,%rdi
    175d:	e8 8e f9 ff ff       	call   10f0 <posix_memalign@plt>
    1762:	31 f6                	xor    %esi,%esi
    1764:	f3 0f 10 0d d4 08 00 	movss  0x8d4(%rip),%xmm1        # 2040 <_IO_stdin_used+0x40>
    176b:	00 
    176c:	85 c0                	test   %eax,%eax
    176e:	48 0f 44 b4 24 b0 00 	cmove  0xb0(%rsp),%rsi
    1775:	00 00 
    1777:	31 d2                	xor    %edx,%edx
    1779:	49 89 34 24          	mov    %rsi,(%r12)
    177d:	0f 1f 00             	nopl   (%rax)
    1780:	89 d0                	mov    %edx,%eax
    1782:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1786:	48 0f af c5          	imul   %rbp,%rax
    178a:	48 c1 e8 21          	shr    $0x21,%rax
    178e:	8d 0c 40             	lea    (%rax,%rax,2),%ecx
    1791:	89 d0                	mov    %edx,%eax
    1793:	29 c8                	sub    %ecx,%eax
    1795:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1799:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    179d:	f3 0f 11 04 96       	movss  %xmm0,(%rsi,%rdx,4)
    17a2:	48 83 c2 01          	add    $0x1,%rdx
    17a6:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    17ad:	75 d1                	jne    1780 <gradient_descent_init+0x300>
    17af:	49 83 c4 08          	add    $0x8,%r12
    17b3:	49 39 dc             	cmp    %rbx,%r12
    17b6:	75 98                	jne    1750 <gradient_descent_init+0x2d0>
    17b8:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    17bf:	00 
    17c0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17c7:	00 00 
    17c9:	75 12                	jne    17dd <gradient_descent_init+0x35d>
    17cb:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
    17d2:	5b                   	pop    %rbx
    17d3:	5d                   	pop    %rbp
    17d4:	41 5c                	pop    %r12
    17d6:	41 5d                	pop    %r13
    17d8:	41 5e                	pop    %r14
    17da:	41 5f                	pop    %r15
    17dc:	c3                   	ret    
    17dd:	e8 ee f8 ff ff       	call   10d0 <__stack_chk_fail@plt>
    17e2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    17e9:	00 00 00 00 
    17ed:	0f 1f 00             	nopl   (%rax)

00000000000017f0 <gradient_descent>:
    17f0:	f3 0f 1e fa          	endbr64 
    17f4:	41 57                	push   %r15
    17f6:	41 56                	push   %r14
    17f8:	41 55                	push   %r13
    17fa:	41 54                	push   %r12
    17fc:	55                   	push   %rbp
    17fd:	53                   	push   %rbx
    17fe:	48 83 ec 08          	sub    $0x8,%rsp
    1802:	48 8b 05 27 28 00 00 	mov    0x2827(%rip),%rax        # 4030 <in>
    1809:	48 8b 1d 18 28 00 00 	mov    0x2818(%rip),%rbx        # 4028 <out>
    1810:	48 8b 35 01 28 00 00 	mov    0x2801(%rip),%rsi        # 4018 <filter>
    1817:	48 89 44 24 90       	mov    %rax,-0x70(%rsp)
    181c:	48 05 a0 01 00 00    	add    $0x1a0,%rax
    1822:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    1827:	48 89 04 24          	mov    %rax,(%rsp)
    182b:	48 8b 44 24 90       	mov    -0x70(%rsp),%rax
    1830:	45 31 ff             	xor    %r15d,%r15d
    1833:	48 8b 58 08          	mov    0x8(%rax),%rbx
    1837:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    183c:	48 8b 18             	mov    (%rax),%rbx
    183f:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    1844:	48 8b 58 10          	mov    0x10(%rax),%rbx
    1848:	48 8b 40 18          	mov    0x18(%rax),%rax
    184c:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1851:	48 89 44 24 d8       	mov    %rax,-0x28(%rsp)
    1856:	48 8b 44 24 b8       	mov    -0x48(%rsp),%rax
    185b:	48 8b 58 10          	mov    0x10(%rax),%rbx
    185f:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    1864:	48 8b 58 18          	mov    0x18(%rax),%rbx
    1868:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
    186d:	48 8b 18             	mov    (%rax),%rbx
    1870:	48 8b 40 08          	mov    0x8(%rax),%rax
    1874:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
    1879:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    187e:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
    1883:	b9 08 00 00 00       	mov    $0x8,%ecx
    1888:	4e 8b 34 38          	mov    (%rax,%r15,1),%r14
    188c:	48 8b 44 24 c8       	mov    -0x38(%rsp),%rax
    1891:	4e 8b 2c 38          	mov    (%rax,%r15,1),%r13
    1895:	48 8b 44 24 d0       	mov    -0x30(%rsp),%rax
    189a:	4c 89 74 24 98       	mov    %r14,-0x68(%rsp)
    189f:	4e 8b 24 38          	mov    (%rax,%r15,1),%r12
    18a3:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    18a8:	4c 89 6c 24 a0       	mov    %r13,-0x60(%rsp)
    18ad:	4a 8b 2c 38          	mov    (%rax,%r15,1),%rbp
    18b1:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    18b6:	4c 89 64 24 a8       	mov    %r12,-0x58(%rsp)
    18bb:	4e 8b 14 38          	mov    (%rax,%r15,1),%r10
    18bf:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    18c4:	48 89 6c 24 b0       	mov    %rbp,-0x50(%rsp)
    18c9:	4e 8b 0c 38          	mov    (%rax,%r15,1),%r9
    18cd:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    18d2:	4e 8b 04 38          	mov    (%rax,%r15,1),%r8
    18d6:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    18db:	4a 8b 3c 38          	mov    (%rax,%r15,1),%rdi
    18df:	f3 0f 10 4d 04       	movss  0x4(%rbp),%xmm1
    18e4:	f3 45 0f 10 1e       	movss  (%r14),%xmm11
    18e9:	48 8d 59 fc          	lea    -0x4(%rcx),%rbx
    18ed:	31 c0                	xor    %eax,%eax
    18ef:	f3 45 0f 10 76 08    	movss  0x8(%r14),%xmm14
    18f5:	f3 45 0f 10 6d 04    	movss  0x4(%r13),%xmm13
    18fb:	4c 8d 59 f8          	lea    -0x8(%rcx),%r11
    18ff:	f3 45 0f 10 24 24    	movss  (%r12),%xmm12
    1905:	f3 45 0f 10 54 24 08 	movss  0x8(%r12),%xmm10
    190c:	f3 0f 11 4c 24 8c    	movss  %xmm1,-0x74(%rsp)
    1912:	f3 44 0f 10 4d 08    	movss  0x8(%rbp),%xmm9
    1918:	f3 45 0f 10 44 24 04 	movss  0x4(%r12),%xmm8
    191f:	f3 41 0f 10 7d 08    	movss  0x8(%r13),%xmm7
    1925:	f3 41 0f 10 75 00    	movss  0x0(%r13),%xmm6
    192b:	f3 0f 10 6d 00       	movss  0x0(%rbp),%xmm5
    1930:	f3 41 0f 10 66 04    	movss  0x4(%r14),%xmm4
    1936:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    193d:	00 00 00 
    1940:	48 8b 14 46          	mov    (%rsi,%rax,2),%rdx
    1944:	f3 41 0f 10 1c 02    	movss  (%r10,%rax,1),%xmm3
    194a:	f3 42 0f 10 14 1a    	movss  (%rdx,%r11,1),%xmm2
    1950:	f3 0f 10 0c 1a       	movss  (%rdx,%rbx,1),%xmm1
    1955:	f3 0f 10 04 0a       	movss  (%rdx,%rcx,1),%xmm0
    195a:	44 0f 28 fa          	movaps %xmm2,%xmm15
    195e:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    1963:	f3 45 0f 58 e7       	addss  %xmm15,%xmm12
    1968:	44 0f 28 f9          	movaps %xmm1,%xmm15
    196c:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    1971:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    1975:	f3 45 0f 58 c7       	addss  %xmm15,%xmm8
    197a:	44 0f 28 fa          	movaps %xmm2,%xmm15
    197e:	f3 44 0f 58 d3       	addss  %xmm3,%xmm10
    1983:	f3 41 0f 10 1c 01    	movss  (%r9,%rax,1),%xmm3
    1989:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    198e:	f3 41 0f 58 ef       	addss  %xmm15,%xmm5
    1993:	44 0f 28 f9          	movaps %xmm1,%xmm15
    1997:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    199c:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    19a0:	f3 44 0f 58 7c 24 8c 	addss  -0x74(%rsp),%xmm15
    19a7:	f3 44 0f 11 7c 24 8c 	movss  %xmm15,-0x74(%rsp)
    19ae:	44 0f 28 fa          	movaps %xmm2,%xmm15
    19b2:	f3 44 0f 58 cb       	addss  %xmm3,%xmm9
    19b7:	f3 41 0f 10 1c 00    	movss  (%r8,%rax,1),%xmm3
    19bd:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    19c2:	f3 41 0f 58 f7       	addss  %xmm15,%xmm6
    19c7:	44 0f 28 f9          	movaps %xmm1,%xmm15
    19cb:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    19d0:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    19d4:	f3 45 0f 58 ef       	addss  %xmm15,%xmm13
    19d9:	f3 0f 58 fb          	addss  %xmm3,%xmm7
    19dd:	f3 0f 10 1c 07       	movss  (%rdi,%rax,1),%xmm3
    19e2:	48 83 c0 04          	add    $0x4,%rax
    19e6:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    19ea:	f3 0f 59 cb          	mulss  %xmm3,%xmm1
    19ee:	f3 0f 59 c3          	mulss  %xmm3,%xmm0
    19f2:	f3 44 0f 58 da       	addss  %xmm2,%xmm11
    19f7:	f3 0f 58 e1          	addss  %xmm1,%xmm4
    19fb:	f3 44 0f 58 f0       	addss  %xmm0,%xmm14
    1a00:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1a06:	0f 85 34 ff ff ff    	jne    1940 <gradient_descent+0x150>
    1a0c:	48 83 c1 0c          	add    $0xc,%rcx
    1a10:	49 83 c6 0c          	add    $0xc,%r14
    1a14:	49 83 c5 0c          	add    $0xc,%r13
    1a18:	49 83 c4 0c          	add    $0xc,%r12
    1a1c:	f3 45 0f 11 76 fc    	movss  %xmm14,-0x4(%r14)
    1a22:	48 83 c5 0c          	add    $0xc,%rbp
    1a26:	f3 45 0f 11 6d f8    	movss  %xmm13,-0x8(%r13)
    1a2c:	f3 45 0f 11 64 24 f4 	movss  %xmm12,-0xc(%r12)
    1a33:	f3 45 0f 11 5e f4    	movss  %xmm11,-0xc(%r14)
    1a39:	f3 45 0f 11 54 24 fc 	movss  %xmm10,-0x4(%r12)
    1a40:	f3 44 0f 11 4d fc    	movss  %xmm9,-0x4(%rbp)
    1a46:	f3 45 0f 11 44 24 f8 	movss  %xmm8,-0x8(%r12)
    1a4d:	f3 41 0f 11 75 f4    	movss  %xmm6,-0xc(%r13)
    1a53:	f3 0f 10 74 24 8c    	movss  -0x74(%rsp),%xmm6
    1a59:	f3 41 0f 11 7d fc    	movss  %xmm7,-0x4(%r13)
    1a5f:	f3 0f 11 6d f4       	movss  %xmm5,-0xc(%rbp)
    1a64:	f3 41 0f 11 66 f8    	movss  %xmm4,-0x8(%r14)
    1a6a:	f3 0f 11 75 f8       	movss  %xmm6,-0x8(%rbp)
    1a6f:	48 81 f9 04 04 00 00 	cmp    $0x404,%rcx
    1a76:	0f 85 63 fe ff ff    	jne    18df <gradient_descent+0xef>
    1a7c:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
    1a81:	f3 0f 10 a0 fc 03 00 	movss  0x3fc(%rax),%xmm4
    1a88:	00 
    1a89:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
    1a8e:	f3 0f 10 98 fc 03 00 	movss  0x3fc(%rax),%xmm3
    1a95:	00 
    1a96:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    1a9b:	f3 0f 10 90 fc 03 00 	movss  0x3fc(%rax),%xmm2
    1aa2:	00 
    1aa3:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
    1aa8:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    1aaf:	00 
    1ab0:	31 c0                	xor    %eax,%eax
    1ab2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ab8:	48 8b 14 46          	mov    (%rsi,%rax,2),%rdx
    1abc:	f3 41 0f 10 2c 02    	movss  (%r10,%rax,1),%xmm5
    1ac2:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    1ac9:	00 
    1aca:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1ace:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1ad2:	f3 41 0f 10 2c 01    	movss  (%r9,%rax,1),%xmm5
    1ad8:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1adc:	f3 0f 58 e5          	addss  %xmm5,%xmm4
    1ae0:	f3 41 0f 10 2c 00    	movss  (%r8,%rax,1),%xmm5
    1ae6:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1aea:	f3 0f 59 04 07       	mulss  (%rdi,%rax,1),%xmm0
    1aef:	48 83 c0 04          	add    $0x4,%rax
    1af3:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1af7:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    1afb:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1b01:	75 b5                	jne    1ab8 <gradient_descent+0x2c8>
    1b03:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
    1b08:	49 83 c7 08          	add    $0x8,%r15
    1b0c:	f3 0f 11 a0 fc 03 00 	movss  %xmm4,0x3fc(%rax)
    1b13:	00 
    1b14:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
    1b19:	f3 0f 11 98 fc 03 00 	movss  %xmm3,0x3fc(%rax)
    1b20:	00 
    1b21:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    1b26:	f3 0f 11 90 fc 03 00 	movss  %xmm2,0x3fc(%rax)
    1b2d:	00 
    1b2e:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
    1b33:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    1b3a:	00 
    1b3b:	49 81 ff a0 01 00 00 	cmp    $0x1a0,%r15
    1b42:	0f 85 36 fd ff ff    	jne    187e <gradient_descent+0x8e>
    1b48:	48 83 44 24 90 20    	addq   $0x20,-0x70(%rsp)
    1b4e:	48 8b 44 24 90       	mov    -0x70(%rsp),%rax
    1b53:	48 83 44 24 b8 20    	addq   $0x20,-0x48(%rsp)
    1b59:	48 3b 04 24          	cmp    (%rsp),%rax
    1b5d:	0f 85 c8 fc ff ff    	jne    182b <gradient_descent+0x3b>
    1b63:	48 83 c4 08          	add    $0x8,%rsp
    1b67:	5b                   	pop    %rbx
    1b68:	5d                   	pop    %rbp
    1b69:	41 5c                	pop    %r12
    1b6b:	41 5d                	pop    %r13
    1b6d:	41 5e                	pop    %r14
    1b6f:	41 5f                	pop    %r15
    1b71:	c3                   	ret    
    1b72:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1b79:	00 00 00 00 
    1b7d:	0f 1f 00             	nopl   (%rax)

0000000000001b80 <equal>:
    1b80:	f3 0f 1e fa          	endbr64 
    1b84:	0f 28 d0             	movaps %xmm0,%xmm2
    1b87:	f3 0f 10 1d c1 04 00 	movss  0x4c1(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    1b8e:	00 
    1b8f:	31 c0                	xor    %eax,%eax
    1b91:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1b95:	0f 54 c3             	andps  %xmm3,%xmm0
    1b98:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1b9c:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1ba0:	0f 54 d3             	andps  %xmm3,%xmm2
    1ba3:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1ba7:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1bab:	f2 0f 10 05 ad 04 00 	movsd  0x4ad(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1bb2:	00 
    1bb3:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1bb7:	0f 96 c0             	setbe  %al
    1bba:	c3                   	ret    
    1bbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001bc0 <Compare_gradient_descent>:
    1bc0:	f3 0f 1e fa          	endbr64 
    1bc4:	41 54                	push   %r12
    1bc6:	4c 8b 15 53 24 00 00 	mov    0x2453(%rip),%r10        # 4020 <test>
    1bcd:	45 31 c9             	xor    %r9d,%r9d
    1bd0:	55                   	push   %rbp
    1bd1:	48 8b 3d 40 24 00 00 	mov    0x2440(%rip),%rdi        # 4018 <filter>
    1bd8:	53                   	push   %rbx
    1bd9:	48 8b 1d 48 24 00 00 	mov    0x2448(%rip),%rbx        # 4028 <out>
    1be0:	4f 8b 24 0a          	mov    (%r10,%r9,1),%r12
    1be4:	4a 8b 2c 0b          	mov    (%rbx,%r9,1),%rbp
    1be8:	45 31 db             	xor    %r11d,%r11d
    1beb:	4e 8b 44 1d 00       	mov    0x0(%rbp,%r11,1),%r8
    1bf0:	4b 8b 34 1c          	mov    (%r12,%r11,1),%rsi
    1bf4:	31 c9                	xor    %ecx,%ecx
    1bf6:	f3 0f 10 0e          	movss  (%rsi),%xmm1
    1bfa:	31 c0                	xor    %eax,%eax
    1bfc:	0f 1f 40 00          	nopl   0x0(%rax)
    1c00:	48 8b 14 c7          	mov    (%rdi,%rax,8),%rdx
    1c04:	f3 0f 10 04 0a       	movss  (%rdx,%rcx,1),%xmm0
    1c09:	f3 41 0f 59 04 80    	mulss  (%r8,%rax,4),%xmm0
    1c0f:	48 83 c0 01          	add    $0x1,%rax
    1c13:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1c17:	f3 0f 11 0e          	movss  %xmm1,(%rsi)
    1c1b:	48 3d 80 00 00 00    	cmp    $0x80,%rax
    1c21:	75 dd                	jne    1c00 <Compare_gradient_descent+0x40>
    1c23:	48 83 c1 04          	add    $0x4,%rcx
    1c27:	48 83 c6 04          	add    $0x4,%rsi
    1c2b:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    1c32:	75 c2                	jne    1bf6 <Compare_gradient_descent+0x36>
    1c34:	49 83 c3 08          	add    $0x8,%r11
    1c38:	49 81 fb a0 01 00 00 	cmp    $0x1a0,%r11
    1c3f:	75 aa                	jne    1beb <Compare_gradient_descent+0x2b>
    1c41:	49 83 c1 08          	add    $0x8,%r9
    1c45:	49 81 f9 a0 01 00 00 	cmp    $0x1a0,%r9
    1c4c:	75 92                	jne    1be0 <Compare_gradient_descent+0x20>
    1c4e:	48 8b 35 db 23 00 00 	mov    0x23db(%rip),%rsi        # 4030 <in>
    1c55:	f2 0f 10 1d 03 04 00 	movsd  0x403(%rip),%xmm3        # 2060 <_IO_stdin_used+0x60>
    1c5c:	00 
    1c5d:	31 c0                	xor    %eax,%eax
    1c5f:	f3 0f 10 15 e9 03 00 	movss  0x3e9(%rip),%xmm2        # 2050 <_IO_stdin_used+0x50>
    1c66:	00 
    1c67:	4d 8b 04 02          	mov    (%r10,%rax,1),%r8
    1c6b:	48 8b 3c 06          	mov    (%rsi,%rax,1),%rdi
    1c6f:	31 d2                	xor    %edx,%edx
    1c71:	4d 8b 1c 10          	mov    (%r8,%rdx,1),%r11
    1c75:	4c 8b 0c 17          	mov    (%rdi,%rdx,1),%r9
    1c79:	31 c9                	xor    %ecx,%ecx
    1c7b:	f3 41 0f 10 0c 09    	movss  (%r9,%rcx,1),%xmm1
    1c81:	0f 28 c1             	movaps %xmm1,%xmm0
    1c84:	f3 41 0f 5c 04 0b    	subss  (%r11,%rcx,1),%xmm0
    1c8a:	0f 54 ca             	andps  %xmm2,%xmm1
    1c8d:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1c91:	0f 54 c2             	andps  %xmm2,%xmm0
    1c94:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1c98:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1c9c:	66 0f 2f d8          	comisd %xmm0,%xmm3
    1ca0:	76 2e                	jbe    1cd0 <Compare_gradient_descent+0x110>
    1ca2:	48 83 c1 04          	add    $0x4,%rcx
    1ca6:	48 81 f9 00 02 00 00 	cmp    $0x200,%rcx
    1cad:	75 cc                	jne    1c7b <Compare_gradient_descent+0xbb>
    1caf:	48 83 c2 08          	add    $0x8,%rdx
    1cb3:	48 81 fa a0 01 00 00 	cmp    $0x1a0,%rdx
    1cba:	75 b5                	jne    1c71 <Compare_gradient_descent+0xb1>
    1cbc:	48 83 c0 08          	add    $0x8,%rax
    1cc0:	48 3d a0 01 00 00    	cmp    $0x1a0,%rax
    1cc6:	75 9f                	jne    1c67 <Compare_gradient_descent+0xa7>
    1cc8:	31 c0                	xor    %eax,%eax
    1cca:	eb 09                	jmp    1cd5 <Compare_gradient_descent+0x115>
    1ccc:	0f 1f 40 00          	nopl   0x0(%rax)
    1cd0:	b8 01 00 00 00       	mov    $0x1,%eax
    1cd5:	5b                   	pop    %rbx
    1cd6:	5d                   	pop    %rbp
    1cd7:	41 5c                	pop    %r12
    1cd9:	c3                   	ret    

Disassembly of section .fini:

0000000000001cdc <_fini>:
    1cdc:	f3 0f 1e fa          	endbr64 
    1ce0:	48 83 ec 08          	sub    $0x8,%rsp
    1ce4:	48 83 c4 08          	add    $0x8,%rsp
    1ce8:	c3                   	ret    
