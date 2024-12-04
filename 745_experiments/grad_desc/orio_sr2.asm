
grad_desc/orio_sr2:     file format elf64-x86-64


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
    12e9:	e8 02 09 00 00       	call   1bf0 <Compare_gradient_descent>
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
    17fe:	48 83 ec 10          	sub    $0x10,%rsp
    1802:	48 8b 05 27 28 00 00 	mov    0x2827(%rip),%rax        # 4030 <in>
    1809:	48 8b 1d 18 28 00 00 	mov    0x2818(%rip),%rbx        # 4028 <out>
    1810:	48 8b 35 01 28 00 00 	mov    0x2801(%rip),%rsi        # 4018 <filter>
    1817:	48 89 44 24 98       	mov    %rax,-0x68(%rsp)
    181c:	48 05 a0 01 00 00    	add    $0x1a0,%rax
    1822:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    1827:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    182c:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    1831:	45 31 ff             	xor    %r15d,%r15d
    1834:	48 8b 58 08          	mov    0x8(%rax),%rbx
    1838:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    183d:	48 8b 18             	mov    (%rax),%rbx
    1840:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1845:	48 8b 58 10          	mov    0x10(%rax),%rbx
    1849:	48 8b 40 18          	mov    0x18(%rax),%rax
    184d:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    1852:	48 89 44 24 e0       	mov    %rax,-0x20(%rsp)
    1857:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
    185c:	48 8b 58 10          	mov    0x10(%rax),%rbx
    1860:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
    1865:	48 8b 58 18          	mov    0x18(%rax),%rbx
    1869:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
    186e:	48 8b 18             	mov    (%rax),%rbx
    1871:	48 8b 40 08          	mov    0x8(%rax),%rax
    1875:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
    187a:	48 89 04 24          	mov    %rax,(%rsp)
    187e:	48 8b 44 24 c8       	mov    -0x38(%rsp),%rax
    1883:	b9 08 00 00 00       	mov    $0x8,%ecx
    1888:	4e 8b 34 38          	mov    (%rax,%r15,1),%r14
    188c:	48 8b 44 24 d0       	mov    -0x30(%rsp),%rax
    1891:	4e 8b 2c 38          	mov    (%rax,%r15,1),%r13
    1895:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    189a:	4c 89 74 24 a0       	mov    %r14,-0x60(%rsp)
    189f:	4e 8b 24 38          	mov    (%rax,%r15,1),%r12
    18a3:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    18a8:	4c 89 6c 24 a8       	mov    %r13,-0x58(%rsp)
    18ad:	4a 8b 2c 38          	mov    (%rax,%r15,1),%rbp
    18b1:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    18b6:	4c 89 64 24 b0       	mov    %r12,-0x50(%rsp)
    18bb:	4e 8b 14 38          	mov    (%rax,%r15,1),%r10
    18bf:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    18c4:	48 89 6c 24 b8       	mov    %rbp,-0x48(%rsp)
    18c9:	4e 8b 0c 38          	mov    (%rax,%r15,1),%r9
    18cd:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    18d2:	4e 8b 04 38          	mov    (%rax,%r15,1),%r8
    18d6:	48 8b 04 24          	mov    (%rsp),%rax
    18da:	4a 8b 3c 38          	mov    (%rax,%r15,1),%rdi
    18de:	f3 41 0f 10 3c 24    	movss  (%r12),%xmm7
    18e4:	f3 45 0f 10 76 08    	movss  0x8(%r14),%xmm14
    18ea:	31 c0                	xor    %eax,%eax
    18ec:	48 8d 59 fc          	lea    -0x4(%rcx),%rbx
    18f0:	f3 45 0f 10 6d 04    	movss  0x4(%r13),%xmm13
    18f6:	f3 45 0f 10 64 24 08 	movss  0x8(%r12),%xmm12
    18fd:	4c 8d 59 f8          	lea    -0x8(%rcx),%r11
    1901:	f3 0f 11 7c 24 90    	movss  %xmm7,-0x70(%rsp)
    1907:	f3 41 0f 10 3e       	movss  (%r14),%xmm7
    190c:	f3 44 0f 10 5d 08    	movss  0x8(%rbp),%xmm11
    1912:	f3 45 0f 10 54 24 04 	movss  0x4(%r12),%xmm10
    1919:	f3 45 0f 10 4d 08    	movss  0x8(%r13),%xmm9
    191f:	f3 0f 11 7c 24 8c    	movss  %xmm7,-0x74(%rsp)
    1925:	f3 41 0f 10 7d 00    	movss  0x0(%r13),%xmm7
    192b:	f3 45 0f 10 46 04    	movss  0x4(%r14),%xmm8
    1931:	f3 0f 11 7c 24 88    	movss  %xmm7,-0x78(%rsp)
    1937:	f3 0f 10 7d 00       	movss  0x0(%rbp),%xmm7
    193c:	f3 0f 11 7c 24 94    	movss  %xmm7,-0x6c(%rsp)
    1942:	f3 0f 10 7d 04       	movss  0x4(%rbp),%xmm7
    1947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    194e:	00 00 
    1950:	48 8b 14 46          	mov    (%rsi,%rax,2),%rdx
    1954:	f3 41 0f 10 2c 00    	movss  (%r8,%rax,1),%xmm5
    195a:	f3 0f 10 24 07       	movss  (%rdi,%rax,1),%xmm4
    195f:	f3 41 0f 10 1c 02    	movss  (%r10,%rax,1),%xmm3
    1965:	f3 42 0f 10 0c 1a    	movss  (%rdx,%r11,1),%xmm1
    196b:	44 0f 28 fd          	movaps %xmm5,%xmm15
    196f:	f3 41 0f 10 14 01    	movss  (%r9,%rax,1),%xmm2
    1975:	48 83 c0 04          	add    $0x4,%rax
    1979:	f3 0f 10 04 1a       	movss  (%rdx,%rbx,1),%xmm0
    197e:	f3 0f 10 34 0a       	movss  (%rdx,%rcx,1),%xmm6
    1983:	f3 44 0f 59 f9       	mulss  %xmm1,%xmm15
    1988:	f3 44 0f 58 7c 24 88 	addss  -0x78(%rsp),%xmm15
    198f:	f3 44 0f 11 7c 24 88 	movss  %xmm15,-0x78(%rsp)
    1996:	44 0f 28 f9          	movaps %xmm1,%xmm15
    199a:	f3 44 0f 59 fc       	mulss  %xmm4,%xmm15
    199f:	f3 44 0f 58 7c 24 8c 	addss  -0x74(%rsp),%xmm15
    19a6:	f3 44 0f 11 7c 24 8c 	movss  %xmm15,-0x74(%rsp)
    19ad:	44 0f 28 fb          	movaps %xmm3,%xmm15
    19b1:	f3 44 0f 59 f9       	mulss  %xmm1,%xmm15
    19b6:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    19ba:	f3 44 0f 58 7c 24 90 	addss  -0x70(%rsp),%xmm15
    19c1:	f3 0f 58 4c 24 94    	addss  -0x6c(%rsp),%xmm1
    19c7:	f3 44 0f 11 7c 24 90 	movss  %xmm15,-0x70(%rsp)
    19ce:	f3 0f 11 4c 24 94    	movss  %xmm1,-0x6c(%rsp)
    19d4:	0f 28 cd             	movaps %xmm5,%xmm1
    19d7:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    19db:	f3 0f 59 ee          	mulss  %xmm6,%xmm5
    19df:	f3 44 0f 58 e9       	addss  %xmm1,%xmm13
    19e4:	0f 28 cc             	movaps %xmm4,%xmm1
    19e7:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    19eb:	f3 44 0f 58 cd       	addss  %xmm5,%xmm9
    19f0:	f3 0f 59 e6          	mulss  %xmm6,%xmm4
    19f4:	f3 44 0f 58 c1       	addss  %xmm1,%xmm8
    19f9:	0f 28 cb             	movaps %xmm3,%xmm1
    19fc:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    1a00:	f3 44 0f 58 f4       	addss  %xmm4,%xmm14
    1a05:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1a09:	f3 0f 59 de          	mulss  %xmm6,%xmm3
    1a0d:	f3 0f 59 d6          	mulss  %xmm6,%xmm2
    1a11:	f3 44 0f 58 d1       	addss  %xmm1,%xmm10
    1a16:	f3 0f 58 f8          	addss  %xmm0,%xmm7
    1a1a:	f3 44 0f 58 e3       	addss  %xmm3,%xmm12
    1a1f:	f3 44 0f 58 da       	addss  %xmm2,%xmm11
    1a24:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1a2a:	0f 85 20 ff ff ff    	jne    1950 <gradient_descent+0x160>
    1a30:	48 83 c1 0c          	add    $0xc,%rcx
    1a34:	49 83 c6 0c          	add    $0xc,%r14
    1a38:	49 83 c5 0c          	add    $0xc,%r13
    1a3c:	49 83 c4 0c          	add    $0xc,%r12
    1a40:	f3 0f 10 74 24 8c    	movss  -0x74(%rsp),%xmm6
    1a46:	f3 45 0f 11 76 fc    	movss  %xmm14,-0x4(%r14)
    1a4c:	48 83 c5 0c          	add    $0xc,%rbp
    1a50:	f3 45 0f 11 6d f8    	movss  %xmm13,-0x8(%r13)
    1a56:	f3 45 0f 11 7c 24 f4 	movss  %xmm15,-0xc(%r12)
    1a5d:	f3 41 0f 11 76 f4    	movss  %xmm6,-0xc(%r14)
    1a63:	f3 0f 10 74 24 88    	movss  -0x78(%rsp),%xmm6
    1a69:	f3 45 0f 11 64 24 fc 	movss  %xmm12,-0x4(%r12)
    1a70:	f3 44 0f 11 5d fc    	movss  %xmm11,-0x4(%rbp)
    1a76:	f3 45 0f 11 54 24 f8 	movss  %xmm10,-0x8(%r12)
    1a7d:	f3 41 0f 11 75 f4    	movss  %xmm6,-0xc(%r13)
    1a83:	f3 0f 10 74 24 94    	movss  -0x6c(%rsp),%xmm6
    1a89:	f3 45 0f 11 4d fc    	movss  %xmm9,-0x4(%r13)
    1a8f:	f3 0f 11 75 f4       	movss  %xmm6,-0xc(%rbp)
    1a94:	f3 45 0f 11 46 f8    	movss  %xmm8,-0x8(%r14)
    1a9a:	f3 0f 11 7d f8       	movss  %xmm7,-0x8(%rbp)
    1a9f:	48 81 f9 04 04 00 00 	cmp    $0x404,%rcx
    1aa6:	0f 85 32 fe ff ff    	jne    18de <gradient_descent+0xee>
    1aac:	48 8b 44 24 b8       	mov    -0x48(%rsp),%rax
    1ab1:	f3 0f 10 a0 fc 03 00 	movss  0x3fc(%rax),%xmm4
    1ab8:	00 
    1ab9:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
    1abe:	f3 0f 10 98 fc 03 00 	movss  0x3fc(%rax),%xmm3
    1ac5:	00 
    1ac6:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
    1acb:	f3 0f 10 90 fc 03 00 	movss  0x3fc(%rax),%xmm2
    1ad2:	00 
    1ad3:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
    1ad8:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    1adf:	00 
    1ae0:	31 c0                	xor    %eax,%eax
    1ae2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ae8:	48 8b 14 46          	mov    (%rsi,%rax,2),%rdx
    1aec:	f3 41 0f 10 2c 00    	movss  (%r8,%rax,1),%xmm5
    1af2:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    1af9:	00 
    1afa:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1afe:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1b02:	f3 0f 10 2c 07       	movss  (%rdi,%rax,1),%xmm5
    1b07:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b0b:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1b0f:	f3 41 0f 10 2c 02    	movss  (%r10,%rax,1),%xmm5
    1b15:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b19:	f3 41 0f 59 04 01    	mulss  (%r9,%rax,1),%xmm0
    1b1f:	48 83 c0 04          	add    $0x4,%rax
    1b23:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1b27:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1b2b:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1b31:	75 b5                	jne    1ae8 <gradient_descent+0x2f8>
    1b33:	48 8b 44 24 b8       	mov    -0x48(%rsp),%rax
    1b38:	49 83 c7 08          	add    $0x8,%r15
    1b3c:	f3 0f 11 a0 fc 03 00 	movss  %xmm4,0x3fc(%rax)
    1b43:	00 
    1b44:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
    1b49:	f3 0f 11 98 fc 03 00 	movss  %xmm3,0x3fc(%rax)
    1b50:	00 
    1b51:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
    1b56:	f3 0f 11 90 fc 03 00 	movss  %xmm2,0x3fc(%rax)
    1b5d:	00 
    1b5e:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
    1b63:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    1b6a:	00 
    1b6b:	49 81 ff a0 01 00 00 	cmp    $0x1a0,%r15
    1b72:	0f 85 06 fd ff ff    	jne    187e <gradient_descent+0x8e>
    1b78:	48 83 44 24 98 20    	addq   $0x20,-0x68(%rsp)
    1b7e:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    1b83:	48 83 44 24 c0 20    	addq   $0x20,-0x40(%rsp)
    1b89:	48 3b 44 24 08       	cmp    0x8(%rsp),%rax
    1b8e:	0f 85 98 fc ff ff    	jne    182c <gradient_descent+0x3c>
    1b94:	48 83 c4 10          	add    $0x10,%rsp
    1b98:	5b                   	pop    %rbx
    1b99:	5d                   	pop    %rbp
    1b9a:	41 5c                	pop    %r12
    1b9c:	41 5d                	pop    %r13
    1b9e:	41 5e                	pop    %r14
    1ba0:	41 5f                	pop    %r15
    1ba2:	c3                   	ret    
    1ba3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1baa:	00 00 00 00 
    1bae:	66 90                	xchg   %ax,%ax

0000000000001bb0 <equal>:
    1bb0:	f3 0f 1e fa          	endbr64 
    1bb4:	0f 28 d0             	movaps %xmm0,%xmm2
    1bb7:	f3 0f 10 1d 91 04 00 	movss  0x491(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    1bbe:	00 
    1bbf:	31 c0                	xor    %eax,%eax
    1bc1:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1bc5:	0f 54 c3             	andps  %xmm3,%xmm0
    1bc8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1bcc:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1bd0:	0f 54 d3             	andps  %xmm3,%xmm2
    1bd3:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1bd7:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1bdb:	f2 0f 10 05 7d 04 00 	movsd  0x47d(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1be2:	00 
    1be3:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1be7:	0f 96 c0             	setbe  %al
    1bea:	c3                   	ret    
    1beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001bf0 <Compare_gradient_descent>:
    1bf0:	f3 0f 1e fa          	endbr64 
    1bf4:	41 54                	push   %r12
    1bf6:	4c 8b 15 23 24 00 00 	mov    0x2423(%rip),%r10        # 4020 <test>
    1bfd:	45 31 c9             	xor    %r9d,%r9d
    1c00:	55                   	push   %rbp
    1c01:	48 8b 3d 10 24 00 00 	mov    0x2410(%rip),%rdi        # 4018 <filter>
    1c08:	53                   	push   %rbx
    1c09:	48 8b 1d 18 24 00 00 	mov    0x2418(%rip),%rbx        # 4028 <out>
    1c10:	4f 8b 24 0a          	mov    (%r10,%r9,1),%r12
    1c14:	4a 8b 2c 0b          	mov    (%rbx,%r9,1),%rbp
    1c18:	45 31 db             	xor    %r11d,%r11d
    1c1b:	4e 8b 44 1d 00       	mov    0x0(%rbp,%r11,1),%r8
    1c20:	4b 8b 34 1c          	mov    (%r12,%r11,1),%rsi
    1c24:	31 c9                	xor    %ecx,%ecx
    1c26:	f3 0f 10 0e          	movss  (%rsi),%xmm1
    1c2a:	31 c0                	xor    %eax,%eax
    1c2c:	0f 1f 40 00          	nopl   0x0(%rax)
    1c30:	48 8b 14 c7          	mov    (%rdi,%rax,8),%rdx
    1c34:	f3 0f 10 04 0a       	movss  (%rdx,%rcx,1),%xmm0
    1c39:	f3 41 0f 59 04 80    	mulss  (%r8,%rax,4),%xmm0
    1c3f:	48 83 c0 01          	add    $0x1,%rax
    1c43:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1c47:	f3 0f 11 0e          	movss  %xmm1,(%rsi)
    1c4b:	48 3d 80 00 00 00    	cmp    $0x80,%rax
    1c51:	75 dd                	jne    1c30 <Compare_gradient_descent+0x40>
    1c53:	48 83 c1 04          	add    $0x4,%rcx
    1c57:	48 83 c6 04          	add    $0x4,%rsi
    1c5b:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    1c62:	75 c2                	jne    1c26 <Compare_gradient_descent+0x36>
    1c64:	49 83 c3 08          	add    $0x8,%r11
    1c68:	49 81 fb a0 01 00 00 	cmp    $0x1a0,%r11
    1c6f:	75 aa                	jne    1c1b <Compare_gradient_descent+0x2b>
    1c71:	49 83 c1 08          	add    $0x8,%r9
    1c75:	49 81 f9 a0 01 00 00 	cmp    $0x1a0,%r9
    1c7c:	75 92                	jne    1c10 <Compare_gradient_descent+0x20>
    1c7e:	48 8b 35 ab 23 00 00 	mov    0x23ab(%rip),%rsi        # 4030 <in>
    1c85:	f2 0f 10 1d d3 03 00 	movsd  0x3d3(%rip),%xmm3        # 2060 <_IO_stdin_used+0x60>
    1c8c:	00 
    1c8d:	31 c0                	xor    %eax,%eax
    1c8f:	f3 0f 10 15 b9 03 00 	movss  0x3b9(%rip),%xmm2        # 2050 <_IO_stdin_used+0x50>
    1c96:	00 
    1c97:	4d 8b 04 02          	mov    (%r10,%rax,1),%r8
    1c9b:	48 8b 3c 06          	mov    (%rsi,%rax,1),%rdi
    1c9f:	31 d2                	xor    %edx,%edx
    1ca1:	4d 8b 1c 10          	mov    (%r8,%rdx,1),%r11
    1ca5:	4c 8b 0c 17          	mov    (%rdi,%rdx,1),%r9
    1ca9:	31 c9                	xor    %ecx,%ecx
    1cab:	f3 41 0f 10 0c 09    	movss  (%r9,%rcx,1),%xmm1
    1cb1:	0f 28 c1             	movaps %xmm1,%xmm0
    1cb4:	f3 41 0f 5c 04 0b    	subss  (%r11,%rcx,1),%xmm0
    1cba:	0f 54 ca             	andps  %xmm2,%xmm1
    1cbd:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1cc1:	0f 54 c2             	andps  %xmm2,%xmm0
    1cc4:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1cc8:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1ccc:	66 0f 2f d8          	comisd %xmm0,%xmm3
    1cd0:	76 2e                	jbe    1d00 <Compare_gradient_descent+0x110>
    1cd2:	48 83 c1 04          	add    $0x4,%rcx
    1cd6:	48 81 f9 00 02 00 00 	cmp    $0x200,%rcx
    1cdd:	75 cc                	jne    1cab <Compare_gradient_descent+0xbb>
    1cdf:	48 83 c2 08          	add    $0x8,%rdx
    1ce3:	48 81 fa a0 01 00 00 	cmp    $0x1a0,%rdx
    1cea:	75 b5                	jne    1ca1 <Compare_gradient_descent+0xb1>
    1cec:	48 83 c0 08          	add    $0x8,%rax
    1cf0:	48 3d a0 01 00 00    	cmp    $0x1a0,%rax
    1cf6:	75 9f                	jne    1c97 <Compare_gradient_descent+0xa7>
    1cf8:	31 c0                	xor    %eax,%eax
    1cfa:	eb 09                	jmp    1d05 <Compare_gradient_descent+0x115>
    1cfc:	0f 1f 40 00          	nopl   0x0(%rax)
    1d00:	b8 01 00 00 00       	mov    $0x1,%eax
    1d05:	5b                   	pop    %rbx
    1d06:	5d                   	pop    %rbp
    1d07:	41 5c                	pop    %r12
    1d09:	c3                   	ret    

Disassembly of section .fini:

0000000000001d0c <_fini>:
    1d0c:	f3 0f 1e fa          	endbr64 
    1d10:	48 83 ec 08          	sub    $0x8,%rsp
    1d14:	48 83 c4 08          	add    $0x8,%rsp
    1d18:	c3                   	ret    
