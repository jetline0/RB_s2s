
conv2d/orio_sr2:     file format elf64-x86-64


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
    1178:	0f 84 73 02 00 00    	je     13f1 <main+0x2d1>
    117e:	31 c0                	xor    %eax,%eax
    1180:	31 db                	xor    %ebx,%ebx
    1182:	e8 79 03 00 00       	call   1500 <conv2d_init>
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
    1256:	e8 45 06 00 00       	call   18a0 <conv2d_default>
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
    134a:	e8 41 09 00 00       	call   1c90 <Compare_conv2d>
    134f:	66 85 c0             	test   %ax,%ax
    1352:	0f 85 88 00 00 00    	jne    13e0 <main+0x2c0>
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
    1392:	48 8b 3d 97 2c 00 00 	mov    0x2c97(%rip),%rdi        # 4030 <out>
    1399:	e8 12 fd ff ff       	call   10b0 <free@plt>
    139e:	48 8b 3d 83 2c 00 00 	mov    0x2c83(%rip),%rdi        # 4028 <test>
    13a5:	e8 06 fd ff ff       	call   10b0 <free@plt>
    13aa:	48 8b 3d 6f 2c 00 00 	mov    0x2c6f(%rip),%rdi        # 4020 <in>
    13b1:	e8 fa fc ff ff       	call   10b0 <free@plt>
    13b6:	48 8b 3d 5b 2c 00 00 	mov    0x2c5b(%rip),%rdi        # 4018 <filter>
    13bd:	e8 ee fc ff ff       	call   10b0 <free@plt>
    13c2:	48 8b 84 24 88 01 00 	mov    0x188(%rsp),%rax
    13c9:	00 
    13ca:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    13d1:	00 00 
    13d3:	75 2d                	jne    1402 <main+0x2e2>
    13d5:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
    13dc:	31 c0                	xor    %eax,%eax
    13de:	5b                   	pop    %rbx
    13df:	c3                   	ret    
    13e0:	48 8d 3d 64 0c 00 00 	lea    0xc64(%rip),%rdi        # 204b <_IO_stdin_used+0x4b>
    13e7:	e8 d4 fc ff ff       	call   10c0 <puts@plt>
    13ec:	e9 73 ff ff ff       	jmp    1364 <main+0x244>
    13f1:	48 8d 3d 10 0c 00 00 	lea    0xc10(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    13f8:	e8 c3 fc ff ff       	call   10c0 <puts@plt>
    13fd:	e9 7c fd ff ff       	jmp    117e <main+0x5e>
    1402:	e8 d9 fc ff ff       	call   10e0 <__stack_chk_fail@plt>
    1407:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    140e:	00 00 

0000000000001410 <_start>:
    1410:	f3 0f 1e fa          	endbr64 
    1414:	31 ed                	xor    %ebp,%ebp
    1416:	49 89 d1             	mov    %rdx,%r9
    1419:	5e                   	pop    %rsi
    141a:	48 89 e2             	mov    %rsp,%rdx
    141d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1421:	50                   	push   %rax
    1422:	54                   	push   %rsp
    1423:	45 31 c0             	xor    %r8d,%r8d
    1426:	31 c9                	xor    %ecx,%ecx
    1428:	48 8d 3d f1 fc ff ff 	lea    -0x30f(%rip),%rdi        # 1120 <main>
    142f:	ff 15 a3 2b 00 00    	call   *0x2ba3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1435:	f4                   	hlt    
    1436:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    143d:	00 00 00 

0000000000001440 <deregister_tm_clones>:
    1440:	48 8d 3d c9 2b 00 00 	lea    0x2bc9(%rip),%rdi        # 4010 <__TMC_END__>
    1447:	48 8d 05 c2 2b 00 00 	lea    0x2bc2(%rip),%rax        # 4010 <__TMC_END__>
    144e:	48 39 f8             	cmp    %rdi,%rax
    1451:	74 15                	je     1468 <deregister_tm_clones+0x28>
    1453:	48 8b 05 86 2b 00 00 	mov    0x2b86(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    145a:	48 85 c0             	test   %rax,%rax
    145d:	74 09                	je     1468 <deregister_tm_clones+0x28>
    145f:	ff e0                	jmp    *%rax
    1461:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1468:	c3                   	ret    
    1469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001470 <register_tm_clones>:
    1470:	48 8d 3d 99 2b 00 00 	lea    0x2b99(%rip),%rdi        # 4010 <__TMC_END__>
    1477:	48 8d 35 92 2b 00 00 	lea    0x2b92(%rip),%rsi        # 4010 <__TMC_END__>
    147e:	48 29 fe             	sub    %rdi,%rsi
    1481:	48 89 f0             	mov    %rsi,%rax
    1484:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1488:	48 c1 f8 03          	sar    $0x3,%rax
    148c:	48 01 c6             	add    %rax,%rsi
    148f:	48 d1 fe             	sar    %rsi
    1492:	74 14                	je     14a8 <register_tm_clones+0x38>
    1494:	48 8b 05 55 2b 00 00 	mov    0x2b55(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    149b:	48 85 c0             	test   %rax,%rax
    149e:	74 08                	je     14a8 <register_tm_clones+0x38>
    14a0:	ff e0                	jmp    *%rax
    14a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14a8:	c3                   	ret    
    14a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014b0 <__do_global_dtors_aux>:
    14b0:	f3 0f 1e fa          	endbr64 
    14b4:	80 3d 55 2b 00 00 00 	cmpb   $0x0,0x2b55(%rip)        # 4010 <__TMC_END__>
    14bb:	75 2b                	jne    14e8 <__do_global_dtors_aux+0x38>
    14bd:	55                   	push   %rbp
    14be:	48 83 3d 32 2b 00 00 	cmpq   $0x0,0x2b32(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    14c5:	00 
    14c6:	48 89 e5             	mov    %rsp,%rbp
    14c9:	74 0c                	je     14d7 <__do_global_dtors_aux+0x27>
    14cb:	48 8b 3d 36 2b 00 00 	mov    0x2b36(%rip),%rdi        # 4008 <__dso_handle>
    14d2:	e8 c9 fb ff ff       	call   10a0 <__cxa_finalize@plt>
    14d7:	e8 64 ff ff ff       	call   1440 <deregister_tm_clones>
    14dc:	c6 05 2d 2b 00 00 01 	movb   $0x1,0x2b2d(%rip)        # 4010 <__TMC_END__>
    14e3:	5d                   	pop    %rbp
    14e4:	c3                   	ret    
    14e5:	0f 1f 00             	nopl   (%rax)
    14e8:	c3                   	ret    
    14e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014f0 <frame_dummy>:
    14f0:	f3 0f 1e fa          	endbr64 
    14f4:	e9 77 ff ff ff       	jmp    1470 <register_tm_clones>
    14f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001500 <conv2d_init>:
    1500:	f3 0f 1e fa          	endbr64 
    1504:	41 57                	push   %r15
    1506:	ba a0 01 00 00       	mov    $0x1a0,%edx
    150b:	be 40 00 00 00       	mov    $0x40,%esi
    1510:	41 56                	push   %r14
    1512:	41 55                	push   %r13
    1514:	41 54                	push   %r12
    1516:	55                   	push   %rbp
    1517:	53                   	push   %rbx
    1518:	31 db                	xor    %ebx,%ebx
    151a:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
    1521:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
    1528:	00 
    1529:	4c 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%r15
    1530:	00 
    1531:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1538:	00 00 
    153a:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
    1541:	00 
    1542:	31 c0                	xor    %eax,%eax
    1544:	4c 8d ac 24 a8 00 00 	lea    0xa8(%rsp),%r13
    154b:	00 
    154c:	e8 bf fb ff ff       	call   1110 <posix_memalign@plt>
    1551:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    1556:	ba a0 01 00 00       	mov    $0x1a0,%edx
    155b:	be 40 00 00 00       	mov    $0x40,%esi
    1560:	85 c0                	test   %eax,%eax
    1562:	48 89 d8             	mov    %rbx,%rax
    1565:	48 0f 44 84 24 80 00 	cmove  0x80(%rsp),%rax
    156c:	00 00 
    156e:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    1573:	48 89 05 b6 2a 00 00 	mov    %rax,0x2ab6(%rip)        # 4030 <out>
    157a:	e8 91 fb ff ff       	call   1110 <posix_memalign@plt>
    157f:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
    1584:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1589:	be 40 00 00 00       	mov    $0x40,%esi
    158e:	85 c0                	test   %eax,%eax
    1590:	48 89 d8             	mov    %rbx,%rax
    1593:	48 0f 44 44 24 78    	cmove  0x78(%rsp),%rax
    1599:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    159e:	48 89 05 83 2a 00 00 	mov    %rax,0x2a83(%rip)        # 4028 <test>
    15a5:	e8 66 fb ff ff       	call   1110 <posix_memalign@plt>
    15aa:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    15af:	ba 00 04 00 00       	mov    $0x400,%edx
    15b4:	be 40 00 00 00       	mov    $0x40,%esi
    15b9:	85 c0                	test   %eax,%eax
    15bb:	48 0f 44 5c 24 70    	cmove  0x70(%rsp),%rbx
    15c1:	31 ed                	xor    %ebp,%ebp
    15c3:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
    15c8:	48 89 1d 51 2a 00 00 	mov    %rbx,0x2a51(%rip)        # 4020 <in>
    15cf:	e8 3c fb ff ff       	call   1110 <posix_memalign@plt>
    15d4:	48 8d 84 24 98 00 00 	lea    0x98(%rsp),%rax
    15db:	00 
    15dc:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    15e3:	00 00 
    15e5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    15ea:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
    15f1:	00 
    15f2:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    15f7:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    15fe:	00 
    15ff:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1604:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    160b:	00 
    160c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    1611:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
    1616:	ba a0 01 00 00       	mov    $0x1a0,%edx
    161b:	be 40 00 00 00       	mov    $0x40,%esi
    1620:	e8 eb fa ff ff       	call   1110 <posix_memalign@plt>
    1625:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    162a:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
    162f:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1634:	85 c0                	test   %eax,%eax
    1636:	48 89 e8             	mov    %rbp,%rax
    1639:	be 40 00 00 00       	mov    $0x40,%esi
    163e:	48 0f 44 84 24 98 00 	cmove  0x98(%rsp),%rax
    1645:	00 00 
    1647:	48 89 04 1f          	mov    %rax,(%rdi,%rbx,1)
    164b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
    1650:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1655:	e8 b6 fa ff ff       	call   1110 <posix_memalign@plt>
    165a:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    165f:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1664:	be 40 00 00 00       	mov    $0x40,%esi
    1669:	85 c0                	test   %eax,%eax
    166b:	48 89 e8             	mov    %rbp,%rax
    166e:	48 0f 44 84 24 90 00 	cmove  0x90(%rsp),%rax
    1675:	00 00 
    1677:	48 89 04 1f          	mov    %rax,(%rdi,%rbx,1)
    167b:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    1680:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1685:	e8 86 fa ff ff       	call   1110 <posix_memalign@plt>
    168a:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    168f:	85 c0                	test   %eax,%eax
    1691:	48 89 e8             	mov    %rbp,%rax
    1694:	48 0f 44 84 24 88 00 	cmove  0x88(%rsp),%rax
    169b:	00 00 
    169d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    16a2:	48 89 04 1f          	mov    %rax,(%rdi,%rbx,1)
    16a6:	31 db                	xor    %ebx,%ebx
    16a8:	ba 00 02 00 00       	mov    $0x200,%edx
    16ad:	be 40 00 00 00       	mov    $0x40,%esi
    16b2:	4c 89 ff             	mov    %r15,%rdi
    16b5:	49 89 ee             	mov    %rbp,%r14
    16b8:	e8 53 fa ff ff       	call   1110 <posix_memalign@plt>
    16bd:	ba 00 02 00 00       	mov    $0x200,%edx
    16c2:	4c 89 ef             	mov    %r13,%rdi
    16c5:	49 89 ec             	mov    %rbp,%r12
    16c8:	85 c0                	test   %eax,%eax
    16ca:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    16cf:	be 40 00 00 00       	mov    $0x40,%esi
    16d4:	4c 0f 44 b4 24 b0 00 	cmove  0xb0(%rsp),%r14
    16db:	00 00 
    16dd:	4c 89 34 18          	mov    %r14,(%rax,%rbx,1)
    16e1:	e8 2a fa ff ff       	call   1110 <posix_memalign@plt>
    16e6:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    16eb:	ba 00 04 00 00       	mov    $0x400,%edx
    16f0:	be 40 00 00 00       	mov    $0x40,%esi
    16f5:	85 c0                	test   %eax,%eax
    16f7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    16fc:	4c 0f 44 a4 24 a8 00 	cmove  0xa8(%rsp),%r12
    1703:	00 00 
    1705:	4c 89 24 18          	mov    %r12,(%rax,%rbx,1)
    1709:	e8 02 fa ff ff       	call   1110 <posix_memalign@plt>
    170e:	48 89 ee             	mov    %rbp,%rsi
    1711:	b9 40 00 00 00       	mov    $0x40,%ecx
    1716:	4c 89 f7             	mov    %r14,%rdi
    1719:	85 c0                	test   %eax,%eax
    171b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1720:	f3 0f 10 0d 50 09 00 	movss  0x950(%rip),%xmm1        # 2078 <_IO_stdin_used+0x78>
    1727:	00 
    1728:	48 0f 44 b4 24 a0 00 	cmove  0xa0(%rsp),%rsi
    172f:	00 00 
    1731:	31 d2                	xor    %edx,%edx
    1733:	48 89 34 18          	mov    %rsi,(%rax,%rbx,1)
    1737:	48 89 e8             	mov    %rbp,%rax
    173a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    173d:	b9 40 00 00 00       	mov    $0x40,%ecx
    1742:	4c 89 e7             	mov    %r12,%rdi
    1745:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    174f:	00 
    1750:	89 d1                	mov    %edx,%ecx
    1752:	89 d0                	mov    %edx,%eax
    1754:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1758:	48 69 c9 25 49 92 24 	imul   $0x24924925,%rcx,%rcx
    175f:	48 c1 e9 20          	shr    $0x20,%rcx
    1763:	29 c8                	sub    %ecx,%eax
    1765:	d1 e8                	shr    %eax
    1767:	01 c8                	add    %ecx,%eax
    1769:	c1 e8 02             	shr    $0x2,%eax
    176c:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
    1773:	29 c1                	sub    %eax,%ecx
    1775:	89 d0                	mov    %edx,%eax
    1777:	29 c8                	sub    %ecx,%eax
    1779:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    177d:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1781:	f3 0f 11 04 96       	movss  %xmm0,(%rsi,%rdx,4)
    1786:	48 83 c2 01          	add    $0x1,%rdx
    178a:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    1791:	75 bd                	jne    1750 <conv2d_init+0x250>
    1793:	48 83 c3 08          	add    $0x8,%rbx
    1797:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    179e:	0f 85 04 ff ff ff    	jne    16a8 <conv2d_init+0x1a8>
    17a4:	48 83 44 24 28 08    	addq   $0x8,0x28(%rsp)
    17aa:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    17af:	48 3d a0 01 00 00    	cmp    $0x1a0,%rax
    17b5:	0f 85 56 fe ff ff    	jne    1611 <conv2d_init+0x111>
    17bb:	48 8d bc 24 b8 00 00 	lea    0xb8(%rsp),%rdi
    17c2:	00 
    17c3:	ba 00 04 00 00       	mov    $0x400,%edx
    17c8:	be 40 00 00 00       	mov    $0x40,%esi
    17cd:	45 31 e4             	xor    %r12d,%r12d
    17d0:	e8 3b f9 ff ff       	call   1110 <posix_memalign@plt>
    17d5:	4c 8d ac 24 c0 00 00 	lea    0xc0(%rsp),%r13
    17dc:	00 
    17dd:	bd cd cc cc cc       	mov    $0xcccccccd,%ebp
    17e2:	85 c0                	test   %eax,%eax
    17e4:	4c 0f 44 a4 24 b8 00 	cmove  0xb8(%rsp),%r12
    17eb:	00 00 
    17ed:	4c 89 25 24 28 00 00 	mov    %r12,0x2824(%rip)        # 4018 <filter>
    17f4:	49 8d 9c 24 00 04 00 	lea    0x400(%r12),%rbx
    17fb:	00 
    17fc:	ba 00 04 00 00       	mov    $0x400,%edx
    1801:	be 40 00 00 00       	mov    $0x40,%esi
    1806:	4c 89 ef             	mov    %r13,%rdi
    1809:	e8 02 f9 ff ff       	call   1110 <posix_memalign@plt>
    180e:	31 f6                	xor    %esi,%esi
    1810:	f3 0f 10 0d 64 08 00 	movss  0x864(%rip),%xmm1        # 207c <_IO_stdin_used+0x7c>
    1817:	00 
    1818:	85 c0                	test   %eax,%eax
    181a:	48 0f 44 b4 24 c0 00 	cmove  0xc0(%rsp),%rsi
    1821:	00 00 
    1823:	31 d2                	xor    %edx,%edx
    1825:	49 89 34 24          	mov    %rsi,(%r12)
    1829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1830:	89 d0                	mov    %edx,%eax
    1832:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1836:	48 0f af c5          	imul   %rbp,%rax
    183a:	48 c1 e8 22          	shr    $0x22,%rax
    183e:	8d 0c 80             	lea    (%rax,%rax,4),%ecx
    1841:	89 d0                	mov    %edx,%eax
    1843:	29 c8                	sub    %ecx,%eax
    1845:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1849:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    184d:	f3 0f 11 04 96       	movss  %xmm0,(%rsi,%rdx,4)
    1852:	48 83 c2 01          	add    $0x1,%rdx
    1856:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    185d:	75 d1                	jne    1830 <conv2d_init+0x330>
    185f:	49 83 c4 08          	add    $0x8,%r12
    1863:	49 39 dc             	cmp    %rbx,%r12
    1866:	75 94                	jne    17fc <conv2d_init+0x2fc>
    1868:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
    186f:	00 
    1870:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1877:	00 00 
    1879:	75 12                	jne    188d <conv2d_init+0x38d>
    187b:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
    1882:	5b                   	pop    %rbx
    1883:	5d                   	pop    %rbp
    1884:	41 5c                	pop    %r12
    1886:	41 5d                	pop    %r13
    1888:	41 5e                	pop    %r14
    188a:	41 5f                	pop    %r15
    188c:	c3                   	ret    
    188d:	e8 4e f8 ff ff       	call   10e0 <__stack_chk_fail@plt>
    1892:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1899:	00 00 00 00 
    189d:	0f 1f 00             	nopl   (%rax)

00000000000018a0 <conv2d_default>:
    18a0:	f3 0f 1e fa          	endbr64 
    18a4:	41 57                	push   %r15
    18a6:	41 56                	push   %r14
    18a8:	41 55                	push   %r13
    18aa:	41 54                	push   %r12
    18ac:	55                   	push   %rbp
    18ad:	53                   	push   %rbx
    18ae:	48 83 ec 18          	sub    $0x18,%rsp
    18b2:	48 8b 05 5f 27 00 00 	mov    0x275f(%rip),%rax        # 4018 <filter>
    18b9:	48 8b 1d 60 27 00 00 	mov    0x2760(%rip),%rbx        # 4020 <in>
    18c0:	48 89 44 24 a0       	mov    %rax,-0x60(%rsp)
    18c5:	48 8b 05 64 27 00 00 	mov    0x2764(%rip),%rax        # 4030 <out>
    18cc:	48 89 5c 24 a8       	mov    %rbx,-0x58(%rsp)
    18d1:	48 89 44 24 98       	mov    %rax,-0x68(%rsp)
    18d6:	48 05 a0 01 00 00    	add    $0x1a0,%rax
    18dc:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    18e1:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    18e6:	45 31 ff             	xor    %r15d,%r15d
    18e9:	48 8b 18             	mov    (%rax),%rbx
    18ec:	48 89 5c 24 b0       	mov    %rbx,-0x50(%rsp)
    18f1:	48 8b 58 08          	mov    0x8(%rax),%rbx
    18f5:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    18fa:	48 8b 58 18          	mov    0x18(%rax),%rbx
    18fe:	48 8b 40 10          	mov    0x10(%rax),%rax
    1902:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1907:	48 89 44 24 e0       	mov    %rax,-0x20(%rsp)
    190c:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
    1911:	48 8b 58 10          	mov    0x10(%rax),%rbx
    1915:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
    191a:	48 8b 58 18          	mov    0x18(%rax),%rbx
    191e:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
    1923:	48 8b 18             	mov    (%rax),%rbx
    1926:	48 8b 40 08          	mov    0x8(%rax),%rax
    192a:	48 89 1c 24          	mov    %rbx,(%rsp)
    192e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1933:	48 8b 5c 24 c0       	mov    -0x40(%rsp),%rbx
    1938:	48 8b 54 24 f0       	mov    -0x10(%rsp),%rdx
    193d:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
    1942:	48 8b 4c 24 f8       	mov    -0x8(%rsp),%rcx
    1947:	4e 8b 24 3b          	mov    (%rbx,%r15,1),%r12
    194b:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    1950:	4a 8b 3c 3a          	mov    (%rdx,%r15,1),%rdi
    1954:	48 8b 14 24          	mov    (%rsp),%rdx
    1958:	4a 8b 2c 3b          	mov    (%rbx,%r15,1),%rbp
    195c:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    1961:	4c 89 64 24 c8       	mov    %r12,-0x38(%rsp)
    1966:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    196a:	4a 8b 34 39          	mov    (%rcx,%r15,1),%rsi
    196e:	4a 8b 1c 3b          	mov    (%rbx,%r15,1),%rbx
    1972:	4a 8b 0c 3a          	mov    (%rdx,%r15,1),%rcx
    1976:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
    197b:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    1980:	4c 8b 6c 24 a0       	mov    -0x60(%rsp),%r13
    1985:	48 89 44 24 b8       	mov    %rax,-0x48(%rsp)
    198a:	49 89 c3             	mov    %rax,%r11
    198d:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
    1992:	4c 8d b0 f8 01 00 00 	lea    0x1f8(%rax),%r14
    1999:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
    199d:	f3 0f 10 7d 00       	movss  0x0(%rbp),%xmm7
    19a2:	f3 45 0f 10 73 08    	movss  0x8(%r11),%xmm14
    19a8:	31 c0                	xor    %eax,%eax
    19aa:	f3 45 0f 10 6c 24 04 	movss  0x4(%r12),%xmm13
    19b1:	f3 44 0f 10 63 08    	movss  0x8(%rbx),%xmm12
    19b7:	f3 0f 11 7c 24 94    	movss  %xmm7,-0x6c(%rsp)
    19bd:	f3 41 0f 10 3c 24    	movss  (%r12),%xmm7
    19c3:	4d 8b 55 00          	mov    0x0(%r13),%r10
    19c7:	f3 44 0f 10 5d 04    	movss  0x4(%rbp),%xmm11
    19cd:	f3 45 0f 10 54 24 08 	movss  0x8(%r12),%xmm10
    19d4:	f3 0f 11 7c 24 8c    	movss  %xmm7,-0x74(%rsp)
    19da:	f3 41 0f 10 3b       	movss  (%r11),%xmm7
    19df:	f3 44 0f 10 4b 04    	movss  0x4(%rbx),%xmm9
    19e5:	f3 44 0f 10 45 08    	movss  0x8(%rbp),%xmm8
    19eb:	4d 8b 4d 10          	mov    0x10(%r13),%r9
    19ef:	f3 0f 11 7c 24 88    	movss  %xmm7,-0x78(%rsp)
    19f5:	f3 0f 10 3b          	movss  (%rbx),%xmm7
    19f9:	4d 8b 45 08          	mov    0x8(%r13),%r8
    19fd:	f3 0f 11 7c 24 90    	movss  %xmm7,-0x70(%rsp)
    1a03:	f3 41 0f 10 7b 04    	movss  0x4(%r11),%xmm7
    1a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a10:	f3 41 0f 10 0c 02    	movss  (%r10,%rax,1),%xmm1
    1a16:	f3 0f 10 2c 01       	movss  (%rcx,%rax,1),%xmm5
    1a1b:	f3 0f 10 24 02       	movss  (%rdx,%rax,1),%xmm4
    1a20:	f3 0f 10 1c 07       	movss  (%rdi,%rax,1),%xmm3
    1a25:	44 0f 28 f9          	movaps %xmm1,%xmm15
    1a29:	f3 0f 10 14 06       	movss  (%rsi,%rax,1),%xmm2
    1a2e:	f3 41 0f 10 04 00    	movss  (%r8,%rax,1),%xmm0
    1a34:	f3 44 0f 59 fd       	mulss  %xmm5,%xmm15
    1a39:	f3 41 0f 10 34 01    	movss  (%r9,%rax,1),%xmm6
    1a3f:	48 83 c0 04          	add    $0x4,%rax
    1a43:	f3 44 0f 58 7c 24 88 	addss  -0x78(%rsp),%xmm15
    1a4a:	f3 44 0f 11 7c 24 88 	movss  %xmm15,-0x78(%rsp)
    1a51:	44 0f 28 f9          	movaps %xmm1,%xmm15
    1a55:	f3 44 0f 59 fc       	mulss  %xmm4,%xmm15
    1a5a:	f3 44 0f 58 7c 24 8c 	addss  -0x74(%rsp),%xmm15
    1a61:	f3 44 0f 11 7c 24 8c 	movss  %xmm15,-0x74(%rsp)
    1a68:	44 0f 28 fb          	movaps %xmm3,%xmm15
    1a6c:	f3 44 0f 59 f9       	mulss  %xmm1,%xmm15
    1a71:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    1a75:	f3 44 0f 58 7c 24 90 	addss  -0x70(%rsp),%xmm15
    1a7c:	f3 0f 58 4c 24 94    	addss  -0x6c(%rsp),%xmm1
    1a82:	f3 44 0f 11 7c 24 90 	movss  %xmm15,-0x70(%rsp)
    1a89:	f3 0f 11 4c 24 94    	movss  %xmm1,-0x6c(%rsp)
    1a8f:	0f 28 c8             	movaps %xmm0,%xmm1
    1a92:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    1a96:	f3 0f 59 ee          	mulss  %xmm6,%xmm5
    1a9a:	f3 0f 58 f9          	addss  %xmm1,%xmm7
    1a9e:	0f 28 c8             	movaps %xmm0,%xmm1
    1aa1:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    1aa5:	f3 44 0f 58 f5       	addss  %xmm5,%xmm14
    1aaa:	f3 0f 59 e6          	mulss  %xmm6,%xmm4
    1aae:	f3 44 0f 58 e9       	addss  %xmm1,%xmm13
    1ab3:	0f 28 cb             	movaps %xmm3,%xmm1
    1ab6:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    1aba:	f3 44 0f 58 d4       	addss  %xmm4,%xmm10
    1abf:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1ac3:	f3 0f 59 de          	mulss  %xmm6,%xmm3
    1ac7:	f3 0f 59 d6          	mulss  %xmm6,%xmm2
    1acb:	f3 44 0f 58 c9       	addss  %xmm1,%xmm9
    1ad0:	f3 44 0f 58 d8       	addss  %xmm0,%xmm11
    1ad5:	f3 44 0f 58 e3       	addss  %xmm3,%xmm12
    1ada:	f3 44 0f 58 c2       	addss  %xmm2,%xmm8
    1adf:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1ae5:	0f 85 25 ff ff ff    	jne    1a10 <conv2d_default+0x170>
    1aeb:	49 83 c3 0c          	add    $0xc,%r11
    1aef:	49 83 c4 0c          	add    $0xc,%r12
    1af3:	48 83 c5 0c          	add    $0xc,%rbp
    1af7:	48 83 c3 0c          	add    $0xc,%rbx
    1afb:	f3 0f 10 74 24 94    	movss  -0x6c(%rsp),%xmm6
    1b01:	f3 45 0f 11 73 fc    	movss  %xmm14,-0x4(%r11)
    1b07:	49 83 c5 18          	add    $0x18,%r13
    1b0b:	f3 45 0f 11 6c 24 f8 	movss  %xmm13,-0x8(%r12)
    1b12:	f3 0f 11 75 f4       	movss  %xmm6,-0xc(%rbp)
    1b17:	f3 0f 10 74 24 8c    	movss  -0x74(%rsp),%xmm6
    1b1d:	f3 41 0f 11 74 24 f4 	movss  %xmm6,-0xc(%r12)
    1b24:	f3 0f 10 74 24 88    	movss  -0x78(%rsp),%xmm6
    1b2a:	f3 44 0f 11 63 fc    	movss  %xmm12,-0x4(%rbx)
    1b30:	f3 44 0f 11 5d f8    	movss  %xmm11,-0x8(%rbp)
    1b36:	f3 45 0f 11 54 24 fc 	movss  %xmm10,-0x4(%r12)
    1b3d:	f3 41 0f 11 73 f4    	movss  %xmm6,-0xc(%r11)
    1b43:	f3 44 0f 11 7b f4    	movss  %xmm15,-0xc(%rbx)
    1b49:	f3 44 0f 11 4b f8    	movss  %xmm9,-0x8(%rbx)
    1b4f:	f3 44 0f 11 45 fc    	movss  %xmm8,-0x4(%rbp)
    1b55:	f3 41 0f 11 7b f8    	movss  %xmm7,-0x8(%r11)
    1b5b:	4d 39 f3             	cmp    %r14,%r11
    1b5e:	0f 85 39 fe ff ff    	jne    199d <conv2d_default+0xfd>
    1b64:	4c 8b 54 24 b8       	mov    -0x48(%rsp),%r10
    1b69:	4c 8b 5c 24 c8       	mov    -0x38(%rsp),%r11
    1b6e:	41 b9 f8 01 00 00    	mov    $0x1f8,%r9d
    1b74:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    1b79:	48 8b 6c 24 e8       	mov    -0x18(%rsp),%rbp
    1b7e:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
    1b83:	f3 42 0f 10 24 0b    	movss  (%rbx,%r9,1),%xmm4
    1b89:	f3 42 0f 10 5c 0d 00 	movss  0x0(%rbp,%r9,1),%xmm3
    1b90:	f3 43 0f 10 14 0b    	movss  (%r11,%r9,1),%xmm2
    1b96:	f3 43 0f 10 0c 0a    	movss  (%r10,%r9,1),%xmm1
    1b9c:	4e 8b 04 48          	mov    (%rax,%r9,2),%r8
    1ba0:	31 c0                	xor    %eax,%eax
    1ba2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ba8:	f3 41 0f 10 04 00    	movss  (%r8,%rax,1),%xmm0
    1bae:	f3 0f 10 2c 01       	movss  (%rcx,%rax,1),%xmm5
    1bb3:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1bb7:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1bbb:	f3 0f 10 2c 02       	movss  (%rdx,%rax,1),%xmm5
    1bc0:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1bc4:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1bc8:	f3 0f 10 2c 07       	movss  (%rdi,%rax,1),%xmm5
    1bcd:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1bd1:	f3 0f 59 04 06       	mulss  (%rsi,%rax,1),%xmm0
    1bd6:	48 83 c0 04          	add    $0x4,%rax
    1bda:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1bde:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1be2:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1be8:	75 be                	jne    1ba8 <conv2d_default+0x308>
    1bea:	f3 42 0f 11 24 0b    	movss  %xmm4,(%rbx,%r9,1)
    1bf0:	f3 42 0f 11 5c 0d 00 	movss  %xmm3,0x0(%rbp,%r9,1)
    1bf7:	f3 43 0f 11 14 0b    	movss  %xmm2,(%r11,%r9,1)
    1bfd:	f3 43 0f 11 0c 0a    	movss  %xmm1,(%r10,%r9,1)
    1c03:	49 83 c1 04          	add    $0x4,%r9
    1c07:	49 81 f9 00 02 00 00 	cmp    $0x200,%r9
    1c0e:	0f 85 6a ff ff ff    	jne    1b7e <conv2d_default+0x2de>
    1c14:	49 83 c7 08          	add    $0x8,%r15
    1c18:	49 81 ff a0 01 00 00 	cmp    $0x1a0,%r15
    1c1f:	0f 85 0e fd ff ff    	jne    1933 <conv2d_default+0x93>
    1c25:	48 83 44 24 98 20    	addq   $0x20,-0x68(%rsp)
    1c2b:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    1c30:	48 83 44 24 a8 20    	addq   $0x20,-0x58(%rsp)
    1c36:	48 39 44 24 10       	cmp    %rax,0x10(%rsp)
    1c3b:	0f 85 a0 fc ff ff    	jne    18e1 <conv2d_default+0x41>
    1c41:	48 83 c4 18          	add    $0x18,%rsp
    1c45:	5b                   	pop    %rbx
    1c46:	5d                   	pop    %rbp
    1c47:	41 5c                	pop    %r12
    1c49:	41 5d                	pop    %r13
    1c4b:	41 5e                	pop    %r14
    1c4d:	41 5f                	pop    %r15
    1c4f:	c3                   	ret    

0000000000001c50 <equal>:
    1c50:	f3 0f 1e fa          	endbr64 
    1c54:	0f 28 d0             	movaps %xmm0,%xmm2
    1c57:	f3 0f 10 1d 21 04 00 	movss  0x421(%rip),%xmm3        # 2080 <_IO_stdin_used+0x80>
    1c5e:	00 
    1c5f:	31 c0                	xor    %eax,%eax
    1c61:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1c65:	0f 54 c3             	andps  %xmm3,%xmm0
    1c68:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1c6c:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1c70:	0f 54 d3             	andps  %xmm3,%xmm2
    1c73:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1c77:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1c7b:	f2 0f 10 05 0d 04 00 	movsd  0x40d(%rip),%xmm0        # 2090 <_IO_stdin_used+0x90>
    1c82:	00 
    1c83:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1c87:	0f 96 c0             	setbe  %al
    1c8a:	c3                   	ret    
    1c8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001c90 <Compare_conv2d>:
    1c90:	f3 0f 1e fa          	endbr64 
    1c94:	41 55                	push   %r13
    1c96:	4c 8b 15 8b 23 00 00 	mov    0x238b(%rip),%r10        # 4028 <test>
    1c9d:	45 31 c9             	xor    %r9d,%r9d
    1ca0:	41 54                	push   %r12
    1ca2:	55                   	push   %rbp
    1ca3:	48 8b 2d 76 23 00 00 	mov    0x2376(%rip),%rbp        # 4020 <in>
    1caa:	53                   	push   %rbx
    1cab:	48 8b 1d 66 23 00 00 	mov    0x2366(%rip),%rbx        # 4018 <filter>
    1cb2:	4f 8b 2c 0a          	mov    (%r10,%r9,1),%r13
    1cb6:	4e 8b 64 0d 00       	mov    0x0(%rbp,%r9,1),%r12
    1cbb:	45 31 db             	xor    %r11d,%r11d
    1cbe:	4b 8b 54 1d 00       	mov    0x0(%r13,%r11,1),%rdx
    1cc3:	4b 8b 34 1c          	mov    (%r12,%r11,1),%rsi
    1cc7:	48 89 df             	mov    %rbx,%rdi
    1cca:	4c 8d 82 00 02 00 00 	lea    0x200(%rdx),%r8
    1cd1:	48 8b 0f             	mov    (%rdi),%rcx
    1cd4:	f3 0f 10 0a          	movss  (%rdx),%xmm1
    1cd8:	31 c0                	xor    %eax,%eax
    1cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ce0:	f3 0f 10 04 06       	movss  (%rsi,%rax,1),%xmm0
    1ce5:	f3 0f 59 04 01       	mulss  (%rcx,%rax,1),%xmm0
    1cea:	48 83 c0 04          	add    $0x4,%rax
    1cee:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1cf2:	f3 0f 11 0a          	movss  %xmm1,(%rdx)
    1cf6:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1cfc:	75 e2                	jne    1ce0 <Compare_conv2d+0x50>
    1cfe:	48 83 c2 04          	add    $0x4,%rdx
    1d02:	48 83 c7 08          	add    $0x8,%rdi
    1d06:	49 39 d0             	cmp    %rdx,%r8
    1d09:	75 c6                	jne    1cd1 <Compare_conv2d+0x41>
    1d0b:	49 83 c3 08          	add    $0x8,%r11
    1d0f:	49 81 fb a0 01 00 00 	cmp    $0x1a0,%r11
    1d16:	75 a6                	jne    1cbe <Compare_conv2d+0x2e>
    1d18:	49 83 c1 08          	add    $0x8,%r9
    1d1c:	49 81 f9 a0 01 00 00 	cmp    $0x1a0,%r9
    1d23:	75 8d                	jne    1cb2 <Compare_conv2d+0x22>
    1d25:	48 8b 35 04 23 00 00 	mov    0x2304(%rip),%rsi        # 4030 <out>
    1d2c:	f2 0f 10 1d 5c 03 00 	movsd  0x35c(%rip),%xmm3        # 2090 <_IO_stdin_used+0x90>
    1d33:	00 
    1d34:	31 c0                	xor    %eax,%eax
    1d36:	f3 0f 10 15 42 03 00 	movss  0x342(%rip),%xmm2        # 2080 <_IO_stdin_used+0x80>
    1d3d:	00 
    1d3e:	4d 8b 04 02          	mov    (%r10,%rax,1),%r8
    1d42:	48 8b 3c 06          	mov    (%rsi,%rax,1),%rdi
    1d46:	31 d2                	xor    %edx,%edx
    1d48:	4d 8b 1c 10          	mov    (%r8,%rdx,1),%r11
    1d4c:	4c 8b 0c 17          	mov    (%rdi,%rdx,1),%r9
    1d50:	31 c9                	xor    %ecx,%ecx
    1d52:	f3 41 0f 10 0c 09    	movss  (%r9,%rcx,1),%xmm1
    1d58:	0f 28 c1             	movaps %xmm1,%xmm0
    1d5b:	f3 41 0f 5c 04 0b    	subss  (%r11,%rcx,1),%xmm0
    1d61:	0f 54 ca             	andps  %xmm2,%xmm1
    1d64:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1d68:	0f 54 c2             	andps  %xmm2,%xmm0
    1d6b:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1d6f:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1d73:	66 0f 2f d8          	comisd %xmm0,%xmm3
    1d77:	76 2f                	jbe    1da8 <Compare_conv2d+0x118>
    1d79:	48 83 c1 04          	add    $0x4,%rcx
    1d7d:	48 81 f9 00 02 00 00 	cmp    $0x200,%rcx
    1d84:	75 cc                	jne    1d52 <Compare_conv2d+0xc2>
    1d86:	48 83 c2 08          	add    $0x8,%rdx
    1d8a:	48 81 fa a0 01 00 00 	cmp    $0x1a0,%rdx
    1d91:	75 b5                	jne    1d48 <Compare_conv2d+0xb8>
    1d93:	48 83 c0 08          	add    $0x8,%rax
    1d97:	48 3d a0 01 00 00    	cmp    $0x1a0,%rax
    1d9d:	75 9f                	jne    1d3e <Compare_conv2d+0xae>
    1d9f:	31 c0                	xor    %eax,%eax
    1da1:	eb 0a                	jmp    1dad <Compare_conv2d+0x11d>
    1da3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1da8:	b8 01 00 00 00       	mov    $0x1,%eax
    1dad:	5b                   	pop    %rbx
    1dae:	5d                   	pop    %rbp
    1daf:	41 5c                	pop    %r12
    1db1:	41 5d                	pop    %r13
    1db3:	c3                   	ret    

Disassembly of section .fini:

0000000000001db4 <_fini>:
    1db4:	f3 0f 1e fa          	endbr64 
    1db8:	48 83 ec 08          	sub    $0x8,%rsp
    1dbc:	48 83 c4 08          	add    $0x8,%rsp
    1dc0:	c3                   	ret    
