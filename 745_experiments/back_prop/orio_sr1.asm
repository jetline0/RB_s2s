
back_prop/orio_sr1:     file format elf64-x86-64


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
    1118:	48 8d 3d 6a 09 00 00 	lea    0x96a(%rip),%rdi        # 1a89 <main>
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
    152c:	48 c7 44 24 d8 10 00 	movq   $0x10,-0x28(%rsp)
    1533:	00 00 
    1535:	e9 d0 03 00 00       	jmp    190a <backpropagation+0x3f2>
    153a:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    153f:	f3 44 0f 11 38       	movss  %xmm15,(%rax)
    1544:	48 8b 05 e5 2a 00 00 	mov    0x2ae5(%rip),%rax        # 4030 <filter_FP>
    154b:	4c 8b 7c 24 d8       	mov    -0x28(%rsp),%r15
    1550:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1554:	f3 44 0f 11 34 28    	movss  %xmm14,(%rax,%rbp,1)
    155a:	48 8b 05 cf 2a 00 00 	mov    0x2acf(%rip),%rax        # 4030 <filter_FP>
    1561:	48 8b 4c 24 e0       	mov    -0x20(%rsp),%rcx
    1566:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    156a:	f3 44 0f 11 2c 18    	movss  %xmm13,(%rax,%rbx,1)
    1570:	48 8b 05 b9 2a 00 00 	mov    0x2ab9(%rip),%rax        # 4030 <filter_FP>
    1577:	48 8b 54 24 f0       	mov    -0x10(%rsp),%rdx
    157c:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    1580:	f3 44 0f 11 24 28    	movss  %xmm12,(%rax,%rbp,1)
    1586:	48 8b 05 a3 2a 00 00 	mov    0x2aa3(%rip),%rax        # 4030 <filter_FP>
    158d:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    1591:	f3 46 0f 11 1c 08    	movss  %xmm11,(%rax,%r9,1)
    1597:	48 8b 05 92 2a 00 00 	mov    0x2a92(%rip),%rax        # 4030 <filter_FP>
    159e:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    15a2:	f3 44 0f 11 14 18    	movss  %xmm10,(%rax,%rbx,1)
    15a8:	48 8b 05 81 2a 00 00 	mov    0x2a81(%rip),%rax        # 4030 <filter_FP>
    15af:	4c 8b 7c 24 e8       	mov    -0x18(%rsp),%r15
    15b4:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    15b8:	f3 44 0f 11 0c 28    	movss  %xmm9,(%rax,%rbp,1)
    15be:	48 8b 05 6b 2a 00 00 	mov    0x2a6b(%rip),%rax        # 4030 <filter_FP>
    15c5:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    15c9:	f3 0f 10 64 24 c8    	movss  -0x38(%rsp),%xmm4
    15cf:	f3 42 0f 11 24 08    	movss  %xmm4,(%rax,%r9,1)
    15d5:	48 8b 05 54 2a 00 00 	mov    0x2a54(%rip),%rax        # 4030 <filter_FP>
    15dc:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    15e0:	f3 0f 10 5c 24 cc    	movss  -0x34(%rsp),%xmm3
    15e6:	f3 0f 11 1c 28       	movss  %xmm3,(%rax,%rbp,1)
    15eb:	48 8b 05 3e 2a 00 00 	mov    0x2a3e(%rip),%rax        # 4030 <filter_FP>
    15f2:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    15f6:	f3 46 0f 11 04 08    	movss  %xmm8,(%rax,%r9,1)
    15fc:	48 8b 05 2d 2a 00 00 	mov    0x2a2d(%rip),%rax        # 4030 <filter_FP>
    1603:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1607:	f3 0f 10 5c 24 d0    	movss  -0x30(%rsp),%xmm3
    160d:	f3 0f 11 1c 18       	movss  %xmm3,(%rax,%rbx,1)
    1612:	48 8b 05 17 2a 00 00 	mov    0x2a17(%rip),%rax        # 4030 <filter_FP>
    1619:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    161d:	f3 0f 10 64 24 d4    	movss  -0x2c(%rsp),%xmm4
    1623:	f3 0f 11 24 18       	movss  %xmm4,(%rax,%rbx,1)
    1628:	49 83 c1 0c          	add    $0xc,%r9
    162c:	49 81 f9 fc 03 00 00 	cmp    $0x3fc,%r9
    1633:	0f 84 bc 01 00 00    	je     17f5 <backpropagation+0x2dd>
    1639:	48 8b 05 f0 29 00 00 	mov    0x29f0(%rip),%rax        # 4030 <filter_FP>
    1640:	48 8b 4c 24 d8       	mov    -0x28(%rsp),%rcx
    1645:	4c 8b 14 08          	mov    (%rax,%rcx,1),%r10
    1649:	4b 8d 1c 0a          	lea    (%r10,%r9,1),%rbx
    164d:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
    1652:	f3 44 0f 10 3b       	movss  (%rbx),%xmm15
    1657:	49 8d 69 04          	lea    0x4(%r9),%rbp
    165b:	f3 47 0f 10 74 0a 04 	movss  0x4(%r10,%r9,1),%xmm14
    1662:	48 8b 4c 24 e0       	mov    -0x20(%rsp),%rcx
    1667:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
    166b:	49 8d 59 08          	lea    0x8(%r9),%rbx
    166f:	f3 46 0f 10 6c 09 08 	movss  0x8(%rcx,%r9,1),%xmm13
    1676:	48 8b 54 24 f0       	mov    -0x10(%rsp),%rdx
    167b:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
    167f:	f3 46 0f 10 64 0a 04 	movss  0x4(%rdx,%r9,1),%xmm12
    1686:	f3 46 0f 10 1c 0a    	movss  (%rdx,%r9,1),%xmm11
    168c:	f3 47 0f 10 54 0a 08 	movss  0x8(%r10,%r9,1),%xmm10
    1693:	4c 8b 7c 24 e8       	mov    -0x18(%rsp),%r15
    1698:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    169c:	f3 46 0f 10 4c 08 04 	movss  0x4(%rax,%r9,1),%xmm9
    16a3:	f3 42 0f 10 24 08    	movss  (%rax,%r9,1),%xmm4
    16a9:	f3 0f 11 64 24 c8    	movss  %xmm4,-0x38(%rsp)
    16af:	f3 42 0f 10 5c 09 04 	movss  0x4(%rcx,%r9,1),%xmm3
    16b6:	f3 0f 11 5c 24 cc    	movss  %xmm3,-0x34(%rsp)
    16bc:	f3 42 0f 10 1c 09    	movss  (%rcx,%r9,1),%xmm3
    16c2:	44 0f 28 c3          	movaps %xmm3,%xmm8
    16c6:	f3 42 0f 10 64 08 08 	movss  0x8(%rax,%r9,1),%xmm4
    16cd:	f3 0f 11 64 24 d0    	movss  %xmm4,-0x30(%rsp)
    16d3:	f3 42 0f 10 5c 0a 08 	movss  0x8(%rdx,%r9,1),%xmm3
    16da:	f3 0f 11 5c 24 d4    	movss  %xmm3,-0x2c(%rsp)
    16e0:	4c 8b 3d 41 29 00 00 	mov    0x2941(%rip),%r15        # 4028 <out>
    16e7:	4c 8b 2d 32 29 00 00 	mov    0x2932(%rip),%r13        # 4020 <in_FP>
    16ee:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    16f4:	4f 8b 14 27          	mov    (%r15,%r12,1),%r10
    16f8:	4b 8b 4c 25 00       	mov    0x0(%r13,%r12,1),%rcx
    16fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1702:	49 8b 14 02          	mov    (%r10,%rax,1),%rdx
    1706:	f3 42 0f 10 24 02    	movss  (%rdx,%r8,1),%xmm4
    170c:	f3 0f 10 2c 3a       	movss  (%rdx,%rdi,1),%xmm5
    1711:	4c 8b 1c 01          	mov    (%rcx,%rax,1),%r11
    1715:	f3 41 0f 10 04 2b    	movss  (%r11,%rbp,1),%xmm0
    171b:	f3 0f 10 1c 32       	movss  (%rdx,%rsi,1),%xmm3
    1720:	f3 43 0f 10 0c 0b    	movss  (%r11,%r9,1),%xmm1
    1726:	f3 41 0f 10 14 1b    	movss  (%r11,%rbx,1),%xmm2
    172c:	f3 42 0f 10 34 32    	movss  (%rdx,%r14,1),%xmm6
    1732:	0f 28 f9             	movaps %xmm1,%xmm7
    1735:	f3 0f 59 fe          	mulss  %xmm6,%xmm7
    1739:	f3 0f 58 7c 24 c8    	addss  -0x38(%rsp),%xmm7
    173f:	f3 0f 11 7c 24 c8    	movss  %xmm7,-0x38(%rsp)
    1745:	0f 28 fd             	movaps %xmm5,%xmm7
    1748:	f3 0f 59 f9          	mulss  %xmm1,%xmm7
    174c:	f3 44 0f 58 c7       	addss  %xmm7,%xmm8
    1751:	0f 28 fb             	movaps %xmm3,%xmm7
    1754:	f3 0f 59 f9          	mulss  %xmm1,%xmm7
    1758:	f3 44 0f 58 ff       	addss  %xmm7,%xmm15
    175d:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    1761:	f3 44 0f 58 d9       	addss  %xmm1,%xmm11
    1766:	0f 28 c8             	movaps %xmm0,%xmm1
    1769:	f3 0f 59 ce          	mulss  %xmm6,%xmm1
    176d:	f3 44 0f 58 c9       	addss  %xmm1,%xmm9
    1772:	0f 28 cd             	movaps %xmm5,%xmm1
    1775:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    1779:	f3 0f 58 4c 24 cc    	addss  -0x34(%rsp),%xmm1
    177f:	f3 0f 11 4c 24 cc    	movss  %xmm1,-0x34(%rsp)
    1785:	0f 28 c8             	movaps %xmm0,%xmm1
    1788:	f3 0f 59 cb          	mulss  %xmm3,%xmm1
    178c:	f3 44 0f 58 f1       	addss  %xmm1,%xmm14
    1791:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    1795:	f3 44 0f 58 e0       	addss  %xmm0,%xmm12
    179a:	f3 0f 59 f2          	mulss  %xmm2,%xmm6
    179e:	0f 28 c6             	movaps %xmm6,%xmm0
    17a1:	f3 0f 58 44 24 d0    	addss  -0x30(%rsp),%xmm0
    17a7:	f3 0f 11 44 24 d0    	movss  %xmm0,-0x30(%rsp)
    17ad:	f3 0f 59 ea          	mulss  %xmm2,%xmm5
    17b1:	f3 44 0f 58 ed       	addss  %xmm5,%xmm13
    17b6:	f3 0f 59 da          	mulss  %xmm2,%xmm3
    17ba:	f3 44 0f 58 d3       	addss  %xmm3,%xmm10
    17bf:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    17c3:	f3 0f 58 54 24 d4    	addss  -0x2c(%rsp),%xmm2
    17c9:	f3 0f 11 54 24 d4    	movss  %xmm2,-0x2c(%rsp)
    17cf:	48 83 c0 08          	add    $0x8,%rax
    17d3:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    17d9:	0f 85 23 ff ff ff    	jne    1702 <backpropagation+0x1ea>
    17df:	49 83 c4 08          	add    $0x8,%r12
    17e3:	49 81 fc e0 01 00 00 	cmp    $0x1e0,%r12
    17ea:	0f 85 04 ff ff ff    	jne    16f4 <backpropagation+0x1dc>
    17f0:	e9 45 fd ff ff       	jmp    153a <backpropagation+0x22>
    17f5:	48 8b 05 34 28 00 00 	mov    0x2834(%rip),%rax        # 4030 <filter_FP>
    17fc:	4c 8b 1c 10          	mov    (%rax,%rdx,1),%r11
    1800:	f3 41 0f 10 a3 fc 03 	movss  0x3fc(%r11),%xmm4
    1807:	00 00 
    1809:	48 8b 4c 24 d8       	mov    -0x28(%rsp),%rcx
    180e:	48 8b 14 08          	mov    (%rax,%rcx,1),%rdx
    1812:	f3 0f 10 9a fc 03 00 	movss  0x3fc(%rdx),%xmm3
    1819:	00 
    181a:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    181f:	48 8b 14 18          	mov    (%rax,%rbx,1),%rdx
    1823:	f3 0f 10 92 fc 03 00 	movss  0x3fc(%rdx),%xmm2
    182a:	00 
    182b:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    182f:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    1836:	00 
    1837:	48 8b 2d e2 27 00 00 	mov    0x27e2(%rip),%rbp        # 4020 <in_FP>
    183e:	48 8b 1d e3 27 00 00 	mov    0x27e3(%rip),%rbx        # 4028 <out>
    1845:	41 ba 00 00 00 00    	mov    $0x0,%r10d
    184b:	4e 8b 4c 15 00       	mov    0x0(%rbp,%r10,1),%r9
    1850:	4a 8b 0c 13          	mov    (%rbx,%r10,1),%rcx
    1854:	b8 00 00 00 00       	mov    $0x0,%eax
    1859:	49 8b 14 01          	mov    (%r9,%rax,1),%rdx
    185d:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    1864:	00 
    1865:	48 8b 14 01          	mov    (%rcx,%rax,1),%rdx
    1869:	0f 28 e8             	movaps %xmm0,%xmm5
    186c:	f3 42 0f 59 2c 32    	mulss  (%rdx,%r14,1),%xmm5
    1872:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1876:	0f 28 e8             	movaps %xmm0,%xmm5
    1879:	f3 0f 59 2c 3a       	mulss  (%rdx,%rdi,1),%xmm5
    187e:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1882:	0f 28 e8             	movaps %xmm0,%xmm5
    1885:	f3 0f 59 2c 32       	mulss  (%rdx,%rsi,1),%xmm5
    188a:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    188e:	f3 42 0f 59 04 02    	mulss  (%rdx,%r8,1),%xmm0
    1894:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1898:	48 83 c0 08          	add    $0x8,%rax
    189c:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    18a2:	75 b5                	jne    1859 <backpropagation+0x341>
    18a4:	49 83 c2 08          	add    $0x8,%r10
    18a8:	49 81 fa e0 01 00 00 	cmp    $0x1e0,%r10
    18af:	75 9a                	jne    184b <backpropagation+0x333>
    18b1:	f3 41 0f 11 a3 fc 03 	movss  %xmm4,0x3fc(%r11)
    18b8:	00 00 
    18ba:	48 8b 05 6f 27 00 00 	mov    0x276f(%rip),%rax        # 4030 <filter_FP>
    18c1:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    18c6:	48 8b 14 18          	mov    (%rax,%rbx,1),%rdx
    18ca:	f3 0f 11 9a fc 03 00 	movss  %xmm3,0x3fc(%rdx)
    18d1:	00 
    18d2:	48 8b 4c 24 e0       	mov    -0x20(%rsp),%rcx
    18d7:	48 8b 14 08          	mov    (%rax,%rcx,1),%rdx
    18db:	f3 0f 11 92 fc 03 00 	movss  %xmm2,0x3fc(%rdx)
    18e2:	00 
    18e3:	48 8b 4c 24 e8       	mov    -0x18(%rsp),%rcx
    18e8:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    18ec:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    18f3:	00 
    18f4:	48 83 c3 20          	add    $0x20,%rbx
    18f8:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    18fd:	49 83 c6 10          	add    $0x10,%r14
    1901:	49 81 fe 00 02 00 00 	cmp    $0x200,%r14
    1908:	74 37                	je     1941 <backpropagation+0x429>
    190a:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    190f:	48 8d 58 f8          	lea    -0x8(%rax),%rbx
    1913:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    1918:	48 83 c0 08          	add    $0x8,%rax
    191c:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
    1921:	4b 8d 04 36          	lea    (%r14,%r14,1),%rax
    1925:	48 89 44 24 e8       	mov    %rax,-0x18(%rsp)
    192a:	4d 8d 46 0c          	lea    0xc(%r14),%r8
    192e:	49 8d 7e 04          	lea    0x4(%r14),%rdi
    1932:	49 8d 76 08          	lea    0x8(%r14),%rsi
    1936:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    193c:	e9 f8 fc ff ff       	jmp    1639 <backpropagation+0x121>
    1941:	5b                   	pop    %rbx
    1942:	5d                   	pop    %rbp
    1943:	41 5c                	pop    %r12
    1945:	41 5d                	pop    %r13
    1947:	41 5e                	pop    %r14
    1949:	41 5f                	pop    %r15
    194b:	c3                   	ret    

000000000000194c <equal>:
    194c:	f3 0f 1e fa          	endbr64 
    1950:	0f 28 d0             	movaps %xmm0,%xmm2
    1953:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1957:	f3 0f 10 1d f1 06 00 	movss  0x6f1(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    195e:	00 
    195f:	0f 54 d3             	andps  %xmm3,%xmm2
    1962:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1966:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    196a:	0f 54 c3             	andps  %xmm3,%xmm0
    196d:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1971:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1975:	f2 0f 10 05 e3 06 00 	movsd  0x6e3(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    197c:	00 
    197d:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1981:	0f 96 c0             	setbe  %al
    1984:	0f b6 c0             	movzbl %al,%eax
    1987:	c3                   	ret    

0000000000001988 <Compare_backpropagation>:
    1988:	f3 0f 1e fa          	endbr64 
    198c:	41 57                	push   %r15
    198e:	41 56                	push   %r14
    1990:	41 55                	push   %r13
    1992:	41 54                	push   %r12
    1994:	55                   	push   %rbp
    1995:	53                   	push   %rbx
    1996:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    199c:	eb 7e                	jmp    1a1c <Compare_backpropagation+0x94>
    199e:	48 83 c6 04          	add    $0x4,%rsi
    19a2:	48 81 fe 00 04 00 00 	cmp    $0x400,%rsi
    19a9:	74 64                	je     1a0f <Compare_backpropagation+0x87>
    19ab:	b9 00 00 00 00       	mov    $0x0,%ecx
    19b0:	b8 00 00 00 00       	mov    $0x0,%eax
    19b5:	48 8b 15 5c 26 00 00 	mov    0x265c(%rip),%rdx        # 4018 <test_filter>
    19bc:	48 89 f3             	mov    %rsi,%rbx
    19bf:	4a 03 1c 12          	add    (%rdx,%r10,1),%rbx
    19c3:	48 8b 3d 5e 26 00 00 	mov    0x265e(%rip),%rdi        # 4028 <out>
    19ca:	48 8b 3c 0f          	mov    (%rdi,%rcx,1),%rdi
    19ce:	4c 8b 04 07          	mov    (%rdi,%rax,1),%r8
    19d2:	48 8b 3d 47 26 00 00 	mov    0x2647(%rip),%rdi        # 4020 <in_FP>
    19d9:	48 8b 3c 0f          	mov    (%rdi,%rcx,1),%rdi
    19dd:	48 8b 3c 07          	mov    (%rdi,%rax,1),%rdi
    19e1:	f3 43 0f 10 04 08    	movss  (%r8,%r9,1),%xmm0
    19e7:	f3 0f 59 04 37       	mulss  (%rdi,%rsi,1),%xmm0
    19ec:	f3 0f 58 03          	addss  (%rbx),%xmm0
    19f0:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    19f4:	48 83 c0 08          	add    $0x8,%rax
    19f8:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    19fe:	75 b5                	jne    19b5 <Compare_backpropagation+0x2d>
    1a00:	48 83 c1 08          	add    $0x8,%rcx
    1a04:	48 81 f9 e0 01 00 00 	cmp    $0x1e0,%rcx
    1a0b:	75 a3                	jne    19b0 <Compare_backpropagation+0x28>
    1a0d:	eb 8f                	jmp    199e <Compare_backpropagation+0x16>
    1a0f:	49 83 c1 04          	add    $0x4,%r9
    1a13:	49 81 f9 00 02 00 00 	cmp    $0x200,%r9
    1a1a:	74 0b                	je     1a27 <Compare_backpropagation+0x9f>
    1a1c:	4f 8d 14 09          	lea    (%r9,%r9,1),%r10
    1a20:	be 00 00 00 00       	mov    $0x0,%esi
    1a25:	eb 84                	jmp    19ab <Compare_backpropagation+0x23>
    1a27:	4c 8b 2d ea 25 00 00 	mov    0x25ea(%rip),%r13        # 4018 <test_filter>
    1a2e:	4c 8b 25 fb 25 00 00 	mov    0x25fb(%rip),%r12        # 4030 <filter_FP>
    1a35:	bb 00 00 00 00       	mov    $0x0,%ebx
    1a3a:	4d 8b 7c 1d 00       	mov    0x0(%r13,%rbx,1),%r15
    1a3f:	4d 8b 34 1c          	mov    (%r12,%rbx,1),%r14
    1a43:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a48:	f3 41 0f 10 04 2e    	movss  (%r14,%rbp,1),%xmm0
    1a4e:	f3 41 0f 10 0c 2f    	movss  (%r15,%rbp,1),%xmm1
    1a54:	e8 f3 fe ff ff       	call   194c <equal>
    1a59:	66 83 f8 01          	cmp    $0x1,%ax
    1a5d:	74 1f                	je     1a7e <Compare_backpropagation+0xf6>
    1a5f:	48 83 c5 04          	add    $0x4,%rbp
    1a63:	48 81 fd 00 04 00 00 	cmp    $0x400,%rbp
    1a6a:	75 dc                	jne    1a48 <Compare_backpropagation+0xc0>
    1a6c:	48 83 c3 08          	add    $0x8,%rbx
    1a70:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1a77:	75 c1                	jne    1a3a <Compare_backpropagation+0xb2>
    1a79:	b8 00 00 00 00       	mov    $0x0,%eax
    1a7e:	5b                   	pop    %rbx
    1a7f:	5d                   	pop    %rbp
    1a80:	41 5c                	pop    %r12
    1a82:	41 5d                	pop    %r13
    1a84:	41 5e                	pop    %r14
    1a86:	41 5f                	pop    %r15
    1a88:	c3                   	ret    

0000000000001a89 <main>:
    1a89:	f3 0f 1e fa          	endbr64 
    1a8d:	55                   	push   %rbp
    1a8e:	53                   	push   %rbx
    1a8f:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
    1a96:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a9d:	00 00 
    1a9f:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    1aa6:	00 
    1aa7:	31 c0                	xor    %eax,%eax
    1aa9:	e8 3b f7 ff ff       	call   11e9 <backpropagation_init>
    1aae:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1ab5:	54 43 
    1ab7:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1abe:	00 00 
    1ac0:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1ac7:	00 00 
    1ac9:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1ad0:	00 00 
    1ad2:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1ad9:	00 00 
    1adb:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1ae2:	00 00 
    1ae4:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1ae9:	bb 00 00 00 00       	mov    $0x0,%ebx
    1aee:	89 da                	mov    %ebx,%edx
    1af0:	48 c1 c7 03          	rol    $0x3,%rdi
    1af4:	48 c1 c7 0d          	rol    $0xd,%rdi
    1af8:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1afc:	48 c1 c7 33          	rol    $0x33,%rdi
    1b00:	48 87 db             	xchg   %rbx,%rbx
    1b03:	48 89 14 24          	mov    %rdx,(%rsp)
    1b07:	48 8b 04 24          	mov    (%rsp),%rax
    1b0b:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    1b12:	54 43 
    1b14:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1b1b:	00 00 
    1b1d:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    1b24:	00 00 00 00 00 
    1b29:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    1b30:	00 00 00 00 00 
    1b35:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1b3c:	00 00 00 00 00 
    1b41:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1b48:	00 00 00 00 00 
    1b4d:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1b52:	89 da                	mov    %ebx,%edx
    1b54:	48 c1 c7 03          	rol    $0x3,%rdi
    1b58:	48 c1 c7 0d          	rol    $0xd,%rdi
    1b5c:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1b60:	48 c1 c7 33          	rol    $0x33,%rdi
    1b64:	48 87 db             	xchg   %rbx,%rbx
    1b67:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1b6c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1b71:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1b76:	bf 01 00 00 00       	mov    $0x1,%edi
    1b7b:	e8 40 f5 ff ff       	call   10c0 <clock_gettime@plt>
    1b80:	b8 00 00 00 00       	mov    $0x0,%eax
    1b85:	e8 8e f9 ff ff       	call   1518 <backpropagation>
    1b8a:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1b8f:	bf 01 00 00 00       	mov    $0x1,%edi
    1b94:	e8 27 f5 ff ff       	call   10c0 <clock_gettime@plt>
    1b99:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    1ba0:	00 02 00 54 43 
    1ba5:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1bac:	00 00 00 00 00 
    1bb1:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1bb8:	00 00 00 00 00 
    1bbd:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    1bc4:	00 00 00 00 00 
    1bc9:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1bd0:	00 00 00 00 00 
    1bd5:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1bdc:	00 00 00 00 00 
    1be1:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1be8:	00 
    1be9:	89 da                	mov    %ebx,%edx
    1beb:	48 c1 c7 03          	rol    $0x3,%rdi
    1bef:	48 c1 c7 0d          	rol    $0xd,%rdi
    1bf3:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1bf7:	48 c1 c7 33          	rol    $0x33,%rdi
    1bfb:	48 87 db             	xchg   %rbx,%rbx
    1bfe:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1c03:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1c08:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1c0f:	00 05 00 54 43 
    1c14:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1c1b:	00 00 00 00 00 
    1c20:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1c27:	00 00 00 00 00 
    1c2c:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    1c33:	00 00 00 00 00 
    1c38:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    1c3f:	00 00 00 00 00 
    1c44:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1c4b:	00 00 00 00 00 
    1c50:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1c57:	00 
    1c58:	89 da                	mov    %ebx,%edx
    1c5a:	48 c1 c7 03          	rol    $0x3,%rdi
    1c5e:	48 c1 c7 0d          	rol    $0xd,%rdi
    1c62:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1c66:	48 c1 c7 33          	rol    $0x33,%rdi
    1c6a:	48 87 db             	xchg   %rbx,%rbx
    1c6d:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1c72:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1c77:	b8 00 00 00 00       	mov    $0x0,%eax
    1c7c:	e8 07 fd ff ff       	call   1988 <Compare_backpropagation>
    1c81:	66 85 c0             	test   %ax,%ax
    1c84:	0f 85 2d 01 00 00    	jne    1db7 <main+0x32e>
    1c8a:	48 8d 3d 73 03 00 00 	lea    0x373(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1c91:	e8 1a f4 ff ff       	call   10b0 <puts@plt>
    1c96:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1c9b:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1ca0:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1ca7:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1cac:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1cb1:	48 8d 35 6c 03 00 00 	lea    0x36c(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    1cb8:	bf 01 00 00 00       	mov    $0x1,%edi
    1cbd:	b8 00 00 00 00       	mov    $0x0,%eax
    1cc2:	e8 19 f4 ff ff       	call   10e0 <__printf_chk@plt>
    1cc7:	bb 00 00 00 00       	mov    $0x0,%ebx
    1ccc:	48 8b 05 5d 23 00 00 	mov    0x235d(%rip),%rax        # 4030 <filter_FP>
    1cd3:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1cd7:	e8 c4 f3 ff ff       	call   10a0 <free@plt>
    1cdc:	48 8b 05 35 23 00 00 	mov    0x2335(%rip),%rax        # 4018 <test_filter>
    1ce3:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1ce7:	e8 b4 f3 ff ff       	call   10a0 <free@plt>
    1cec:	48 83 c3 08          	add    $0x8,%rbx
    1cf0:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1cf7:	75 d3                	jne    1ccc <main+0x243>
    1cf9:	48 8b 3d 30 23 00 00 	mov    0x2330(%rip),%rdi        # 4030 <filter_FP>
    1d00:	e8 9b f3 ff ff       	call   10a0 <free@plt>
    1d05:	48 8b 3d 0c 23 00 00 	mov    0x230c(%rip),%rdi        # 4018 <test_filter>
    1d0c:	e8 8f f3 ff ff       	call   10a0 <free@plt>
    1d11:	bd 00 00 00 00       	mov    $0x0,%ebp
    1d16:	bb 00 00 00 00       	mov    $0x0,%ebx
    1d1b:	48 8b 05 06 23 00 00 	mov    0x2306(%rip),%rax        # 4028 <out>
    1d22:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1d26:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d2a:	e8 71 f3 ff ff       	call   10a0 <free@plt>
    1d2f:	48 8b 05 ea 22 00 00 	mov    0x22ea(%rip),%rax        # 4020 <in_FP>
    1d36:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1d3a:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d3e:	e8 5d f3 ff ff       	call   10a0 <free@plt>
    1d43:	48 83 c3 08          	add    $0x8,%rbx
    1d47:	48 81 fb e0 01 00 00 	cmp    $0x1e0,%rbx
    1d4e:	75 cb                	jne    1d1b <main+0x292>
    1d50:	48 8b 05 d1 22 00 00 	mov    0x22d1(%rip),%rax        # 4028 <out>
    1d57:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d5b:	e8 40 f3 ff ff       	call   10a0 <free@plt>
    1d60:	48 8b 05 b9 22 00 00 	mov    0x22b9(%rip),%rax        # 4020 <in_FP>
    1d67:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d6b:	e8 30 f3 ff ff       	call   10a0 <free@plt>
    1d70:	48 83 c5 08          	add    $0x8,%rbp
    1d74:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    1d7b:	75 99                	jne    1d16 <main+0x28d>
    1d7d:	48 8b 3d a4 22 00 00 	mov    0x22a4(%rip),%rdi        # 4028 <out>
    1d84:	e8 17 f3 ff ff       	call   10a0 <free@plt>
    1d89:	48 8b 3d 90 22 00 00 	mov    0x2290(%rip),%rdi        # 4020 <in_FP>
    1d90:	e8 0b f3 ff ff       	call   10a0 <free@plt>
    1d95:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1d9c:	00 
    1d9d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1da4:	00 00 
    1da6:	75 20                	jne    1dc8 <main+0x33f>
    1da8:	b8 00 00 00 00       	mov    $0x0,%eax
    1dad:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    1db4:	5b                   	pop    %rbx
    1db5:	5d                   	pop    %rbp
    1db6:	c3                   	ret    
    1db7:	48 8d 3d 55 02 00 00 	lea    0x255(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1dbe:	e8 ed f2 ff ff       	call   10b0 <puts@plt>
    1dc3:	e9 ce fe ff ff       	jmp    1c96 <main+0x20d>
    1dc8:	e8 03 f3 ff ff       	call   10d0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001dd0 <_fini>:
    1dd0:	f3 0f 1e fa          	endbr64 
    1dd4:	48 83 ec 08          	sub    $0x8,%rsp
    1dd8:	48 83 c4 08          	add    $0x8,%rsp
    1ddc:	c3                   	ret    
