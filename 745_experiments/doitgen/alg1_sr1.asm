
doitgen/alg1_sr1:     file format elf64-x86-64


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
    1118:	48 8d 3d 76 09 00 00 	lea    0x976(%rip),%rdi        # 1a95 <main>
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

00000000000011e9 <doitgen_init>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	41 57                	push   %r15
    11ef:	41 56                	push   %r14
    11f1:	41 55                	push   %r13
    11f3:	41 54                	push   %r12
    11f5:	55                   	push   %rbp
    11f6:	53                   	push   %rbx
    11f7:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    11fe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1205:	00 00 
    1207:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    120c:	31 c0                	xor    %eax,%eax
    120e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    1213:	ba 00 02 00 00       	mov    $0x200,%edx
    1218:	be 40 00 00 00       	mov    $0x40,%esi
    121d:	e8 ce fe ff ff       	call   10f0 <posix_memalign@plt>
    1222:	85 c0                	test   %eax,%eax
    1224:	b8 00 00 00 00       	mov    $0x0,%eax
    1229:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    122f:	48 89 05 fa 2d 00 00 	mov    %rax,0x2dfa(%rip)        # 4030 <A>
    1236:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    123b:	ba 00 02 00 00       	mov    $0x200,%edx
    1240:	be 40 00 00 00       	mov    $0x40,%esi
    1245:	e8 a6 fe ff ff       	call   10f0 <posix_memalign@plt>
    124a:	85 c0                	test   %eax,%eax
    124c:	b8 00 00 00 00       	mov    $0x0,%eax
    1251:	48 0f 44 44 24 28    	cmove  0x28(%rsp),%rax
    1257:	48 89 05 c2 2d 00 00 	mov    %rax,0x2dc2(%rip)        # 4020 <out>
    125e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1263:	ba 00 02 00 00       	mov    $0x200,%edx
    1268:	be 40 00 00 00       	mov    $0x40,%esi
    126d:	e8 7e fe ff ff       	call   10f0 <posix_memalign@plt>
    1272:	85 c0                	test   %eax,%eax
    1274:	b8 00 00 00 00       	mov    $0x0,%eax
    1279:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    127f:	48 89 05 92 2d 00 00 	mov    %rax,0x2d92(%rip)        # 4018 <test>
    1286:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    128d:	00 00 
    128f:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
    1294:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1299:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    129f:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    12a4:	89 c3                	mov    %eax,%ebx
    12a6:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
    12ad:	00 
    12ae:	49 89 ec             	mov    %rbp,%r12
    12b1:	4c 03 25 78 2d 00 00 	add    0x2d78(%rip),%r12        # 4030 <A>
    12b8:	ba 00 02 00 00       	mov    $0x200,%edx
    12bd:	be 40 00 00 00       	mov    $0x40,%esi
    12c2:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    12c7:	e8 24 fe ff ff       	call   10f0 <posix_memalign@plt>
    12cc:	85 c0                	test   %eax,%eax
    12ce:	4c 89 e8             	mov    %r13,%rax
    12d1:	48 0f 44 44 24 48    	cmove  0x48(%rsp),%rax
    12d7:	49 89 04 24          	mov    %rax,(%r12)
    12db:	49 89 ec             	mov    %rbp,%r12
    12de:	4c 03 25 3b 2d 00 00 	add    0x2d3b(%rip),%r12        # 4020 <out>
    12e5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    12ea:	ba 00 02 00 00       	mov    $0x200,%edx
    12ef:	be 40 00 00 00       	mov    $0x40,%esi
    12f4:	e8 f7 fd ff ff       	call   10f0 <posix_memalign@plt>
    12f9:	85 c0                	test   %eax,%eax
    12fb:	4c 89 e8             	mov    %r13,%rax
    12fe:	48 0f 44 44 24 40    	cmove  0x40(%rsp),%rax
    1304:	49 89 04 24          	mov    %rax,(%r12)
    1308:	49 89 ec             	mov    %rbp,%r12
    130b:	4c 03 25 06 2d 00 00 	add    0x2d06(%rip),%r12        # 4018 <test>
    1312:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    1317:	ba 00 02 00 00       	mov    $0x200,%edx
    131c:	be 40 00 00 00       	mov    $0x40,%esi
    1321:	e8 ca fd ff ff       	call   10f0 <posix_memalign@plt>
    1326:	85 c0                	test   %eax,%eax
    1328:	4c 89 e8             	mov    %r13,%rax
    132b:	48 0f 44 44 24 38    	cmove  0x38(%rsp),%rax
    1331:	49 89 04 24          	mov    %rax,(%r12)
    1335:	44 8d 63 40          	lea    0x40(%rbx),%r12d
    1339:	bb 00 00 00 00       	mov    $0x0,%ebx
    133e:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
    1343:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
    1348:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    134d:	48 8b 05 dc 2c 00 00 	mov    0x2cdc(%rip),%rax        # 4030 <A>
    1354:	49 89 de             	mov    %rbx,%r14
    1357:	4c 03 34 28          	add    (%rax,%rbp,1),%r14
    135b:	ba 00 01 00 00       	mov    $0x100,%edx
    1360:	be 40 00 00 00       	mov    $0x40,%esi
    1365:	4c 89 ff             	mov    %r15,%rdi
    1368:	e8 83 fd ff ff       	call   10f0 <posix_memalign@plt>
    136d:	85 c0                	test   %eax,%eax
    136f:	4c 89 e8             	mov    %r13,%rax
    1372:	48 0f 44 44 24 60    	cmove  0x60(%rsp),%rax
    1378:	49 89 06             	mov    %rax,(%r14)
    137b:	48 8b 05 9e 2c 00 00 	mov    0x2c9e(%rip),%rax        # 4020 <out>
    1382:	49 89 de             	mov    %rbx,%r14
    1385:	4c 03 34 28          	add    (%rax,%rbp,1),%r14
    1389:	ba 00 01 00 00       	mov    $0x100,%edx
    138e:	be 40 00 00 00       	mov    $0x40,%esi
    1393:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1398:	e8 53 fd ff ff       	call   10f0 <posix_memalign@plt>
    139d:	85 c0                	test   %eax,%eax
    139f:	4c 89 e8             	mov    %r13,%rax
    13a2:	48 0f 44 44 24 58    	cmove  0x58(%rsp),%rax
    13a8:	49 89 06             	mov    %rax,(%r14)
    13ab:	48 8b 05 66 2c 00 00 	mov    0x2c66(%rip),%rax        # 4018 <test>
    13b2:	49 89 de             	mov    %rbx,%r14
    13b5:	4c 03 34 28          	add    (%rax,%rbp,1),%r14
    13b9:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    13be:	ba 00 01 00 00       	mov    $0x100,%edx
    13c3:	be 40 00 00 00       	mov    $0x40,%esi
    13c8:	e8 23 fd ff ff       	call   10f0 <posix_memalign@plt>
    13cd:	85 c0                	test   %eax,%eax
    13cf:	4c 89 e8             	mov    %r13,%rax
    13d2:	48 0f 44 44 24 50    	cmove  0x50(%rsp),%rax
    13d8:	49 89 06             	mov    %rax,(%r14)
    13db:	41 8d 54 24 c0       	lea    -0x40(%r12),%edx
    13e0:	b9 00 00 00 00       	mov    $0x0,%ecx
    13e5:	48 8b 05 44 2c 00 00 	mov    0x2c44(%rip),%rax        # 4030 <A>
    13ec:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    13f0:	48 8b 34 18          	mov    (%rax,%rbx,1),%rsi
    13f4:	48 63 c2             	movslq %edx,%rax
    13f7:	48 69 c0 93 24 49 92 	imul   $0xffffffff92492493,%rax,%rax
    13fe:	48 c1 e8 20          	shr    $0x20,%rax
    1402:	01 d0                	add    %edx,%eax
    1404:	c1 f8 02             	sar    $0x2,%eax
    1407:	89 d7                	mov    %edx,%edi
    1409:	c1 ff 1f             	sar    $0x1f,%edi
    140c:	29 f8                	sub    %edi,%eax
    140e:	8d 3c c5 00 00 00 00 	lea    0x0(,%rax,8),%edi
    1415:	29 c7                	sub    %eax,%edi
    1417:	89 d0                	mov    %edx,%eax
    1419:	29 f8                	sub    %edi,%eax
    141b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    141f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1423:	f3 0f 58 05 15 0c 00 	addss  0xc15(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    142a:	00 
    142b:	f3 0f 11 04 0e       	movss  %xmm0,(%rsi,%rcx,1)
    1430:	83 c2 01             	add    $0x1,%edx
    1433:	48 83 c1 04          	add    $0x4,%rcx
    1437:	44 39 e2             	cmp    %r12d,%edx
    143a:	75 a9                	jne    13e5 <doitgen_init+0x1fc>
    143c:	b8 00 00 00 00       	mov    $0x0,%eax
    1441:	48 8b 15 d8 2b 00 00 	mov    0x2bd8(%rip),%rdx        # 4020 <out>
    1448:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    144c:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    1450:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    1457:	48 8b 15 ba 2b 00 00 	mov    0x2bba(%rip),%rdx        # 4018 <test>
    145e:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1462:	48 8b 14 1a          	mov    (%rdx,%rbx,1),%rdx
    1466:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    146d:	48 83 c0 04          	add    $0x4,%rax
    1471:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1477:	75 c8                	jne    1441 <doitgen_init+0x258>
    1479:	48 83 c3 08          	add    $0x8,%rbx
    147d:	41 83 c4 01          	add    $0x1,%r12d
    1481:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    1488:	0f 85 bf fe ff ff    	jne    134d <doitgen_init+0x164>
    148e:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    1494:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1499:	48 83 f8 40          	cmp    $0x40,%rax
    149d:	0f 85 fc fd ff ff    	jne    129f <doitgen_init+0xb6>
    14a3:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    14a8:	ba 00 02 00 00       	mov    $0x200,%edx
    14ad:	be 40 00 00 00       	mov    $0x40,%esi
    14b2:	e8 39 fc ff ff       	call   10f0 <posix_memalign@plt>
    14b7:	85 c0                	test   %eax,%eax
    14b9:	b8 00 00 00 00       	mov    $0x0,%eax
    14be:	48 0f 44 44 24 68    	cmove  0x68(%rsp),%rax
    14c4:	48 89 05 5d 2b 00 00 	mov    %rax,0x2b5d(%rip)        # 4028 <C>
    14cb:	bb 00 00 00 00       	mov    $0x0,%ebx
    14d0:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
    14d5:	48 8d 2c dd 00 00 00 	lea    0x0(,%rbx,8),%rbp
    14dc:	00 
    14dd:	49 89 ed             	mov    %rbp,%r13
    14e0:	4c 03 2d 41 2b 00 00 	add    0x2b41(%rip),%r13        # 4028 <C>
    14e7:	ba 00 01 00 00       	mov    $0x100,%edx
    14ec:	be 40 00 00 00       	mov    $0x40,%esi
    14f1:	4c 89 e7             	mov    %r12,%rdi
    14f4:	e8 f7 fb ff ff       	call   10f0 <posix_memalign@plt>
    14f9:	85 c0                	test   %eax,%eax
    14fb:	b8 00 00 00 00       	mov    $0x0,%eax
    1500:	48 0f 44 44 24 70    	cmove  0x70(%rsp),%rax
    1506:	49 89 45 00          	mov    %rax,0x0(%r13)
    150a:	b9 00 00 00 00       	mov    $0x0,%ecx
    150f:	48 8b 05 12 2b 00 00 	mov    0x2b12(%rip),%rax        # 4028 <C>
    1516:	48 8b 34 28          	mov    (%rax,%rbp,1),%rsi
    151a:	8d 14 19             	lea    (%rcx,%rbx,1),%edx
    151d:	48 63 c2             	movslq %edx,%rax
    1520:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    1527:	48 c1 f8 21          	sar    $0x21,%rax
    152b:	89 d7                	mov    %edx,%edi
    152d:	c1 ff 1f             	sar    $0x1f,%edi
    1530:	29 f8                	sub    %edi,%eax
    1532:	8d 04 80             	lea    (%rax,%rax,4),%eax
    1535:	29 c2                	sub    %eax,%edx
    1537:	29 ca                	sub    %ecx,%edx
    1539:	66 0f ef c0          	pxor   %xmm0,%xmm0
    153d:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    1541:	f3 0f 11 04 8e       	movss  %xmm0,(%rsi,%rcx,4)
    1546:	48 83 c1 01          	add    $0x1,%rcx
    154a:	48 83 f9 40          	cmp    $0x40,%rcx
    154e:	75 bf                	jne    150f <doitgen_init+0x326>
    1550:	48 83 c3 01          	add    $0x1,%rbx
    1554:	48 83 fb 40          	cmp    $0x40,%rbx
    1558:	0f 85 77 ff ff ff    	jne    14d5 <doitgen_init+0x2ec>
    155e:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
    1563:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    156a:	00 00 
    156c:	75 12                	jne    1580 <doitgen_init+0x397>
    156e:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    1575:	5b                   	pop    %rbx
    1576:	5d                   	pop    %rbp
    1577:	41 5c                	pop    %r12
    1579:	41 5d                	pop    %r13
    157b:	41 5e                	pop    %r14
    157d:	41 5f                	pop    %r15
    157f:	c3                   	ret    
    1580:	e8 4b fb ff ff       	call   10d0 <__stack_chk_fail@plt>

0000000000001585 <doitgen>:
    1585:	f3 0f 1e fa          	endbr64 
    1589:	41 57                	push   %r15
    158b:	41 56                	push   %r14
    158d:	41 55                	push   %r13
    158f:	41 54                	push   %r12
    1591:	55                   	push   %rbp
    1592:	53                   	push   %rbx
    1593:	41 bf 10 00 00 00    	mov    $0x10,%r15d
    1599:	e9 b3 03 00 00       	jmp    1951 <doitgen+0x3cc>
    159e:	48 8b 05 7b 2a 00 00 	mov    0x2a7b(%rip),%rax        # 4020 <out>
    15a5:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    15a9:	4c 8b 14 2a          	mov    (%rdx,%rbp,1),%r10
    15ad:	f3 41 0f 10 a2 fc 00 	movss  0xfc(%r10),%xmm4
    15b4:	00 00 
    15b6:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    15ba:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    15be:	f3 0f 10 9a fc 00 00 	movss  0xfc(%rdx),%xmm3
    15c5:	00 
    15c6:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    15ca:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    15ce:	f3 0f 10 92 fc 00 00 	movss  0xfc(%rdx),%xmm2
    15d5:	00 
    15d6:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    15da:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    15de:	f3 0f 10 88 fc 00 00 	movss  0xfc(%rax),%xmm1
    15e5:	00 
    15e6:	4c 8b 0d 3b 2a 00 00 	mov    0x2a3b(%rip),%r9        # 4028 <C>
    15ed:	48 8b 05 3c 2a 00 00 	mov    0x2a3c(%rip),%rax        # 4030 <A>
    15f4:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    15f8:	4c 8b 04 2a          	mov    (%rdx,%rbp,1),%r8
    15fc:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    1600:	48 8b 3c 2a          	mov    (%rdx,%rbp,1),%rdi
    1604:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    1608:	48 8b 34 2a          	mov    (%rdx,%rbp,1),%rsi
    160c:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1610:	48 8b 0c 28          	mov    (%rax,%rbp,1),%rcx
    1614:	b8 00 00 00 00       	mov    $0x0,%eax
    1619:	49 8b 14 41          	mov    (%r9,%rax,2),%rdx
    161d:	f3 0f 10 82 fc 00 00 	movss  0xfc(%rdx),%xmm0
    1624:	00 
    1625:	0f 28 e8             	movaps %xmm0,%xmm5
    1628:	f3 41 0f 59 2c 00    	mulss  (%r8,%rax,1),%xmm5
    162e:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1632:	0f 28 e8             	movaps %xmm0,%xmm5
    1635:	f3 0f 59 2c 07       	mulss  (%rdi,%rax,1),%xmm5
    163a:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    163e:	0f 28 e8             	movaps %xmm0,%xmm5
    1641:	f3 0f 59 2c 06       	mulss  (%rsi,%rax,1),%xmm5
    1646:	f3 0f 58 e5          	addss  %xmm5,%xmm4
    164a:	f3 0f 59 04 01       	mulss  (%rcx,%rax,1),%xmm0
    164f:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    1653:	48 83 c0 04          	add    $0x4,%rax
    1657:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    165d:	75 ba                	jne    1619 <doitgen+0x94>
    165f:	f3 41 0f 11 a2 fc 00 	movss  %xmm4,0xfc(%r10)
    1666:	00 00 
    1668:	48 8b 05 b1 29 00 00 	mov    0x29b1(%rip),%rax        # 4020 <out>
    166f:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    1673:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1677:	f3 0f 11 9a fc 00 00 	movss  %xmm3,0xfc(%rdx)
    167e:	00 
    167f:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    1683:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    1687:	f3 0f 11 92 fc 00 00 	movss  %xmm2,0xfc(%rdx)
    168e:	00 
    168f:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    1693:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1697:	f3 0f 11 88 fc 00 00 	movss  %xmm1,0xfc(%rax)
    169e:	00 
    169f:	48 83 c5 08          	add    $0x8,%rbp
    16a3:	48 81 fd 00 02 00 00 	cmp    $0x200,%rbp
    16aa:	0f 84 94 02 00 00    	je     1944 <doitgen+0x3bf>
    16b0:	b9 08 00 00 00       	mov    $0x8,%ecx
    16b5:	48 8b 05 64 29 00 00 	mov    0x2964(%rip),%rax        # 4020 <out>
    16bc:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    16c0:	48 8b 14 2a          	mov    (%rdx,%rbp,1),%rdx
    16c4:	48 8d 1c 0a          	lea    (%rdx,%rcx,1),%rbx
    16c8:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
    16cd:	f3 44 0f 10 33       	movss  (%rbx),%xmm14
    16d2:	4a 8b 34 20          	mov    (%rax,%r12,1),%rsi
    16d6:	4c 8b 0c 2e          	mov    (%rsi,%rbp,1),%r9
    16da:	48 8d 71 fc          	lea    -0x4(%rcx),%rsi
    16de:	f3 45 0f 10 6c 09 fc 	movss  -0x4(%r9,%rcx,1),%xmm13
    16e5:	4a 8b 3c 28          	mov    (%rax,%r13,1),%rdi
    16e9:	4c 8b 04 2f          	mov    (%rdi,%rbp,1),%r8
    16ed:	48 8d 79 f8          	lea    -0x8(%rcx),%rdi
    16f1:	f3 45 0f 10 64 08 f8 	movss  -0x8(%r8,%rcx,1),%xmm12
    16f8:	f3 45 0f 10 5c 09 f8 	movss  -0x8(%r9,%rcx,1),%xmm11
    16ff:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1703:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1707:	f3 44 0f 10 14 08    	movss  (%rax,%rcx,1),%xmm10
    170d:	f3 45 0f 10 4c 08 fc 	movss  -0x4(%r8,%rcx,1),%xmm9
    1714:	f3 45 0f 10 04 09    	movss  (%r9,%rcx,1),%xmm8
    171a:	f3 0f 10 7c 0a f8    	movss  -0x8(%rdx,%rcx,1),%xmm7
    1720:	f3 0f 10 74 08 f8    	movss  -0x8(%rax,%rcx,1),%xmm6
    1726:	f3 0f 10 6c 08 fc    	movss  -0x4(%rax,%rcx,1),%xmm5
    172c:	f3 41 0f 10 24 08    	movss  (%r8,%rcx,1),%xmm4
    1732:	f3 0f 10 4c 0a fc    	movss  -0x4(%rdx,%rcx,1),%xmm1
    1738:	f3 0f 11 4c 24 f4    	movss  %xmm1,-0xc(%rsp)
    173e:	48 8b 1d e3 28 00 00 	mov    0x28e3(%rip),%rbx        # 4028 <C>
    1745:	48 8b 05 e4 28 00 00 	mov    0x28e4(%rip),%rax        # 4030 <A>
    174c:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    1750:	4c 8b 1c 2a          	mov    (%rdx,%rbp,1),%r11
    1754:	4a 8b 14 30          	mov    (%rax,%r14,1),%rdx
    1758:	4c 8b 14 2a          	mov    (%rdx,%rbp,1),%r10
    175c:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    1760:	4c 8b 0c 2a          	mov    (%rdx,%rbp,1),%r9
    1764:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1768:	4c 8b 04 28          	mov    (%rax,%rbp,1),%r8
    176c:	b8 00 00 00 00       	mov    $0x0,%eax
    1771:	48 8b 14 43          	mov    (%rbx,%rax,2),%rdx
    1775:	f3 0f 10 1c 3a       	movss  (%rdx,%rdi,1),%xmm3
    177a:	f3 0f 10 0c 32       	movss  (%rdx,%rsi,1),%xmm1
    177f:	f3 0f 10 04 0a       	movss  (%rdx,%rcx,1),%xmm0
    1784:	f3 41 0f 10 14 03    	movss  (%r11,%rax,1),%xmm2
    178a:	44 0f 28 fb          	movaps %xmm3,%xmm15
    178e:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    1793:	f3 45 0f 58 df       	addss  %xmm15,%xmm11
    1798:	44 0f 28 f9          	movaps %xmm1,%xmm15
    179c:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    17a1:	f3 45 0f 58 ef       	addss  %xmm15,%xmm13
    17a6:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    17aa:	f3 44 0f 58 c2       	addss  %xmm2,%xmm8
    17af:	f3 41 0f 10 14 02    	movss  (%r10,%rax,1),%xmm2
    17b5:	44 0f 28 fb          	movaps %xmm3,%xmm15
    17b9:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    17be:	f3 41 0f 58 ff       	addss  %xmm15,%xmm7
    17c3:	44 0f 28 f9          	movaps %xmm1,%xmm15
    17c7:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    17cc:	f3 44 0f 58 7c 24 f4 	addss  -0xc(%rsp),%xmm15
    17d3:	f3 44 0f 11 7c 24 f4 	movss  %xmm15,-0xc(%rsp)
    17da:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    17de:	f3 44 0f 58 f2       	addss  %xmm2,%xmm14
    17e3:	f3 41 0f 10 14 01    	movss  (%r9,%rax,1),%xmm2
    17e9:	44 0f 28 fb          	movaps %xmm3,%xmm15
    17ed:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    17f2:	f3 45 0f 58 e7       	addss  %xmm15,%xmm12
    17f7:	44 0f 28 f9          	movaps %xmm1,%xmm15
    17fb:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    1800:	f3 45 0f 58 cf       	addss  %xmm15,%xmm9
    1805:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    1809:	f3 0f 58 e2          	addss  %xmm2,%xmm4
    180d:	f3 41 0f 10 14 00    	movss  (%r8,%rax,1),%xmm2
    1813:	f3 0f 59 da          	mulss  %xmm2,%xmm3
    1817:	f3 0f 58 f3          	addss  %xmm3,%xmm6
    181b:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    181f:	f3 0f 58 e9          	addss  %xmm1,%xmm5
    1823:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1827:	f3 44 0f 58 d0       	addss  %xmm0,%xmm10
    182c:	48 83 c0 04          	add    $0x4,%rax
    1830:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1836:	0f 85 35 ff ff ff    	jne    1771 <doitgen+0x1ec>
    183c:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    1841:	f3 44 0f 11 30       	movss  %xmm14,(%rax)
    1846:	48 8b 05 d3 27 00 00 	mov    0x27d3(%rip),%rax        # 4020 <out>
    184d:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    1851:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1855:	f3 44 0f 11 2c 30    	movss  %xmm13,(%rax,%rsi,1)
    185b:	48 8b 05 be 27 00 00 	mov    0x27be(%rip),%rax        # 4020 <out>
    1862:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    1866:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    186a:	f3 44 0f 11 24 38    	movss  %xmm12,(%rax,%rdi,1)
    1870:	48 8b 05 a9 27 00 00 	mov    0x27a9(%rip),%rax        # 4020 <out>
    1877:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    187b:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    187f:	f3 44 0f 11 1c 38    	movss  %xmm11,(%rax,%rdi,1)
    1885:	48 8b 05 94 27 00 00 	mov    0x2794(%rip),%rax        # 4020 <out>
    188c:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1890:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1894:	f3 44 0f 11 14 08    	movss  %xmm10,(%rax,%rcx,1)
    189a:	48 8b 05 7f 27 00 00 	mov    0x277f(%rip),%rax        # 4020 <out>
    18a1:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    18a5:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18a9:	f3 44 0f 11 0c 30    	movss  %xmm9,(%rax,%rsi,1)
    18af:	48 8b 05 6a 27 00 00 	mov    0x276a(%rip),%rax        # 4020 <out>
    18b6:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    18ba:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18be:	f3 44 0f 11 04 08    	movss  %xmm8,(%rax,%rcx,1)
    18c4:	48 8b 05 55 27 00 00 	mov    0x2755(%rip),%rax        # 4020 <out>
    18cb:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    18cf:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18d3:	f3 0f 11 3c 38       	movss  %xmm7,(%rax,%rdi,1)
    18d8:	48 8b 05 41 27 00 00 	mov    0x2741(%rip),%rax        # 4020 <out>
    18df:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    18e3:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18e7:	f3 0f 11 34 38       	movss  %xmm6,(%rax,%rdi,1)
    18ec:	48 8b 05 2d 27 00 00 	mov    0x272d(%rip),%rax        # 4020 <out>
    18f3:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    18f7:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    18fb:	f3 0f 11 2c 30       	movss  %xmm5,(%rax,%rsi,1)
    1900:	48 8b 05 19 27 00 00 	mov    0x2719(%rip),%rax        # 4020 <out>
    1907:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    190b:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    190f:	f3 0f 11 24 08       	movss  %xmm4,(%rax,%rcx,1)
    1914:	48 8b 05 05 27 00 00 	mov    0x2705(%rip),%rax        # 4020 <out>
    191b:	4a 8b 04 30          	mov    (%rax,%r14,1),%rax
    191f:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1923:	f3 0f 10 74 24 f4    	movss  -0xc(%rsp),%xmm6
    1929:	f3 0f 11 34 30       	movss  %xmm6,(%rax,%rsi,1)
    192e:	48 83 c1 0c          	add    $0xc,%rcx
    1932:	48 81 f9 04 01 00 00 	cmp    $0x104,%rcx
    1939:	0f 85 76 fd ff ff    	jne    16b5 <doitgen+0x130>
    193f:	e9 5a fc ff ff       	jmp    159e <doitgen+0x19>
    1944:	49 83 c7 20          	add    $0x20,%r15
    1948:	49 81 ff 10 02 00 00 	cmp    $0x210,%r15
    194f:	74 16                	je     1967 <doitgen+0x3e2>
    1951:	4d 8d 77 f0          	lea    -0x10(%r15),%r14
    1955:	4d 8d 67 f8          	lea    -0x8(%r15),%r12
    1959:	4d 8d 6f 08          	lea    0x8(%r15),%r13
    195d:	bd 00 00 00 00       	mov    $0x0,%ebp
    1962:	e9 49 fd ff ff       	jmp    16b0 <doitgen+0x12b>
    1967:	5b                   	pop    %rbx
    1968:	5d                   	pop    %rbp
    1969:	41 5c                	pop    %r12
    196b:	41 5d                	pop    %r13
    196d:	41 5e                	pop    %r14
    196f:	41 5f                	pop    %r15
    1971:	c3                   	ret    

0000000000001972 <Compare_doitgen>:
    1972:	f3 0f 1e fa          	endbr64 
    1976:	be 00 00 00 00       	mov    $0x0,%esi
    197b:	bf 00 00 00 00       	mov    $0x0,%edi
    1980:	b9 00 00 00 00       	mov    $0x0,%ecx
    1985:	b8 00 00 00 00       	mov    $0x0,%eax
    198a:	48 8b 15 87 26 00 00 	mov    0x2687(%rip),%rdx        # 4018 <test>
    1991:	48 8b 14 32          	mov    (%rdx,%rsi,1),%rdx
    1995:	49 89 ca             	mov    %rcx,%r10
    1998:	4c 03 14 3a          	add    (%rdx,%rdi,1),%r10
    199c:	4c 8b 05 8d 26 00 00 	mov    0x268d(%rip),%r8        # 4030 <A>
    19a3:	4d 8b 04 30          	mov    (%r8,%rsi,1),%r8
    19a7:	4d 8b 0c 38          	mov    (%r8,%rdi,1),%r9
    19ab:	4c 8b 05 76 26 00 00 	mov    0x2676(%rip),%r8        # 4028 <C>
    19b2:	4d 8b 04 40          	mov    (%r8,%rax,2),%r8
    19b6:	f3 41 0f 10 04 01    	movss  (%r9,%rax,1),%xmm0
    19bc:	f3 41 0f 59 04 08    	mulss  (%r8,%rcx,1),%xmm0
    19c2:	f3 41 0f 58 02       	addss  (%r10),%xmm0
    19c7:	f3 41 0f 11 02       	movss  %xmm0,(%r10)
    19cc:	48 83 c0 04          	add    $0x4,%rax
    19d0:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    19d6:	75 b2                	jne    198a <Compare_doitgen+0x18>
    19d8:	48 83 c1 04          	add    $0x4,%rcx
    19dc:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
    19e3:	75 a0                	jne    1985 <Compare_doitgen+0x13>
    19e5:	48 83 c7 08          	add    $0x8,%rdi
    19e9:	48 81 ff 00 02 00 00 	cmp    $0x200,%rdi
    19f0:	75 8e                	jne    1980 <Compare_doitgen+0xe>
    19f2:	48 83 c6 08          	add    $0x8,%rsi
    19f6:	48 81 fe 00 02 00 00 	cmp    $0x200,%rsi
    19fd:	0f 85 78 ff ff ff    	jne    197b <Compare_doitgen+0x9>
    1a03:	48 8b 3d 16 26 00 00 	mov    0x2616(%rip),%rdi        # 4020 <out>
    1a0a:	48 8b 35 07 26 00 00 	mov    0x2607(%rip),%rsi        # 4018 <test>
    1a11:	b8 00 00 00 00       	mov    $0x0,%eax
    1a16:	f3 0f 10 15 32 06 00 	movss  0x632(%rip),%xmm2        # 2050 <_IO_stdin_used+0x50>
    1a1d:	00 
    1a1e:	4c 8b 0c 07          	mov    (%rdi,%rax,1),%r9
    1a22:	4c 8b 04 06          	mov    (%rsi,%rax,1),%r8
    1a26:	ba 00 00 00 00       	mov    $0x0,%edx
    1a2b:	4d 8b 1c 11          	mov    (%r9,%rdx,1),%r11
    1a2f:	4d 8b 14 10          	mov    (%r8,%rdx,1),%r10
    1a33:	b9 00 00 00 00       	mov    $0x0,%ecx
    1a38:	f3 41 0f 10 0c 0b    	movss  (%r11,%rcx,1),%xmm1
    1a3e:	0f 28 c1             	movaps %xmm1,%xmm0
    1a41:	f3 41 0f 5c 04 0a    	subss  (%r10,%rcx,1),%xmm0
    1a47:	0f 54 c2             	andps  %xmm2,%xmm0
    1a4a:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1a4e:	0f 54 ca             	andps  %xmm2,%xmm1
    1a51:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1a55:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1a59:	66 0f 2f 05 ff 05 00 	comisd 0x5ff(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1a60:	00 
    1a61:	73 2c                	jae    1a8f <Compare_doitgen+0x11d>
    1a63:	48 83 c1 04          	add    $0x4,%rcx
    1a67:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
    1a6e:	75 c8                	jne    1a38 <Compare_doitgen+0xc6>
    1a70:	48 83 c2 08          	add    $0x8,%rdx
    1a74:	48 81 fa 00 02 00 00 	cmp    $0x200,%rdx
    1a7b:	75 ae                	jne    1a2b <Compare_doitgen+0xb9>
    1a7d:	48 83 c0 08          	add    $0x8,%rax
    1a81:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1a87:	75 95                	jne    1a1e <Compare_doitgen+0xac>
    1a89:	b8 00 00 00 00       	mov    $0x0,%eax
    1a8e:	c3                   	ret    
    1a8f:	b8 01 00 00 00       	mov    $0x1,%eax
    1a94:	c3                   	ret    

0000000000001a95 <main>:
    1a95:	f3 0f 1e fa          	endbr64 
    1a99:	55                   	push   %rbp
    1a9a:	53                   	push   %rbx
    1a9b:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
    1aa2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1aa9:	00 00 
    1aab:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    1ab2:	00 
    1ab3:	31 c0                	xor    %eax,%eax
    1ab5:	e8 2f f7 ff ff       	call   11e9 <doitgen_init>
    1aba:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1ac1:	54 43 
    1ac3:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1aca:	00 00 
    1acc:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1ad3:	00 00 
    1ad5:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1adc:	00 00 
    1ade:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1ae5:	00 00 
    1ae7:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1aee:	00 00 
    1af0:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1af5:	bb 00 00 00 00       	mov    $0x0,%ebx
    1afa:	89 da                	mov    %ebx,%edx
    1afc:	48 c1 c7 03          	rol    $0x3,%rdi
    1b00:	48 c1 c7 0d          	rol    $0xd,%rdi
    1b04:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1b08:	48 c1 c7 33          	rol    $0x33,%rdi
    1b0c:	48 87 db             	xchg   %rbx,%rbx
    1b0f:	48 89 14 24          	mov    %rdx,(%rsp)
    1b13:	48 8b 04 24          	mov    (%rsp),%rax
    1b17:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    1b1e:	54 43 
    1b20:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1b27:	00 00 
    1b29:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    1b30:	00 00 00 00 00 
    1b35:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    1b3c:	00 00 00 00 00 
    1b41:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1b48:	00 00 00 00 00 
    1b4d:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1b54:	00 00 00 00 00 
    1b59:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1b5e:	89 da                	mov    %ebx,%edx
    1b60:	48 c1 c7 03          	rol    $0x3,%rdi
    1b64:	48 c1 c7 0d          	rol    $0xd,%rdi
    1b68:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1b6c:	48 c1 c7 33          	rol    $0x33,%rdi
    1b70:	48 87 db             	xchg   %rbx,%rbx
    1b73:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1b78:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1b7d:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1b82:	bf 01 00 00 00       	mov    $0x1,%edi
    1b87:	e8 34 f5 ff ff       	call   10c0 <clock_gettime@plt>
    1b8c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b91:	e8 ef f9 ff ff       	call   1585 <doitgen>
    1b96:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1b9b:	bf 01 00 00 00       	mov    $0x1,%edi
    1ba0:	e8 1b f5 ff ff       	call   10c0 <clock_gettime@plt>
    1ba5:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    1bac:	00 02 00 54 43 
    1bb1:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1bb8:	00 00 00 00 00 
    1bbd:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1bc4:	00 00 00 00 00 
    1bc9:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    1bd0:	00 00 00 00 00 
    1bd5:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1bdc:	00 00 00 00 00 
    1be1:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1be8:	00 00 00 00 00 
    1bed:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1bf4:	00 
    1bf5:	89 da                	mov    %ebx,%edx
    1bf7:	48 c1 c7 03          	rol    $0x3,%rdi
    1bfb:	48 c1 c7 0d          	rol    $0xd,%rdi
    1bff:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1c03:	48 c1 c7 33          	rol    $0x33,%rdi
    1c07:	48 87 db             	xchg   %rbx,%rbx
    1c0a:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1c0f:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1c14:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1c1b:	00 05 00 54 43 
    1c20:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1c27:	00 00 00 00 00 
    1c2c:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1c33:	00 00 00 00 00 
    1c38:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    1c3f:	00 00 00 00 00 
    1c44:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    1c4b:	00 00 00 00 00 
    1c50:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1c57:	00 00 00 00 00 
    1c5c:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1c63:	00 
    1c64:	89 da                	mov    %ebx,%edx
    1c66:	48 c1 c7 03          	rol    $0x3,%rdi
    1c6a:	48 c1 c7 0d          	rol    $0xd,%rdi
    1c6e:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1c72:	48 c1 c7 33          	rol    $0x33,%rdi
    1c76:	48 87 db             	xchg   %rbx,%rbx
    1c79:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1c7e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1c83:	b8 00 00 00 00       	mov    $0x0,%eax
    1c88:	e8 e5 fc ff ff       	call   1972 <Compare_doitgen>
    1c8d:	66 85 c0             	test   %ax,%ax
    1c90:	0f 85 45 01 00 00    	jne    1ddb <main+0x346>
    1c96:	48 8d 3d 67 03 00 00 	lea    0x367(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1c9d:	e8 0e f4 ff ff       	call   10b0 <puts@plt>
    1ca2:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1ca7:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1cac:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1cb3:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1cb8:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1cbd:	48 8d 35 60 03 00 00 	lea    0x360(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    1cc4:	bf 01 00 00 00       	mov    $0x1,%edi
    1cc9:	b8 00 00 00 00       	mov    $0x0,%eax
    1cce:	e8 0d f4 ff ff       	call   10e0 <__printf_chk@plt>
    1cd3:	bd 00 00 00 00       	mov    $0x0,%ebp
    1cd8:	bb 00 00 00 00       	mov    $0x0,%ebx
    1cdd:	48 8b 05 4c 23 00 00 	mov    0x234c(%rip),%rax        # 4030 <A>
    1ce4:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1ce8:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1cec:	e8 af f3 ff ff       	call   10a0 <free@plt>
    1cf1:	48 8b 05 28 23 00 00 	mov    0x2328(%rip),%rax        # 4020 <out>
    1cf8:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1cfc:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d00:	e8 9b f3 ff ff       	call   10a0 <free@plt>
    1d05:	48 8b 05 0c 23 00 00 	mov    0x230c(%rip),%rax        # 4018 <test>
    1d0c:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1d10:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d14:	e8 87 f3 ff ff       	call   10a0 <free@plt>
    1d19:	48 83 c3 08          	add    $0x8,%rbx
    1d1d:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    1d24:	75 b7                	jne    1cdd <main+0x248>
    1d26:	48 8b 05 03 23 00 00 	mov    0x2303(%rip),%rax        # 4030 <A>
    1d2d:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d31:	e8 6a f3 ff ff       	call   10a0 <free@plt>
    1d36:	48 8b 05 e3 22 00 00 	mov    0x22e3(%rip),%rax        # 4020 <out>
    1d3d:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d41:	e8 5a f3 ff ff       	call   10a0 <free@plt>
    1d46:	48 8b 05 cb 22 00 00 	mov    0x22cb(%rip),%rax        # 4018 <test>
    1d4d:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1d51:	e8 4a f3 ff ff       	call   10a0 <free@plt>
    1d56:	48 83 c5 08          	add    $0x8,%rbp
    1d5a:	48 81 fd 00 02 00 00 	cmp    $0x200,%rbp
    1d61:	0f 85 71 ff ff ff    	jne    1cd8 <main+0x243>
    1d67:	48 8b 3d c2 22 00 00 	mov    0x22c2(%rip),%rdi        # 4030 <A>
    1d6e:	e8 2d f3 ff ff       	call   10a0 <free@plt>
    1d73:	48 8b 3d a6 22 00 00 	mov    0x22a6(%rip),%rdi        # 4020 <out>
    1d7a:	e8 21 f3 ff ff       	call   10a0 <free@plt>
    1d7f:	48 8b 3d 92 22 00 00 	mov    0x2292(%rip),%rdi        # 4018 <test>
    1d86:	e8 15 f3 ff ff       	call   10a0 <free@plt>
    1d8b:	bb 00 00 00 00       	mov    $0x0,%ebx
    1d90:	48 8b 05 91 22 00 00 	mov    0x2291(%rip),%rax        # 4028 <C>
    1d97:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1d9b:	e8 00 f3 ff ff       	call   10a0 <free@plt>
    1da0:	48 83 c3 08          	add    $0x8,%rbx
    1da4:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    1dab:	75 e3                	jne    1d90 <main+0x2fb>
    1dad:	48 8b 3d 74 22 00 00 	mov    0x2274(%rip),%rdi        # 4028 <C>
    1db4:	e8 e7 f2 ff ff       	call   10a0 <free@plt>
    1db9:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1dc0:	00 
    1dc1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1dc8:	00 00 
    1dca:	75 20                	jne    1dec <main+0x357>
    1dcc:	b8 00 00 00 00       	mov    $0x0,%eax
    1dd1:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    1dd8:	5b                   	pop    %rbx
    1dd9:	5d                   	pop    %rbp
    1dda:	c3                   	ret    
    1ddb:	48 8d 3d 31 02 00 00 	lea    0x231(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1de2:	e8 c9 f2 ff ff       	call   10b0 <puts@plt>
    1de7:	e9 b6 fe ff ff       	jmp    1ca2 <main+0x20d>
    1dec:	e8 df f2 ff ff       	call   10d0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001df4 <_fini>:
    1df4:	f3 0f 1e fa          	endbr64 
    1df8:	48 83 ec 08          	sub    $0x8,%rsp
    1dfc:	48 83 c4 08          	add    $0x8,%rsp
    1e00:	c3                   	ret    
