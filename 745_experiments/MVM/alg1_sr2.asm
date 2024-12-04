
MVM/alg1_sr2:     file format elf64-x86-64


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

00000000000010a0 <puts@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <puts@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <clock_gettime@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <clock_gettime@GLIBC_2.17>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <__stack_chk_fail@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <sched_setaffinity@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <sched_setaffinity@GLIBC_2.3.4>
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
    1105:	b9 0f 00 00 00       	mov    $0xf,%ecx
    110a:	be 80 00 00 00       	mov    $0x80,%esi
    110f:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
    1116:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    111d:	00 00 
    111f:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
    1126:	00 
    1127:	31 c0                	xor    %eax,%eax
    1129:	48 8d 94 24 08 01 00 	lea    0x108(%rsp),%rdx
    1130:	00 
    1131:	4c 8d 84 24 00 01 00 	lea    0x100(%rsp),%r8
    1138:	00 
    1139:	48 c7 84 24 00 01 00 	movq   $0x1,0x100(%rsp)
    1140:	00 01 00 00 00 
    1145:	48 89 d7             	mov    %rdx,%rdi
    1148:	4c 89 c2             	mov    %r8,%rdx
    114b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    114e:	31 ff                	xor    %edi,%edi
    1150:	e8 7b ff ff ff       	call   10d0 <sched_setaffinity@plt>
    1155:	83 f8 ff             	cmp    $0xffffffff,%eax
    1158:	0f 84 3c 02 00 00    	je     139a <main+0x29a>
    115e:	31 c0                	xor    %eax,%eax
    1160:	31 db                	xor    %ebx,%ebx
    1162:	e8 39 03 00 00       	call   14a0 <initialization_MVM>
    1167:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    116c:	89 da                	mov    %ebx,%edx
    116e:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1175:	54 43 
    1177:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    117e:	00 00 
    1180:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1187:	00 00 
    1189:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1190:	00 00 
    1192:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1199:	00 00 
    119b:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    11a2:	00 00 
    11a4:	48 c1 c7 03          	rol    $0x3,%rdi
    11a8:	48 c1 c7 0d          	rol    $0xd,%rdi
    11ac:	48 c1 c7 3d          	rol    $0x3d,%rdi
    11b0:	48 c1 c7 33          	rol    $0x33,%rdi
    11b4:	48 87 db             	xchg   %rbx,%rbx
    11b7:	48 89 14 24          	mov    %rdx,(%rsp)
    11bb:	89 da                	mov    %ebx,%edx
    11bd:	48 8b 04 24          	mov    (%rsp),%rax
    11c1:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    11c6:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    11cd:	54 43 
    11cf:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    11d6:	00 00 
    11d8:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    11df:	00 00 00 00 00 
    11e4:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    11eb:	00 00 00 00 00 
    11f0:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    11f7:	00 00 00 00 00 
    11fc:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1203:	00 00 00 00 00 
    1208:	48 c1 c7 03          	rol    $0x3,%rdi
    120c:	48 c1 c7 0d          	rol    $0xd,%rdi
    1210:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1214:	48 c1 c7 33          	rol    $0x33,%rdi
    1218:	48 87 db             	xchg   %rbx,%rbx
    121b:	bf 01 00 00 00       	mov    $0x1,%edi
    1220:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1225:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    122a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    122f:	e8 7c fe ff ff       	call   10b0 <clock_gettime@plt>
    1234:	31 c0                	xor    %eax,%eax
    1236:	e8 45 05 00 00       	call   1780 <MVM_default>
    123b:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1240:	bf 01 00 00 00       	mov    $0x1,%edi
    1245:	e8 66 fe ff ff       	call   10b0 <clock_gettime@plt>
    124a:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1251:	00 
    1252:	89 da                	mov    %ebx,%edx
    1254:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    125b:	00 02 00 54 43 
    1260:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1267:	00 00 00 00 00 
    126c:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1273:	00 00 00 00 00 
    1278:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    127f:	00 00 00 00 00 
    1284:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    128b:	00 00 00 00 00 
    1290:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1297:	00 00 00 00 00 
    129c:	48 c1 c7 03          	rol    $0x3,%rdi
    12a0:	48 c1 c7 0d          	rol    $0xd,%rdi
    12a4:	48 c1 c7 3d          	rol    $0x3d,%rdi
    12a8:	48 c1 c7 33          	rol    $0x33,%rdi
    12ac:	48 87 db             	xchg   %rbx,%rbx
    12af:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    12b4:	89 da                	mov    %ebx,%edx
    12b6:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    12bb:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    12c2:	00 
    12c3:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    12ca:	00 05 00 54 43 
    12cf:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    12d6:	00 00 00 00 00 
    12db:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    12e2:	00 00 00 00 00 
    12e7:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    12ee:	00 00 00 00 00 
    12f3:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    12fa:	00 00 00 00 00 
    12ff:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1306:	00 00 00 00 00 
    130b:	48 c1 c7 03          	rol    $0x3,%rdi
    130f:	48 c1 c7 0d          	rol    $0xd,%rdi
    1313:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1317:	48 c1 c7 33          	rol    $0x33,%rdi
    131b:	48 87 db             	xchg   %rbx,%rbx
    131e:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1323:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1328:	31 c0                	xor    %eax,%eax
    132a:	e8 91 03 00 00       	call   16c0 <Compare_MVM>
    132f:	66 85 c0             	test   %ax,%ax
    1332:	75 58                	jne    138c <main+0x28c>
    1334:	48 8d 3d 00 0d 00 00 	lea    0xd00(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    133b:	e8 60 fd ff ff       	call   10a0 <puts@plt>
    1340:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1345:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    134a:	31 c0                	xor    %eax,%eax
    134c:	48 8d 35 0a 0d 00 00 	lea    0xd0a(%rip),%rsi        # 205d <_IO_stdin_used+0x5d>
    1353:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    135a:	bf 01 00 00 00       	mov    $0x1,%edi
    135f:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1364:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1369:	e8 72 fd ff ff       	call   10e0 <__printf_chk@plt>
    136e:	48 8b 84 24 88 01 00 	mov    0x188(%rsp),%rax
    1375:	00 
    1376:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    137d:	00 00 
    137f:	75 2a                	jne    13ab <main+0x2ab>
    1381:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
    1388:	31 c0                	xor    %eax,%eax
    138a:	5b                   	pop    %rbx
    138b:	c3                   	ret    
    138c:	48 8d 3d b8 0c 00 00 	lea    0xcb8(%rip),%rdi        # 204b <_IO_stdin_used+0x4b>
    1393:	e8 08 fd ff ff       	call   10a0 <puts@plt>
    1398:	eb a6                	jmp    1340 <main+0x240>
    139a:	48 8d 3d 67 0c 00 00 	lea    0xc67(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    13a1:	e8 fa fc ff ff       	call   10a0 <puts@plt>
    13a6:	e9 b3 fd ff ff       	jmp    115e <main+0x5e>
    13ab:	e8 10 fd ff ff       	call   10c0 <__stack_chk_fail@plt>

00000000000013b0 <_start>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	31 ed                	xor    %ebp,%ebp
    13b6:	49 89 d1             	mov    %rdx,%r9
    13b9:	5e                   	pop    %rsi
    13ba:	48 89 e2             	mov    %rsp,%rdx
    13bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13c1:	50                   	push   %rax
    13c2:	54                   	push   %rsp
    13c3:	45 31 c0             	xor    %r8d,%r8d
    13c6:	31 c9                	xor    %ecx,%ecx
    13c8:	48 8d 3d 31 fd ff ff 	lea    -0x2cf(%rip),%rdi        # 1100 <main>
    13cf:	ff 15 03 2c 00 00    	call   *0x2c03(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    13d5:	f4                   	hlt    
    13d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13dd:	00 00 00 

00000000000013e0 <deregister_tm_clones>:
    13e0:	48 8d 3d 29 2c 00 00 	lea    0x2c29(%rip),%rdi        # 4010 <__TMC_END__>
    13e7:	48 8d 05 22 2c 00 00 	lea    0x2c22(%rip),%rax        # 4010 <__TMC_END__>
    13ee:	48 39 f8             	cmp    %rdi,%rax
    13f1:	74 15                	je     1408 <deregister_tm_clones+0x28>
    13f3:	48 8b 05 e6 2b 00 00 	mov    0x2be6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    13fa:	48 85 c0             	test   %rax,%rax
    13fd:	74 09                	je     1408 <deregister_tm_clones+0x28>
    13ff:	ff e0                	jmp    *%rax
    1401:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1408:	c3                   	ret    
    1409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001410 <register_tm_clones>:
    1410:	48 8d 3d f9 2b 00 00 	lea    0x2bf9(%rip),%rdi        # 4010 <__TMC_END__>
    1417:	48 8d 35 f2 2b 00 00 	lea    0x2bf2(%rip),%rsi        # 4010 <__TMC_END__>
    141e:	48 29 fe             	sub    %rdi,%rsi
    1421:	48 89 f0             	mov    %rsi,%rax
    1424:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1428:	48 c1 f8 03          	sar    $0x3,%rax
    142c:	48 01 c6             	add    %rax,%rsi
    142f:	48 d1 fe             	sar    %rsi
    1432:	74 14                	je     1448 <register_tm_clones+0x38>
    1434:	48 8b 05 b5 2b 00 00 	mov    0x2bb5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    143b:	48 85 c0             	test   %rax,%rax
    143e:	74 08                	je     1448 <register_tm_clones+0x38>
    1440:	ff e0                	jmp    *%rax
    1442:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1448:	c3                   	ret    
    1449:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001450 <__do_global_dtors_aux>:
    1450:	f3 0f 1e fa          	endbr64 
    1454:	80 3d b5 2b 00 00 00 	cmpb   $0x0,0x2bb5(%rip)        # 4010 <__TMC_END__>
    145b:	75 2b                	jne    1488 <__do_global_dtors_aux+0x38>
    145d:	55                   	push   %rbp
    145e:	48 83 3d 92 2b 00 00 	cmpq   $0x0,0x2b92(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1465:	00 
    1466:	48 89 e5             	mov    %rsp,%rbp
    1469:	74 0c                	je     1477 <__do_global_dtors_aux+0x27>
    146b:	48 8b 3d 96 2b 00 00 	mov    0x2b96(%rip),%rdi        # 4008 <__dso_handle>
    1472:	e8 19 fc ff ff       	call   1090 <__cxa_finalize@plt>
    1477:	e8 64 ff ff ff       	call   13e0 <deregister_tm_clones>
    147c:	c6 05 8d 2b 00 00 01 	movb   $0x1,0x2b8d(%rip)        # 4010 <__TMC_END__>
    1483:	5d                   	pop    %rbp
    1484:	c3                   	ret    
    1485:	0f 1f 00             	nopl   (%rax)
    1488:	c3                   	ret    
    1489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001490 <frame_dummy>:
    1490:	f3 0f 1e fa          	endbr64 
    1494:	e9 77 ff ff ff       	jmp    1410 <register_tm_clones>
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <initialization_MVM>:
    14a0:	f3 0f 1e fa          	endbr64 
    14a4:	41 57                	push   %r15
    14a6:	ba 00 08 00 00       	mov    $0x800,%edx
    14ab:	be 40 00 00 00       	mov    $0x40,%esi
    14b0:	41 56                	push   %r14
    14b2:	41 55                	push   %r13
    14b4:	41 54                	push   %r12
    14b6:	55                   	push   %rbp
    14b7:	31 ed                	xor    %ebp,%ebp
    14b9:	53                   	push   %rbx
    14ba:	49 89 ed             	mov    %rbp,%r13
    14bd:	49 89 ec             	mov    %rbp,%r12
    14c0:	48 83 ec 48          	sub    $0x48,%rsp
    14c4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14cb:	00 00 
    14cd:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    14d2:	31 c0                	xor    %eax,%eax
    14d4:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    14d9:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    14de:	e8 0d fc ff ff       	call   10f0 <posix_memalign@plt>
    14e3:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    14e8:	ba 00 08 00 00       	mov    $0x800,%edx
    14ed:	be 40 00 00 00       	mov    $0x40,%esi
    14f2:	85 c0                	test   %eax,%eax
    14f4:	4c 0f 44 6c 24 28    	cmove  0x28(%rsp),%r13
    14fa:	4c 89 2d 2f 2b 00 00 	mov    %r13,0x2b2f(%rip)        # 4030 <X>
    1501:	e8 ea fb ff ff       	call   10f0 <posix_memalign@plt>
    1506:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    150b:	ba 00 08 00 00       	mov    $0x800,%edx
    1510:	be 40 00 00 00       	mov    $0x40,%esi
    1515:	85 c0                	test   %eax,%eax
    1517:	4c 0f 44 64 24 20    	cmove  0x20(%rsp),%r12
    151d:	4c 89 25 04 2b 00 00 	mov    %r12,0x2b04(%rip)        # 4028 <Y>
    1524:	49 8d 9c 24 00 08 00 	lea    0x800(%r12),%rbx
    152b:	00 
    152c:	e8 bf fb ff ff       	call   10f0 <posix_memalign@plt>
    1531:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1536:	ba 00 08 00 00       	mov    $0x800,%edx
    153b:	be 40 00 00 00       	mov    $0x40,%esi
    1540:	85 c0                	test   %eax,%eax
    1542:	48 89 e8             	mov    %rbp,%rax
    1545:	48 0f 44 44 24 18    	cmove  0x18(%rsp),%rax
    154b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1550:	48 89 05 c1 2a 00 00 	mov    %rax,0x2ac1(%rip)        # 4018 <test>
    1557:	e8 94 fb ff ff       	call   10f0 <posix_memalign@plt>
    155c:	85 c0                	test   %eax,%eax
    155e:	48 0f 44 6c 24 10    	cmove  0x10(%rsp),%rbp
    1564:	45 31 f6             	xor    %r14d,%r14d
    1567:	48 89 2c 24          	mov    %rbp,(%rsp)
    156b:	48 89 2d ae 2a 00 00 	mov    %rbp,0x2aae(%rip)        # 4020 <Z>
    1572:	4c 89 e5             	mov    %r12,%rbp
    1575:	ba 00 04 00 00       	mov    $0x400,%edx
    157a:	be 40 00 00 00       	mov    $0x40,%esi
    157f:	4c 89 ff             	mov    %r15,%rdi
    1582:	e8 69 fb ff ff       	call   10f0 <posix_memalign@plt>
    1587:	85 c0                	test   %eax,%eax
    1589:	4c 89 f0             	mov    %r14,%rax
    158c:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    1592:	48 83 c5 08          	add    $0x8,%rbp
    1596:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    159a:	48 39 dd             	cmp    %rbx,%rbp
    159d:	75 d6                	jne    1575 <initialization_MVM+0xd5>
    159f:	f3 0f 10 0d d1 0a 00 	movss  0xad1(%rip),%xmm1        # 2078 <_IO_stdin_used+0x78>
    15a6:	00 
    15a7:	31 d2                	xor    %edx,%edx
    15a9:	89 d0                	mov    %edx,%eax
    15ab:	66 0f ef c0          	pxor   %xmm0,%xmm0
    15af:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
    15b6:	48 c1 e8 21          	shr    $0x21,%rax
    15ba:	8d 34 c0             	lea    (%rax,%rax,8),%esi
    15bd:	89 d0                	mov    %edx,%eax
    15bf:	29 f0                	sub    %esi,%eax
    15c1:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    15c5:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    15c9:	f3 41 0f 11 44 95 00 	movss  %xmm0,0x0(%r13,%rdx,4)
    15d0:	48 83 c2 01          	add    $0x1,%rdx
    15d4:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    15db:	75 cc                	jne    15a9 <initialization_MVM+0x109>
    15dd:	f3 0f 10 0d 97 0a 00 	movss  0xa97(%rip),%xmm1        # 207c <_IO_stdin_used+0x7c>
    15e4:	00 
    15e5:	41 b8 ab aa aa aa    	mov    $0xaaaaaaab,%r8d
    15eb:	49 8b 3c 24          	mov    (%r12),%rdi
    15ef:	31 d2                	xor    %edx,%edx
    15f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    15f8:	89 d0                	mov    %edx,%eax
    15fa:	89 d6                	mov    %edx,%esi
    15fc:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1600:	49 0f af c0          	imul   %r8,%rax
    1604:	48 c1 e8 22          	shr    $0x22,%rax
    1608:	8d 04 40             	lea    (%rax,%rax,2),%eax
    160b:	01 c0                	add    %eax,%eax
    160d:	29 c6                	sub    %eax,%esi
    160f:	f3 0f 2a c6          	cvtsi2ss %esi,%xmm0
    1613:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1617:	f3 0f 11 04 97       	movss  %xmm0,(%rdi,%rdx,4)
    161c:	48 83 c2 01          	add    $0x1,%rdx
    1620:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    1627:	75 cf                	jne    15f8 <initialization_MVM+0x158>
    1629:	49 83 c4 08          	add    $0x8,%r12
    162d:	49 39 dc             	cmp    %rbx,%r12
    1630:	75 b9                	jne    15eb <initialization_MVM+0x14b>
    1632:	48 8b 3c 24          	mov    (%rsp),%rdi
    1636:	31 c0                	xor    %eax,%eax
    1638:	b9 80 00 00 00       	mov    $0x80,%ecx
    163d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1640:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1645:	b9 80 00 00 00       	mov    $0x80,%ecx
    164a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    164d:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1652:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1659:	00 00 
    165b:	75 0f                	jne    166c <initialization_MVM+0x1cc>
    165d:	48 83 c4 48          	add    $0x48,%rsp
    1661:	5b                   	pop    %rbx
    1662:	5d                   	pop    %rbp
    1663:	41 5c                	pop    %r12
    1665:	41 5d                	pop    %r13
    1667:	41 5e                	pop    %r14
    1669:	41 5f                	pop    %r15
    166b:	c3                   	ret    
    166c:	e8 4f fa ff ff       	call   10c0 <__stack_chk_fail@plt>
    1671:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1678:	00 00 00 00 
    167c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001680 <equal>:
    1680:	f3 0f 1e fa          	endbr64 
    1684:	0f 28 d0             	movaps %xmm0,%xmm2
    1687:	f3 0f 10 1d f1 09 00 	movss  0x9f1(%rip),%xmm3        # 2080 <_IO_stdin_used+0x80>
    168e:	00 
    168f:	31 c0                	xor    %eax,%eax
    1691:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1695:	0f 54 c3             	andps  %xmm3,%xmm0
    1698:	66 0f ef c9          	pxor   %xmm1,%xmm1
    169c:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    16a0:	0f 54 d3             	andps  %xmm3,%xmm2
    16a3:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    16a7:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    16ab:	f2 0f 10 05 dd 09 00 	movsd  0x9dd(%rip),%xmm0        # 2090 <_IO_stdin_used+0x90>
    16b2:	00 
    16b3:	66 0f 2f c1          	comisd %xmm1,%xmm0
    16b7:	0f 96 c0             	setbe  %al
    16ba:	c3                   	ret    
    16bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000016c0 <Compare_MVM>:
    16c0:	f3 0f 1e fa          	endbr64 
    16c4:	4c 8b 0d 4d 29 00 00 	mov    0x294d(%rip),%r9        # 4018 <test>
    16cb:	48 8b 35 5e 29 00 00 	mov    0x295e(%rip),%rsi        # 4030 <X>
    16d2:	48 8b 3d 4f 29 00 00 	mov    0x294f(%rip),%rdi        # 4028 <Y>
    16d9:	4c 89 ca             	mov    %r9,%rdx
    16dc:	4d 8d 81 00 04 00 00 	lea    0x400(%r9),%r8
    16e3:	48 8b 0f             	mov    (%rdi),%rcx
    16e6:	f3 0f 10 0a          	movss  (%rdx),%xmm1
    16ea:	31 c0                	xor    %eax,%eax
    16ec:	0f 1f 40 00          	nopl   0x0(%rax)
    16f0:	f3 0f 10 04 01       	movss  (%rcx,%rax,1),%xmm0
    16f5:	f3 0f 58 04 06       	addss  (%rsi,%rax,1),%xmm0
    16fa:	48 83 c0 04          	add    $0x4,%rax
    16fe:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1702:	f3 0f 11 0a          	movss  %xmm1,(%rdx)
    1706:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    170c:	75 e2                	jne    16f0 <Compare_MVM+0x30>
    170e:	48 83 c2 04          	add    $0x4,%rdx
    1712:	48 83 c7 08          	add    $0x8,%rdi
    1716:	49 39 d0             	cmp    %rdx,%r8
    1719:	75 c8                	jne    16e3 <Compare_MVM+0x23>
    171b:	48 8b 15 fe 28 00 00 	mov    0x28fe(%rip),%rdx        # 4020 <Z>
    1722:	f2 0f 10 1d 66 09 00 	movsd  0x966(%rip),%xmm3        # 2090 <_IO_stdin_used+0x90>
    1729:	00 
    172a:	31 c0                	xor    %eax,%eax
    172c:	f3 0f 10 15 4c 09 00 	movss  0x94c(%rip),%xmm2        # 2080 <_IO_stdin_used+0x80>
    1733:	00 
    1734:	f3 0f 10 0c 02       	movss  (%rdx,%rax,1),%xmm1
    1739:	0f 28 c1             	movaps %xmm1,%xmm0
    173c:	f3 41 0f 5c 04 01    	subss  (%r9,%rax,1),%xmm0
    1742:	0f 54 ca             	andps  %xmm2,%xmm1
    1745:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1749:	0f 54 c2             	andps  %xmm2,%xmm0
    174c:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1750:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1754:	66 0f 2f d8          	comisd %xmm0,%xmm3
    1758:	76 16                	jbe    1770 <Compare_MVM+0xb0>
    175a:	48 83 c0 04          	add    $0x4,%rax
    175e:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1764:	75 ce                	jne    1734 <Compare_MVM+0x74>
    1766:	31 c0                	xor    %eax,%eax
    1768:	c3                   	ret    
    1769:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1770:	b8 01 00 00 00       	mov    $0x1,%eax
    1775:	c3                   	ret    
    1776:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    177d:	00 00 00 

0000000000001780 <MVM_default>:
    1780:	f3 0f 1e fa          	endbr64 
    1784:	48 8b 05 95 28 00 00 	mov    0x2895(%rip),%rax        # 4020 <Z>
    178b:	48 8b 3d 96 28 00 00 	mov    0x2896(%rip),%rdi        # 4028 <Y>
    1792:	41 57                	push   %r15
    1794:	41 56                	push   %r14
    1796:	48 8b 35 93 28 00 00 	mov    0x2893(%rip),%rsi        # 4030 <X>
    179d:	41 55                	push   %r13
    179f:	41 54                	push   %r12
    17a1:	55                   	push   %rbp
    17a2:	53                   	push   %rbx
    17a3:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
    17a8:	48 89 44 24 d8       	mov    %rax,-0x28(%rsp)
    17ad:	48 05 f0 03 00 00    	add    $0x3f0,%rax
    17b3:	48 89 7c 24 f8       	mov    %rdi,-0x8(%rsp)
    17b8:	48 89 7c 24 e0       	mov    %rdi,-0x20(%rsp)
    17bd:	48 89 44 24 e8       	mov    %rax,-0x18(%rsp)
    17c2:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    17c7:	f3 44 0f 10 70 10    	movss  0x10(%rax),%xmm14
    17cd:	f3 44 0f 10 68 2c    	movss  0x2c(%rax),%xmm13
    17d3:	f3 44 0f 10 60 20    	movss  0x20(%rax),%xmm12
    17d9:	f3 44 0f 10 58 14    	movss  0x14(%rax),%xmm11
    17df:	f3 44 0f 10 50 28    	movss  0x28(%rax),%xmm10
    17e5:	f3 44 0f 10 48 0c    	movss  0xc(%rax),%xmm9
    17eb:	f3 44 0f 10 40 24    	movss  0x24(%rax),%xmm8
    17f1:	f3 0f 10 38          	movss  (%rax),%xmm7
    17f5:	f3 0f 10 70 04       	movss  0x4(%rax),%xmm6
    17fa:	f3 0f 10 68 08       	movss  0x8(%rax),%xmm5
    17ff:	f3 0f 10 58 34       	movss  0x34(%rax),%xmm3
    1804:	f3 0f 10 60 18       	movss  0x18(%rax),%xmm4
    1809:	f3 0f 10 50 30       	movss  0x30(%rax),%xmm2
    180e:	f3 0f 10 48 1c       	movss  0x1c(%rax),%xmm1
    1813:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    1818:	48 8b 50 68          	mov    0x68(%rax),%rdx
    181c:	48 8b 38             	mov    (%rax),%rdi
    181f:	4c 8b 78 08          	mov    0x8(%rax),%r15
    1823:	4c 8b 70 10          	mov    0x10(%rax),%r14
    1827:	4c 8b 68 18          	mov    0x18(%rax),%r13
    182b:	4c 8b 60 20          	mov    0x20(%rax),%r12
    182f:	48 89 54 24 d0       	mov    %rdx,-0x30(%rsp)
    1834:	48 8b 68 28          	mov    0x28(%rax),%rbp
    1838:	48 8b 58 30          	mov    0x30(%rax),%rbx
    183c:	48 89 7c 24 c8       	mov    %rdi,-0x38(%rsp)
    1841:	4c 8b 58 38          	mov    0x38(%rax),%r11
    1845:	4c 8b 50 40          	mov    0x40(%rax),%r10
    1849:	4c 8b 48 48          	mov    0x48(%rax),%r9
    184d:	4c 8b 40 50          	mov    0x50(%rax),%r8
    1851:	48 8b 78 58          	mov    0x58(%rax),%rdi
    1855:	48 8b 48 60          	mov    0x60(%rax),%rcx
    1859:	31 c0                	xor    %eax,%eax
    185b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1860:	48 8b 54 24 c8       	mov    -0x38(%rsp),%rdx
    1865:	f3 41 0f 58 34 07    	addss  (%r15,%rax,1),%xmm6
    186b:	f3 41 0f 58 2c 06    	addss  (%r14,%rax,1),%xmm5
    1871:	f3 45 0f 58 4c 05 00 	addss  0x0(%r13,%rax,1),%xmm9
    1878:	f3 0f 58 3c 02       	addss  (%rdx,%rax,1),%xmm7
    187d:	48 8b 54 24 d0       	mov    -0x30(%rsp),%rdx
    1882:	f3 45 0f 58 34 04    	addss  (%r12,%rax,1),%xmm14
    1888:	f3 44 0f 58 5c 05 00 	addss  0x0(%rbp,%rax,1),%xmm11
    188f:	f3 0f 58 24 03       	addss  (%rbx,%rax,1),%xmm4
    1894:	f3 41 0f 58 0c 03    	addss  (%r11,%rax,1),%xmm1
    189a:	f3 45 0f 58 24 02    	addss  (%r10,%rax,1),%xmm12
    18a0:	f3 45 0f 58 04 01    	addss  (%r9,%rax,1),%xmm8
    18a6:	f3 45 0f 58 14 00    	addss  (%r8,%rax,1),%xmm10
    18ac:	f3 44 0f 58 2c 07    	addss  (%rdi,%rax,1),%xmm13
    18b2:	f3 0f 58 14 01       	addss  (%rcx,%rax,1),%xmm2
    18b7:	f3 0f 58 1c 02       	addss  (%rdx,%rax,1),%xmm3
    18bc:	f3 0f 10 04 06       	movss  (%rsi,%rax,1),%xmm0
    18c1:	48 83 c0 04          	add    $0x4,%rax
    18c5:	f3 0f 58 f8          	addss  %xmm0,%xmm7
    18c9:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    18cd:	f3 0f 58 e8          	addss  %xmm0,%xmm5
    18d1:	f3 44 0f 58 c8       	addss  %xmm0,%xmm9
    18d6:	f3 44 0f 58 f0       	addss  %xmm0,%xmm14
    18db:	f3 44 0f 58 d8       	addss  %xmm0,%xmm11
    18e0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    18e4:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    18e8:	f3 44 0f 58 e0       	addss  %xmm0,%xmm12
    18ed:	f3 44 0f 58 c0       	addss  %xmm0,%xmm8
    18f2:	f3 44 0f 58 d0       	addss  %xmm0,%xmm10
    18f7:	f3 44 0f 58 e8       	addss  %xmm0,%xmm13
    18fc:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    1900:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    1904:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    190a:	0f 85 50 ff ff ff    	jne    1860 <MVM_default+0xe0>
    1910:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1915:	48 83 44 24 e0 70    	addq   $0x70,-0x20(%rsp)
    191b:	f3 44 0f 11 70 10    	movss  %xmm14,0x10(%rax)
    1921:	48 83 c0 38          	add    $0x38,%rax
    1925:	f3 44 0f 11 68 f4    	movss  %xmm13,-0xc(%rax)
    192b:	f3 44 0f 11 60 e8    	movss  %xmm12,-0x18(%rax)
    1931:	f3 44 0f 11 58 dc    	movss  %xmm11,-0x24(%rax)
    1937:	f3 44 0f 11 50 f0    	movss  %xmm10,-0x10(%rax)
    193d:	f3 44 0f 11 48 d4    	movss  %xmm9,-0x2c(%rax)
    1943:	f3 44 0f 11 40 ec    	movss  %xmm8,-0x14(%rax)
    1949:	f3 0f 11 78 c8       	movss  %xmm7,-0x38(%rax)
    194e:	f3 0f 11 70 cc       	movss  %xmm6,-0x34(%rax)
    1953:	f3 0f 11 68 d0       	movss  %xmm5,-0x30(%rax)
    1958:	f3 0f 11 58 fc       	movss  %xmm3,-0x4(%rax)
    195d:	f3 0f 11 60 e0       	movss  %xmm4,-0x20(%rax)
    1962:	f3 0f 11 50 f8       	movss  %xmm2,-0x8(%rax)
    1967:	f3 0f 11 48 e4       	movss  %xmm1,-0x1c(%rax)
    196c:	48 89 44 24 d8       	mov    %rax,-0x28(%rsp)
    1971:	48 39 44 24 e8       	cmp    %rax,-0x18(%rsp)
    1976:	0f 85 46 fe ff ff    	jne    17c2 <MVM_default+0x42>
    197c:	48 8b 7c 24 f0       	mov    -0x10(%rsp),%rdi
    1981:	4c 8b 44 24 f8       	mov    -0x8(%rsp),%r8
    1986:	b9 fc 00 00 00       	mov    $0xfc,%ecx
    198b:	f3 0f 10 04 8f       	movss  (%rdi,%rcx,4),%xmm0
    1990:	49 8b 14 c8          	mov    (%r8,%rcx,8),%rdx
    1994:	31 c0                	xor    %eax,%eax
    1996:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    199d:	00 00 00 
    19a0:	f3 0f 58 04 02       	addss  (%rdx,%rax,1),%xmm0
    19a5:	f3 0f 58 04 06       	addss  (%rsi,%rax,1),%xmm0
    19aa:	48 83 c0 04          	add    $0x4,%rax
    19ae:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    19b4:	75 ea                	jne    19a0 <MVM_default+0x220>
    19b6:	f3 0f 11 04 8f       	movss  %xmm0,(%rdi,%rcx,4)
    19bb:	48 83 c1 01          	add    $0x1,%rcx
    19bf:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
    19c6:	75 c3                	jne    198b <MVM_default+0x20b>
    19c8:	5b                   	pop    %rbx
    19c9:	5d                   	pop    %rbp
    19ca:	41 5c                	pop    %r12
    19cc:	41 5d                	pop    %r13
    19ce:	41 5e                	pop    %r14
    19d0:	41 5f                	pop    %r15
    19d2:	c3                   	ret    

Disassembly of section .fini:

00000000000019d4 <_fini>:
    19d4:	f3 0f 1e fa          	endbr64 
    19d8:	48 83 ec 08          	sub    $0x8,%rsp
    19dc:	48 83 c4 08          	add    $0x8,%rsp
    19e0:	c3                   	ret    
