
gemver/alg1_sr2:     file format elf64-x86-64


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
    1121:	e8 ba 03 00 00       	call   14e0 <gemver_init>
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
    11f5:	e8 66 05 00 00       	call   1760 <gemver>
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
    12e9:	e8 72 06 00 00       	call   1960 <Compare_gemver>
    12ee:	66 85 c0             	test   %ax,%ax
    12f1:	0f 85 d4 00 00 00    	jne    13cb <main+0x2cb>
    12f7:	48 8d 3d 06 0d 00 00 	lea    0xd06(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12fe:	e8 ad fd ff ff       	call   10b0 <puts@plt>
    1303:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1308:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    130d:	31 c0                	xor    %eax,%eax
    130f:	31 db                	xor    %ebx,%ebx
    1311:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1318:	bf 01 00 00 00       	mov    $0x1,%edi
    131d:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1322:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1327:	48 8d 35 f6 0c 00 00 	lea    0xcf6(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    132e:	e8 ad fd ff ff       	call   10e0 <__printf_chk@plt>
    1333:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1338:	48 8b 05 01 2d 00 00 	mov    0x2d01(%rip),%rax        # 4040 <A>
    133f:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1343:	e8 58 fd ff ff       	call   10a0 <free@plt>
    1348:	48 8b 05 c9 2c 00 00 	mov    0x2cc9(%rip),%rax        # 4018 <test_A>
    134f:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1353:	48 83 c3 08          	add    $0x8,%rbx
    1357:	e8 44 fd ff ff       	call   10a0 <free@plt>
    135c:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1363:	75 d3                	jne    1338 <main+0x238>
    1365:	48 8b 3d d4 2c 00 00 	mov    0x2cd4(%rip),%rdi        # 4040 <A>
    136c:	e8 2f fd ff ff       	call   10a0 <free@plt>
    1371:	48 8b 3d a0 2c 00 00 	mov    0x2ca0(%rip),%rdi        # 4018 <test_A>
    1378:	e8 23 fd ff ff       	call   10a0 <free@plt>
    137d:	48 8b 3d b4 2c 00 00 	mov    0x2cb4(%rip),%rdi        # 4038 <u1>
    1384:	e8 17 fd ff ff       	call   10a0 <free@plt>
    1389:	48 8b 3d a0 2c 00 00 	mov    0x2ca0(%rip),%rdi        # 4030 <v1>
    1390:	e8 0b fd ff ff       	call   10a0 <free@plt>
    1395:	48 8b 3d 8c 2c 00 00 	mov    0x2c8c(%rip),%rdi        # 4028 <u2>
    139c:	e8 ff fc ff ff       	call   10a0 <free@plt>
    13a1:	48 8b 3d 78 2c 00 00 	mov    0x2c78(%rip),%rdi        # 4020 <v2>
    13a8:	e8 f3 fc ff ff       	call   10a0 <free@plt>
    13ad:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    13b4:	00 
    13b5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    13bc:	00 00 
    13be:	75 1c                	jne    13dc <main+0x2dc>
    13c0:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
    13c7:	31 c0                	xor    %eax,%eax
    13c9:	5b                   	pop    %rbx
    13ca:	c3                   	ret    
    13cb:	48 8d 3d 41 0c 00 00 	lea    0xc41(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    13d2:	e8 d9 fc ff ff       	call   10b0 <puts@plt>
    13d7:	e9 27 ff ff ff       	jmp    1303 <main+0x203>
    13dc:	e8 ef fc ff ff       	call   10d0 <__stack_chk_fail@plt>
    13e1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13e8:	00 00 00 
    13eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013f0 <_start>:
    13f0:	f3 0f 1e fa          	endbr64 
    13f4:	31 ed                	xor    %ebp,%ebp
    13f6:	49 89 d1             	mov    %rdx,%r9
    13f9:	5e                   	pop    %rsi
    13fa:	48 89 e2             	mov    %rsp,%rdx
    13fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1401:	50                   	push   %rax
    1402:	54                   	push   %rsp
    1403:	45 31 c0             	xor    %r8d,%r8d
    1406:	31 c9                	xor    %ecx,%ecx
    1408:	48 8d 3d f1 fc ff ff 	lea    -0x30f(%rip),%rdi        # 1100 <main>
    140f:	ff 15 c3 2b 00 00    	call   *0x2bc3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1415:	f4                   	hlt    
    1416:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    141d:	00 00 00 

0000000000001420 <deregister_tm_clones>:
    1420:	48 8d 3d e9 2b 00 00 	lea    0x2be9(%rip),%rdi        # 4010 <__TMC_END__>
    1427:	48 8d 05 e2 2b 00 00 	lea    0x2be2(%rip),%rax        # 4010 <__TMC_END__>
    142e:	48 39 f8             	cmp    %rdi,%rax
    1431:	74 15                	je     1448 <deregister_tm_clones+0x28>
    1433:	48 8b 05 a6 2b 00 00 	mov    0x2ba6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    143a:	48 85 c0             	test   %rax,%rax
    143d:	74 09                	je     1448 <deregister_tm_clones+0x28>
    143f:	ff e0                	jmp    *%rax
    1441:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1448:	c3                   	ret    
    1449:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001450 <register_tm_clones>:
    1450:	48 8d 3d b9 2b 00 00 	lea    0x2bb9(%rip),%rdi        # 4010 <__TMC_END__>
    1457:	48 8d 35 b2 2b 00 00 	lea    0x2bb2(%rip),%rsi        # 4010 <__TMC_END__>
    145e:	48 29 fe             	sub    %rdi,%rsi
    1461:	48 89 f0             	mov    %rsi,%rax
    1464:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1468:	48 c1 f8 03          	sar    $0x3,%rax
    146c:	48 01 c6             	add    %rax,%rsi
    146f:	48 d1 fe             	sar    %rsi
    1472:	74 14                	je     1488 <register_tm_clones+0x38>
    1474:	48 8b 05 75 2b 00 00 	mov    0x2b75(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    147b:	48 85 c0             	test   %rax,%rax
    147e:	74 08                	je     1488 <register_tm_clones+0x38>
    1480:	ff e0                	jmp    *%rax
    1482:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1488:	c3                   	ret    
    1489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001490 <__do_global_dtors_aux>:
    1490:	f3 0f 1e fa          	endbr64 
    1494:	80 3d 75 2b 00 00 00 	cmpb   $0x0,0x2b75(%rip)        # 4010 <__TMC_END__>
    149b:	75 2b                	jne    14c8 <__do_global_dtors_aux+0x38>
    149d:	55                   	push   %rbp
    149e:	48 83 3d 52 2b 00 00 	cmpq   $0x0,0x2b52(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    14a5:	00 
    14a6:	48 89 e5             	mov    %rsp,%rbp
    14a9:	74 0c                	je     14b7 <__do_global_dtors_aux+0x27>
    14ab:	48 8b 3d 56 2b 00 00 	mov    0x2b56(%rip),%rdi        # 4008 <__dso_handle>
    14b2:	e8 d9 fb ff ff       	call   1090 <__cxa_finalize@plt>
    14b7:	e8 64 ff ff ff       	call   1420 <deregister_tm_clones>
    14bc:	c6 05 4d 2b 00 00 01 	movb   $0x1,0x2b4d(%rip)        # 4010 <__TMC_END__>
    14c3:	5d                   	pop    %rbp
    14c4:	c3                   	ret    
    14c5:	0f 1f 00             	nopl   (%rax)
    14c8:	c3                   	ret    
    14c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014d0 <frame_dummy>:
    14d0:	f3 0f 1e fa          	endbr64 
    14d4:	e9 77 ff ff ff       	jmp    1450 <register_tm_clones>
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <gemver_init>:
    14e0:	f3 0f 1e fa          	endbr64 
    14e4:	41 57                	push   %r15
    14e6:	ba 00 04 00 00       	mov    $0x400,%edx
    14eb:	be 40 00 00 00       	mov    $0x40,%esi
    14f0:	41 56                	push   %r14
    14f2:	41 55                	push   %r13
    14f4:	41 54                	push   %r12
    14f6:	55                   	push   %rbp
    14f7:	31 ed                	xor    %ebp,%ebp
    14f9:	53                   	push   %rbx
    14fa:	48 83 ec 68          	sub    $0x68,%rsp
    14fe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1505:	00 00 
    1507:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    150c:	31 c0                	xor    %eax,%eax
    150e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1513:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
    1518:	e8 d3 fb ff ff       	call   10f0 <posix_memalign@plt>
    151d:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    1522:	ba 00 04 00 00       	mov    $0x400,%edx
    1527:	be 40 00 00 00       	mov    $0x40,%esi
    152c:	85 c0                	test   %eax,%eax
    152e:	48 89 e8             	mov    %rbp,%rax
    1531:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
    1536:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    153c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1541:	48 89 05 f8 2a 00 00 	mov    %rax,0x2af8(%rip)        # 4040 <A>
    1548:	e8 a3 fb ff ff       	call   10f0 <posix_memalign@plt>
    154d:	85 c0                	test   %eax,%eax
    154f:	48 0f 44 6c 24 18    	cmove  0x18(%rsp),%rbp
    1555:	45 31 e4             	xor    %r12d,%r12d
    1558:	31 db                	xor    %ebx,%ebx
    155a:	48 89 2d b7 2a 00 00 	mov    %rbp,0x2ab7(%rip)        # 4018 <test_A>
    1561:	ba 00 02 00 00       	mov    $0x200,%edx
    1566:	be 40 00 00 00       	mov    $0x40,%esi
    156b:	4c 89 f7             	mov    %r14,%rdi
    156e:	49 89 df             	mov    %rbx,%r15
    1571:	e8 7a fb ff ff       	call   10f0 <posix_memalign@plt>
    1576:	ba 00 02 00 00       	mov    $0x200,%edx
    157b:	be 40 00 00 00       	mov    $0x40,%esi
    1580:	4c 89 ef             	mov    %r13,%rdi
    1583:	85 c0                	test   %eax,%eax
    1585:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    158a:	4c 0f 44 7c 24 30    	cmove  0x30(%rsp),%r15
    1590:	4e 89 3c 20          	mov    %r15,(%rax,%r12,1)
    1594:	e8 57 fb ff ff       	call   10f0 <posix_memalign@plt>
    1599:	48 89 da             	mov    %rbx,%rdx
    159c:	85 c0                	test   %eax,%eax
    159e:	48 0f 44 54 24 28    	cmove  0x28(%rsp),%rdx
    15a4:	31 c0                	xor    %eax,%eax
    15a6:	4a 89 54 25 00       	mov    %rdx,0x0(%rbp,%r12,1)
    15ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    15b0:	41 c7 04 07 00 00 00 	movl   $0x0,(%r15,%rax,1)
    15b7:	00 
    15b8:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    15bf:	48 83 c0 04          	add    $0x4,%rax
    15c3:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    15c9:	75 e5                	jne    15b0 <gemver_init+0xd0>
    15cb:	49 83 c4 08          	add    $0x8,%r12
    15cf:	49 81 fc 00 04 00 00 	cmp    $0x400,%r12
    15d6:	75 89                	jne    1561 <gemver_init+0x81>
    15d8:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    15dd:	ba 00 02 00 00       	mov    $0x200,%edx
    15e2:	be 40 00 00 00       	mov    $0x40,%esi
    15e7:	45 31 ed             	xor    %r13d,%r13d
    15ea:	e8 01 fb ff ff       	call   10f0 <posix_memalign@plt>
    15ef:	4d 89 ec             	mov    %r13,%r12
    15f2:	48 8d 7c 24 48       	lea    0x48(%rsp),%rdi
    15f7:	4c 89 ed             	mov    %r13,%rbp
    15fa:	85 c0                	test   %eax,%eax
    15fc:	4c 0f 44 64 24 50    	cmove  0x50(%rsp),%r12
    1602:	ba 00 02 00 00       	mov    $0x200,%edx
    1607:	4c 89 eb             	mov    %r13,%rbx
    160a:	be 40 00 00 00       	mov    $0x40,%esi
    160f:	4c 89 25 22 2a 00 00 	mov    %r12,0x2a22(%rip)        # 4038 <u1>
    1616:	e8 d5 fa ff ff       	call   10f0 <posix_memalign@plt>
    161b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1620:	ba 00 02 00 00       	mov    $0x200,%edx
    1625:	be 40 00 00 00       	mov    $0x40,%esi
    162a:	85 c0                	test   %eax,%eax
    162c:	48 0f 44 6c 24 48    	cmove  0x48(%rsp),%rbp
    1632:	48 89 2d f7 29 00 00 	mov    %rbp,0x29f7(%rip)        # 4030 <v1>
    1639:	e8 b2 fa ff ff       	call   10f0 <posix_memalign@plt>
    163e:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    1643:	be 40 00 00 00       	mov    $0x40,%esi
    1648:	ba 00 02 00 00       	mov    $0x200,%edx
    164d:	85 c0                	test   %eax,%eax
    164f:	48 0f 44 5c 24 40    	cmove  0x40(%rsp),%rbx
    1655:	48 89 1d cc 29 00 00 	mov    %rbx,0x29cc(%rip)        # 4028 <u2>
    165c:	e8 8f fa ff ff       	call   10f0 <posix_memalign@plt>
    1661:	4c 89 ee             	mov    %r13,%rsi
    1664:	bf ab aa aa aa       	mov    $0xaaaaaaab,%edi
    1669:	f3 0f 10 15 cf 09 00 	movss  0x9cf(%rip),%xmm2        # 2040 <_IO_stdin_used+0x40>
    1670:	00 
    1671:	85 c0                	test   %eax,%eax
    1673:	48 0f 44 74 24 38    	cmove  0x38(%rsp),%rsi
    1679:	41 b8 cd cc cc cc    	mov    $0xcccccccd,%r8d
    167f:	31 c0                	xor    %eax,%eax
    1681:	f3 0f 10 0d bb 09 00 	movss  0x9bb(%rip),%xmm1        # 2044 <_IO_stdin_used+0x44>
    1688:	00 
    1689:	48 89 35 90 29 00 00 	mov    %rsi,0x2990(%rip)        # 4020 <v2>
    1690:	89 c2                	mov    %eax,%edx
    1692:	89 c1                	mov    %eax,%ecx
    1694:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1698:	4c 69 ca 25 49 92 24 	imul   $0x24924925,%rdx,%r9
    169f:	49 c1 e9 20          	shr    $0x20,%r9
    16a3:	44 29 c9             	sub    %r9d,%ecx
    16a6:	d1 e9                	shr    %ecx
    16a8:	44 01 c9             	add    %r9d,%ecx
    16ab:	c1 e9 02             	shr    $0x2,%ecx
    16ae:	44 8d 0c cd 00 00 00 	lea    0x0(,%rcx,8),%r9d
    16b5:	00 
    16b6:	41 29 c9             	sub    %ecx,%r9d
    16b9:	89 c1                	mov    %eax,%ecx
    16bb:	44 29 c9             	sub    %r9d,%ecx
    16be:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
    16c2:	48 89 d1             	mov    %rdx,%rcx
    16c5:	49 0f af c8          	imul   %r8,%rcx
    16c9:	48 0f af d7          	imul   %rdi,%rdx
    16cd:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    16d1:	48 c1 e9 22          	shr    $0x22,%rcx
    16d5:	44 8d 0c 89          	lea    (%rcx,%rcx,4),%r9d
    16d9:	89 c1                	mov    %eax,%ecx
    16db:	48 c1 ea 21          	shr    $0x21,%rdx
    16df:	44 29 c9             	sub    %r9d,%ecx
    16e2:	f3 41 0f 11 04 84    	movss  %xmm0,(%r12,%rax,4)
    16e8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    16ec:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
    16f0:	8d 0c 52             	lea    (%rdx,%rdx,2),%ecx
    16f3:	89 c2                	mov    %eax,%edx
    16f5:	29 ca                	sub    %ecx,%edx
    16f7:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    16fb:	f3 0f 11 44 85 00    	movss  %xmm0,0x0(%rbp,%rax,4)
    1701:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1705:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    1709:	89 c2                	mov    %eax,%edx
    170b:	83 e2 03             	and    $0x3,%edx
    170e:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1712:	f3 0f 11 04 83       	movss  %xmm0,(%rbx,%rax,4)
    1717:	66 0f ef c0          	pxor   %xmm0,%xmm0
    171b:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    171f:	f3 0f 5c c2          	subss  %xmm2,%xmm0
    1723:	f3 0f 11 04 86       	movss  %xmm0,(%rsi,%rax,4)
    1728:	48 83 c0 01          	add    $0x1,%rax
    172c:	48 3d 80 00 00 00    	cmp    $0x80,%rax
    1732:	0f 85 58 ff ff ff    	jne    1690 <gemver_init+0x1b0>
    1738:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    173d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1744:	00 00 
    1746:	75 0f                	jne    1757 <gemver_init+0x277>
    1748:	48 83 c4 68          	add    $0x68,%rsp
    174c:	5b                   	pop    %rbx
    174d:	5d                   	pop    %rbp
    174e:	41 5c                	pop    %r12
    1750:	41 5d                	pop    %r13
    1752:	41 5e                	pop    %r14
    1754:	41 5f                	pop    %r15
    1756:	c3                   	ret    
    1757:	e8 74 f9 ff ff       	call   10d0 <__stack_chk_fail@plt>
    175c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001760 <gemver>:
    1760:	f3 0f 1e fa          	endbr64 
    1764:	41 57                	push   %r15
    1766:	48 8b 15 cb 28 00 00 	mov    0x28cb(%rip),%rdx        # 4038 <u1>
    176d:	41 56                	push   %r14
    176f:	4c 8b 3d ca 28 00 00 	mov    0x28ca(%rip),%r15        # 4040 <A>
    1776:	41 55                	push   %r13
    1778:	4c 8b 2d a9 28 00 00 	mov    0x28a9(%rip),%r13        # 4028 <u2>
    177f:	41 54                	push   %r12
    1781:	4d 89 fe             	mov    %r15,%r14
    1784:	4c 8d a2 f8 01 00 00 	lea    0x1f8(%rdx),%r12
    178b:	55                   	push   %rbp
    178c:	48 8b 2d 8d 28 00 00 	mov    0x288d(%rip),%rbp        # 4020 <v2>
    1793:	4c 89 e9             	mov    %r13,%rcx
    1796:	53                   	push   %rbx
    1797:	48 8b 1d 92 28 00 00 	mov    0x2892(%rip),%rbx        # 4030 <v1>
    179e:	4d 8b 5e 18          	mov    0x18(%r14),%r11
    17a2:	4d 8b 56 08          	mov    0x8(%r14),%r10
    17a6:	31 c0                	xor    %eax,%eax
    17a8:	4d 8b 4e 28          	mov    0x28(%r14),%r9
    17ac:	4d 8b 06             	mov    (%r14),%r8
    17af:	49 8b 7e 10          	mov    0x10(%r14),%rdi
    17b3:	49 8b 76 20          	mov    0x20(%r14),%rsi
    17b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    17be:	00 00 
    17c0:	f3 0f 10 44 05 00    	movss  0x0(%rbp,%rax,1),%xmm0
    17c6:	f3 0f 10 21          	movss  (%rcx),%xmm4
    17ca:	f3 0f 10 0c 03       	movss  (%rbx,%rax,1),%xmm1
    17cf:	f3 0f 10 12          	movss  (%rdx),%xmm2
    17d3:	f3 0f 59 e0          	mulss  %xmm0,%xmm4
    17d7:	f3 0f 10 71 04       	movss  0x4(%rcx),%xmm6
    17dc:	f3 0f 10 59 08       	movss  0x8(%rcx),%xmm3
    17e1:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
    17e5:	f3 0f 10 6a 10       	movss  0x10(%rdx),%xmm5
    17ea:	f3 0f 10 7a 0c       	movss  0xc(%rdx),%xmm7
    17ef:	f3 41 0f 58 14 00    	addss  (%r8,%rax,1),%xmm2
    17f5:	f3 0f 59 f0          	mulss  %xmm0,%xmm6
    17f9:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    17fd:	f3 0f 59 e9          	mulss  %xmm1,%xmm5
    1801:	f3 0f 58 e2          	addss  %xmm2,%xmm4
    1805:	f3 0f 10 52 04       	movss  0x4(%rdx),%xmm2
    180a:	f3 0f 58 2c 06       	addss  (%rsi,%rax,1),%xmm5
    180f:	f3 0f 59 f9          	mulss  %xmm1,%xmm7
    1813:	f3 41 0f 58 3c 03    	addss  (%r11,%rax,1),%xmm7
    1819:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
    181d:	f3 41 0f 58 14 02    	addss  (%r10,%rax,1),%xmm2
    1823:	f3 0f 58 f2          	addss  %xmm2,%xmm6
    1827:	f3 0f 10 52 08       	movss  0x8(%rdx),%xmm2
    182c:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
    1830:	f3 0f 58 14 07       	addss  (%rdi,%rax,1),%xmm2
    1835:	f3 0f 59 4a 14       	mulss  0x14(%rdx),%xmm1
    183a:	f3 41 0f 58 0c 01    	addss  (%r9,%rax,1),%xmm1
    1840:	f3 0f 58 da          	addss  %xmm2,%xmm3
    1844:	f3 0f 10 51 10       	movss  0x10(%rcx),%xmm2
    1849:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    184d:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1851:	f3 0f 10 69 14       	movss  0x14(%rcx),%xmm5
    1856:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    185a:	f3 0f 59 41 0c       	mulss  0xc(%rcx),%xmm0
    185f:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1863:	f3 0f 58 c7          	addss  %xmm7,%xmm0
    1867:	f3 41 0f 11 04 03    	movss  %xmm0,(%r11,%rax,1)
    186d:	f3 41 0f 11 34 02    	movss  %xmm6,(%r10,%rax,1)
    1873:	f3 41 0f 11 0c 01    	movss  %xmm1,(%r9,%rax,1)
    1879:	f3 41 0f 11 24 00    	movss  %xmm4,(%r8,%rax,1)
    187f:	f3 0f 11 1c 07       	movss  %xmm3,(%rdi,%rax,1)
    1884:	f3 0f 11 14 06       	movss  %xmm2,(%rsi,%rax,1)
    1889:	48 83 c0 04          	add    $0x4,%rax
    188d:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1893:	0f 85 27 ff ff ff    	jne    17c0 <gemver+0x60>
    1899:	48 83 c2 18          	add    $0x18,%rdx
    189d:	49 83 c6 30          	add    $0x30,%r14
    18a1:	48 83 c1 18          	add    $0x18,%rcx
    18a5:	49 39 d4             	cmp    %rdx,%r12
    18a8:	0f 85 f0 fe ff ff    	jne    179e <gemver+0x3e>
    18ae:	49 81 c5 f8 01 00 00 	add    $0x1f8,%r13
    18b5:	b9 7e 00 00 00       	mov    $0x7e,%ecx
    18ba:	49 8b 14 cf          	mov    (%r15,%rcx,8),%rdx
    18be:	31 c0                	xor    %eax,%eax
    18c0:	f3 41 0f 10 45 00    	movss  0x0(%r13),%xmm0
    18c6:	f3 0f 59 44 05 00    	mulss  0x0(%rbp,%rax,1),%xmm0
    18cc:	f3 41 0f 10 0c 24    	movss  (%r12),%xmm1
    18d2:	f3 0f 59 0c 03       	mulss  (%rbx,%rax,1),%xmm1
    18d7:	f3 0f 58 0c 02       	addss  (%rdx,%rax,1),%xmm1
    18dc:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    18e0:	f3 0f 11 04 02       	movss  %xmm0,(%rdx,%rax,1)
    18e5:	48 83 c0 04          	add    $0x4,%rax
    18e9:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    18ef:	75 cf                	jne    18c0 <gemver+0x160>
    18f1:	49 83 c4 04          	add    $0x4,%r12
    18f5:	49 83 c5 04          	add    $0x4,%r13
    18f9:	48 83 f9 7f          	cmp    $0x7f,%rcx
    18fd:	74 07                	je     1906 <gemver+0x1a6>
    18ff:	b9 7f 00 00 00       	mov    $0x7f,%ecx
    1904:	eb b4                	jmp    18ba <gemver+0x15a>
    1906:	5b                   	pop    %rbx
    1907:	5d                   	pop    %rbp
    1908:	41 5c                	pop    %r12
    190a:	41 5d                	pop    %r13
    190c:	41 5e                	pop    %r14
    190e:	41 5f                	pop    %r15
    1910:	c3                   	ret    
    1911:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1918:	00 00 00 00 
    191c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001920 <equal>:
    1920:	f3 0f 1e fa          	endbr64 
    1924:	0f 28 d0             	movaps %xmm0,%xmm2
    1927:	f3 0f 10 1d 21 07 00 	movss  0x721(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    192e:	00 
    192f:	31 c0                	xor    %eax,%eax
    1931:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1935:	0f 54 c3             	andps  %xmm3,%xmm0
    1938:	66 0f ef c9          	pxor   %xmm1,%xmm1
    193c:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1940:	0f 54 d3             	andps  %xmm3,%xmm2
    1943:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1947:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    194b:	f2 0f 10 05 0d 07 00 	movsd  0x70d(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1952:	00 
    1953:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1957:	0f 96 c0             	setbe  %al
    195a:	c3                   	ret    
    195b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001960 <Compare_gemver>:
    1960:	f3 0f 1e fa          	endbr64 
    1964:	4c 8b 1d ad 26 00 00 	mov    0x26ad(%rip),%r11        # 4018 <test_A>
    196b:	48 8b 0d c6 26 00 00 	mov    0x26c6(%rip),%rcx        # 4038 <u1>
    1972:	4c 8b 05 b7 26 00 00 	mov    0x26b7(%rip),%r8        # 4030 <v1>
    1979:	48 8b 3d a0 26 00 00 	mov    0x26a0(%rip),%rdi        # 4020 <v2>
    1980:	48 8b 35 a1 26 00 00 	mov    0x26a1(%rip),%rsi        # 4028 <u2>
    1987:	4d 89 d9             	mov    %r11,%r9
    198a:	4c 8d 91 00 02 00 00 	lea    0x200(%rcx),%r10
    1991:	49 8b 11             	mov    (%r9),%rdx
    1994:	31 c0                	xor    %eax,%eax
    1996:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    199d:	00 00 00 
    19a0:	f3 0f 10 01          	movss  (%rcx),%xmm0
    19a4:	f3 0f 10 0e          	movss  (%rsi),%xmm1
    19a8:	f3 41 0f 59 04 00    	mulss  (%r8,%rax,1),%xmm0
    19ae:	f3 0f 59 0c 07       	mulss  (%rdi,%rax,1),%xmm1
    19b3:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    19b7:	f3 0f 58 04 02       	addss  (%rdx,%rax,1),%xmm0
    19bc:	f3 0f 11 04 02       	movss  %xmm0,(%rdx,%rax,1)
    19c1:	48 83 c0 04          	add    $0x4,%rax
    19c5:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    19cb:	75 d3                	jne    19a0 <Compare_gemver+0x40>
    19cd:	48 83 c1 04          	add    $0x4,%rcx
    19d1:	49 83 c1 08          	add    $0x8,%r9
    19d5:	48 83 c6 04          	add    $0x4,%rsi
    19d9:	49 39 ca             	cmp    %rcx,%r10
    19dc:	75 b3                	jne    1991 <Compare_gemver+0x31>
    19de:	48 8b 0d 5b 26 00 00 	mov    0x265b(%rip),%rcx        # 4040 <A>
    19e5:	f2 0f 10 1d 73 06 00 	movsd  0x673(%rip),%xmm3        # 2060 <_IO_stdin_used+0x60>
    19ec:	00 
    19ed:	31 c0                	xor    %eax,%eax
    19ef:	f3 0f 10 15 59 06 00 	movss  0x659(%rip),%xmm2        # 2050 <_IO_stdin_used+0x50>
    19f6:	00 
    19f7:	49 8b 3c 03          	mov    (%r11,%rax,1),%rdi
    19fb:	48 8b 34 01          	mov    (%rcx,%rax,1),%rsi
    19ff:	31 d2                	xor    %edx,%edx
    1a01:	f3 0f 10 0c 16       	movss  (%rsi,%rdx,1),%xmm1
    1a06:	0f 28 c1             	movaps %xmm1,%xmm0
    1a09:	f3 0f 5c 04 17       	subss  (%rdi,%rdx,1),%xmm0
    1a0e:	0f 54 ca             	andps  %xmm2,%xmm1
    1a11:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1a15:	0f 54 c2             	andps  %xmm2,%xmm0
    1a18:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1a1c:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1a20:	66 0f 2f d8          	comisd %xmm0,%xmm3
    1a24:	76 22                	jbe    1a48 <Compare_gemver+0xe8>
    1a26:	48 83 c2 04          	add    $0x4,%rdx
    1a2a:	48 81 fa 00 02 00 00 	cmp    $0x200,%rdx
    1a31:	75 ce                	jne    1a01 <Compare_gemver+0xa1>
    1a33:	48 83 c0 08          	add    $0x8,%rax
    1a37:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1a3d:	75 b8                	jne    19f7 <Compare_gemver+0x97>
    1a3f:	31 c0                	xor    %eax,%eax
    1a41:	c3                   	ret    
    1a42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a48:	b8 01 00 00 00       	mov    $0x1,%eax
    1a4d:	c3                   	ret    

Disassembly of section .fini:

0000000000001a50 <_fini>:
    1a50:	f3 0f 1e fa          	endbr64 
    1a54:	48 83 ec 08          	sub    $0x8,%rsp
    1a58:	48 83 c4 08          	add    $0x8,%rsp
    1a5c:	c3                   	ret    
