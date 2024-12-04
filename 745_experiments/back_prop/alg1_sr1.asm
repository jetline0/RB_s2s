
back_prop/alg1_sr1:     file format elf64-x86-64


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

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	45 31 c0             	xor    %r8d,%r8d
    1116:	31 c9                	xor    %ecx,%ecx
    1118:	48 8d 3d 2c 09 00 00 	lea    0x92c(%rip),%rdi        # 1a4b <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4010 <__TMC_END__>
    1137:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4010 <__TMC_END__>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <__TMC_END__>
    1167:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4010 <__TMC_END__>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    %rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	80 3d 65 2e 00 00 00 	cmpb   $0x0,0x2e65(%rip)        # 4010 <__TMC_END__>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 3d 2e 00 00 01 	movb   $0x1,0x2e3d(%rip)        # 4010 <__TMC_END__>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret    
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <backpropagation_init>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	41 57                	push   %r15
    11ef:	41 56                	push   %r14
    11f1:	41 55                	push   %r13
    11f3:	41 54                	push   %r12
    11f5:	55                   	push   %rbp
    11f6:	53                   	push   %rbx
    11f7:	48 83 ec 68          	sub    $0x68,%rsp
    11fb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1202:	00 00 
    1204:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1209:	31 c0                	xor    %eax,%eax
    120b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1210:	ba 00 04 00 00       	mov    $0x400,%edx
    1215:	be 40 00 00 00       	mov    $0x40,%esi
    121a:	e8 d1 fe ff ff       	call   10f0 <posix_memalign@plt>
    121f:	85 c0                	test   %eax,%eax
    1221:	b8 00 00 00 00       	mov    $0x0,%eax
    1226:	48 0f 44 44 24 10    	cmove  0x10(%rsp),%rax
    122c:	48 89 05 fd 2d 00 00 	mov    %rax,0x2dfd(%rip)        # 4030 <filter_FP>
    1233:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    1238:	ba 00 04 00 00       	mov    $0x400,%edx
    123d:	be 40 00 00 00       	mov    $0x40,%esi
    1242:	e8 a9 fe ff ff       	call   10f0 <posix_memalign@plt>
    1247:	85 c0                	test   %eax,%eax
    1249:	b8 00 00 00 00       	mov    $0x0,%eax
    124e:	48 0f 44 44 24 08    	cmove  0x8(%rsp),%rax
    1254:	48 89 05 bd 2d 00 00 	mov    %rax,0x2dbd(%rip)        # 4018 <test_filter>
    125b:	bb 00 00 00 00       	mov    $0x0,%ebx
    1260:	bd 00 00 00 00       	mov    $0x0,%ebp
    1265:	49 89 dc             	mov    %rbx,%r12
    1268:	4c 03 25 c1 2d 00 00 	add    0x2dc1(%rip),%r12        # 4030 <filter_FP>
    126f:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1274:	ba 00 04 00 00       	mov    $0x400,%edx
    1279:	be 40 00 00 00       	mov    $0x40,%esi
    127e:	e8 6d fe ff ff       	call   10f0 <posix_memalign@plt>
    1283:	85 c0                	test   %eax,%eax
    1285:	48 89 e8             	mov    %rbp,%rax
    1288:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    128e:	49 89 04 24          	mov    %rax,(%r12)
    1292:	49 89 dc             	mov    %rbx,%r12
    1295:	4c 03 25 7c 2d 00 00 	add    0x2d7c(%rip),%r12        # 4018 <test_filter>
    129c:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    12a1:	ba 00 04 00 00       	mov    $0x400,%edx
    12a6:	be 40 00 00 00       	mov    $0x40,%esi
    12ab:	e8 40 fe ff ff       	call   10f0 <posix_memalign@plt>
    12b0:	85 c0                	test   %eax,%eax
    12b2:	48 89 e8             	mov    %rbp,%rax
    12b5:	48 0f 44 44 24 18    	cmove  0x18(%rsp),%rax
    12bb:	49 89 04 24          	mov    %rax,(%r12)
    12bf:	b8 00 00 00 00       	mov    $0x0,%eax
    12c4:	48 8b 15 65 2d 00 00 	mov    0x2d65(%rip),%rdx        # 4030 <filter_FP>
    12cb:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    12cf:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    12d6:	48 8b 15 3b 2d 00 00 	mov    0x2d3b(%rip),%rdx        # 4018 <test_filter>
    12dd:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    12e1:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    12e8:	48 83 c0 04          	add    $0x4,%rax
    12ec:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    12f2:	75 d0                	jne    12c4 <backpropagation_init+0xdb>
    12f4:	48 83 c3 08          	add    $0x8,%rbx
    12f8:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    12ff:	0f 85 60 ff ff ff    	jne    1265 <backpropagation_init+0x7c>
    1305:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    130a:	ba e0 01 00 00       	mov    $0x1e0,%edx
    130f:	be 40 00 00 00       	mov    $0x40,%esi
    1314:	e8 d7 fd ff ff       	call   10f0 <posix_memalign@plt>
    1319:	85 c0                	test   %eax,%eax
    131b:	b8 00 00 00 00       	mov    $0x0,%eax
    1320:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    1326:	48 89 05 fb 2c 00 00 	mov    %rax,0x2cfb(%rip)        # 4028 <out>
    132d:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    1332:	ba e0 01 00 00       	mov    $0x1e0,%edx
    1337:	be 40 00 00 00       	mov    $0x40,%esi
    133c:	e8 af fd ff ff       	call   10f0 <posix_memalign@plt>
    1341:	85 c0                	test   %eax,%eax
    1343:	b8 00 00 00 00       	mov    $0x0,%eax
    1348:	48 0f 44 44 24 28    	cmove  0x28(%rsp),%rax
    134e:	48 89 05 cb 2c 00 00 	mov    %rax,0x2ccb(%rip)        # 4020 <in_FP>
    1355:	bd 00 00 00 00       	mov    $0x0,%ebp
    135a:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
    135f:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    1365:	48 89 eb             	mov    %rbp,%rbx
    1368:	48 03 1d b9 2c 00 00 	add    0x2cb9(%rip),%rbx        # 4028 <out>
    136f:	ba e0 01 00 00       	mov    $0x1e0,%edx
    1374:	be 40 00 00 00       	mov    $0x40,%esi
    1379:	4c 89 ff             	mov    %r15,%rdi
    137c:	e8 6f fd ff ff       	call   10f0 <posix_memalign@plt>
    1381:	85 c0                	test   %eax,%eax
    1383:	4c 89 e0             	mov    %r12,%rax
    1386:	48 0f 44 44 24 40    	cmove  0x40(%rsp),%rax
    138c:	48 89 03             	mov    %rax,(%rbx)
    138f:	48 89 eb             	mov    %rbp,%rbx
    1392:	48 03 1d 87 2c 00 00 	add    0x2c87(%rip),%rbx        # 4020 <in_FP>
    1399:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    139e:	ba e0 01 00 00       	mov    $0x1e0,%edx
    13a3:	be 40 00 00 00       	mov    $0x40,%esi
    13a8:	e8 43 fd ff ff       	call   10f0 <posix_memalign@plt>
    13ad:	85 c0                	test   %eax,%eax
    13af:	4c 89 e0             	mov    %r12,%rax
    13b2:	48 0f 44 44 24 38    	cmove  0x38(%rsp),%rax
    13b8:	48 89 03             	mov    %rax,(%rbx)
    13bb:	bb 00 00 00 00       	mov    $0x0,%ebx
    13c0:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    13c5:	48 8b 05 5c 2c 00 00 	mov    0x2c5c(%rip),%rax        # 4028 <out>
    13cc:	49 89 de             	mov    %rbx,%r14
    13cf:	4c 03 34 28          	add    (%rax,%rbp,1),%r14
    13d3:	ba 00 02 00 00       	mov    $0x200,%edx
    13d8:	be 40 00 00 00       	mov    $0x40,%esi
    13dd:	4c 89 ef             	mov    %r13,%rdi
    13e0:	e8 0b fd ff ff       	call   10f0 <posix_memalign@plt>
    13e5:	85 c0                	test   %eax,%eax
    13e7:	4c 89 e0             	mov    %r12,%rax
    13ea:	48 0f 44 44 24 50    	cmove  0x50(%rsp),%rax
    13f0:	49 89 06             	mov    %rax,(%r14)
    13f3:	48 8b 05 26 2c 00 00 	mov    0x2c26(%rip),%rax        # 4020 <in_FP>
    13fa:	49 89 de             	mov    %rbx,%r14
    13fd:	4c 03 34 28          	add    (%rax,%rbp,1),%r14
    1401:	48 8d 7c 24 48       	lea    0x48(%rsp),%rdi
    1406:	ba 00 04 00 00       	mov    $0x400,%edx
    140b:	be 40 00 00 00       	mov    $0x40,%esi
    1410:	e8 db fc ff ff       	call   10f0 <posix_memalign@plt>
    1415:	85 c0                	test   %eax,%eax
    1417:	4c 89 e0             	mov    %r12,%rax
    141a:	48 0f 44 44 24 48    	cmove  0x48(%rsp),%rax
    1420:	49 89 06             	mov    %rax,(%r14)
    1423:	ba 00 00 00 00       	mov    $0x0,%edx
    1428:	48 8b 05 f9 2b 00 00 	mov    0x2bf9(%rip),%rax        # 4028 <out>
    142f:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1433:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
    1437:	48 63 c2             	movslq %edx,%rax
    143a:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    1441:	48 c1 f8 21          	sar    $0x21,%rax
    1445:	89 d6                	mov    %edx,%esi
    1447:	c1 fe 1f             	sar    $0x1f,%esi
    144a:	29 f0                	sub    %esi,%eax
    144c:	8d 34 80             	lea    (%rax,%rax,4),%esi
    144f:	89 d0                	mov    %edx,%eax
    1451:	29 f0                	sub    %esi,%eax
    1453:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1457:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    145b:	f3 0f 58 05 dd 0b 00 	addss  0xbdd(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    1462:	00 
    1463:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    1468:	48 83 c2 01          	add    $0x1,%rdx
    146c:	48 81 fa 80 00 00 00 	cmp    $0x80,%rdx
    1473:	75 b3                	jne    1428 <backpropagation_init+0x23f>
    1475:	ba 00 00 00 00       	mov    $0x0,%edx
    147a:	48 8b 05 9f 2b 00 00 	mov    0x2b9f(%rip),%rax        # 4020 <in_FP>
    1481:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1485:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
    1489:	48 63 c2             	movslq %edx,%rax
    148c:	48 69 c0 93 24 49 92 	imul   $0xffffffff92492493,%rax,%rax
    1493:	48 c1 e8 20          	shr    $0x20,%rax
    1497:	01 d0                	add    %edx,%eax
    1499:	c1 f8 02             	sar    $0x2,%eax
    149c:	89 d6                	mov    %edx,%esi
    149e:	c1 fe 1f             	sar    $0x1f,%esi
    14a1:	29 f0                	sub    %esi,%eax
    14a3:	8d 34 c5 00 00 00 00 	lea    0x0(,%rax,8),%esi
    14aa:	29 c6                	sub    %eax,%esi
    14ac:	89 d0                	mov    %edx,%eax
    14ae:	29 f0                	sub    %esi,%eax
    14b0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14b4:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    14b8:	f3 0f 5c 05 84 0b 00 	subss  0xb84(%rip),%xmm0        # 2044 <_IO_stdin_used+0x44>
    14bf:	00 
    14c0:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    14c5:	48 83 c2 01          	add    $0x1,%rdx
    14c9:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    14d0:	75 a8                	jne    147a <backpropagation_init+0x291>
    14d2:	48 83 c3 08          	add    $0x8,%rbx
    14d6:	48 81 fb e0 01 00 00 	cmp    $0x1e0,%rbx
    14dd:	0f 85 e2 fe ff ff    	jne    13c5 <backpropagation_init+0x1dc>
    14e3:	48 83 c5 08          	add    $0x8,%rbp
    14e7:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    14ee:	0f 85 71 fe ff ff    	jne    1365 <backpropagation_init+0x17c>
    14f4:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    14f9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1500:	00 00 
    1502:	75 0f                	jne    1513 <backpropagation_init+0x32a>
    1504:	48 83 c4 68          	add    $0x68,%rsp
    1508:	5b                   	pop    %rbx
    1509:	5d                   	pop    %rbp
    150a:	41 5c                	pop    %r12
    150c:	41 5d                	pop    %r13
    150e:	41 5e                	pop    %r14
    1510:	41 5f                	pop    %r15
    1512:	c3                   	ret    
    1513:	e8 b8 fb ff ff       	call   10d0 <__stack_chk_fail@plt>

0000000000001518 <backpropagation>:
    1518:	f3 0f 1e fa          	endbr64 
    151c:	41 57                	push   %r15
    151e:	41 56                	push   %r14
    1520:	41 55                	push   %r13
    1522:	41 54                	push   %r12
    1524:	55                   	push   %rbp
    1525:	53                   	push   %rbx
    1526:	41 be 00 00 00 00    	mov    $0x0,%r14d
    152c:	41 bf 10 00 00 00    	mov    $0x10,%r15d
    1532:	e9 9a 03 00 00       	jmp    18d1 <backpropagation+0x3b9>
    1537:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    153c:	f3 44 0f 11 30       	movss  %xmm14,(%rax)
    1541:	48 8b 05 e8 2a 00 00 	mov    0x2ae8(%rip),%rax        # 4030 <filter_FP>
    1548:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    154c:	f3 44 0f 11 2c 18    	movss  %xmm13,(%rax,%rbx,1)
    1552:	48 8b 05 d7 2a 00 00 	mov    0x2ad7(%rip),%rax        # 4030 <filter_FP>
    1559:	48 8b 54 24 e0       	mov    -0x20(%rsp),%rdx
    155e:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    1562:	f3 46 0f 11 24 18    	movss  %xmm12,(%rax,%r11,1)
    1568:	48 8b 05 c1 2a 00 00 	mov    0x2ac1(%rip),%rax        # 4030 <filter_FP>
    156f:	4c 8b 54 24 f0       	mov    -0x10(%rsp),%r10
    1574:	4a 8b 04 10          	mov    (%rax,%r10,1),%rax
    1578:	f3 44 0f 11 1c 18    	movss  %xmm11,(%rax,%rbx,1)
    157e:	48 8b 05 ab 2a 00 00 	mov    0x2aab(%rip),%rax        # 4030 <filter_FP>
    1585:	4a 8b 04 10          	mov    (%rax,%r10,1),%rax
    1589:	f3 46 0f 11 14 00    	movss  %xmm10,(%rax,%r8,1)
    158f:	48 8b 05 9a 2a 00 00 	mov    0x2a9a(%rip),%rax        # 4030 <filter_FP>
    1596:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    159a:	f3 46 0f 11 0c 18    	movss  %xmm9,(%rax,%r11,1)
    15a0:	48 8b 05 89 2a 00 00 	mov    0x2a89(%rip),%rax        # 4030 <filter_FP>
    15a7:	4c 8b 4c 24 e8       	mov    -0x18(%rsp),%r9
    15ac:	4a 8b 04 08          	mov    (%rax,%r9,1),%rax
    15b0:	f3 44 0f 11 04 18    	movss  %xmm8,(%rax,%rbx,1)
    15b6:	48 8b 05 73 2a 00 00 	mov    0x2a73(%rip),%rax        # 4030 <filter_FP>
    15bd:	4a 8b 04 08          	mov    (%rax,%r9,1),%rax
    15c1:	f3 42 0f 11 3c 00    	movss  %xmm7,(%rax,%r8,1)
    15c7:	48 8b 05 62 2a 00 00 	mov    0x2a62(%rip),%rax        # 4030 <filter_FP>
    15ce:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    15d2:	f3 0f 11 34 18       	movss  %xmm6,(%rax,%rbx,1)
    15d7:	48 8b 05 52 2a 00 00 	mov    0x2a52(%rip),%rax        # 4030 <filter_FP>
    15de:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    15e2:	f3 42 0f 11 2c 00    	movss  %xmm5,(%rax,%r8,1)
    15e8:	48 8b 05 41 2a 00 00 	mov    0x2a41(%rip),%rax        # 4030 <filter_FP>
    15ef:	4a 8b 04 08          	mov    (%rax,%r9,1),%rax
    15f3:	f3 0f 10 74 24 d8    	movss  -0x28(%rsp),%xmm6
    15f9:	f3 42 0f 11 34 18    	movss  %xmm6,(%rax,%r11,1)
    15ff:	48 8b 05 2a 2a 00 00 	mov    0x2a2a(%rip),%rax        # 4030 <filter_FP>
    1606:	4a 8b 04 10          	mov    (%rax,%r10,1),%rax
    160a:	f3 0f 10 7c 24 dc    	movss  -0x24(%rsp),%xmm7
    1610:	f3 42 0f 11 3c 18    	movss  %xmm7,(%rax,%r11,1)
    1616:	49 83 c0 0c          	add    $0xc,%r8
    161a:	49 81 f8 fc 03 00 00 	cmp    $0x3fc,%r8
    1621:	0f 84 a5 01 00 00    	je     17cc <backpropagation+0x2b4>
    1627:	48 8b 05 02 2a 00 00 	mov    0x2a02(%rip),%rax        # 4030 <filter_FP>
    162e:	4e 8b 14 38          	mov    (%rax,%r15,1),%r10
    1632:	4b 8d 1c 02          	lea    (%r10,%r8,1),%rbx
    1636:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
    163b:	f3 44 0f 10 33       	movss  (%rbx),%xmm14
    1640:	49 8d 58 04          	lea    0x4(%r8),%rbx
    1644:	f3 47 0f 10 6c 02 04 	movss  0x4(%r10,%r8,1),%xmm13
    164b:	48 8b 54 24 e0       	mov    -0x20(%rsp),%rdx
    1650:	4c 8b 0c 10          	mov    (%rax,%rdx,1),%r9
    1654:	4d 8d 58 08          	lea    0x8(%r8),%r11
    1658:	f3 47 0f 10 64 01 08 	movss  0x8(%r9,%r8,1),%xmm12
    165f:	48 8b 54 24 f0       	mov    -0x10(%rsp),%rdx
    1664:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
    1668:	f3 46 0f 10 5c 02 04 	movss  0x4(%rdx,%r8,1),%xmm11
    166f:	f3 46 0f 10 14 02    	movss  (%rdx,%r8,1),%xmm10
    1675:	f3 47 0f 10 4c 02 08 	movss  0x8(%r10,%r8,1),%xmm9
    167c:	4c 8b 54 24 e8       	mov    -0x18(%rsp),%r10
    1681:	4a 8b 04 10          	mov    (%rax,%r10,1),%rax
    1685:	f3 46 0f 10 44 00 04 	movss  0x4(%rax,%r8,1),%xmm8
    168c:	f3 42 0f 10 3c 00    	movss  (%rax,%r8,1),%xmm7
    1692:	f3 43 0f 10 74 01 04 	movss  0x4(%r9,%r8,1),%xmm6
    1699:	f3 43 0f 10 2c 01    	movss  (%r9,%r8,1),%xmm5
    169f:	f3 42 0f 10 4c 00 08 	movss  0x8(%rax,%r8,1),%xmm1
    16a6:	f3 0f 11 4c 24 d8    	movss  %xmm1,-0x28(%rsp)
    16ac:	f3 42 0f 10 54 02 08 	movss  0x8(%rdx,%r8,1),%xmm2
    16b3:	f3 0f 11 54 24 dc    	movss  %xmm2,-0x24(%rsp)
    16b9:	4c 8b 2d 68 29 00 00 	mov    0x2968(%rip),%r13        # 4028 <out>
    16c0:	4c 8b 25 59 29 00 00 	mov    0x2959(%rip),%r12        # 4020 <in_FP>
    16c7:	bd 00 00 00 00       	mov    $0x0,%ebp
    16cc:	4d 8b 54 2d 00       	mov    0x0(%r13,%rbp,1),%r10
    16d1:	4d 8b 0c 2c          	mov    (%r12,%rbp,1),%r9
    16d5:	b8 00 00 00 00       	mov    $0x0,%eax
    16da:	49 8b 14 02          	mov    (%r10,%rax,1),%rdx
    16de:	f3 0f 10 0c 3a       	movss  (%rdx,%rdi,1),%xmm1
    16e3:	f3 0f 10 1c 32       	movss  (%rdx,%rsi,1),%xmm3
    16e8:	f3 0f 10 14 0a       	movss  (%rdx,%rcx,1),%xmm2
    16ed:	f3 42 0f 10 24 32    	movss  (%rdx,%r14,1),%xmm4
    16f3:	49 8b 14 01          	mov    (%r9,%rax,1),%rdx
    16f7:	f3 42 0f 10 04 02    	movss  (%rdx,%r8,1),%xmm0
    16fd:	44 0f 28 fc          	movaps %xmm4,%xmm15
    1701:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    1706:	f3 41 0f 58 ff       	addss  %xmm15,%xmm7
    170b:	44 0f 28 fb          	movaps %xmm3,%xmm15
    170f:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    1714:	f3 41 0f 58 ef       	addss  %xmm15,%xmm5
    1719:	44 0f 28 fa          	movaps %xmm2,%xmm15
    171d:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    1722:	f3 45 0f 58 f7       	addss  %xmm15,%xmm14
    1727:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    172b:	f3 44 0f 58 d0       	addss  %xmm0,%xmm10
    1730:	f3 42 0f 10 04 1a    	movss  (%rdx,%r11,1),%xmm0
    1736:	44 0f 28 fc          	movaps %xmm4,%xmm15
    173a:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    173f:	f3 44 0f 58 7c 24 d8 	addss  -0x28(%rsp),%xmm15
    1746:	f3 44 0f 11 7c 24 d8 	movss  %xmm15,-0x28(%rsp)
    174d:	44 0f 28 fb          	movaps %xmm3,%xmm15
    1751:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    1756:	f3 45 0f 58 e7       	addss  %xmm15,%xmm12
    175b:	44 0f 28 fa          	movaps %xmm2,%xmm15
    175f:	f3 44 0f 59 f8       	mulss  %xmm0,%xmm15
    1764:	f3 45 0f 58 cf       	addss  %xmm15,%xmm9
    1769:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    176d:	f3 0f 58 44 24 dc    	addss  -0x24(%rsp),%xmm0
    1773:	f3 0f 11 44 24 dc    	movss  %xmm0,-0x24(%rsp)
    1779:	f3 44 0f 10 3c 1a    	movss  (%rdx,%rbx,1),%xmm15
    177f:	f3 41 0f 59 e7       	mulss  %xmm15,%xmm4
    1784:	f3 44 0f 58 c4       	addss  %xmm4,%xmm8
    1789:	f3 41 0f 59 df       	mulss  %xmm15,%xmm3
    178e:	f3 0f 58 f3          	addss  %xmm3,%xmm6
    1792:	f3 41 0f 59 d7       	mulss  %xmm15,%xmm2
    1797:	f3 44 0f 58 ea       	addss  %xmm2,%xmm13
    179c:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    17a1:	f3 44 0f 58 d9       	addss  %xmm1,%xmm11
    17a6:	48 83 c0 08          	add    $0x8,%rax
    17aa:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    17b0:	0f 85 24 ff ff ff    	jne    16da <backpropagation+0x1c2>
    17b6:	48 83 c5 08          	add    $0x8,%rbp
    17ba:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    17c1:	0f 85 05 ff ff ff    	jne    16cc <backpropagation+0x1b4>
    17c7:	e9 6b fd ff ff       	jmp    1537 <backpropagation+0x1f>
    17cc:	48 8b 05 5d 28 00 00 	mov    0x285d(%rip),%rax        # 4030 <filter_FP>
    17d3:	4e 8b 1c 10          	mov    (%rax,%r10,1),%r11
    17d7:	f3 41 0f 10 a3 fc 03 	movss  0x3fc(%r11),%xmm4
    17de:	00 00 
    17e0:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    17e4:	f3 0f 10 9a fc 03 00 	movss  0x3fc(%rdx),%xmm3
    17eb:	00 
    17ec:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    17f1:	48 8b 14 18          	mov    (%rax,%rbx,1),%rdx
    17f5:	f3 0f 10 92 fc 03 00 	movss  0x3fc(%rdx),%xmm2
    17fc:	00 
    17fd:	4a 8b 04 08          	mov    (%rax,%r9,1),%rax
    1801:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    1808:	00 
    1809:	48 8b 2d 10 28 00 00 	mov    0x2810(%rip),%rbp        # 4020 <in_FP>
    1810:	48 8b 1d 11 28 00 00 	mov    0x2811(%rip),%rbx        # 4028 <out>
    1817:	41 ba 00 00 00 00    	mov    $0x0,%r10d
    181d:	4e 8b 4c 15 00       	mov    0x0(%rbp,%r10,1),%r9
    1822:	4e 8b 04 13          	mov    (%rbx,%r10,1),%r8
    1826:	b8 00 00 00 00       	mov    $0x0,%eax
    182b:	49 8b 14 01          	mov    (%r9,%rax,1),%rdx
    182f:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    1836:	00 
    1837:	49 8b 14 00          	mov    (%r8,%rax,1),%rdx
    183b:	0f 28 e8             	movaps %xmm0,%xmm5
    183e:	f3 42 0f 59 2c 32    	mulss  (%rdx,%r14,1),%xmm5
    1844:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1848:	0f 28 e8             	movaps %xmm0,%xmm5
    184b:	f3 0f 59 2c 32       	mulss  (%rdx,%rsi,1),%xmm5
    1850:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1854:	0f 28 e8             	movaps %xmm0,%xmm5
    1857:	f3 0f 59 2c 0a       	mulss  (%rdx,%rcx,1),%xmm5
    185c:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1860:	f3 0f 59 04 3a       	mulss  (%rdx,%rdi,1),%xmm0
    1865:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1869:	48 83 c0 08          	add    $0x8,%rax
    186d:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1873:	75 b6                	jne    182b <backpropagation+0x313>
    1875:	49 83 c2 08          	add    $0x8,%r10
    1879:	49 81 fa e0 01 00 00 	cmp    $0x1e0,%r10
    1880:	75 9b                	jne    181d <backpropagation+0x305>
    1882:	f3 41 0f 11 a3 fc 03 	movss  %xmm4,0x3fc(%r11)
    1889:	00 00 
    188b:	48 8b 05 9e 27 00 00 	mov    0x279e(%rip),%rax        # 4030 <filter_FP>
    1892:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    1896:	f3 0f 11 9a fc 03 00 	movss  %xmm3,0x3fc(%rdx)
    189d:	00 
    189e:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    18a3:	48 8b 14 18          	mov    (%rax,%rbx,1),%rdx
    18a7:	f3 0f 11 92 fc 03 00 	movss  %xmm2,0x3fc(%rdx)
    18ae:	00 
    18af:	48 8b 5c 24 e8       	mov    -0x18(%rsp),%rbx
    18b4:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    18b8:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    18bf:	00 
    18c0:	49 83 c7 20          	add    $0x20,%r15
    18c4:	49 83 c6 10          	add    $0x10,%r14
    18c8:	49 81 fe 00 02 00 00 	cmp    $0x200,%r14
    18cf:	74 32                	je     1903 <backpropagation+0x3eb>
    18d1:	49 8d 47 f8          	lea    -0x8(%r15),%rax
    18d5:	48 89 44 24 e0       	mov    %rax,-0x20(%rsp)
    18da:	49 8d 47 08          	lea    0x8(%r15),%rax
    18de:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
    18e3:	4b 8d 04 36          	lea    (%r14,%r14,1),%rax
    18e7:	48 89 44 24 e8       	mov    %rax,-0x18(%rsp)
    18ec:	49 8d 7e 0c          	lea    0xc(%r14),%rdi
    18f0:	49 8d 76 04          	lea    0x4(%r14),%rsi
    18f4:	49 8d 4e 08          	lea    0x8(%r14),%rcx
    18f8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    18fe:	e9 24 fd ff ff       	jmp    1627 <backpropagation+0x10f>
    1903:	5b                   	pop    %rbx
    1904:	5d                   	pop    %rbp
    1905:	41 5c                	pop    %r12
    1907:	41 5d                	pop    %r13
    1909:	41 5e                	pop    %r14
    190b:	41 5f                	pop    %r15
    190d:	c3                   	ret    

000000000000190e <equal>:
    190e:	f3 0f 1e fa          	endbr64 
    1912:	0f 28 d0             	movaps %xmm0,%xmm2
    1915:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1919:	f3 0f 10 1d 2f 07 00 	movss  0x72f(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    1920:	00 
    1921:	0f 54 d3             	andps  %xmm3,%xmm2
    1924:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1928:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    192c:	0f 54 c3             	andps  %xmm3,%xmm0
    192f:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1933:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1937:	f2 0f 10 05 21 07 00 	movsd  0x721(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    193e:	00 
    193f:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1943:	0f 96 c0             	setbe  %al
    1946:	0f b6 c0             	movzbl %al,%eax
    1949:	c3                   	ret    

000000000000194a <Compare_backpropagation>:
    194a:	f3 0f 1e fa          	endbr64 
    194e:	41 57                	push   %r15
    1950:	41 56                	push   %r14
    1952:	41 55                	push   %r13
    1954:	41 54                	push   %r12
    1956:	55                   	push   %rbp
    1957:	53                   	push   %rbx
    1958:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    195e:	eb 7e                	jmp    19de <Compare_backpropagation+0x94>
    1960:	48 83 c6 04          	add    $0x4,%rsi
    1964:	48 81 fe 00 04 00 00 	cmp    $0x400,%rsi
    196b:	74 64                	je     19d1 <Compare_backpropagation+0x87>
    196d:	b9 00 00 00 00       	mov    $0x0,%ecx
    1972:	b8 00 00 00 00       	mov    $0x0,%eax
    1977:	48 8b 15 9a 26 00 00 	mov    0x269a(%rip),%rdx        # 4018 <test_filter>
    197e:	48 89 f3             	mov    %rsi,%rbx
    1981:	4a 03 1c 12          	add    (%rdx,%r10,1),%rbx
    1985:	48 8b 3d 9c 26 00 00 	mov    0x269c(%rip),%rdi        # 4028 <out>
    198c:	48 8b 3c 0f          	mov    (%rdi,%rcx,1),%rdi
    1990:	4c 8b 04 07          	mov    (%rdi,%rax,1),%r8
    1994:	48 8b 3d 85 26 00 00 	mov    0x2685(%rip),%rdi        # 4020 <in_FP>
    199b:	48 8b 3c 0f          	mov    (%rdi,%rcx,1),%rdi
    199f:	48 8b 3c 07          	mov    (%rdi,%rax,1),%rdi
    19a3:	f3 43 0f 10 04 08    	movss  (%r8,%r9,1),%xmm0
    19a9:	f3 0f 59 04 37       	mulss  (%rdi,%rsi,1),%xmm0
    19ae:	f3 0f 58 03          	addss  (%rbx),%xmm0
    19b2:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    19b6:	48 83 c0 08          	add    $0x8,%rax
    19ba:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    19c0:	75 b5                	jne    1977 <Compare_backpropagation+0x2d>
    19c2:	48 83 c1 08          	add    $0x8,%rcx
    19c6:	48 81 f9 e0 01 00 00 	cmp    $0x1e0,%rcx
    19cd:	75 a3                	jne    1972 <Compare_backpropagation+0x28>
    19cf:	eb 8f                	jmp    1960 <Compare_backpropagation+0x16>
    19d1:	49 83 c1 04          	add    $0x4,%r9
    19d5:	49 81 f9 00 02 00 00 	cmp    $0x200,%r9
    19dc:	74 0b                	je     19e9 <Compare_backpropagation+0x9f>
    19de:	4f 8d 14 09          	lea    (%r9,%r9,1),%r10
    19e2:	be 00 00 00 00       	mov    $0x0,%esi
    19e7:	eb 84                	jmp    196d <Compare_backpropagation+0x23>
    19e9:	4c 8b 2d 28 26 00 00 	mov    0x2628(%rip),%r13        # 4018 <test_filter>
    19f0:	4c 8b 25 39 26 00 00 	mov    0x2639(%rip),%r12        # 4030 <filter_FP>
    19f7:	bb 00 00 00 00       	mov    $0x0,%ebx
    19fc:	4d 8b 7c 1d 00       	mov    0x0(%r13,%rbx,1),%r15
    1a01:	4d 8b 34 1c          	mov    (%r12,%rbx,1),%r14
    1a05:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a0a:	f3 41 0f 10 04 2e    	movss  (%r14,%rbp,1),%xmm0
    1a10:	f3 41 0f 10 0c 2f    	movss  (%r15,%rbp,1),%xmm1
    1a16:	e8 f3 fe ff ff       	call   190e <equal>
    1a1b:	66 83 f8 01          	cmp    $0x1,%ax
    1a1f:	74 1f                	je     1a40 <Compare_backpropagation+0xf6>
    1a21:	48 83 c5 04          	add    $0x4,%rbp
    1a25:	48 81 fd 00 04 00 00 	cmp    $0x400,%rbp
    1a2c:	75 dc                	jne    1a0a <Compare_backpropagation+0xc0>
    1a2e:	48 83 c3 08          	add    $0x8,%rbx
    1a32:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1a39:	75 c1                	jne    19fc <Compare_backpropagation+0xb2>
    1a3b:	b8 00 00 00 00       	mov    $0x0,%eax
    1a40:	5b                   	pop    %rbx
    1a41:	5d                   	pop    %rbp
    1a42:	41 5c                	pop    %r12
    1a44:	41 5d                	pop    %r13
    1a46:	41 5e                	pop    %r14
    1a48:	41 5f                	pop    %r15
    1a4a:	c3                   	ret    

0000000000001a4b <main>:
    1a4b:	f3 0f 1e fa          	endbr64 
    1a4f:	55                   	push   %rbp
    1a50:	53                   	push   %rbx
    1a51:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
    1a58:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a5f:	00 00 
    1a61:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    1a68:	00 
    1a69:	31 c0                	xor    %eax,%eax
    1a6b:	e8 79 f7 ff ff       	call   11e9 <backpropagation_init>
    1a70:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1a77:	54 43 
    1a79:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1a80:	00 00 
    1a82:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1a89:	00 00 
    1a8b:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1a92:	00 00 
    1a94:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1a9b:	00 00 
    1a9d:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1aa4:	00 00 
    1aa6:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1aab:	bb 00 00 00 00       	mov    $0x0,%ebx
    1ab0:	89 da                	mov    %ebx,%edx
    1ab2:	48 c1 c7 03          	rol    $0x3,%rdi
    1ab6:	48 c1 c7 0d          	rol    $0xd,%rdi
    1aba:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1abe:	48 c1 c7 33          	rol    $0x33,%rdi
    1ac2:	48 87 db             	xchg   %rbx,%rbx
    1ac5:	48 89 14 24          	mov    %rdx,(%rsp)
    1ac9:	48 8b 04 24          	mov    (%rsp),%rax
    1acd:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    1ad4:	54 43 
    1ad6:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1add:	00 00 
    1adf:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    1ae6:	00 00 00 00 00 
    1aeb:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    1af2:	00 00 00 00 00 
    1af7:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1afe:	00 00 00 00 00 
    1b03:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1b0a:	00 00 00 00 00 
    1b0f:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1b14:	89 da                	mov    %ebx,%edx
    1b16:	48 c1 c7 03          	rol    $0x3,%rdi
    1b1a:	48 c1 c7 0d          	rol    $0xd,%rdi
    1b1e:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1b22:	48 c1 c7 33          	rol    $0x33,%rdi
    1b26:	48 87 db             	xchg   %rbx,%rbx
    1b29:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1b2e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1b33:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1b38:	bf 01 00 00 00       	mov    $0x1,%edi
    1b3d:	e8 7e f5 ff ff       	call   10c0 <clock_gettime@plt>
    1b42:	b8 00 00 00 00       	mov    $0x0,%eax
    1b47:	e8 cc f9 ff ff       	call   1518 <backpropagation>
    1b4c:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1b51:	bf 01 00 00 00       	mov    $0x1,%edi
    1b56:	e8 65 f5 ff ff       	call   10c0 <clock_gettime@plt>
    1b5b:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    1b62:	00 02 00 54 43 
    1b67:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1b6e:	00 00 00 00 00 
    1b73:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1b7a:	00 00 00 00 00 
    1b7f:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    1b86:	00 00 00 00 00 
    1b8b:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1b92:	00 00 00 00 00 
    1b97:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1b9e:	00 00 00 00 00 
    1ba3:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1baa:	00 
    1bab:	89 da                	mov    %ebx,%edx
    1bad:	48 c1 c7 03          	rol    $0x3,%rdi
    1bb1:	48 c1 c7 0d          	rol    $0xd,%rdi
    1bb5:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1bb9:	48 c1 c7 33          	rol    $0x33,%rdi
    1bbd:	48 87 db             	xchg   %rbx,%rbx
    1bc0:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1bc5:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1bca:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1bd1:	00 05 00 54 43 
    1bd6:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1bdd:	00 00 00 00 00 
    1be2:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1be9:	00 00 00 00 00 
    1bee:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    1bf5:	00 00 00 00 00 
    1bfa:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    1c01:	00 00 00 00 00 
    1c06:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1c0d:	00 00 00 00 00 
    1c12:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1c19:	00 
    1c1a:	89 da                	mov    %ebx,%edx
    1c1c:	48 c1 c7 03          	rol    $0x3,%rdi
    1c20:	48 c1 c7 0d          	rol    $0xd,%rdi
    1c24:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1c28:	48 c1 c7 33          	rol    $0x33,%rdi
    1c2c:	48 87 db             	xchg   %rbx,%rbx
    1c2f:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1c34:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1c39:	b8 00 00 00 00       	mov    $0x0,%eax
    1c3e:	e8 07 fd ff ff       	call   194a <Compare_backpropagation>
    1c43:	66 85 c0             	test   %ax,%ax
    1c46:	0f 85 2d 01 00 00    	jne    1d79 <main+0x32e>
    1c4c:	48 8d 3d b1 03 00 00 	lea    0x3b1(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1c53:	e8 58 f4 ff ff       	call   10b0 <puts@plt>
    1c58:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1c5d:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1c62:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1c69:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1c6e:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1c73:	48 8d 35 aa 03 00 00 	lea    0x3aa(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    1c7a:	bf 01 00 00 00       	mov    $0x1,%edi
    1c7f:	b8 00 00 00 00       	mov    $0x0,%eax
    1c84:	e8 57 f4 ff ff       	call   10e0 <__printf_chk@plt>
    1c89:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c8e:	48 8b 05 9b 23 00 00 	mov    0x239b(%rip),%rax        # 4030 <filter_FP>
    1c95:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1c99:	e8 02 f4 ff ff       	call   10a0 <free@plt>
    1c9e:	48 8b 05 73 23 00 00 	mov    0x2373(%rip),%rax        # 4018 <test_filter>
    1ca5:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1ca9:	e8 f2 f3 ff ff       	call   10a0 <free@plt>
    1cae:	48 83 c3 08          	add    $0x8,%rbx
    1cb2:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1cb9:	75 d3                	jne    1c8e <main+0x243>
    1cbb:	48 8b 3d 6e 23 00 00 	mov    0x236e(%rip),%rdi        # 4030 <filter_FP>
    1cc2:	e8 d9 f3 ff ff       	call   10a0 <free@plt>
    1cc7:	48 8b 3d 4a 23 00 00 	mov    0x234a(%rip),%rdi        # 4018 <test_filter>
    1cce:	e8 cd f3 ff ff       	call   10a0 <free@plt>
    1cd3:	bd 00 00 00 00       	mov    $0x0,%ebp
    1cd8:	bb 00 00 00 00       	mov    $0x0,%ebx
    1cdd:	48 8b 05 44 23 00 00 	mov    0x2344(%rip),%rax        # 4028 <out>
    1ce4:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1ce8:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1cec:	e8 af f3 ff ff       	call   10a0 <free@plt>
    1cf1:	48 8b 05 28 23 00 00 	mov    0x2328(%rip),%rax        # 4020 <in_FP>
    1cf8:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1cfc:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d00:	e8 9b f3 ff ff       	call   10a0 <free@plt>
    1d05:	48 83 c3 08          	add    $0x8,%rbx
    1d09:	48 81 fb e0 01 00 00 	cmp    $0x1e0,%rbx
    1d10:	75 cb                	jne    1cdd <main+0x292>
    1d12:	48 8b 05 0f 23 00 00 	mov    0x230f(%rip),%rax        # 4028 <out>
    1d19:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d1d:	e8 7e f3 ff ff       	call   10a0 <free@plt>
    1d22:	48 8b 05 f7 22 00 00 	mov    0x22f7(%rip),%rax        # 4020 <in_FP>
    1d29:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d2d:	e8 6e f3 ff ff       	call   10a0 <free@plt>
    1d32:	48 83 c5 08          	add    $0x8,%rbp
    1d36:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    1d3d:	75 99                	jne    1cd8 <main+0x28d>
    1d3f:	48 8b 3d e2 22 00 00 	mov    0x22e2(%rip),%rdi        # 4028 <out>
    1d46:	e8 55 f3 ff ff       	call   10a0 <free@plt>
    1d4b:	48 8b 3d ce 22 00 00 	mov    0x22ce(%rip),%rdi        # 4020 <in_FP>
    1d52:	e8 49 f3 ff ff       	call   10a0 <free@plt>
    1d57:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1d5e:	00 
    1d5f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1d66:	00 00 
    1d68:	75 20                	jne    1d8a <main+0x33f>
    1d6a:	b8 00 00 00 00       	mov    $0x0,%eax
    1d6f:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    1d76:	5b                   	pop    %rbx
    1d77:	5d                   	pop    %rbp
    1d78:	c3                   	ret    
    1d79:	48 8d 3d 93 02 00 00 	lea    0x293(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1d80:	e8 2b f3 ff ff       	call   10b0 <puts@plt>
    1d85:	e9 ce fe ff ff       	jmp    1c58 <main+0x20d>
    1d8a:	e8 41 f3 ff ff       	call   10d0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001d90 <_fini>:
    1d90:	f3 0f 1e fa          	endbr64 
    1d94:	48 83 ec 08          	sub    $0x8,%rsp
    1d98:	48 83 c4 08          	add    $0x8,%rsp
    1d9c:	c3                   	ret    
