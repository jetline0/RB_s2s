
MMM/orio_sr2:     file format elf64-x86-64


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
    1020:	ff 35 6a 2f 00 00    	push   0x2f6a(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp *0x2f6b(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp *0x2f4d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010b0 <free@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fa0 <free@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <puts@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fa8 <puts@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <clock_gettime@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fb0 <clock_gettime@GLIBC_2.17>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__stack_chk_fail@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <sched_setaffinity@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fc0 <sched_setaffinity@GLIBC_2.3.4>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <__printf_chk@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 3fc8 <__printf_chk@GLIBC_2.3.4>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <posix_memalign@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3fd0 <posix_memalign@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001120 <main>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	53                   	push   %rbx
    1125:	b9 0f 00 00 00       	mov    $0xf,%ecx
    112a:	be 80 00 00 00       	mov    $0x80,%esi
    112f:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
    1136:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    113d:	00 00 
    113f:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
    1146:	00 
    1147:	31 c0                	xor    %eax,%eax
    1149:	48 8d 94 24 08 01 00 	lea    0x108(%rsp),%rdx
    1150:	00 
    1151:	4c 8d 84 24 00 01 00 	lea    0x100(%rsp),%r8
    1158:	00 
    1159:	48 c7 84 24 00 01 00 	movq   $0x1,0x100(%rsp)
    1160:	00 01 00 00 00 
    1165:	48 89 d7             	mov    %rdx,%rdi
    1168:	4c 89 c2             	mov    %r8,%rdx
    116b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    116e:	31 ff                	xor    %edi,%edi
    1170:	e8 7b ff ff ff       	call   10f0 <sched_setaffinity@plt>
    1175:	83 f8 ff             	cmp    $0xffffffff,%eax
    1178:	0f 84 7f 02 00 00    	je     13fd <main+0x2dd>
    117e:	31 c0                	xor    %eax,%eax
    1180:	31 db                	xor    %ebx,%ebx
    1182:	e8 89 03 00 00       	call   1510 <MMM_init>
    1187:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    118c:	89 da                	mov    %ebx,%edx
    118e:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1195:	54 43 
    1197:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    119e:	00 00 
    11a0:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    11a7:	00 00 
    11a9:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    11b0:	00 00 
    11b2:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    11b9:	00 00 
    11bb:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    11c2:	00 00 
    11c4:	48 c1 c7 03          	rol    $0x3,%rdi
    11c8:	48 c1 c7 0d          	rol    $0xd,%rdi
    11cc:	48 c1 c7 3d          	rol    $0x3d,%rdi
    11d0:	48 c1 c7 33          	rol    $0x33,%rdi
    11d4:	48 87 db             	xchg   %rbx,%rbx
    11d7:	48 89 14 24          	mov    %rdx,(%rsp)
    11db:	89 da                	mov    %ebx,%edx
    11dd:	48 8b 04 24          	mov    (%rsp),%rax
    11e1:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    11e6:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    11ed:	54 43 
    11ef:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    11f6:	00 00 
    11f8:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    11ff:	00 00 00 00 00 
    1204:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    120b:	00 00 00 00 00 
    1210:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1217:	00 00 00 00 00 
    121c:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1223:	00 00 00 00 00 
    1228:	48 c1 c7 03          	rol    $0x3,%rdi
    122c:	48 c1 c7 0d          	rol    $0xd,%rdi
    1230:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1234:	48 c1 c7 33          	rol    $0x33,%rdi
    1238:	48 87 db             	xchg   %rbx,%rbx
    123b:	bf 01 00 00 00       	mov    $0x1,%edi
    1240:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1245:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    124a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    124f:	e8 7c fe ff ff       	call   10d0 <clock_gettime@plt>
    1254:	31 c0                	xor    %eax,%eax
    1256:	e8 15 07 00 00       	call   1970 <MMM_default>
    125b:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1260:	bf 01 00 00 00       	mov    $0x1,%edi
    1265:	e8 66 fe ff ff       	call   10d0 <clock_gettime@plt>
    126a:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1271:	00 
    1272:	89 da                	mov    %ebx,%edx
    1274:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    127b:	00 02 00 54 43 
    1280:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1287:	00 00 00 00 00 
    128c:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1293:	00 00 00 00 00 
    1298:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    129f:	00 00 00 00 00 
    12a4:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    12ab:	00 00 00 00 00 
    12b0:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    12b7:	00 00 00 00 00 
    12bc:	48 c1 c7 03          	rol    $0x3,%rdi
    12c0:	48 c1 c7 0d          	rol    $0xd,%rdi
    12c4:	48 c1 c7 3d          	rol    $0x3d,%rdi
    12c8:	48 c1 c7 33          	rol    $0x33,%rdi
    12cc:	48 87 db             	xchg   %rbx,%rbx
    12cf:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    12d4:	89 da                	mov    %ebx,%edx
    12d6:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    12db:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    12e2:	00 
    12e3:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    12ea:	00 05 00 54 43 
    12ef:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    12f6:	00 00 00 00 00 
    12fb:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1302:	00 00 00 00 00 
    1307:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    130e:	00 00 00 00 00 
    1313:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    131a:	00 00 00 00 00 
    131f:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1326:	00 00 00 00 00 
    132b:	48 c1 c7 03          	rol    $0x3,%rdi
    132f:	48 c1 c7 0d          	rol    $0xd,%rdi
    1333:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1337:	48 c1 c7 33          	rol    $0x33,%rdi
    133b:	48 87 db             	xchg   %rbx,%rbx
    133e:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1343:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1348:	31 c0                	xor    %eax,%eax
    134a:	e8 31 09 00 00       	call   1c80 <Compare_MMM>
    134f:	66 85 c0             	test   %ax,%ax
    1352:	0f 85 94 00 00 00    	jne    13ec <main+0x2cc>
    1358:	48 8d 3d dc 0c 00 00 	lea    0xcdc(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    135f:	e8 5c fd ff ff       	call   10c0 <puts@plt>
    1364:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1369:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    136e:	48 8d 35 e8 0c 00 00 	lea    0xce8(%rip),%rsi        # 205d <_IO_stdin_used+0x5d>
    1375:	31 c0                	xor    %eax,%eax
    1377:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    137e:	bf 01 00 00 00       	mov    $0x1,%edi
    1383:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1388:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    138d:	e8 6e fd ff ff       	call   1100 <__printf_chk@plt>
    1392:	48 8b 3d 9f 2c 00 00 	mov    0x2c9f(%rip),%rdi        # 4038 <C>
    1399:	e8 12 fd ff ff       	call   10b0 <free@plt>
    139e:	48 8b 3d 8b 2c 00 00 	mov    0x2c8b(%rip),%rdi        # 4030 <test>
    13a5:	e8 06 fd ff ff       	call   10b0 <free@plt>
    13aa:	48 8b 3d 77 2c 00 00 	mov    0x2c77(%rip),%rdi        # 4028 <A>
    13b1:	e8 fa fc ff ff       	call   10b0 <free@plt>
    13b6:	48 8b 3d 63 2c 00 00 	mov    0x2c63(%rip),%rdi        # 4020 <B>
    13bd:	e8 ee fc ff ff       	call   10b0 <free@plt>
    13c2:	48 8b 3d 4f 2c 00 00 	mov    0x2c4f(%rip),%rdi        # 4018 <Btranspose>
    13c9:	e8 e2 fc ff ff       	call   10b0 <free@plt>
    13ce:	48 8b 84 24 88 01 00 	mov    0x188(%rsp),%rax
    13d5:	00 
    13d6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    13dd:	00 00 
    13df:	75 2d                	jne    140e <main+0x2ee>
    13e1:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
    13e8:	31 c0                	xor    %eax,%eax
    13ea:	5b                   	pop    %rbx
    13eb:	c3                   	ret    
    13ec:	48 8d 3d 58 0c 00 00 	lea    0xc58(%rip),%rdi        # 204b <_IO_stdin_used+0x4b>
    13f3:	e8 c8 fc ff ff       	call   10c0 <puts@plt>
    13f8:	e9 67 ff ff ff       	jmp    1364 <main+0x244>
    13fd:	48 8d 3d 04 0c 00 00 	lea    0xc04(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1404:	e8 b7 fc ff ff       	call   10c0 <puts@plt>
    1409:	e9 70 fd ff ff       	jmp    117e <main+0x5e>
    140e:	e8 cd fc ff ff       	call   10e0 <__stack_chk_fail@plt>
    1413:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    141a:	00 00 00 
    141d:	0f 1f 00             	nopl   (%rax)

0000000000001420 <_start>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	31 ed                	xor    %ebp,%ebp
    1426:	49 89 d1             	mov    %rdx,%r9
    1429:	5e                   	pop    %rsi
    142a:	48 89 e2             	mov    %rsp,%rdx
    142d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1431:	50                   	push   %rax
    1432:	54                   	push   %rsp
    1433:	45 31 c0             	xor    %r8d,%r8d
    1436:	31 c9                	xor    %ecx,%ecx
    1438:	48 8d 3d e1 fc ff ff 	lea    -0x31f(%rip),%rdi        # 1120 <main>
    143f:	ff 15 93 2b 00 00    	call   *0x2b93(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1445:	f4                   	hlt    
    1446:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    144d:	00 00 00 

0000000000001450 <deregister_tm_clones>:
    1450:	48 8d 3d b9 2b 00 00 	lea    0x2bb9(%rip),%rdi        # 4010 <__TMC_END__>
    1457:	48 8d 05 b2 2b 00 00 	lea    0x2bb2(%rip),%rax        # 4010 <__TMC_END__>
    145e:	48 39 f8             	cmp    %rdi,%rax
    1461:	74 15                	je     1478 <deregister_tm_clones+0x28>
    1463:	48 8b 05 76 2b 00 00 	mov    0x2b76(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    146a:	48 85 c0             	test   %rax,%rax
    146d:	74 09                	je     1478 <deregister_tm_clones+0x28>
    146f:	ff e0                	jmp    *%rax
    1471:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <register_tm_clones>:
    1480:	48 8d 3d 89 2b 00 00 	lea    0x2b89(%rip),%rdi        # 4010 <__TMC_END__>
    1487:	48 8d 35 82 2b 00 00 	lea    0x2b82(%rip),%rsi        # 4010 <__TMC_END__>
    148e:	48 29 fe             	sub    %rdi,%rsi
    1491:	48 89 f0             	mov    %rsi,%rax
    1494:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1498:	48 c1 f8 03          	sar    $0x3,%rax
    149c:	48 01 c6             	add    %rax,%rsi
    149f:	48 d1 fe             	sar    %rsi
    14a2:	74 14                	je     14b8 <register_tm_clones+0x38>
    14a4:	48 8b 05 45 2b 00 00 	mov    0x2b45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    14ab:	48 85 c0             	test   %rax,%rax
    14ae:	74 08                	je     14b8 <register_tm_clones+0x38>
    14b0:	ff e0                	jmp    *%rax
    14b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14b8:	c3                   	ret    
    14b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014c0 <__do_global_dtors_aux>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	80 3d 45 2b 00 00 00 	cmpb   $0x0,0x2b45(%rip)        # 4010 <__TMC_END__>
    14cb:	75 2b                	jne    14f8 <__do_global_dtors_aux+0x38>
    14cd:	55                   	push   %rbp
    14ce:	48 83 3d 22 2b 00 00 	cmpq   $0x0,0x2b22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    14d5:	00 
    14d6:	48 89 e5             	mov    %rsp,%rbp
    14d9:	74 0c                	je     14e7 <__do_global_dtors_aux+0x27>
    14db:	48 8b 3d 26 2b 00 00 	mov    0x2b26(%rip),%rdi        # 4008 <__dso_handle>
    14e2:	e8 b9 fb ff ff       	call   10a0 <__cxa_finalize@plt>
    14e7:	e8 64 ff ff ff       	call   1450 <deregister_tm_clones>
    14ec:	c6 05 1d 2b 00 00 01 	movb   $0x1,0x2b1d(%rip)        # 4010 <__TMC_END__>
    14f3:	5d                   	pop    %rbp
    14f4:	c3                   	ret    
    14f5:	0f 1f 00             	nopl   (%rax)
    14f8:	c3                   	ret    
    14f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001500 <frame_dummy>:
    1500:	f3 0f 1e fa          	endbr64 
    1504:	e9 77 ff ff ff       	jmp    1480 <register_tm_clones>
    1509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001510 <MMM_init>:
    1510:	f3 0f 1e fa          	endbr64 
    1514:	41 57                	push   %r15
    1516:	ba 00 08 00 00       	mov    $0x800,%edx
    151b:	be 40 00 00 00       	mov    $0x40,%esi
    1520:	41 56                	push   %r14
    1522:	41 55                	push   %r13
    1524:	41 54                	push   %r12
    1526:	55                   	push   %rbp
    1527:	53                   	push   %rbx
    1528:	31 db                	xor    %ebx,%ebx
    152a:	49 89 df             	mov    %rbx,%r15
    152d:	49 89 de             	mov    %rbx,%r14
    1530:	49 89 dd             	mov    %rbx,%r13
    1533:	49 89 dc             	mov    %rbx,%r12
    1536:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    153d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1544:	00 00 
    1546:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    154d:	00 
    154e:	31 c0                	xor    %eax,%eax
    1550:	48 8d 7c 24 58       	lea    0x58(%rsp),%rdi
    1555:	e8 b6 fb ff ff       	call   1110 <posix_memalign@plt>
    155a:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    155f:	ba 00 08 00 00       	mov    $0x800,%edx
    1564:	be 40 00 00 00       	mov    $0x40,%esi
    1569:	85 c0                	test   %eax,%eax
    156b:	4c 0f 44 7c 24 58    	cmove  0x58(%rsp),%r15
    1571:	4c 89 3d c0 2a 00 00 	mov    %r15,0x2ac0(%rip)        # 4038 <C>
    1578:	e8 93 fb ff ff       	call   1110 <posix_memalign@plt>
    157d:	48 8d 7c 24 48       	lea    0x48(%rsp),%rdi
    1582:	ba 00 08 00 00       	mov    $0x800,%edx
    1587:	be 40 00 00 00       	mov    $0x40,%esi
    158c:	85 c0                	test   %eax,%eax
    158e:	4c 0f 44 74 24 50    	cmove  0x50(%rsp),%r14
    1594:	4c 89 35 95 2a 00 00 	mov    %r14,0x2a95(%rip)        # 4030 <test>
    159b:	e8 70 fb ff ff       	call   1110 <posix_memalign@plt>
    15a0:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    15a5:	ba 00 08 00 00       	mov    $0x800,%edx
    15aa:	be 40 00 00 00       	mov    $0x40,%esi
    15af:	85 c0                	test   %eax,%eax
    15b1:	4c 0f 44 6c 24 48    	cmove  0x48(%rsp),%r13
    15b7:	4c 89 2d 6a 2a 00 00 	mov    %r13,0x2a6a(%rip)        # 4028 <A>
    15be:	e8 4d fb ff ff       	call   1110 <posix_memalign@plt>
    15c3:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    15c8:	ba 00 08 00 00       	mov    $0x800,%edx
    15cd:	be 40 00 00 00       	mov    $0x40,%esi
    15d2:	85 c0                	test   %eax,%eax
    15d4:	4c 0f 44 64 24 40    	cmove  0x40(%rsp),%r12
    15da:	4c 89 25 3f 2a 00 00 	mov    %r12,0x2a3f(%rip)        # 4020 <B>
    15e1:	e8 2a fb ff ff       	call   1110 <posix_memalign@plt>
    15e6:	48 89 d9             	mov    %rbx,%rcx
    15e9:	85 c0                	test   %eax,%eax
    15eb:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    15f2:	00 
    15f3:	48 0f 44 4c 24 38    	cmove  0x38(%rsp),%rcx
    15f9:	31 ed                	xor    %ebp,%ebp
    15fb:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1600:	48 8d 44 24 78       	lea    0x78(%rsp),%rax
    1605:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    160a:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    160f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1614:	48 8d 44 24 68       	lea    0x68(%rsp),%rax
    1619:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    161e:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    1623:	48 89 0d ee 29 00 00 	mov    %rcx,0x29ee(%rip)        # 4018 <Btranspose>
    162a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    162f:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    1634:	ba 00 04 00 00       	mov    $0x400,%edx
    1639:	be 40 00 00 00       	mov    $0x40,%esi
    163e:	48 89 0c 24          	mov    %rcx,(%rsp)
    1642:	e8 c9 fa ff ff       	call   1110 <posix_memalign@plt>
    1647:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    164c:	ba 00 04 00 00       	mov    $0x400,%edx
    1651:	be 40 00 00 00       	mov    $0x40,%esi
    1656:	85 c0                	test   %eax,%eax
    1658:	48 89 e8             	mov    %rbp,%rax
    165b:	48 0f 44 84 24 80 00 	cmove  0x80(%rsp),%rax
    1662:	00 00 
    1664:	49 89 04 1f          	mov    %rax,(%r15,%rbx,1)
    1668:	e8 a3 fa ff ff       	call   1110 <posix_memalign@plt>
    166d:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    1672:	ba 00 04 00 00       	mov    $0x400,%edx
    1677:	be 40 00 00 00       	mov    $0x40,%esi
    167c:	85 c0                	test   %eax,%eax
    167e:	48 89 e8             	mov    %rbp,%rax
    1681:	48 0f 44 44 24 78    	cmove  0x78(%rsp),%rax
    1687:	49 89 04 1e          	mov    %rax,(%r14,%rbx,1)
    168b:	e8 80 fa ff ff       	call   1110 <posix_memalign@plt>
    1690:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1695:	ba 00 04 00 00       	mov    $0x400,%edx
    169a:	be 40 00 00 00       	mov    $0x40,%esi
    169f:	85 c0                	test   %eax,%eax
    16a1:	48 89 e8             	mov    %rbp,%rax
    16a4:	48 0f 44 44 24 70    	cmove  0x70(%rsp),%rax
    16aa:	49 89 44 1d 00       	mov    %rax,0x0(%r13,%rbx,1)
    16af:	e8 5c fa ff ff       	call   1110 <posix_memalign@plt>
    16b4:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    16b9:	ba 00 04 00 00       	mov    $0x400,%edx
    16be:	be 40 00 00 00       	mov    $0x40,%esi
    16c3:	85 c0                	test   %eax,%eax
    16c5:	48 89 e8             	mov    %rbp,%rax
    16c8:	48 0f 44 44 24 68    	cmove  0x68(%rsp),%rax
    16ce:	49 89 04 1c          	mov    %rax,(%r12,%rbx,1)
    16d2:	e8 39 fa ff ff       	call   1110 <posix_memalign@plt>
    16d7:	48 8b 0c 24          	mov    (%rsp),%rcx
    16db:	85 c0                	test   %eax,%eax
    16dd:	48 89 e8             	mov    %rbp,%rax
    16e0:	48 0f 44 44 24 60    	cmove  0x60(%rsp),%rax
    16e6:	48 89 04 19          	mov    %rax,(%rcx,%rbx,1)
    16ea:	48 83 c3 08          	add    $0x8,%rbx
    16ee:	48 81 fb 00 08 00 00 	cmp    $0x800,%rbx
    16f5:	0f 85 34 ff ff ff    	jne    162f <MMM_init+0x11f>
    16fb:	f3 0f 10 0d 75 09 00 	movss  0x975(%rip),%xmm1        # 2078 <_IO_stdin_used+0x78>
    1702:	00 
    1703:	45 31 d2             	xor    %r10d,%r10d
    1706:	4f 8b 0c 17          	mov    (%r15,%r10,1),%r9
    170a:	4f 8b 04 16          	mov    (%r14,%r10,1),%r8
    170e:	31 c0                	xor    %eax,%eax
    1710:	4b 8b 7c 15 00       	mov    0x0(%r13,%r10,1),%rdi
    1715:	4b 8b 34 14          	mov    (%r12,%r10,1),%rsi
    1719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1720:	41 89 c3             	mov    %eax,%r11d
    1723:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1727:	41 c7 04 81 00 00 00 	movl   $0x0,(%r9,%rax,4)
    172e:	00 
    172f:	49 69 d3 39 8e e3 38 	imul   $0x38e38e39,%r11,%rdx
    1736:	41 c7 04 80 00 00 00 	movl   $0x0,(%r8,%rax,4)
    173d:	00 
    173e:	4d 69 db 25 49 92 24 	imul   $0x24924925,%r11,%r11
    1745:	48 c1 ea 21          	shr    $0x21,%rdx
    1749:	8d 1c d2             	lea    (%rdx,%rdx,8),%ebx
    174c:	89 c2                	mov    %eax,%edx
    174e:	49 c1 eb 20          	shr    $0x20,%r11
    1752:	29 da                	sub    %ebx,%edx
    1754:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    1758:	89 c2                	mov    %eax,%edx
    175a:	44 29 da             	sub    %r11d,%edx
    175d:	d1 ea                	shr    %edx
    175f:	44 01 da             	add    %r11d,%edx
    1762:	c1 ea 02             	shr    $0x2,%edx
    1765:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1769:	44 8d 1c d5 00 00 00 	lea    0x0(,%rdx,8),%r11d
    1770:	00 
    1771:	41 29 d3             	sub    %edx,%r11d
    1774:	89 c2                	mov    %eax,%edx
    1776:	f3 0f 11 04 87       	movss  %xmm0,(%rdi,%rax,4)
    177b:	44 29 da             	sub    %r11d,%edx
    177e:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1782:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    1786:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    178a:	f3 0f 11 04 86       	movss  %xmm0,(%rsi,%rax,4)
    178f:	48 83 c0 01          	add    $0x1,%rax
    1793:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1799:	75 85                	jne    1720 <MMM_init+0x210>
    179b:	49 83 c2 08          	add    $0x8,%r10
    179f:	49 81 fa 00 08 00 00 	cmp    $0x800,%r10
    17a6:	0f 85 5a ff ff ff    	jne    1706 <MMM_init+0x1f6>
    17ac:	31 f6                	xor    %esi,%esi
    17ae:	49 8b 3c 74          	mov    (%r12,%rsi,2),%rdi
    17b2:	31 c0                	xor    %eax,%eax
    17b4:	0f 1f 40 00          	nopl   0x0(%rax)
    17b8:	f3 0f 10 04 87       	movss  (%rdi,%rax,4),%xmm0
    17bd:	48 8b 14 c1          	mov    (%rcx,%rax,8),%rdx
    17c1:	48 83 c0 01          	add    $0x1,%rax
    17c5:	f3 0f 11 04 32       	movss  %xmm0,(%rdx,%rsi,1)
    17ca:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    17d0:	75 e6                	jne    17b8 <MMM_init+0x2a8>
    17d2:	48 83 c6 04          	add    $0x4,%rsi
    17d6:	48 81 fe 00 04 00 00 	cmp    $0x400,%rsi
    17dd:	75 cf                	jne    17ae <MMM_init+0x29e>
    17df:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    17e6:	00 
    17e7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17ee:	00 00 
    17f0:	75 12                	jne    1804 <MMM_init+0x2f4>
    17f2:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    17f9:	5b                   	pop    %rbx
    17fa:	5d                   	pop    %rbp
    17fb:	41 5c                	pop    %r12
    17fd:	41 5d                	pop    %r13
    17ff:	41 5e                	pop    %r14
    1801:	41 5f                	pop    %r15
    1803:	c3                   	ret    
    1804:	e8 d7 f8 ff ff       	call   10e0 <__stack_chk_fail@plt>
    1809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001810 <MMM_RB>:
    1810:	f3 0f 1e fa          	endbr64 
    1814:	41 56                	push   %r14
    1816:	4c 8b 0d 03 28 00 00 	mov    0x2803(%rip),%r9        # 4020 <B>
    181d:	41 55                	push   %r13
    181f:	4c 8b 35 12 28 00 00 	mov    0x2812(%rip),%r14        # 4038 <C>
    1826:	41 54                	push   %r12
    1828:	4c 8b 2d f9 27 00 00 	mov    0x27f9(%rip),%r13        # 4028 <A>
    182f:	45 31 e4             	xor    %r12d,%r12d
    1832:	55                   	push   %rbp
    1833:	53                   	push   %rbx
    1834:	4f 8b 5c 25 00       	mov    0x0(%r13,%r12,1),%r11
    1839:	4f 8b 54 25 08       	mov    0x8(%r13,%r12,1),%r10
    183e:	31 c9                	xor    %ecx,%ecx
    1840:	4b 8b 2c 26          	mov    (%r14,%r12,1),%rbp
    1844:	4b 8b 5c 26 08       	mov    0x8(%r14,%r12,1),%rbx
    1849:	f3 44 0f 10 0b       	movss  (%rbx),%xmm9
    184e:	f3 0f 10 7b 04       	movss  0x4(%rbx),%xmm7
    1853:	4c 8d 41 04          	lea    0x4(%rcx),%r8
    1857:	31 c0                	xor    %eax,%eax
    1859:	f3 44 0f 10 55 00    	movss  0x0(%rbp),%xmm10
    185f:	f3 44 0f 10 45 04    	movss  0x4(%rbp),%xmm8
    1865:	48 8d 79 08          	lea    0x8(%rcx),%rdi
    1869:	48 8d 71 0c          	lea    0xc(%rcx),%rsi
    186d:	f3 0f 10 75 08       	movss  0x8(%rbp),%xmm6
    1872:	f3 0f 10 6b 08       	movss  0x8(%rbx),%xmm5
    1877:	f3 0f 10 65 0c       	movss  0xc(%rbp),%xmm4
    187c:	f3 0f 10 5b 0c       	movss  0xc(%rbx),%xmm3
    1881:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1888:	49 8b 14 41          	mov    (%r9,%rax,2),%rdx
    188c:	f3 41 0f 10 0c 03    	movss  (%r11,%rax,1),%xmm1
    1892:	f3 41 0f 10 04 02    	movss  (%r10,%rax,1),%xmm0
    1898:	48 83 c0 04          	add    $0x4,%rax
    189c:	f3 0f 10 14 0a       	movss  (%rdx,%rcx,1),%xmm2
    18a1:	44 0f 28 d9          	movaps %xmm1,%xmm11
    18a5:	f3 44 0f 59 da       	mulss  %xmm2,%xmm11
    18aa:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    18ae:	f3 45 0f 58 d3       	addss  %xmm11,%xmm10
    18b3:	44 0f 28 d9          	movaps %xmm1,%xmm11
    18b7:	f3 44 0f 58 ca       	addss  %xmm2,%xmm9
    18bc:	f3 42 0f 10 14 02    	movss  (%rdx,%r8,1),%xmm2
    18c2:	f3 44 0f 59 da       	mulss  %xmm2,%xmm11
    18c7:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    18cb:	f3 45 0f 58 c3       	addss  %xmm11,%xmm8
    18d0:	44 0f 28 d9          	movaps %xmm1,%xmm11
    18d4:	f3 0f 58 fa          	addss  %xmm2,%xmm7
    18d8:	f3 0f 10 14 3a       	movss  (%rdx,%rdi,1),%xmm2
    18dd:	f3 44 0f 59 da       	mulss  %xmm2,%xmm11
    18e2:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    18e6:	f3 41 0f 58 f3       	addss  %xmm11,%xmm6
    18eb:	f3 0f 58 ea          	addss  %xmm2,%xmm5
    18ef:	f3 0f 10 14 32       	movss  (%rdx,%rsi,1),%xmm2
    18f4:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    18f8:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    18fc:	f3 0f 58 e1          	addss  %xmm1,%xmm4
    1900:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    1904:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    190a:	0f 85 78 ff ff ff    	jne    1888 <MMM_RB+0x78>
    1910:	48 83 c1 10          	add    $0x10,%rcx
    1914:	f3 44 0f 11 55 00    	movss  %xmm10,0x0(%rbp)
    191a:	48 83 c3 10          	add    $0x10,%rbx
    191e:	48 83 c5 10          	add    $0x10,%rbp
    1922:	f3 44 0f 11 4b f0    	movss  %xmm9,-0x10(%rbx)
    1928:	f3 44 0f 11 45 f4    	movss  %xmm8,-0xc(%rbp)
    192e:	f3 0f 11 7b f4       	movss  %xmm7,-0xc(%rbx)
    1933:	f3 0f 11 75 f8       	movss  %xmm6,-0x8(%rbp)
    1938:	f3 0f 11 6b f8       	movss  %xmm5,-0x8(%rbx)
    193d:	f3 0f 11 65 fc       	movss  %xmm4,-0x4(%rbp)
    1942:	f3 0f 11 5b fc       	movss  %xmm3,-0x4(%rbx)
    1947:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    194e:	0f 85 f5 fe ff ff    	jne    1849 <MMM_RB+0x39>
    1954:	49 83 c4 10          	add    $0x10,%r12
    1958:	49 81 fc 00 08 00 00 	cmp    $0x800,%r12
    195f:	0f 85 cf fe ff ff    	jne    1834 <MMM_RB+0x24>
    1965:	5b                   	pop    %rbx
    1966:	5d                   	pop    %rbp
    1967:	41 5c                	pop    %r12
    1969:	41 5d                	pop    %r13
    196b:	41 5e                	pop    %r14
    196d:	c3                   	ret    
    196e:	66 90                	xchg   %ax,%ax

0000000000001970 <MMM_default>:
    1970:	f3 0f 1e fa          	endbr64 
    1974:	48 8b 05 ad 26 00 00 	mov    0x26ad(%rip),%rax        # 4028 <A>
    197b:	48 8b 35 9e 26 00 00 	mov    0x269e(%rip),%rsi        # 4020 <B>
    1982:	41 57                	push   %r15
    1984:	41 56                	push   %r14
    1986:	4c 8b 3d ab 26 00 00 	mov    0x26ab(%rip),%r15        # 4038 <C>
    198d:	41 55                	push   %r13
    198f:	41 54                	push   %r12
    1991:	55                   	push   %rbp
    1992:	53                   	push   %rbx
    1993:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
    1998:	49 8d 87 00 08 00 00 	lea    0x800(%r15),%rax
    199f:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    19a4:	4d 8b 77 08          	mov    0x8(%r15),%r14
    19a8:	4d 8b 6f 18          	mov    0x18(%r15),%r13
    19ac:	b9 04 00 00 00       	mov    $0x4,%ecx
    19b1:	4d 8b 27             	mov    (%r15),%r12
    19b4:	49 8b 6f 10          	mov    0x10(%r15),%rbp
    19b8:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    19bd:	4c 89 74 24 d0       	mov    %r14,-0x30(%rsp)
    19c2:	4c 89 6c 24 d8       	mov    %r13,-0x28(%rsp)
    19c7:	4c 8b 10             	mov    (%rax),%r10
    19ca:	4c 8b 48 18          	mov    0x18(%rax),%r9
    19ce:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
    19d3:	4c 8b 40 10          	mov    0x10(%rax),%r8
    19d7:	48 8b 78 08          	mov    0x8(%rax),%rdi
    19db:	48 89 6c 24 e8       	mov    %rbp,-0x18(%rsp)
    19e0:	f3 41 0f 10 36       	movss  (%r14),%xmm6
    19e5:	f3 41 0f 10 3c 24    	movss  (%r12),%xmm7
    19eb:	31 c0                	xor    %eax,%eax
    19ed:	48 8d 59 fc          	lea    -0x4(%rcx),%rbx
    19f1:	f3 45 0f 10 75 04    	movss  0x4(%r13),%xmm14
    19f7:	f3 44 0f 10 65 04    	movss  0x4(%rbp),%xmm12
    19fd:	4c 8d 59 04          	lea    0x4(%rcx),%r11
    1a01:	f3 0f 11 74 24 c8    	movss  %xmm6,-0x38(%rsp)
    1a07:	f3 41 0f 10 75 00    	movss  0x0(%r13),%xmm6
    1a0d:	f3 45 0f 10 6c 24 04 	movss  0x4(%r12),%xmm13
    1a14:	f3 0f 11 7c 24 c4    	movss  %xmm7,-0x3c(%rsp)
    1a1a:	f3 45 0f 10 5e 08    	movss  0x8(%r14),%xmm11
    1a20:	f3 45 0f 10 56 04    	movss  0x4(%r14),%xmm10
    1a26:	f3 0f 11 74 24 cc    	movss  %xmm6,-0x34(%rsp)
    1a2c:	f3 45 0f 10 4c 24 08 	movss  0x8(%r12),%xmm9
    1a33:	f3 0f 10 75 00       	movss  0x0(%rbp),%xmm6
    1a38:	f3 44 0f 10 45 08    	movss  0x8(%rbp),%xmm8
    1a3e:	f3 41 0f 10 7d 08    	movss  0x8(%r13),%xmm7
    1a44:	0f 1f 40 00          	nopl   0x0(%rax)
    1a48:	48 8b 14 46          	mov    (%rsi,%rax,2),%rdx
    1a4c:	f3 41 0f 10 2c 02    	movss  (%r10,%rax,1),%xmm5
    1a52:	f3 0f 10 24 07       	movss  (%rdi,%rax,1),%xmm4
    1a57:	f3 41 0f 10 1c 00    	movss  (%r8,%rax,1),%xmm3
    1a5d:	f3 0f 10 14 1a       	movss  (%rdx,%rbx,1),%xmm2
    1a62:	44 0f 28 fd          	movaps %xmm5,%xmm15
    1a66:	f3 0f 10 0c 0a       	movss  (%rdx,%rcx,1),%xmm1
    1a6b:	f3 42 0f 10 04 1a    	movss  (%rdx,%r11,1),%xmm0
    1a71:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    1a76:	f3 44 0f 58 7c 24 c4 	addss  -0x3c(%rsp),%xmm15
    1a7d:	f3 44 0f 11 7c 24 c4 	movss  %xmm15,-0x3c(%rsp)
    1a84:	44 0f 28 fc          	movaps %xmm4,%xmm15
    1a88:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    1a8d:	f3 44 0f 58 7c 24 c8 	addss  -0x38(%rsp),%xmm15
    1a94:	f3 44 0f 11 7c 24 c8 	movss  %xmm15,-0x38(%rsp)
    1a9b:	44 0f 28 fb          	movaps %xmm3,%xmm15
    1a9f:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    1aa4:	f3 41 0f 59 14 01    	mulss  (%r9,%rax,1),%xmm2
    1aaa:	f3 0f 58 54 24 cc    	addss  -0x34(%rsp),%xmm2
    1ab0:	f3 0f 11 54 24 cc    	movss  %xmm2,-0x34(%rsp)
    1ab6:	0f 28 d1             	movaps %xmm1,%xmm2
    1ab9:	f3 41 0f 58 f7       	addss  %xmm15,%xmm6
    1abe:	f3 0f 59 d5          	mulss  %xmm5,%xmm2
    1ac2:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1ac6:	f3 44 0f 58 ea       	addss  %xmm2,%xmm13
    1acb:	0f 28 d1             	movaps %xmm1,%xmm2
    1ace:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    1ad2:	f3 44 0f 58 cd       	addss  %xmm5,%xmm9
    1ad7:	f3 0f 59 e0          	mulss  %xmm0,%xmm4
    1adb:	f3 44 0f 58 d2       	addss  %xmm2,%xmm10
    1ae0:	0f 28 d1             	movaps %xmm1,%xmm2
    1ae3:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    1ae7:	f3 44 0f 58 dc       	addss  %xmm4,%xmm11
    1aec:	f3 41 0f 59 0c 01    	mulss  (%r9,%rax,1),%xmm1
    1af2:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    1af6:	f3 41 0f 59 04 01    	mulss  (%r9,%rax,1),%xmm0
    1afc:	48 83 c0 04          	add    $0x4,%rax
    1b00:	f3 44 0f 58 e2       	addss  %xmm2,%xmm12
    1b05:	f3 44 0f 58 f1       	addss  %xmm1,%xmm14
    1b0a:	f3 44 0f 58 c3       	addss  %xmm3,%xmm8
    1b0f:	f3 0f 58 f8          	addss  %xmm0,%xmm7
    1b13:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1b19:	0f 85 29 ff ff ff    	jne    1a48 <MMM_default+0xd8>
    1b1f:	48 83 c1 0c          	add    $0xc,%rcx
    1b23:	49 83 c6 0c          	add    $0xc,%r14
    1b27:	49 83 c5 0c          	add    $0xc,%r13
    1b2b:	49 83 c4 0c          	add    $0xc,%r12
    1b2f:	f3 0f 10 5c 24 c8    	movss  -0x38(%rsp),%xmm3
    1b35:	f3 0f 10 64 24 c4    	movss  -0x3c(%rsp),%xmm4
    1b3b:	48 83 c5 0c          	add    $0xc,%rbp
    1b3f:	f3 41 0f 11 5e f4    	movss  %xmm3,-0xc(%r14)
    1b45:	f3 0f 10 5c 24 cc    	movss  -0x34(%rsp),%xmm3
    1b4b:	f3 45 0f 11 75 f8    	movss  %xmm14,-0x8(%r13)
    1b51:	f3 45 0f 11 6c 24 f8 	movss  %xmm13,-0x8(%r12)
    1b58:	f3 44 0f 11 65 f8    	movss  %xmm12,-0x8(%rbp)
    1b5e:	f3 41 0f 11 64 24 f4 	movss  %xmm4,-0xc(%r12)
    1b65:	f3 45 0f 11 5e fc    	movss  %xmm11,-0x4(%r14)
    1b6b:	f3 41 0f 11 5d f4    	movss  %xmm3,-0xc(%r13)
    1b71:	f3 45 0f 11 56 f8    	movss  %xmm10,-0x8(%r14)
    1b77:	f3 45 0f 11 4c 24 fc 	movss  %xmm9,-0x4(%r12)
    1b7e:	f3 44 0f 11 45 fc    	movss  %xmm8,-0x4(%rbp)
    1b84:	f3 41 0f 11 7d fc    	movss  %xmm7,-0x4(%r13)
    1b8a:	f3 0f 11 75 f4       	movss  %xmm6,-0xc(%rbp)
    1b8f:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    1b96:	0f 85 44 fe ff ff    	jne    19e0 <MMM_default+0x70>
    1b9c:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1ba1:	f3 0f 10 a0 fc 03 00 	movss  0x3fc(%rax),%xmm4
    1ba8:	00 
    1ba9:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    1bae:	f3 0f 10 98 fc 03 00 	movss  0x3fc(%rax),%xmm3
    1bb5:	00 
    1bb6:	48 8b 44 24 d0       	mov    -0x30(%rsp),%rax
    1bbb:	f3 0f 10 90 fc 03 00 	movss  0x3fc(%rax),%xmm2
    1bc2:	00 
    1bc3:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    1bc8:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    1bcf:	00 
    1bd0:	31 c0                	xor    %eax,%eax
    1bd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1bd8:	48 8b 14 46          	mov    (%rsi,%rax,2),%rdx
    1bdc:	f3 41 0f 10 2c 02    	movss  (%r10,%rax,1),%xmm5
    1be2:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    1be9:	00 
    1bea:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1bee:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1bf2:	f3 0f 10 2c 07       	movss  (%rdi,%rax,1),%xmm5
    1bf7:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1bfb:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1bff:	f3 41 0f 10 2c 00    	movss  (%r8,%rax,1),%xmm5
    1c05:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1c09:	f3 41 0f 59 04 01    	mulss  (%r9,%rax,1),%xmm0
    1c0f:	48 83 c0 04          	add    $0x4,%rax
    1c13:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1c17:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1c1b:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1c21:	75 b5                	jne    1bd8 <MMM_default+0x268>
    1c23:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1c28:	48 83 44 24 f0 20    	addq   $0x20,-0x10(%rsp)
    1c2e:	49 83 c7 20          	add    $0x20,%r15
    1c32:	f3 0f 11 a0 fc 03 00 	movss  %xmm4,0x3fc(%rax)
    1c39:	00 
    1c3a:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    1c3f:	f3 0f 11 98 fc 03 00 	movss  %xmm3,0x3fc(%rax)
    1c46:	00 
    1c47:	48 8b 44 24 d0       	mov    -0x30(%rsp),%rax
    1c4c:	f3 0f 11 90 fc 03 00 	movss  %xmm2,0x3fc(%rax)
    1c53:	00 
    1c54:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    1c59:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    1c60:	00 
    1c61:	4c 39 7c 24 f8       	cmp    %r15,-0x8(%rsp)
    1c66:	0f 85 38 fd ff ff    	jne    19a4 <MMM_default+0x34>
    1c6c:	5b                   	pop    %rbx
    1c6d:	5d                   	pop    %rbp
    1c6e:	41 5c                	pop    %r12
    1c70:	41 5d                	pop    %r13
    1c72:	41 5e                	pop    %r14
    1c74:	41 5f                	pop    %r15
    1c76:	c3                   	ret    
    1c77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1c7e:	00 00 

0000000000001c80 <Compare_MMM>:
    1c80:	f3 0f 1e fa          	endbr64 
    1c84:	4c 8b 15 a5 23 00 00 	mov    0x23a5(%rip),%r10        # 4030 <test>
    1c8b:	4c 8b 1d 96 23 00 00 	mov    0x2396(%rip),%r11        # 4028 <A>
    1c92:	45 31 c9             	xor    %r9d,%r9d
    1c95:	48 8b 3d 84 23 00 00 	mov    0x2384(%rip),%rdi        # 4020 <B>
    1c9c:	4f 8b 04 0b          	mov    (%r11,%r9,1),%r8
    1ca0:	4b 8b 34 0a          	mov    (%r10,%r9,1),%rsi
    1ca4:	31 c9                	xor    %ecx,%ecx
    1ca6:	f3 0f 10 0e          	movss  (%rsi),%xmm1
    1caa:	31 c0                	xor    %eax,%eax
    1cac:	0f 1f 40 00          	nopl   0x0(%rax)
    1cb0:	48 8b 14 c7          	mov    (%rdi,%rax,8),%rdx
    1cb4:	f3 0f 10 04 0a       	movss  (%rdx,%rcx,1),%xmm0
    1cb9:	f3 41 0f 59 04 80    	mulss  (%r8,%rax,4),%xmm0
    1cbf:	48 83 c0 01          	add    $0x1,%rax
    1cc3:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1cc7:	f3 0f 11 0e          	movss  %xmm1,(%rsi)
    1ccb:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1cd1:	75 dd                	jne    1cb0 <Compare_MMM+0x30>
    1cd3:	48 83 c1 04          	add    $0x4,%rcx
    1cd7:	48 83 c6 04          	add    $0x4,%rsi
    1cdb:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    1ce2:	75 c2                	jne    1ca6 <Compare_MMM+0x26>
    1ce4:	49 83 c1 08          	add    $0x8,%r9
    1ce8:	49 81 f9 00 08 00 00 	cmp    $0x800,%r9
    1cef:	75 ab                	jne    1c9c <Compare_MMM+0x1c>
    1cf1:	48 8b 0d 40 23 00 00 	mov    0x2340(%rip),%rcx        # 4038 <C>
    1cf8:	f2 0f 10 1d 90 03 00 	movsd  0x390(%rip),%xmm3        # 2090 <_IO_stdin_used+0x90>
    1cff:	00 
    1d00:	31 c0                	xor    %eax,%eax
    1d02:	f3 0f 10 15 76 03 00 	movss  0x376(%rip),%xmm2        # 2080 <_IO_stdin_used+0x80>
    1d09:	00 
    1d0a:	49 8b 3c 02          	mov    (%r10,%rax,1),%rdi
    1d0e:	48 8b 34 01          	mov    (%rcx,%rax,1),%rsi
    1d12:	31 d2                	xor    %edx,%edx
    1d14:	f3 0f 10 0c 16       	movss  (%rsi,%rdx,1),%xmm1
    1d19:	0f 28 c1             	movaps %xmm1,%xmm0
    1d1c:	f3 0f 5c 04 17       	subss  (%rdi,%rdx,1),%xmm0
    1d21:	0f 54 ca             	andps  %xmm2,%xmm1
    1d24:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1d28:	0f 54 c2             	andps  %xmm2,%xmm0
    1d2b:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1d2f:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1d33:	66 0f 2f d8          	comisd %xmm0,%xmm3
    1d37:	76 1f                	jbe    1d58 <Compare_MMM+0xd8>
    1d39:	48 83 c2 04          	add    $0x4,%rdx
    1d3d:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    1d44:	75 ce                	jne    1d14 <Compare_MMM+0x94>
    1d46:	48 83 c0 08          	add    $0x8,%rax
    1d4a:	48 3d 00 08 00 00    	cmp    $0x800,%rax
    1d50:	75 b8                	jne    1d0a <Compare_MMM+0x8a>
    1d52:	31 c0                	xor    %eax,%eax
    1d54:	c3                   	ret    
    1d55:	0f 1f 00             	nopl   (%rax)
    1d58:	b8 01 00 00 00       	mov    $0x1,%eax
    1d5d:	c3                   	ret    
    1d5e:	66 90                	xchg   %ax,%ax

0000000000001d60 <equal>:
    1d60:	f3 0f 1e fa          	endbr64 
    1d64:	0f 28 d0             	movaps %xmm0,%xmm2
    1d67:	f3 0f 10 1d 11 03 00 	movss  0x311(%rip),%xmm3        # 2080 <_IO_stdin_used+0x80>
    1d6e:	00 
    1d6f:	31 c0                	xor    %eax,%eax
    1d71:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1d75:	0f 54 c3             	andps  %xmm3,%xmm0
    1d78:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1d7c:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1d80:	0f 54 d3             	andps  %xmm3,%xmm2
    1d83:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1d87:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1d8b:	f2 0f 10 05 fd 02 00 	movsd  0x2fd(%rip),%xmm0        # 2090 <_IO_stdin_used+0x90>
    1d92:	00 
    1d93:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1d97:	0f 96 c0             	setbe  %al
    1d9a:	c3                   	ret    

Disassembly of section .fini:

0000000000001d9c <_fini>:
    1d9c:	f3 0f 1e fa          	endbr64 
    1da0:	48 83 ec 08          	sub    $0x8,%rsp
    1da4:	48 83 c4 08          	add    $0x8,%rsp
    1da8:	c3                   	ret    
