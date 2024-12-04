
grad_desc/orio_sr1:     file format elf64-x86-64


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
    1118:	48 8d 3d eb 09 00 00 	lea    0x9eb(%rip),%rdi        # 1b0a <main>
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

00000000000011e9 <gradient_descent_init>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	41 57                	push   %r15
    11ef:	41 56                	push   %r14
    11f1:	41 55                	push   %r13
    11f3:	41 54                	push   %r12
    11f5:	55                   	push   %rbp
    11f6:	53                   	push   %rbx
    11f7:	48 83 ec 78          	sub    $0x78,%rsp
    11fb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1202:	00 00 
    1204:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1209:	31 c0                	xor    %eax,%eax
    120b:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1210:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1215:	be 40 00 00 00       	mov    $0x40,%esi
    121a:	e8 d1 fe ff ff       	call   10f0 <posix_memalign@plt>
    121f:	85 c0                	test   %eax,%eax
    1221:	b8 00 00 00 00       	mov    $0x0,%eax
    1226:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    122c:	48 89 05 fd 2d 00 00 	mov    %rax,0x2dfd(%rip)        # 4030 <in>
    1233:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    1238:	ba a0 01 00 00       	mov    $0x1a0,%edx
    123d:	be 40 00 00 00       	mov    $0x40,%esi
    1242:	e8 a9 fe ff ff       	call   10f0 <posix_memalign@plt>
    1247:	85 c0                	test   %eax,%eax
    1249:	b8 00 00 00 00       	mov    $0x0,%eax
    124e:	48 0f 44 44 24 18    	cmove  0x18(%rsp),%rax
    1254:	48 89 05 c5 2d 00 00 	mov    %rax,0x2dc5(%rip)        # 4020 <test>
    125b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1260:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1265:	be 40 00 00 00       	mov    $0x40,%esi
    126a:	e8 81 fe ff ff       	call   10f0 <posix_memalign@plt>
    126f:	85 c0                	test   %eax,%eax
    1271:	b8 00 00 00 00       	mov    $0x0,%eax
    1276:	48 0f 44 44 24 10    	cmove  0x10(%rsp),%rax
    127c:	48 89 05 a5 2d 00 00 	mov    %rax,0x2da5(%rip)        # 4028 <out>
    1283:	bd 00 00 00 00       	mov    $0x0,%ebp
    1288:	48 8d 44 24 38       	lea    0x38(%rsp),%rax
    128d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1292:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    1298:	eb 11                	jmp    12ab <gradient_descent_init+0xc2>
    129a:	48 83 c5 08          	add    $0x8,%rbp
    129e:	48 81 fd a0 01 00 00 	cmp    $0x1a0,%rbp
    12a5:	0f 84 d8 01 00 00    	je     1483 <gradient_descent_init+0x29a>
    12ab:	48 89 eb             	mov    %rbp,%rbx
    12ae:	48 03 1d 7b 2d 00 00 	add    0x2d7b(%rip),%rbx        # 4030 <in>
    12b5:	ba a0 01 00 00       	mov    $0x1a0,%edx
    12ba:	be 40 00 00 00       	mov    $0x40,%esi
    12bf:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    12c4:	e8 27 fe ff ff       	call   10f0 <posix_memalign@plt>
    12c9:	85 c0                	test   %eax,%eax
    12cb:	4c 89 e0             	mov    %r12,%rax
    12ce:	48 0f 44 44 24 38    	cmove  0x38(%rsp),%rax
    12d4:	48 89 03             	mov    %rax,(%rbx)
    12d7:	48 89 eb             	mov    %rbp,%rbx
    12da:	48 03 1d 3f 2d 00 00 	add    0x2d3f(%rip),%rbx        # 4020 <test>
    12e1:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    12e6:	ba a0 01 00 00       	mov    $0x1a0,%edx
    12eb:	be 40 00 00 00       	mov    $0x40,%esi
    12f0:	e8 fb fd ff ff       	call   10f0 <posix_memalign@plt>
    12f5:	85 c0                	test   %eax,%eax
    12f7:	4c 89 e0             	mov    %r12,%rax
    12fa:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    1300:	48 89 03             	mov    %rax,(%rbx)
    1303:	48 89 eb             	mov    %rbp,%rbx
    1306:	48 03 1d 1b 2d 00 00 	add    0x2d1b(%rip),%rbx        # 4028 <out>
    130d:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    1312:	ba a0 01 00 00       	mov    $0x1a0,%edx
    1317:	be 40 00 00 00       	mov    $0x40,%esi
    131c:	e8 cf fd ff ff       	call   10f0 <posix_memalign@plt>
    1321:	85 c0                	test   %eax,%eax
    1323:	4c 89 e0             	mov    %r12,%rax
    1326:	48 0f 44 44 24 28    	cmove  0x28(%rsp),%rax
    132c:	48 89 03             	mov    %rax,(%rbx)
    132f:	bb 00 00 00 00       	mov    $0x0,%ebx
    1334:	4c 8d 7c 24 50       	lea    0x50(%rsp),%r15
    1339:	4c 8d 74 24 48       	lea    0x48(%rsp),%r14
    133e:	48 8b 05 eb 2c 00 00 	mov    0x2ceb(%rip),%rax        # 4030 <in>
    1345:	49 89 dd             	mov    %rbx,%r13
    1348:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    134c:	ba 00 04 00 00       	mov    $0x400,%edx
    1351:	be 40 00 00 00       	mov    $0x40,%esi
    1356:	4c 89 ff             	mov    %r15,%rdi
    1359:	e8 92 fd ff ff       	call   10f0 <posix_memalign@plt>
    135e:	85 c0                	test   %eax,%eax
    1360:	4c 89 e0             	mov    %r12,%rax
    1363:	48 0f 44 44 24 50    	cmove  0x50(%rsp),%rax
    1369:	49 89 45 00          	mov    %rax,0x0(%r13)
    136d:	48 8b 05 ac 2c 00 00 	mov    0x2cac(%rip),%rax        # 4020 <test>
    1374:	49 89 dd             	mov    %rbx,%r13
    1377:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    137b:	ba 00 04 00 00       	mov    $0x400,%edx
    1380:	be 40 00 00 00       	mov    $0x40,%esi
    1385:	4c 89 f7             	mov    %r14,%rdi
    1388:	e8 63 fd ff ff       	call   10f0 <posix_memalign@plt>
    138d:	85 c0                	test   %eax,%eax
    138f:	4c 89 e0             	mov    %r12,%rax
    1392:	48 0f 44 44 24 48    	cmove  0x48(%rsp),%rax
    1398:	49 89 45 00          	mov    %rax,0x0(%r13)
    139c:	48 8b 05 85 2c 00 00 	mov    0x2c85(%rip),%rax        # 4028 <out>
    13a3:	49 89 dd             	mov    %rbx,%r13
    13a6:	4c 03 2c 28          	add    (%rax,%rbp,1),%r13
    13aa:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    13af:	ba 00 02 00 00       	mov    $0x200,%edx
    13b4:	be 40 00 00 00       	mov    $0x40,%esi
    13b9:	e8 32 fd ff ff       	call   10f0 <posix_memalign@plt>
    13be:	85 c0                	test   %eax,%eax
    13c0:	4c 89 e0             	mov    %r12,%rax
    13c3:	48 0f 44 44 24 40    	cmove  0x40(%rsp),%rax
    13c9:	49 89 45 00          	mov    %rax,0x0(%r13)
    13cd:	b8 00 00 00 00       	mov    $0x0,%eax
    13d2:	48 8b 15 57 2c 00 00 	mov    0x2c57(%rip),%rdx        # 4030 <in>
    13d9:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    13dd:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    13e1:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    13e8:	48 83 c0 04          	add    $0x4,%rax
    13ec:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    13f2:	75 de                	jne    13d2 <gradient_descent_init+0x1e9>
    13f4:	b8 00 00 00 00       	mov    $0x0,%eax
    13f9:	48 8b 15 20 2c 00 00 	mov    0x2c20(%rip),%rdx        # 4020 <test>
    1400:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1404:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    1408:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    140f:	48 83 c0 04          	add    $0x4,%rax
    1413:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1419:	75 de                	jne    13f9 <gradient_descent_init+0x210>
    141b:	ba 00 00 00 00       	mov    $0x0,%edx
    1420:	48 8b 05 01 2c 00 00 	mov    0x2c01(%rip),%rax        # 4028 <out>
    1427:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    142b:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
    142f:	48 63 c2             	movslq %edx,%rax
    1432:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    1439:	48 c1 f8 21          	sar    $0x21,%rax
    143d:	89 d6                	mov    %edx,%esi
    143f:	c1 fe 1f             	sar    $0x1f,%esi
    1442:	29 f0                	sub    %esi,%eax
    1444:	8d 34 80             	lea    (%rax,%rax,4),%esi
    1447:	89 d0                	mov    %edx,%eax
    1449:	29 f0                	sub    %esi,%eax
    144b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    144f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1453:	f3 0f 58 05 e5 0b 00 	addss  0xbe5(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    145a:	00 
    145b:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    1460:	48 83 c2 01          	add    $0x1,%rdx
    1464:	48 81 fa 80 00 00 00 	cmp    $0x80,%rdx
    146b:	75 b3                	jne    1420 <gradient_descent_init+0x237>
    146d:	48 83 c3 08          	add    $0x8,%rbx
    1471:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    1478:	0f 85 c0 fe ff ff    	jne    133e <gradient_descent_init+0x155>
    147e:	e9 17 fe ff ff       	jmp    129a <gradient_descent_init+0xb1>
    1483:	48 8d 7c 24 58       	lea    0x58(%rsp),%rdi
    1488:	ba 00 04 00 00       	mov    $0x400,%edx
    148d:	be 40 00 00 00       	mov    $0x40,%esi
    1492:	e8 59 fc ff ff       	call   10f0 <posix_memalign@plt>
    1497:	85 c0                	test   %eax,%eax
    1499:	b8 00 00 00 00       	mov    $0x0,%eax
    149e:	48 0f 44 44 24 58    	cmove  0x58(%rsp),%rax
    14a4:	48 89 05 6d 2b 00 00 	mov    %rax,0x2b6d(%rip)        # 4018 <filter>
    14ab:	bb 00 00 00 00       	mov    $0x0,%ebx
    14b0:	48 89 dd             	mov    %rbx,%rbp
    14b3:	48 03 2d 5e 2b 00 00 	add    0x2b5e(%rip),%rbp        # 4018 <filter>
    14ba:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
    14bf:	ba 00 04 00 00       	mov    $0x400,%edx
    14c4:	be 40 00 00 00       	mov    $0x40,%esi
    14c9:	e8 22 fc ff ff       	call   10f0 <posix_memalign@plt>
    14ce:	85 c0                	test   %eax,%eax
    14d0:	b8 00 00 00 00       	mov    $0x0,%eax
    14d5:	48 0f 44 44 24 60    	cmove  0x60(%rsp),%rax
    14db:	48 89 45 00          	mov    %rax,0x0(%rbp)
    14df:	ba 00 00 00 00       	mov    $0x0,%edx
    14e4:	48 8b 05 2d 2b 00 00 	mov    0x2b2d(%rip),%rax        # 4018 <filter>
    14eb:	48 8b 0c 18          	mov    (%rax,%rbx,1),%rcx
    14ef:	48 63 c2             	movslq %edx,%rax
    14f2:	48 69 c0 56 55 55 55 	imul   $0x55555556,%rax,%rax
    14f9:	48 c1 e8 20          	shr    $0x20,%rax
    14fd:	89 d6                	mov    %edx,%esi
    14ff:	c1 fe 1f             	sar    $0x1f,%esi
    1502:	29 f0                	sub    %esi,%eax
    1504:	8d 34 40             	lea    (%rax,%rax,2),%esi
    1507:	89 d0                	mov    %edx,%eax
    1509:	29 f0                	sub    %esi,%eax
    150b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    150f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1513:	f3 0f 58 05 25 0b 00 	addss  0xb25(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    151a:	00 
    151b:	f3 0f 11 04 91       	movss  %xmm0,(%rcx,%rdx,4)
    1520:	48 83 c2 01          	add    $0x1,%rdx
    1524:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    152b:	75 b7                	jne    14e4 <gradient_descent_init+0x2fb>
    152d:	48 83 c3 08          	add    $0x8,%rbx
    1531:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1538:	0f 85 72 ff ff ff    	jne    14b0 <gradient_descent_init+0x2c7>
    153e:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1543:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    154a:	00 00 
    154c:	75 0f                	jne    155d <gradient_descent_init+0x374>
    154e:	48 83 c4 78          	add    $0x78,%rsp
    1552:	5b                   	pop    %rbx
    1553:	5d                   	pop    %rbp
    1554:	41 5c                	pop    %r12
    1556:	41 5d                	pop    %r13
    1558:	41 5e                	pop    %r14
    155a:	41 5f                	pop    %r15
    155c:	c3                   	ret    
    155d:	e8 6e fb ff ff       	call   10d0 <__stack_chk_fail@plt>

0000000000001562 <gradient_descent>:
    1562:	f3 0f 1e fa          	endbr64 
    1566:	41 57                	push   %r15
    1568:	41 56                	push   %r14
    156a:	41 55                	push   %r13
    156c:	41 54                	push   %r12
    156e:	55                   	push   %rbp
    156f:	53                   	push   %rbx
    1570:	ba 10 00 00 00       	mov    $0x10,%edx
    1575:	e9 ea 03 00 00       	jmp    1964 <gradient_descent+0x402>
    157a:	48 8b 05 af 2a 00 00 	mov    0x2aaf(%rip),%rax        # 4030 <in>
    1581:	48 8b 34 08          	mov    (%rax,%rcx,1),%rsi
    1585:	4e 8b 1c 2e          	mov    (%rsi,%r13,1),%r11
    1589:	f3 41 0f 10 a3 fc 03 	movss  0x3fc(%r11),%xmm4
    1590:	00 00 
    1592:	48 8b 34 10          	mov    (%rax,%rdx,1),%rsi
    1596:	4a 8b 34 2e          	mov    (%rsi,%r13,1),%rsi
    159a:	f3 0f 10 9e fc 03 00 	movss  0x3fc(%rsi),%xmm3
    15a1:	00 
    15a2:	48 8b 5c 24 f0       	mov    -0x10(%rsp),%rbx
    15a7:	48 8b 34 18          	mov    (%rax,%rbx,1),%rsi
    15ab:	4a 8b 34 2e          	mov    (%rsi,%r13,1),%rsi
    15af:	f3 0f 10 96 fc 03 00 	movss  0x3fc(%rsi),%xmm2
    15b6:	00 
    15b7:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    15bb:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    15bf:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    15c6:	00 
    15c7:	4c 8b 15 4a 2a 00 00 	mov    0x2a4a(%rip),%r10        # 4018 <filter>
    15ce:	48 8b 05 53 2a 00 00 	mov    0x2a53(%rip),%rax        # 4028 <out>
    15d5:	4a 8b 34 30          	mov    (%rax,%r14,1),%rsi
    15d9:	4e 8b 0c 2e          	mov    (%rsi,%r13,1),%r9
    15dd:	48 8b 34 18          	mov    (%rax,%rbx,1),%rsi
    15e1:	4e 8b 04 2e          	mov    (%rsi,%r13,1),%r8
    15e5:	48 8b 34 10          	mov    (%rax,%rdx,1),%rsi
    15e9:	4a 8b 3c 2e          	mov    (%rsi,%r13,1),%rdi
    15ed:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    15f1:	4a 8b 34 28          	mov    (%rax,%r13,1),%rsi
    15f5:	b8 00 00 00 00       	mov    $0x0,%eax
    15fa:	49 8b 1c 42          	mov    (%r10,%rax,2),%rbx
    15fe:	f3 0f 10 83 fc 03 00 	movss  0x3fc(%rbx),%xmm0
    1605:	00 
    1606:	0f 28 e8             	movaps %xmm0,%xmm5
    1609:	f3 41 0f 59 2c 01    	mulss  (%r9,%rax,1),%xmm5
    160f:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1613:	0f 28 e8             	movaps %xmm0,%xmm5
    1616:	f3 41 0f 59 2c 00    	mulss  (%r8,%rax,1),%xmm5
    161c:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1620:	0f 28 e8             	movaps %xmm0,%xmm5
    1623:	f3 0f 59 2c 07       	mulss  (%rdi,%rax,1),%xmm5
    1628:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    162c:	f3 0f 59 04 06       	mulss  (%rsi,%rax,1),%xmm0
    1631:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1635:	48 83 c0 04          	add    $0x4,%rax
    1639:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    163f:	75 b9                	jne    15fa <gradient_descent+0x98>
    1641:	f3 41 0f 11 a3 fc 03 	movss  %xmm4,0x3fc(%r11)
    1648:	00 00 
    164a:	48 8b 05 df 29 00 00 	mov    0x29df(%rip),%rax        # 4030 <in>
    1651:	48 8b 34 10          	mov    (%rax,%rdx,1),%rsi
    1655:	4a 8b 34 2e          	mov    (%rsi,%r13,1),%rsi
    1659:	f3 0f 11 9e fc 03 00 	movss  %xmm3,0x3fc(%rsi)
    1660:	00 
    1661:	48 8b 74 24 f0       	mov    -0x10(%rsp),%rsi
    1666:	48 8b 34 30          	mov    (%rax,%rsi,1),%rsi
    166a:	4a 8b 34 2e          	mov    (%rsi,%r13,1),%rsi
    166e:	f3 0f 11 96 fc 03 00 	movss  %xmm2,0x3fc(%rsi)
    1675:	00 
    1676:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    167a:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    167e:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    1685:	00 
    1686:	49 83 c5 08          	add    $0x8,%r13
    168a:	49 81 fd a0 01 00 00 	cmp    $0x1a0,%r13
    1691:	0f 84 c0 02 00 00    	je     1957 <gradient_descent+0x3f5>
    1697:	bf 08 00 00 00       	mov    $0x8,%edi
    169c:	48 8b 05 8d 29 00 00 	mov    0x298d(%rip),%rax        # 4030 <in>
    16a3:	4c 8b 7c 24 f0       	mov    -0x10(%rsp),%r15
    16a8:	4a 8b 34 38          	mov    (%rax,%r15,1),%rsi
    16ac:	4e 8b 1c 2e          	mov    (%rsi,%r13,1),%r11
    16b0:	49 8d 34 3b          	lea    (%r11,%rdi,1),%rsi
    16b4:	48 89 74 24 f8       	mov    %rsi,-0x8(%rsp)
    16b9:	f3 44 0f 10 3e       	movss  (%rsi),%xmm15
    16be:	4a 8b 34 30          	mov    (%rax,%r14,1),%rsi
    16c2:	4a 8b 34 2e          	mov    (%rsi,%r13,1),%rsi
    16c6:	4c 8d 47 fc          	lea    -0x4(%rdi),%r8
    16ca:	f3 44 0f 10 74 3e fc 	movss  -0x4(%rsi,%rdi,1),%xmm14
    16d1:	4c 8b 0c 10          	mov    (%rax,%rdx,1),%r9
    16d5:	4f 8b 14 29          	mov    (%r9,%r13,1),%r10
    16d9:	4c 8d 4f f8          	lea    -0x8(%rdi),%r9
    16dd:	f3 45 0f 10 6c 3a f8 	movss  -0x8(%r10,%rdi,1),%xmm13
    16e4:	f3 45 0f 10 64 3b f8 	movss  -0x8(%r11,%rdi,1),%xmm12
    16eb:	f3 45 0f 10 1c 3a    	movss  (%r10,%rdi,1),%xmm11
    16f1:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    16f5:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    16f9:	f3 44 0f 10 14 38    	movss  (%rax,%rdi,1),%xmm10
    16ff:	f3 45 0f 10 4c 3a fc 	movss  -0x4(%r10,%rdi,1),%xmm9
    1706:	f3 44 0f 10 04 3e    	movss  (%rsi,%rdi,1),%xmm8
    170c:	f3 0f 10 7c 3e f8    	movss  -0x8(%rsi,%rdi,1),%xmm7
    1712:	f3 0f 10 74 38 f8    	movss  -0x8(%rax,%rdi,1),%xmm6
    1718:	f3 41 0f 10 4c 3b fc 	movss  -0x4(%r11,%rdi,1),%xmm1
    171f:	f3 0f 11 4c 24 e4    	movss  %xmm1,-0x1c(%rsp)
    1725:	f3 0f 10 54 38 fc    	movss  -0x4(%rax,%rdi,1),%xmm2
    172b:	f3 0f 11 54 24 e8    	movss  %xmm2,-0x18(%rsp)
    1731:	48 8b 05 f0 28 00 00 	mov    0x28f0(%rip),%rax        # 4028 <out>
    1738:	48 8b 34 10          	mov    (%rax,%rdx,1),%rsi
    173c:	4e 8b 24 2e          	mov    (%rsi,%r13,1),%r12
    1740:	48 8b 34 08          	mov    (%rax,%rcx,1),%rsi
    1744:	4a 8b 2c 2e          	mov    (%rsi,%r13,1),%rbp
    1748:	4a 8b 34 30          	mov    (%rax,%r14,1),%rsi
    174c:	4a 8b 1c 2e          	mov    (%rsi,%r13,1),%rbx
    1750:	4c 8b 1d c1 28 00 00 	mov    0x28c1(%rip),%r11        # 4018 <filter>
    1757:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    175b:	4e 8b 14 28          	mov    (%rax,%r13,1),%r10
    175f:	b8 00 00 00 00       	mov    $0x0,%eax
    1764:	f3 0f 11 74 24 ec    	movss  %xmm6,-0x14(%rsp)
    176a:	f3 41 0f 10 0c 04    	movss  (%r12,%rax,1),%xmm1
    1770:	f3 0f 10 1c 03       	movss  (%rbx,%rax,1),%xmm3
    1775:	4d 8b 3c 43          	mov    (%r11,%rax,2),%r15
    1779:	f3 41 0f 10 24 3f    	movss  (%r15,%rdi,1),%xmm4
    177f:	f3 43 0f 10 2c 0f    	movss  (%r15,%r9,1),%xmm5
    1785:	f3 41 0f 10 14 02    	movss  (%r10,%rax,1),%xmm2
    178b:	f3 43 0f 10 04 07    	movss  (%r15,%r8,1),%xmm0
    1791:	0f 28 f3             	movaps %xmm3,%xmm6
    1794:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    1798:	f3 0f 58 fe          	addss  %xmm6,%xmm7
    179c:	0f 28 f5             	movaps %xmm5,%xmm6
    179f:	f3 0f 59 f2          	mulss  %xmm2,%xmm6
    17a3:	f3 44 0f 58 e6       	addss  %xmm6,%xmm12
    17a8:	0f 28 f1             	movaps %xmm1,%xmm6
    17ab:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    17af:	f3 44 0f 58 ee       	addss  %xmm6,%xmm13
    17b4:	f3 0f 59 6c 05 00    	mulss  0x0(%rbp,%rax,1),%xmm5
    17ba:	f3 0f 58 6c 24 ec    	addss  -0x14(%rsp),%xmm5
    17c0:	f3 0f 11 6c 24 ec    	movss  %xmm5,-0x14(%rsp)
    17c6:	0f 28 eb             	movaps %xmm3,%xmm5
    17c9:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    17cd:	f3 44 0f 58 f5       	addss  %xmm5,%xmm14
    17d2:	0f 28 ea             	movaps %xmm2,%xmm5
    17d5:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    17d9:	f3 0f 58 6c 24 e4    	addss  -0x1c(%rsp),%xmm5
    17df:	f3 0f 11 6c 24 e4    	movss  %xmm5,-0x1c(%rsp)
    17e5:	0f 28 e9             	movaps %xmm1,%xmm5
    17e8:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    17ec:	f3 44 0f 58 cd       	addss  %xmm5,%xmm9
    17f1:	f3 0f 59 44 05 00    	mulss  0x0(%rbp,%rax,1),%xmm0
    17f7:	f3 0f 58 44 24 e8    	addss  -0x18(%rsp),%xmm0
    17fd:	f3 0f 11 44 24 e8    	movss  %xmm0,-0x18(%rsp)
    1803:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    1807:	f3 44 0f 58 c3       	addss  %xmm3,%xmm8
    180c:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    1810:	f3 44 0f 58 fa       	addss  %xmm2,%xmm15
    1815:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    1819:	f3 44 0f 58 d9       	addss  %xmm1,%xmm11
    181e:	f3 0f 59 64 05 00    	mulss  0x0(%rbp,%rax,1),%xmm4
    1824:	f3 44 0f 58 d4       	addss  %xmm4,%xmm10
    1829:	48 83 c0 04          	add    $0x4,%rax
    182d:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1833:	0f 85 31 ff ff ff    	jne    176a <gradient_descent+0x208>
    1839:	f3 0f 10 74 24 ec    	movss  -0x14(%rsp),%xmm6
    183f:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    1844:	f3 44 0f 11 38       	movss  %xmm15,(%rax)
    1849:	48 8b 05 e0 27 00 00 	mov    0x27e0(%rip),%rax        # 4030 <in>
    1850:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    1854:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    1858:	f3 46 0f 11 34 00    	movss  %xmm14,(%rax,%r8,1)
    185e:	48 8b 05 cb 27 00 00 	mov    0x27cb(%rip),%rax        # 4030 <in>
    1865:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    1869:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    186d:	f3 46 0f 11 2c 08    	movss  %xmm13,(%rax,%r9,1)
    1873:	48 8b 05 b6 27 00 00 	mov    0x27b6(%rip),%rax        # 4030 <in>
    187a:	48 8b 74 24 f0       	mov    -0x10(%rsp),%rsi
    187f:	48 8b 04 30          	mov    (%rax,%rsi,1),%rax
    1883:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    1887:	f3 46 0f 11 24 08    	movss  %xmm12,(%rax,%r9,1)
    188d:	48 8b 05 9c 27 00 00 	mov    0x279c(%rip),%rax        # 4030 <in>
    1894:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    1898:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    189c:	f3 44 0f 11 1c 38    	movss  %xmm11,(%rax,%rdi,1)
    18a2:	48 8b 05 87 27 00 00 	mov    0x2787(%rip),%rax        # 4030 <in>
    18a9:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    18ad:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    18b1:	f3 44 0f 11 14 38    	movss  %xmm10,(%rax,%rdi,1)
    18b7:	48 8b 05 72 27 00 00 	mov    0x2772(%rip),%rax        # 4030 <in>
    18be:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
    18c2:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    18c6:	f3 46 0f 11 0c 00    	movss  %xmm9,(%rax,%r8,1)
    18cc:	48 8b 05 5d 27 00 00 	mov    0x275d(%rip),%rax        # 4030 <in>
    18d3:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    18d7:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    18db:	f3 44 0f 11 04 38    	movss  %xmm8,(%rax,%rdi,1)
    18e1:	48 8b 05 48 27 00 00 	mov    0x2748(%rip),%rax        # 4030 <in>
    18e8:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    18ec:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    18f0:	f3 42 0f 11 3c 08    	movss  %xmm7,(%rax,%r9,1)
    18f6:	48 8b 05 33 27 00 00 	mov    0x2733(%rip),%rax        # 4030 <in>
    18fd:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    1901:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    1905:	f3 42 0f 11 34 08    	movss  %xmm6,(%rax,%r9,1)
    190b:	48 8b 05 1e 27 00 00 	mov    0x271e(%rip),%rax        # 4030 <in>
    1912:	48 8b 04 30          	mov    (%rax,%rsi,1),%rax
    1916:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    191a:	f3 0f 10 7c 24 e4    	movss  -0x1c(%rsp),%xmm7
    1920:	f3 42 0f 11 3c 00    	movss  %xmm7,(%rax,%r8,1)
    1926:	48 8b 05 03 27 00 00 	mov    0x2703(%rip),%rax        # 4030 <in>
    192d:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
    1931:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    1935:	f3 0f 10 7c 24 e8    	movss  -0x18(%rsp),%xmm7
    193b:	f3 42 0f 11 3c 00    	movss  %xmm7,(%rax,%r8,1)
    1941:	48 83 c7 0c          	add    $0xc,%rdi
    1945:	48 81 ff 04 04 00 00 	cmp    $0x404,%rdi
    194c:	0f 85 4a fd ff ff    	jne    169c <gradient_descent+0x13a>
    1952:	e9 23 fc ff ff       	jmp    157a <gradient_descent+0x18>
    1957:	48 83 c2 20          	add    $0x20,%rdx
    195b:	48 81 fa b0 01 00 00 	cmp    $0x1b0,%rdx
    1962:	74 25                	je     1989 <gradient_descent+0x427>
    1964:	48 8d 42 f8          	lea    -0x8(%rdx),%rax
    1968:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
    196d:	48 8d 4a f0          	lea    -0x10(%rdx),%rcx
    1971:	4c 8d 72 08          	lea    0x8(%rdx),%r14
    1975:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    197b:	48 89 c8             	mov    %rcx,%rax
    197e:	4c 89 f1             	mov    %r14,%rcx
    1981:	49 89 c6             	mov    %rax,%r14
    1984:	e9 0e fd ff ff       	jmp    1697 <gradient_descent+0x135>
    1989:	5b                   	pop    %rbx
    198a:	5d                   	pop    %rbp
    198b:	41 5c                	pop    %r12
    198d:	41 5d                	pop    %r13
    198f:	41 5e                	pop    %r14
    1991:	41 5f                	pop    %r15
    1993:	c3                   	ret    

0000000000001994 <equal>:
    1994:	f3 0f 1e fa          	endbr64 
    1998:	0f 28 d0             	movaps %xmm0,%xmm2
    199b:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    199f:	f3 0f 10 1d a9 06 00 	movss  0x6a9(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    19a6:	00 
    19a7:	0f 54 d3             	andps  %xmm3,%xmm2
    19aa:	66 0f ef c9          	pxor   %xmm1,%xmm1
    19ae:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    19b2:	0f 54 c3             	andps  %xmm3,%xmm0
    19b5:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    19b9:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    19bd:	f2 0f 10 05 9b 06 00 	movsd  0x69b(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    19c4:	00 
    19c5:	66 0f 2f c1          	comisd %xmm1,%xmm0
    19c9:	0f 96 c0             	setbe  %al
    19cc:	0f b6 c0             	movzbl %al,%eax
    19cf:	c3                   	ret    

00000000000019d0 <Compare_gradient_descent>:
    19d0:	f3 0f 1e fa          	endbr64 
    19d4:	41 57                	push   %r15
    19d6:	41 56                	push   %r14
    19d8:	41 55                	push   %r13
    19da:	41 54                	push   %r12
    19dc:	55                   	push   %rbp
    19dd:	53                   	push   %rbx
    19de:	48 83 ec 18          	sub    $0x18,%rsp
    19e2:	be 00 00 00 00       	mov    $0x0,%esi
    19e7:	bf 00 00 00 00       	mov    $0x0,%edi
    19ec:	b9 00 00 00 00       	mov    $0x0,%ecx
    19f1:	b8 00 00 00 00       	mov    $0x0,%eax
    19f6:	48 8b 15 23 26 00 00 	mov    0x2623(%rip),%rdx        # 4020 <test>
    19fd:	48 8b 14 32          	mov    (%rdx,%rsi,1),%rdx
    1a01:	48 89 cb             	mov    %rcx,%rbx
    1a04:	48 03 1c 3a          	add    (%rdx,%rdi,1),%rbx
    1a08:	4c 8b 05 19 26 00 00 	mov    0x2619(%rip),%r8        # 4028 <out>
    1a0f:	4d 8b 04 30          	mov    (%r8,%rsi,1),%r8
    1a13:	4d 8b 0c 38          	mov    (%r8,%rdi,1),%r9
    1a17:	4c 8b 05 fa 25 00 00 	mov    0x25fa(%rip),%r8        # 4018 <filter>
    1a1e:	4d 8b 04 40          	mov    (%r8,%rax,2),%r8
    1a22:	f3 41 0f 10 04 01    	movss  (%r9,%rax,1),%xmm0
    1a28:	f3 41 0f 59 04 08    	mulss  (%r8,%rcx,1),%xmm0
    1a2e:	f3 0f 58 03          	addss  (%rbx),%xmm0
    1a32:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    1a36:	48 83 c0 04          	add    $0x4,%rax
    1a3a:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1a40:	75 b4                	jne    19f6 <Compare_gradient_descent+0x26>
    1a42:	48 83 c1 04          	add    $0x4,%rcx
    1a46:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    1a4d:	75 a2                	jne    19f1 <Compare_gradient_descent+0x21>
    1a4f:	48 83 c7 08          	add    $0x8,%rdi
    1a53:	48 81 ff a0 01 00 00 	cmp    $0x1a0,%rdi
    1a5a:	75 90                	jne    19ec <Compare_gradient_descent+0x1c>
    1a5c:	48 83 c6 08          	add    $0x8,%rsi
    1a60:	48 81 fe a0 01 00 00 	cmp    $0x1a0,%rsi
    1a67:	0f 85 7a ff ff ff    	jne    19e7 <Compare_gradient_descent+0x17>
    1a6d:	48 8b 05 ac 25 00 00 	mov    0x25ac(%rip),%rax        # 4020 <test>
    1a74:	48 89 04 24          	mov    %rax,(%rsp)
    1a78:	48 8b 05 b1 25 00 00 	mov    0x25b1(%rip),%rax        # 4030 <in>
    1a7f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1a84:	bb 00 00 00 00       	mov    $0x0,%ebx
    1a89:	48 8b 04 24          	mov    (%rsp),%rax
    1a8d:	4c 8b 2c 18          	mov    (%rax,%rbx,1),%r13
    1a91:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1a96:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1a9a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1a9f:	bd 00 00 00 00       	mov    $0x0,%ebp
    1aa4:	4d 8b 7c 2d 00       	mov    0x0(%r13,%rbp,1),%r15
    1aa9:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1aae:	4c 8b 34 28          	mov    (%rax,%rbp,1),%r14
    1ab2:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    1ab8:	f3 43 0f 10 04 26    	movss  (%r14,%r12,1),%xmm0
    1abe:	f3 43 0f 10 0c 27    	movss  (%r15,%r12,1),%xmm1
    1ac4:	e8 cb fe ff ff       	call   1994 <equal>
    1ac9:	66 83 f8 01          	cmp    $0x1,%ax
    1acd:	74 2c                	je     1afb <Compare_gradient_descent+0x12b>
    1acf:	49 83 c4 04          	add    $0x4,%r12
    1ad3:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
    1ada:	75 dc                	jne    1ab8 <Compare_gradient_descent+0xe8>
    1adc:	48 83 c5 08          	add    $0x8,%rbp
    1ae0:	48 81 fd a0 01 00 00 	cmp    $0x1a0,%rbp
    1ae7:	75 bb                	jne    1aa4 <Compare_gradient_descent+0xd4>
    1ae9:	48 83 c3 08          	add    $0x8,%rbx
    1aed:	48 81 fb a0 01 00 00 	cmp    $0x1a0,%rbx
    1af4:	75 93                	jne    1a89 <Compare_gradient_descent+0xb9>
    1af6:	b8 00 00 00 00       	mov    $0x0,%eax
    1afb:	48 83 c4 18          	add    $0x18,%rsp
    1aff:	5b                   	pop    %rbx
    1b00:	5d                   	pop    %rbp
    1b01:	41 5c                	pop    %r12
    1b03:	41 5d                	pop    %r13
    1b05:	41 5e                	pop    %r14
    1b07:	41 5f                	pop    %r15
    1b09:	c3                   	ret    

0000000000001b0a <main>:
    1b0a:	f3 0f 1e fa          	endbr64 
    1b0e:	53                   	push   %rbx
    1b0f:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
    1b16:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b1d:	00 00 
    1b1f:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    1b26:	00 
    1b27:	31 c0                	xor    %eax,%eax
    1b29:	e8 bb f6 ff ff       	call   11e9 <gradient_descent_init>
    1b2e:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1b35:	54 43 
    1b37:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1b3e:	00 00 
    1b40:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1b47:	00 00 
    1b49:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1b50:	00 00 
    1b52:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1b59:	00 00 
    1b5b:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1b62:	00 00 
    1b64:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1b69:	bb 00 00 00 00       	mov    $0x0,%ebx
    1b6e:	89 da                	mov    %ebx,%edx
    1b70:	48 c1 c7 03          	rol    $0x3,%rdi
    1b74:	48 c1 c7 0d          	rol    $0xd,%rdi
    1b78:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1b7c:	48 c1 c7 33          	rol    $0x33,%rdi
    1b80:	48 87 db             	xchg   %rbx,%rbx
    1b83:	48 89 14 24          	mov    %rdx,(%rsp)
    1b87:	48 8b 04 24          	mov    (%rsp),%rax
    1b8b:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    1b92:	54 43 
    1b94:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1b9b:	00 00 
    1b9d:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    1ba4:	00 00 00 00 00 
    1ba9:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    1bb0:	00 00 00 00 00 
    1bb5:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1bbc:	00 00 00 00 00 
    1bc1:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1bc8:	00 00 00 00 00 
    1bcd:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1bd2:	89 da                	mov    %ebx,%edx
    1bd4:	48 c1 c7 03          	rol    $0x3,%rdi
    1bd8:	48 c1 c7 0d          	rol    $0xd,%rdi
    1bdc:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1be0:	48 c1 c7 33          	rol    $0x33,%rdi
    1be4:	48 87 db             	xchg   %rbx,%rbx
    1be7:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1bec:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1bf1:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1bf6:	bf 01 00 00 00       	mov    $0x1,%edi
    1bfb:	e8 c0 f4 ff ff       	call   10c0 <clock_gettime@plt>
    1c00:	b8 00 00 00 00       	mov    $0x0,%eax
    1c05:	e8 58 f9 ff ff       	call   1562 <gradient_descent>
    1c0a:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1c0f:	bf 01 00 00 00       	mov    $0x1,%edi
    1c14:	e8 a7 f4 ff ff       	call   10c0 <clock_gettime@plt>
    1c19:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    1c20:	00 02 00 54 43 
    1c25:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1c2c:	00 00 00 00 00 
    1c31:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1c38:	00 00 00 00 00 
    1c3d:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    1c44:	00 00 00 00 00 
    1c49:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1c50:	00 00 00 00 00 
    1c55:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1c5c:	00 00 00 00 00 
    1c61:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1c68:	00 
    1c69:	89 da                	mov    %ebx,%edx
    1c6b:	48 c1 c7 03          	rol    $0x3,%rdi
    1c6f:	48 c1 c7 0d          	rol    $0xd,%rdi
    1c73:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1c77:	48 c1 c7 33          	rol    $0x33,%rdi
    1c7b:	48 87 db             	xchg   %rbx,%rbx
    1c7e:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1c83:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1c88:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1c8f:	00 05 00 54 43 
    1c94:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1c9b:	00 00 00 00 00 
    1ca0:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1ca7:	00 00 00 00 00 
    1cac:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    1cb3:	00 00 00 00 00 
    1cb8:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    1cbf:	00 00 00 00 00 
    1cc4:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1ccb:	00 00 00 00 00 
    1cd0:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1cd7:	00 
    1cd8:	89 da                	mov    %ebx,%edx
    1cda:	48 c1 c7 03          	rol    $0x3,%rdi
    1cde:	48 c1 c7 0d          	rol    $0xd,%rdi
    1ce2:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1ce6:	48 c1 c7 33          	rol    $0x33,%rdi
    1cea:	48 87 db             	xchg   %rbx,%rbx
    1ced:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1cf2:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1cf7:	b8 00 00 00 00       	mov    $0x0,%eax
    1cfc:	e8 cf fc ff ff       	call   19d0 <Compare_gradient_descent>
    1d01:	66 85 c0             	test   %ax,%ax
    1d04:	0f 85 82 00 00 00    	jne    1d8c <main+0x282>
    1d0a:	48 8d 3d f3 02 00 00 	lea    0x2f3(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1d11:	e8 9a f3 ff ff       	call   10b0 <puts@plt>
    1d16:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1d1b:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1d20:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1d27:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1d2c:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1d31:	48 8d 35 ec 02 00 00 	lea    0x2ec(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    1d38:	bf 01 00 00 00       	mov    $0x1,%edi
    1d3d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d42:	e8 99 f3 ff ff       	call   10e0 <__printf_chk@plt>
    1d47:	48 8b 3d e2 22 00 00 	mov    0x22e2(%rip),%rdi        # 4030 <in>
    1d4e:	e8 4d f3 ff ff       	call   10a0 <free@plt>
    1d53:	48 8b 3d ce 22 00 00 	mov    0x22ce(%rip),%rdi        # 4028 <out>
    1d5a:	e8 41 f3 ff ff       	call   10a0 <free@plt>
    1d5f:	48 8b 3d b2 22 00 00 	mov    0x22b2(%rip),%rdi        # 4018 <filter>
    1d66:	e8 35 f3 ff ff       	call   10a0 <free@plt>
    1d6b:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1d72:	00 
    1d73:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1d7a:	00 00 
    1d7c:	75 1f                	jne    1d9d <main+0x293>
    1d7e:	b8 00 00 00 00       	mov    $0x0,%eax
    1d83:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
    1d8a:	5b                   	pop    %rbx
    1d8b:	c3                   	ret    
    1d8c:	48 8d 3d 80 02 00 00 	lea    0x280(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1d93:	e8 18 f3 ff ff       	call   10b0 <puts@plt>
    1d98:	e9 79 ff ff ff       	jmp    1d16 <main+0x20c>
    1d9d:	e8 2e f3 ff ff       	call   10d0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001da4 <_fini>:
    1da4:	f3 0f 1e fa          	endbr64 
    1da8:	48 83 ec 08          	sub    $0x8,%rsp
    1dac:	48 83 c4 08          	add    $0x8,%rsp
    1db0:	c3                   	ret    
