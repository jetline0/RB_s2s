
MMM/alg1_sr1:     file format elf64-x86-64


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

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	31 ed                	xor    %ebp,%ebp
    1126:	49 89 d1             	mov    %rdx,%r9
    1129:	5e                   	pop    %rsi
    112a:	48 89 e2             	mov    %rsp,%rdx
    112d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1131:	50                   	push   %rax
    1132:	54                   	push   %rsp
    1133:	45 31 c0             	xor    %r8d,%r8d
    1136:	31 c9                	xor    %ecx,%ecx
    1138:	48 8d 3d ff 09 00 00 	lea    0x9ff(%rip),%rdi        # 1b3e <main>
    113f:	ff 15 93 2e 00 00    	call   *0x2e93(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1145:	f4                   	hlt    
    1146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114d:	00 00 00 

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d b9 2e 00 00 	lea    0x2eb9(%rip),%rdi        # 4010 <__TMC_END__>
    1157:	48 8d 05 b2 2e 00 00 	lea    0x2eb2(%rip),%rax        # 4010 <__TMC_END__>
    115e:	48 39 f8             	cmp    %rdi,%rax
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 76 2e 00 00 	mov    0x2e76(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    116a:	48 85 c0             	test   %rax,%rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmp    *%rax
    1171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d 89 2e 00 00 	lea    0x2e89(%rip),%rdi        # 4010 <__TMC_END__>
    1187:	48 8d 35 82 2e 00 00 	lea    0x2e82(%rip),%rsi        # 4010 <__TMC_END__>
    118e:	48 29 fe             	sub    %rdi,%rsi
    1191:	48 89 f0             	mov    %rsi,%rax
    1194:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1198:	48 c1 f8 03          	sar    $0x3,%rax
    119c:	48 01 c6             	add    %rax,%rsi
    119f:	48 d1 fe             	sar    %rsi
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 45 2e 00 00 	mov    0x2e45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11ab:	48 85 c0             	test   %rax,%rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmp    *%rax
    11b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	80 3d 45 2e 00 00 00 	cmpb   $0x0,0x2e45(%rip)        # 4010 <__TMC_END__>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   %rbp
    11ce:	48 83 3d 22 2e 00 00 	cmpq   $0x0,0x2e22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    %rsp,%rbp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 2e 00 00 	mov    0x2e26(%rip),%rdi        # 4008 <__dso_handle>
    11e2:	e8 b9 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	call   1150 <deregister_tm_clones>
    11ec:	c6 05 1d 2e 00 00 01 	movb   $0x1,0x2e1d(%rip)        # 4010 <__TMC_END__>
    11f3:	5d                   	pop    %rbp
    11f4:	c3                   	ret    
    11f5:	0f 1f 00             	nopl   (%rax)
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <frame_dummy>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	e9 77 ff ff ff       	jmp    1180 <register_tm_clones>

0000000000001209 <MMM_init>:
    1209:	f3 0f 1e fa          	endbr64 
    120d:	41 54                	push   %r12
    120f:	55                   	push   %rbp
    1210:	53                   	push   %rbx
    1211:	48 83 ec 60          	sub    $0x60,%rsp
    1215:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    121c:	00 00 
    121e:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1223:	31 c0                	xor    %eax,%eax
    1225:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    122a:	ba 00 08 00 00       	mov    $0x800,%edx
    122f:	be 40 00 00 00       	mov    $0x40,%esi
    1234:	e8 d7 fe ff ff       	call   1110 <posix_memalign@plt>
    1239:	85 c0                	test   %eax,%eax
    123b:	b8 00 00 00 00       	mov    $0x0,%eax
    1240:	48 0f 44 44 24 28    	cmove  0x28(%rsp),%rax
    1246:	48 89 05 eb 2d 00 00 	mov    %rax,0x2deb(%rip)        # 4038 <C>
    124d:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    1252:	ba 00 08 00 00       	mov    $0x800,%edx
    1257:	be 40 00 00 00       	mov    $0x40,%esi
    125c:	e8 af fe ff ff       	call   1110 <posix_memalign@plt>
    1261:	85 c0                	test   %eax,%eax
    1263:	b8 00 00 00 00       	mov    $0x0,%eax
    1268:	48 0f 44 44 24 20    	cmove  0x20(%rsp),%rax
    126e:	48 89 05 bb 2d 00 00 	mov    %rax,0x2dbb(%rip)        # 4030 <test>
    1275:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    127a:	ba 00 08 00 00       	mov    $0x800,%edx
    127f:	be 40 00 00 00       	mov    $0x40,%esi
    1284:	e8 87 fe ff ff       	call   1110 <posix_memalign@plt>
    1289:	85 c0                	test   %eax,%eax
    128b:	b8 00 00 00 00       	mov    $0x0,%eax
    1290:	48 0f 44 44 24 18    	cmove  0x18(%rsp),%rax
    1296:	48 89 05 8b 2d 00 00 	mov    %rax,0x2d8b(%rip)        # 4028 <A>
    129d:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    12a2:	ba 00 08 00 00       	mov    $0x800,%edx
    12a7:	be 40 00 00 00       	mov    $0x40,%esi
    12ac:	e8 5f fe ff ff       	call   1110 <posix_memalign@plt>
    12b1:	85 c0                	test   %eax,%eax
    12b3:	b8 00 00 00 00       	mov    $0x0,%eax
    12b8:	48 0f 44 44 24 10    	cmove  0x10(%rsp),%rax
    12be:	48 89 05 5b 2d 00 00 	mov    %rax,0x2d5b(%rip)        # 4020 <B>
    12c5:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    12ca:	ba 00 08 00 00       	mov    $0x800,%edx
    12cf:	be 40 00 00 00       	mov    $0x40,%esi
    12d4:	e8 37 fe ff ff       	call   1110 <posix_memalign@plt>
    12d9:	85 c0                	test   %eax,%eax
    12db:	b8 00 00 00 00       	mov    $0x0,%eax
    12e0:	48 0f 44 44 24 08    	cmove  0x8(%rsp),%rax
    12e6:	48 89 05 2b 2d 00 00 	mov    %rax,0x2d2b(%rip)        # 4018 <Btranspose>
    12ed:	bb 00 00 00 00       	mov    $0x0,%ebx
    12f2:	bd 00 00 00 00       	mov    $0x0,%ebp
    12f7:	49 89 dc             	mov    %rbx,%r12
    12fa:	4c 03 25 37 2d 00 00 	add    0x2d37(%rip),%r12        # 4038 <C>
    1301:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    1306:	ba 00 04 00 00       	mov    $0x400,%edx
    130b:	be 40 00 00 00       	mov    $0x40,%esi
    1310:	e8 fb fd ff ff       	call   1110 <posix_memalign@plt>
    1315:	85 c0                	test   %eax,%eax
    1317:	48 89 e8             	mov    %rbp,%rax
    131a:	48 0f 44 44 24 50    	cmove  0x50(%rsp),%rax
    1320:	49 89 04 24          	mov    %rax,(%r12)
    1324:	49 89 dc             	mov    %rbx,%r12
    1327:	4c 03 25 02 2d 00 00 	add    0x2d02(%rip),%r12        # 4030 <test>
    132e:	48 8d 7c 24 48       	lea    0x48(%rsp),%rdi
    1333:	ba 00 04 00 00       	mov    $0x400,%edx
    1338:	be 40 00 00 00       	mov    $0x40,%esi
    133d:	e8 ce fd ff ff       	call   1110 <posix_memalign@plt>
    1342:	85 c0                	test   %eax,%eax
    1344:	48 89 e8             	mov    %rbp,%rax
    1347:	48 0f 44 44 24 48    	cmove  0x48(%rsp),%rax
    134d:	49 89 04 24          	mov    %rax,(%r12)
    1351:	49 89 dc             	mov    %rbx,%r12
    1354:	4c 03 25 cd 2c 00 00 	add    0x2ccd(%rip),%r12        # 4028 <A>
    135b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1360:	ba 00 04 00 00       	mov    $0x400,%edx
    1365:	be 40 00 00 00       	mov    $0x40,%esi
    136a:	e8 a1 fd ff ff       	call   1110 <posix_memalign@plt>
    136f:	85 c0                	test   %eax,%eax
    1371:	48 89 e8             	mov    %rbp,%rax
    1374:	48 0f 44 44 24 40    	cmove  0x40(%rsp),%rax
    137a:	49 89 04 24          	mov    %rax,(%r12)
    137e:	49 89 dc             	mov    %rbx,%r12
    1381:	4c 03 25 98 2c 00 00 	add    0x2c98(%rip),%r12        # 4020 <B>
    1388:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    138d:	ba 00 04 00 00       	mov    $0x400,%edx
    1392:	be 40 00 00 00       	mov    $0x40,%esi
    1397:	e8 74 fd ff ff       	call   1110 <posix_memalign@plt>
    139c:	85 c0                	test   %eax,%eax
    139e:	48 89 e8             	mov    %rbp,%rax
    13a1:	48 0f 44 44 24 38    	cmove  0x38(%rsp),%rax
    13a7:	49 89 04 24          	mov    %rax,(%r12)
    13ab:	49 89 dc             	mov    %rbx,%r12
    13ae:	4c 03 25 63 2c 00 00 	add    0x2c63(%rip),%r12        # 4018 <Btranspose>
    13b5:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    13ba:	ba 00 04 00 00       	mov    $0x400,%edx
    13bf:	be 40 00 00 00       	mov    $0x40,%esi
    13c4:	e8 47 fd ff ff       	call   1110 <posix_memalign@plt>
    13c9:	85 c0                	test   %eax,%eax
    13cb:	48 89 e8             	mov    %rbp,%rax
    13ce:	48 0f 44 44 24 30    	cmove  0x30(%rsp),%rax
    13d4:	49 89 04 24          	mov    %rax,(%r12)
    13d8:	48 83 c3 08          	add    $0x8,%rbx
    13dc:	48 81 fb 00 08 00 00 	cmp    $0x800,%rbx
    13e3:	0f 85 0e ff ff ff    	jne    12f7 <MMM_init+0xee>
    13e9:	be 00 00 00 00       	mov    $0x0,%esi
    13ee:	f3 0f 10 15 82 0c 00 	movss  0xc82(%rip),%xmm2        # 2078 <_IO_stdin_used+0x78>
    13f5:	00 
    13f6:	0f 28 ca             	movaps %xmm2,%xmm1
    13f9:	b8 00 00 00 00       	mov    $0x0,%eax
    13fe:	48 8b 15 33 2c 00 00 	mov    0x2c33(%rip),%rdx        # 4038 <C>
    1405:	48 8b 14 32          	mov    (%rdx,%rsi,1),%rdx
    1409:	c7 04 82 00 00 00 00 	movl   $0x0,(%rdx,%rax,4)
    1410:	48 8b 15 19 2c 00 00 	mov    0x2c19(%rip),%rdx        # 4030 <test>
    1417:	48 8b 14 32          	mov    (%rdx,%rsi,1),%rdx
    141b:	c7 04 82 00 00 00 00 	movl   $0x0,(%rdx,%rax,4)
    1422:	48 8b 15 ff 2b 00 00 	mov    0x2bff(%rip),%rdx        # 4028 <A>
    1429:	48 8b 0c 32          	mov    (%rdx,%rsi,1),%rcx
    142d:	89 c2                	mov    %eax,%edx
    142f:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
    1436:	48 c1 ea 21          	shr    $0x21,%rdx
    143a:	8d 3c d2             	lea    (%rdx,%rdx,8),%edi
    143d:	89 c2                	mov    %eax,%edx
    143f:	29 fa                	sub    %edi,%edx
    1441:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1445:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    144a:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    144e:	f3 0f 11 04 81       	movss  %xmm0,(%rcx,%rax,4)
    1453:	48 8b 15 c6 2b 00 00 	mov    0x2bc6(%rip),%rdx        # 4020 <B>
    145a:	48 8b 3c 32          	mov    (%rdx,%rsi,1),%rdi
    145e:	89 c1                	mov    %eax,%ecx
    1460:	48 69 c9 25 49 92 24 	imul   $0x24924925,%rcx,%rcx
    1467:	48 c1 e9 20          	shr    $0x20,%rcx
    146b:	89 c2                	mov    %eax,%edx
    146d:	29 ca                	sub    %ecx,%edx
    146f:	d1 ea                	shr    %edx
    1471:	01 ca                	add    %ecx,%edx
    1473:	c1 ea 02             	shr    $0x2,%edx
    1476:	8d 0c d5 00 00 00 00 	lea    0x0(,%rdx,8),%ecx
    147d:	29 d1                	sub    %edx,%ecx
    147f:	89 c2                	mov    %eax,%edx
    1481:	29 ca                	sub    %ecx,%edx
    1483:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1487:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    148c:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1490:	f3 0f 11 04 87       	movss  %xmm0,(%rdi,%rax,4)
    1495:	48 83 c0 01          	add    $0x1,%rax
    1499:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    149f:	0f 85 59 ff ff ff    	jne    13fe <MMM_init+0x1f5>
    14a5:	48 83 c6 08          	add    $0x8,%rsi
    14a9:	48 81 fe 00 08 00 00 	cmp    $0x800,%rsi
    14b0:	0f 85 43 ff ff ff    	jne    13f9 <MMM_init+0x1f0>
    14b6:	b9 00 00 00 00       	mov    $0x0,%ecx
    14bb:	48 8d 34 09          	lea    (%rcx,%rcx,1),%rsi
    14bf:	b8 00 00 00 00       	mov    $0x0,%eax
    14c4:	48 8b 15 55 2b 00 00 	mov    0x2b55(%rip),%rdx        # 4020 <B>
    14cb:	48 8b 14 32          	mov    (%rdx,%rsi,1),%rdx
    14cf:	f3 0f 10 04 02       	movss  (%rdx,%rax,1),%xmm0
    14d4:	48 8b 15 3d 2b 00 00 	mov    0x2b3d(%rip),%rdx        # 4018 <Btranspose>
    14db:	48 8b 14 42          	mov    (%rdx,%rax,2),%rdx
    14df:	f3 0f 11 04 0a       	movss  %xmm0,(%rdx,%rcx,1)
    14e4:	48 83 c0 04          	add    $0x4,%rax
    14e8:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    14ee:	75 d4                	jne    14c4 <MMM_init+0x2bb>
    14f0:	48 83 c1 04          	add    $0x4,%rcx
    14f4:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    14fb:	75 be                	jne    14bb <MMM_init+0x2b2>
    14fd:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1502:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1509:	00 00 
    150b:	75 09                	jne    1516 <MMM_init+0x30d>
    150d:	48 83 c4 60          	add    $0x60,%rsp
    1511:	5b                   	pop    %rbx
    1512:	5d                   	pop    %rbp
    1513:	41 5c                	pop    %r12
    1515:	c3                   	ret    
    1516:	e8 c5 fb ff ff       	call   10e0 <__stack_chk_fail@plt>

000000000000151b <MMM_RB>:
    151b:	f3 0f 1e fa          	endbr64 
    151f:	41 54                	push   %r12
    1521:	55                   	push   %rbp
    1522:	53                   	push   %rbx
    1523:	bb 08 00 00 00       	mov    $0x8,%ebx
    1528:	eb 11                	jmp    153b <MMM_RB+0x20>
    152a:	48 83 c3 10          	add    $0x10,%rbx
    152e:	48 81 fb 08 08 00 00 	cmp    $0x808,%rbx
    1535:	0f 84 8b 01 00 00    	je     16c6 <MMM_RB+0x1ab>
    153b:	48 8d 6b f8          	lea    -0x8(%rbx),%rbp
    153f:	b9 00 00 00 00       	mov    $0x0,%ecx
    1544:	48 8b 05 ed 2a 00 00 	mov    0x2aed(%rip),%rax        # 4038 <C>
    154b:	48 8b 14 28          	mov    (%rax,%rbp,1),%rdx
    154f:	4c 8d 24 0a          	lea    (%rdx,%rcx,1),%r12
    1553:	f3 45 0f 10 14 24    	movss  (%r12),%xmm10
    1559:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    155d:	f3 44 0f 10 0c 08    	movss  (%rax,%rcx,1),%xmm9
    1563:	4c 8d 41 04          	lea    0x4(%rcx),%r8
    1567:	f3 44 0f 10 44 0a 04 	movss  0x4(%rdx,%rcx,1),%xmm8
    156e:	f3 0f 10 7c 08 04    	movss  0x4(%rax,%rcx,1),%xmm7
    1574:	48 8d 79 08          	lea    0x8(%rcx),%rdi
    1578:	f3 0f 10 74 0a 08    	movss  0x8(%rdx,%rcx,1),%xmm6
    157e:	f3 0f 10 6c 08 08    	movss  0x8(%rax,%rcx,1),%xmm5
    1584:	48 8d 71 0c          	lea    0xc(%rcx),%rsi
    1588:	f3 0f 10 64 0a 0c    	movss  0xc(%rdx,%rcx,1),%xmm4
    158e:	f3 0f 10 5c 08 0c    	movss  0xc(%rax,%rcx,1),%xmm3
    1594:	48 8b 05 8d 2a 00 00 	mov    0x2a8d(%rip),%rax        # 4028 <A>
    159b:	4c 8b 1c 28          	mov    (%rax,%rbp,1),%r11
    159f:	4c 8b 14 18          	mov    (%rax,%rbx,1),%r10
    15a3:	4c 8b 0d 76 2a 00 00 	mov    0x2a76(%rip),%r9        # 4020 <B>
    15aa:	b8 00 00 00 00       	mov    $0x0,%eax
    15af:	f3 41 0f 10 0c 03    	movss  (%r11,%rax,1),%xmm1
    15b5:	f3 41 0f 10 04 02    	movss  (%r10,%rax,1),%xmm0
    15bb:	49 8b 14 41          	mov    (%r9,%rax,2),%rdx
    15bf:	f3 0f 10 14 0a       	movss  (%rdx,%rcx,1),%xmm2
    15c4:	44 0f 28 d9          	movaps %xmm1,%xmm11
    15c8:	f3 44 0f 59 da       	mulss  %xmm2,%xmm11
    15cd:	f3 45 0f 58 d3       	addss  %xmm11,%xmm10
    15d2:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    15d6:	f3 44 0f 58 ca       	addss  %xmm2,%xmm9
    15db:	f3 42 0f 10 14 02    	movss  (%rdx,%r8,1),%xmm2
    15e1:	44 0f 28 d9          	movaps %xmm1,%xmm11
    15e5:	f3 44 0f 59 da       	mulss  %xmm2,%xmm11
    15ea:	f3 45 0f 58 c3       	addss  %xmm11,%xmm8
    15ef:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    15f3:	f3 0f 58 fa          	addss  %xmm2,%xmm7
    15f7:	f3 0f 10 14 3a       	movss  (%rdx,%rdi,1),%xmm2
    15fc:	44 0f 28 d9          	movaps %xmm1,%xmm11
    1600:	f3 44 0f 59 da       	mulss  %xmm2,%xmm11
    1605:	f3 41 0f 58 f3       	addss  %xmm11,%xmm6
    160a:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    160e:	f3 0f 58 ea          	addss  %xmm2,%xmm5
    1612:	f3 0f 10 14 32       	movss  (%rdx,%rsi,1),%xmm2
    1617:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    161b:	f3 0f 58 e1          	addss  %xmm1,%xmm4
    161f:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1623:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    1627:	48 83 c0 04          	add    $0x4,%rax
    162b:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1631:	0f 85 78 ff ff ff    	jne    15af <MMM_RB+0x94>
    1637:	f3 45 0f 11 14 24    	movss  %xmm10,(%r12)
    163d:	48 8b 05 f4 29 00 00 	mov    0x29f4(%rip),%rax        # 4038 <C>
    1644:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    1648:	f3 44 0f 11 0c 08    	movss  %xmm9,(%rax,%rcx,1)
    164e:	48 8b 05 e3 29 00 00 	mov    0x29e3(%rip),%rax        # 4038 <C>
    1655:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1659:	f3 46 0f 11 04 00    	movss  %xmm8,(%rax,%r8,1)
    165f:	48 8b 05 d2 29 00 00 	mov    0x29d2(%rip),%rax        # 4038 <C>
    1666:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    166a:	f3 42 0f 11 3c 00    	movss  %xmm7,(%rax,%r8,1)
    1670:	48 8b 05 c1 29 00 00 	mov    0x29c1(%rip),%rax        # 4038 <C>
    1677:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    167b:	f3 0f 11 34 38       	movss  %xmm6,(%rax,%rdi,1)
    1680:	48 8b 05 b1 29 00 00 	mov    0x29b1(%rip),%rax        # 4038 <C>
    1687:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    168b:	f3 0f 11 2c 38       	movss  %xmm5,(%rax,%rdi,1)
    1690:	48 8b 05 a1 29 00 00 	mov    0x29a1(%rip),%rax        # 4038 <C>
    1697:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    169b:	f3 0f 11 24 30       	movss  %xmm4,(%rax,%rsi,1)
    16a0:	48 8b 05 91 29 00 00 	mov    0x2991(%rip),%rax        # 4038 <C>
    16a7:	48 8b 04 18          	mov    (%rax,%rbx,1),%rax
    16ab:	f3 0f 11 1c 30       	movss  %xmm3,(%rax,%rsi,1)
    16b0:	48 83 c1 10          	add    $0x10,%rcx
    16b4:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    16bb:	0f 85 83 fe ff ff    	jne    1544 <MMM_RB+0x29>
    16c1:	e9 64 fe ff ff       	jmp    152a <MMM_RB+0xf>
    16c6:	5b                   	pop    %rbx
    16c7:	5d                   	pop    %rbp
    16c8:	41 5c                	pop    %r12
    16ca:	c3                   	ret    

00000000000016cb <MMM_default>:
    16cb:	f3 0f 1e fa          	endbr64 
    16cf:	41 57                	push   %r15
    16d1:	41 56                	push   %r14
    16d3:	41 55                	push   %r13
    16d5:	41 54                	push   %r12
    16d7:	55                   	push   %rbp
    16d8:	53                   	push   %rbx
    16d9:	41 bf 10 00 00 00    	mov    $0x10,%r15d
    16df:	e9 e6 00 00 00       	jmp    17ca <MMM_default+0xff>
    16e4:	48 8b 05 4d 29 00 00 	mov    0x294d(%rip),%rax        # 4038 <C>
    16eb:	4e 8b 14 20          	mov    (%rax,%r12,1),%r10
    16ef:	f3 41 0f 10 a2 fc 03 	movss  0x3fc(%r10),%xmm4
    16f6:	00 00 
    16f8:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    16fc:	f3 0f 10 9a fc 03 00 	movss  0x3fc(%rdx),%xmm3
    1703:	00 
    1704:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    1708:	f3 0f 10 92 fc 03 00 	movss  0x3fc(%rdx),%xmm2
    170f:	00 
    1710:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1714:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    171b:	00 
    171c:	4c 8b 0d fd 28 00 00 	mov    0x28fd(%rip),%r9        # 4020 <B>
    1723:	48 8b 05 fe 28 00 00 	mov    0x28fe(%rip),%rax        # 4028 <A>
    172a:	4e 8b 04 38          	mov    (%rax,%r15,1),%r8
    172e:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1732:	4a 8b 34 28          	mov    (%rax,%r13,1),%rsi
    1736:	4a 8b 0c 20          	mov    (%rax,%r12,1),%rcx
    173a:	b8 00 00 00 00       	mov    $0x0,%eax
    173f:	49 8b 14 41          	mov    (%r9,%rax,2),%rdx
    1743:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    174a:	00 
    174b:	0f 28 e8             	movaps %xmm0,%xmm5
    174e:	f3 41 0f 59 2c 00    	mulss  (%r8,%rax,1),%xmm5
    1754:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1758:	0f 28 e8             	movaps %xmm0,%xmm5
    175b:	f3 0f 59 2c 07       	mulss  (%rdi,%rax,1),%xmm5
    1760:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1764:	0f 28 e8             	movaps %xmm0,%xmm5
    1767:	f3 0f 59 2c 06       	mulss  (%rsi,%rax,1),%xmm5
    176c:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1770:	f3 0f 59 04 01       	mulss  (%rcx,%rax,1),%xmm0
    1775:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1779:	48 83 c0 04          	add    $0x4,%rax
    177d:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1783:	75 ba                	jne    173f <MMM_default+0x74>
    1785:	f3 41 0f 11 a2 fc 03 	movss  %xmm4,0x3fc(%r10)
    178c:	00 00 
    178e:	48 8b 05 a3 28 00 00 	mov    0x28a3(%rip),%rax        # 4038 <C>
    1795:	4a 8b 14 38          	mov    (%rax,%r15,1),%rdx
    1799:	f3 0f 11 9a fc 03 00 	movss  %xmm3,0x3fc(%rdx)
    17a0:	00 
    17a1:	4a 8b 14 28          	mov    (%rax,%r13,1),%rdx
    17a5:	f3 0f 11 92 fc 03 00 	movss  %xmm2,0x3fc(%rdx)
    17ac:	00 
    17ad:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    17b1:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    17b8:	00 
    17b9:	49 83 c7 20          	add    $0x20,%r15
    17bd:	49 81 ff 10 08 00 00 	cmp    $0x810,%r15
    17c4:	0f 84 4b 02 00 00    	je     1a15 <MMM_default+0x34a>
    17ca:	4d 8d 6f f8          	lea    -0x8(%r15),%r13
    17ce:	4d 8d 67 08          	lea    0x8(%r15),%r12
    17d2:	49 8d 6f f0          	lea    -0x10(%r15),%rbp
    17d6:	b9 00 00 00 00       	mov    $0x0,%ecx
    17db:	48 8b 05 56 28 00 00 	mov    0x2856(%rip),%rax        # 4038 <C>
    17e2:	4e 8b 0c 28          	mov    (%rax,%r13,1),%r9
    17e6:	4d 8d 34 09          	lea    (%r9,%rcx,1),%r14
    17ea:	f3 45 0f 10 36       	movss  (%r14),%xmm14
    17ef:	4a 8b 14 20          	mov    (%rax,%r12,1),%rdx
    17f3:	48 8d 79 04          	lea    0x4(%rcx),%rdi
    17f7:	f3 44 0f 10 6c 0a 04 	movss  0x4(%rdx,%rcx,1),%xmm13
    17fe:	4c 8b 04 28          	mov    (%rax,%rbp,1),%r8
    1802:	f3 45 0f 10 64 08 04 	movss  0x4(%r8,%rcx,1),%xmm12
    1809:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    180d:	f3 44 0f 10 5c 08 04 	movss  0x4(%rax,%rcx,1),%xmm11
    1814:	f3 45 0f 10 14 08    	movss  (%r8,%rcx,1),%xmm10
    181a:	48 8d 71 08          	lea    0x8(%rcx),%rsi
    181e:	f3 45 0f 10 4c 09 08 	movss  0x8(%r9,%rcx,1),%xmm9
    1825:	f3 44 0f 10 04 0a    	movss  (%rdx,%rcx,1),%xmm8
    182b:	f3 41 0f 10 7c 09 04 	movss  0x4(%r9,%rcx,1),%xmm7
    1832:	f3 41 0f 10 74 08 08 	movss  0x8(%r8,%rcx,1),%xmm6
    1839:	f3 0f 10 6c 08 08    	movss  0x8(%rax,%rcx,1),%xmm5
    183f:	f3 0f 10 64 0a 08    	movss  0x8(%rdx,%rcx,1),%xmm4
    1845:	f3 0f 10 0c 08       	movss  (%rax,%rcx,1),%xmm1
    184a:	f3 0f 11 4c 24 fc    	movss  %xmm1,-0x4(%rsp)
    1850:	48 8b 1d c9 27 00 00 	mov    0x27c9(%rip),%rbx        # 4020 <B>
    1857:	48 8b 05 ca 27 00 00 	mov    0x27ca(%rip),%rax        # 4028 <A>
    185e:	4e 8b 1c 38          	mov    (%rax,%r15,1),%r11
    1862:	4c 8b 14 28          	mov    (%rax,%rbp,1),%r10
    1866:	4e 8b 0c 28          	mov    (%rax,%r13,1),%r9
    186a:	4e 8b 04 20          	mov    (%rax,%r12,1),%r8
    186e:	b8 00 00 00 00       	mov    $0x0,%eax
    1873:	48 8b 14 43          	mov    (%rbx,%rax,2),%rdx
    1877:	f3 0f 10 0c 3a       	movss  (%rdx,%rdi,1),%xmm1
    187c:	f3 0f 10 04 32       	movss  (%rdx,%rsi,1),%xmm0
    1881:	f3 0f 10 1c 0a       	movss  (%rdx,%rcx,1),%xmm3
    1886:	f3 41 0f 10 14 03    	movss  (%r11,%rax,1),%xmm2
    188c:	44 0f 28 fb          	movaps %xmm3,%xmm15
    1890:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    1895:	f3 44 0f 58 7c 24 fc 	addss  -0x4(%rsp),%xmm15
    189c:	f3 44 0f 11 7c 24 fc 	movss  %xmm15,-0x4(%rsp)
    18a3:	44 0f 28 f9          	movaps %xmm1,%xmm15
    18a7:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    18ac:	f3 45 0f 58 df       	addss  %xmm15,%xmm11
    18b1:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    18b5:	f3 0f 58 ea          	addss  %xmm2,%xmm5
    18b9:	f3 41 0f 10 14 02    	movss  (%r10,%rax,1),%xmm2
    18bf:	44 0f 28 fb          	movaps %xmm3,%xmm15
    18c3:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    18c8:	f3 45 0f 58 d7       	addss  %xmm15,%xmm10
    18cd:	44 0f 28 f9          	movaps %xmm1,%xmm15
    18d1:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    18d6:	f3 45 0f 58 e7       	addss  %xmm15,%xmm12
    18db:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    18df:	f3 0f 58 f2          	addss  %xmm2,%xmm6
    18e3:	f3 41 0f 10 14 01    	movss  (%r9,%rax,1),%xmm2
    18e9:	44 0f 28 fb          	movaps %xmm3,%xmm15
    18ed:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    18f2:	f3 45 0f 58 f7       	addss  %xmm15,%xmm14
    18f7:	44 0f 28 f9          	movaps %xmm1,%xmm15
    18fb:	f3 44 0f 59 fa       	mulss  %xmm2,%xmm15
    1900:	f3 41 0f 58 ff       	addss  %xmm15,%xmm7
    1905:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    1909:	f3 44 0f 58 ca       	addss  %xmm2,%xmm9
    190e:	f3 41 0f 10 14 00    	movss  (%r8,%rax,1),%xmm2
    1914:	f3 0f 59 da          	mulss  %xmm2,%xmm3
    1918:	f3 44 0f 58 c3       	addss  %xmm3,%xmm8
    191d:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    1921:	f3 44 0f 58 e9       	addss  %xmm1,%xmm13
    1926:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    192a:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    192e:	48 83 c0 04          	add    $0x4,%rax
    1932:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1938:	0f 85 35 ff ff ff    	jne    1873 <MMM_default+0x1a8>
    193e:	f3 45 0f 11 36       	movss  %xmm14,(%r14)
    1943:	48 8b 05 ee 26 00 00 	mov    0x26ee(%rip),%rax        # 4038 <C>
    194a:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    194e:	f3 44 0f 11 2c 38    	movss  %xmm13,(%rax,%rdi,1)
    1954:	48 8b 05 dd 26 00 00 	mov    0x26dd(%rip),%rax        # 4038 <C>
    195b:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    195f:	f3 44 0f 11 24 38    	movss  %xmm12,(%rax,%rdi,1)
    1965:	48 8b 05 cc 26 00 00 	mov    0x26cc(%rip),%rax        # 4038 <C>
    196c:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    1970:	f3 44 0f 11 1c 38    	movss  %xmm11,(%rax,%rdi,1)
    1976:	48 8b 05 bb 26 00 00 	mov    0x26bb(%rip),%rax        # 4038 <C>
    197d:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1981:	f3 44 0f 11 14 08    	movss  %xmm10,(%rax,%rcx,1)
    1987:	48 8b 05 aa 26 00 00 	mov    0x26aa(%rip),%rax        # 4038 <C>
    198e:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    1992:	f3 44 0f 11 0c 30    	movss  %xmm9,(%rax,%rsi,1)
    1998:	48 8b 05 99 26 00 00 	mov    0x2699(%rip),%rax        # 4038 <C>
    199f:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    19a3:	f3 44 0f 11 04 08    	movss  %xmm8,(%rax,%rcx,1)
    19a9:	48 8b 05 88 26 00 00 	mov    0x2688(%rip),%rax        # 4038 <C>
    19b0:	4a 8b 04 28          	mov    (%rax,%r13,1),%rax
    19b4:	f3 0f 11 3c 38       	movss  %xmm7,(%rax,%rdi,1)
    19b9:	48 8b 05 78 26 00 00 	mov    0x2678(%rip),%rax        # 4038 <C>
    19c0:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    19c4:	f3 0f 11 34 30       	movss  %xmm6,(%rax,%rsi,1)
    19c9:	48 8b 05 68 26 00 00 	mov    0x2668(%rip),%rax        # 4038 <C>
    19d0:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    19d4:	f3 0f 11 2c 30       	movss  %xmm5,(%rax,%rsi,1)
    19d9:	48 8b 05 58 26 00 00 	mov    0x2658(%rip),%rax        # 4038 <C>
    19e0:	4a 8b 04 20          	mov    (%rax,%r12,1),%rax
    19e4:	f3 0f 11 24 30       	movss  %xmm4,(%rax,%rsi,1)
    19e9:	48 8b 05 48 26 00 00 	mov    0x2648(%rip),%rax        # 4038 <C>
    19f0:	4a 8b 04 38          	mov    (%rax,%r15,1),%rax
    19f4:	f3 0f 10 74 24 fc    	movss  -0x4(%rsp),%xmm6
    19fa:	f3 0f 11 34 08       	movss  %xmm6,(%rax,%rcx,1)
    19ff:	48 83 c1 0c          	add    $0xc,%rcx
    1a03:	48 81 f9 fc 03 00 00 	cmp    $0x3fc,%rcx
    1a0a:	0f 85 cb fd ff ff    	jne    17db <MMM_default+0x110>
    1a10:	e9 cf fc ff ff       	jmp    16e4 <MMM_default+0x19>
    1a15:	5b                   	pop    %rbx
    1a16:	5d                   	pop    %rbp
    1a17:	41 5c                	pop    %r12
    1a19:	41 5d                	pop    %r13
    1a1b:	41 5e                	pop    %r14
    1a1d:	41 5f                	pop    %r15
    1a1f:	c3                   	ret    

0000000000001a20 <equal>:
    1a20:	f3 0f 1e fa          	endbr64 
    1a24:	0f 28 d0             	movaps %xmm0,%xmm2
    1a27:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1a2b:	f3 0f 10 1d 4d 06 00 	movss  0x64d(%rip),%xmm3        # 2080 <_IO_stdin_used+0x80>
    1a32:	00 
    1a33:	0f 54 d3             	andps  %xmm3,%xmm2
    1a36:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1a3a:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1a3e:	0f 54 c3             	andps  %xmm3,%xmm0
    1a41:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1a45:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1a49:	f2 0f 10 05 3f 06 00 	movsd  0x63f(%rip),%xmm0        # 2090 <_IO_stdin_used+0x90>
    1a50:	00 
    1a51:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1a55:	0f 96 c0             	setbe  %al
    1a58:	0f b6 c0             	movzbl %al,%eax
    1a5b:	c3                   	ret    

0000000000001a5c <Compare_MMM>:
    1a5c:	f3 0f 1e fa          	endbr64 
    1a60:	41 57                	push   %r15
    1a62:	41 56                	push   %r14
    1a64:	41 55                	push   %r13
    1a66:	41 54                	push   %r12
    1a68:	55                   	push   %rbp
    1a69:	53                   	push   %rbx
    1a6a:	be 00 00 00 00       	mov    $0x0,%esi
    1a6f:	eb 64                	jmp    1ad5 <Compare_MMM+0x79>
    1a71:	48 83 c1 04          	add    $0x4,%rcx
    1a75:	48 81 f9 00 04 00 00 	cmp    $0x400,%rcx
    1a7c:	74 4a                	je     1ac8 <Compare_MMM+0x6c>
    1a7e:	b8 00 00 00 00       	mov    $0x0,%eax
    1a83:	48 8b 15 a6 25 00 00 	mov    0x25a6(%rip),%rdx        # 4030 <test>
    1a8a:	48 89 cb             	mov    %rcx,%rbx
    1a8d:	48 03 1c 32          	add    (%rdx,%rsi,1),%rbx
    1a91:	48 8b 3d 88 25 00 00 	mov    0x2588(%rip),%rdi        # 4020 <B>
    1a98:	4c 8b 04 47          	mov    (%rdi,%rax,2),%r8
    1a9c:	48 8b 3d 85 25 00 00 	mov    0x2585(%rip),%rdi        # 4028 <A>
    1aa3:	48 8b 3c 37          	mov    (%rdi,%rsi,1),%rdi
    1aa7:	f3 41 0f 10 04 08    	movss  (%r8,%rcx,1),%xmm0
    1aad:	f3 0f 59 04 07       	mulss  (%rdi,%rax,1),%xmm0
    1ab2:	f3 0f 58 03          	addss  (%rbx),%xmm0
    1ab6:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    1aba:	48 83 c0 04          	add    $0x4,%rax
    1abe:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1ac4:	75 bd                	jne    1a83 <Compare_MMM+0x27>
    1ac6:	eb a9                	jmp    1a71 <Compare_MMM+0x15>
    1ac8:	48 83 c6 08          	add    $0x8,%rsi
    1acc:	48 81 fe 00 08 00 00 	cmp    $0x800,%rsi
    1ad3:	74 07                	je     1adc <Compare_MMM+0x80>
    1ad5:	b9 00 00 00 00       	mov    $0x0,%ecx
    1ada:	eb a2                	jmp    1a7e <Compare_MMM+0x22>
    1adc:	4c 8b 2d 4d 25 00 00 	mov    0x254d(%rip),%r13        # 4030 <test>
    1ae3:	4c 8b 25 4e 25 00 00 	mov    0x254e(%rip),%r12        # 4038 <C>
    1aea:	bb 00 00 00 00       	mov    $0x0,%ebx
    1aef:	4d 8b 7c 1d 00       	mov    0x0(%r13,%rbx,1),%r15
    1af4:	4d 8b 34 1c          	mov    (%r12,%rbx,1),%r14
    1af8:	bd 00 00 00 00       	mov    $0x0,%ebp
    1afd:	f3 41 0f 10 04 2e    	movss  (%r14,%rbp,1),%xmm0
    1b03:	f3 41 0f 10 0c 2f    	movss  (%r15,%rbp,1),%xmm1
    1b09:	e8 12 ff ff ff       	call   1a20 <equal>
    1b0e:	66 83 f8 01          	cmp    $0x1,%ax
    1b12:	74 1f                	je     1b33 <Compare_MMM+0xd7>
    1b14:	48 83 c5 04          	add    $0x4,%rbp
    1b18:	48 81 fd 00 04 00 00 	cmp    $0x400,%rbp
    1b1f:	75 dc                	jne    1afd <Compare_MMM+0xa1>
    1b21:	48 83 c3 08          	add    $0x8,%rbx
    1b25:	48 81 fb 00 08 00 00 	cmp    $0x800,%rbx
    1b2c:	75 c1                	jne    1aef <Compare_MMM+0x93>
    1b2e:	b8 00 00 00 00       	mov    $0x0,%eax
    1b33:	5b                   	pop    %rbx
    1b34:	5d                   	pop    %rbp
    1b35:	41 5c                	pop    %r12
    1b37:	41 5d                	pop    %r13
    1b39:	41 5e                	pop    %r14
    1b3b:	41 5f                	pop    %r15
    1b3d:	c3                   	ret    

0000000000001b3e <main>:
    1b3e:	f3 0f 1e fa          	endbr64 
    1b42:	53                   	push   %rbx
    1b43:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
    1b4a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b51:	00 00 
    1b53:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
    1b5a:	00 
    1b5b:	31 c0                	xor    %eax,%eax
    1b5d:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
    1b64:	00 
    1b65:	48 8d 94 24 08 01 00 	lea    0x108(%rsp),%rdx
    1b6c:	00 
    1b6d:	b9 0f 00 00 00       	mov    $0xf,%ecx
    1b72:	48 89 d7             	mov    %rdx,%rdi
    1b75:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1b78:	48 c7 84 24 00 01 00 	movq   $0x1,0x100(%rsp)
    1b7f:	00 01 00 00 00 
    1b84:	48 89 f2             	mov    %rsi,%rdx
    1b87:	be 80 00 00 00       	mov    $0x80,%esi
    1b8c:	bf 00 00 00 00       	mov    $0x0,%edi
    1b91:	e8 5a f5 ff ff       	call   10f0 <sched_setaffinity@plt>
    1b96:	83 f8 ff             	cmp    $0xffffffff,%eax
    1b99:	0f 84 80 02 00 00    	je     1e1f <main+0x2e1>
    1b9f:	b8 00 00 00 00       	mov    $0x0,%eax
    1ba4:	e8 60 f6 ff ff       	call   1209 <MMM_init>
    1ba9:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1bb0:	54 43 
    1bb2:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1bb9:	00 00 
    1bbb:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1bc2:	00 00 
    1bc4:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1bcb:	00 00 
    1bcd:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1bd4:	00 00 
    1bd6:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1bdd:	00 00 
    1bdf:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1be4:	bb 00 00 00 00       	mov    $0x0,%ebx
    1be9:	89 da                	mov    %ebx,%edx
    1beb:	48 c1 c7 03          	rol    $0x3,%rdi
    1bef:	48 c1 c7 0d          	rol    $0xd,%rdi
    1bf3:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1bf7:	48 c1 c7 33          	rol    $0x33,%rdi
    1bfb:	48 87 db             	xchg   %rbx,%rbx
    1bfe:	48 89 14 24          	mov    %rdx,(%rsp)
    1c02:	48 8b 04 24          	mov    (%rsp),%rax
    1c06:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    1c0d:	54 43 
    1c0f:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1c16:	00 00 
    1c18:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    1c1f:	00 00 00 00 00 
    1c24:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    1c2b:	00 00 00 00 00 
    1c30:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    1c37:	00 00 00 00 00 
    1c3c:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    1c43:	00 00 00 00 00 
    1c48:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1c4d:	89 da                	mov    %ebx,%edx
    1c4f:	48 c1 c7 03          	rol    $0x3,%rdi
    1c53:	48 c1 c7 0d          	rol    $0xd,%rdi
    1c57:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1c5b:	48 c1 c7 33          	rol    $0x33,%rdi
    1c5f:	48 87 db             	xchg   %rbx,%rbx
    1c62:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1c67:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1c6c:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    1c71:	bf 01 00 00 00       	mov    $0x1,%edi
    1c76:	e8 55 f4 ff ff       	call   10d0 <clock_gettime@plt>
    1c7b:	b8 00 00 00 00       	mov    $0x0,%eax
    1c80:	e8 46 fa ff ff       	call   16cb <MMM_default>
    1c85:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1c8a:	bf 01 00 00 00       	mov    $0x1,%edi
    1c8f:	e8 3c f4 ff ff       	call   10d0 <clock_gettime@plt>
    1c94:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    1c9b:	00 02 00 54 43 
    1ca0:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1ca7:	00 00 00 00 00 
    1cac:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1cb3:	00 00 00 00 00 
    1cb8:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    1cbf:	00 00 00 00 00 
    1cc4:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    1ccb:	00 00 00 00 00 
    1cd0:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1cd7:	00 00 00 00 00 
    1cdc:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1ce3:	00 
    1ce4:	89 da                	mov    %ebx,%edx
    1ce6:	48 c1 c7 03          	rol    $0x3,%rdi
    1cea:	48 c1 c7 0d          	rol    $0xd,%rdi
    1cee:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1cf2:	48 c1 c7 33          	rol    $0x33,%rdi
    1cf6:	48 87 db             	xchg   %rbx,%rbx
    1cf9:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1cfe:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1d03:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    1d0a:	00 05 00 54 43 
    1d0f:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1d16:	00 00 00 00 00 
    1d1b:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    1d22:	00 00 00 00 00 
    1d27:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    1d2e:	00 00 00 00 00 
    1d33:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    1d3a:	00 00 00 00 00 
    1d3f:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    1d46:	00 00 00 00 00 
    1d4b:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1d52:	00 
    1d53:	89 da                	mov    %ebx,%edx
    1d55:	48 c1 c7 03          	rol    $0x3,%rdi
    1d59:	48 c1 c7 0d          	rol    $0xd,%rdi
    1d5d:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1d61:	48 c1 c7 33          	rol    $0x33,%rdi
    1d65:	48 87 db             	xchg   %rbx,%rbx
    1d68:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1d6d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1d72:	b8 00 00 00 00       	mov    $0x0,%eax
    1d77:	e8 e0 fc ff ff       	call   1a5c <Compare_MMM>
    1d7c:	66 85 c0             	test   %ax,%ax
    1d7f:	0f 85 ab 00 00 00    	jne    1e30 <main+0x2f2>
    1d85:	48 8d 3d af 02 00 00 	lea    0x2af(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1d8c:	e8 2f f3 ff ff       	call   10c0 <puts@plt>
    1d91:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1d96:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    1d9b:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1da2:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1da7:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1dac:	48 8d 35 aa 02 00 00 	lea    0x2aa(%rip),%rsi        # 205d <_IO_stdin_used+0x5d>
    1db3:	bf 01 00 00 00       	mov    $0x1,%edi
    1db8:	b8 00 00 00 00       	mov    $0x0,%eax
    1dbd:	e8 3e f3 ff ff       	call   1100 <__printf_chk@plt>
    1dc2:	48 8b 3d 6f 22 00 00 	mov    0x226f(%rip),%rdi        # 4038 <C>
    1dc9:	e8 e2 f2 ff ff       	call   10b0 <free@plt>
    1dce:	48 8b 3d 5b 22 00 00 	mov    0x225b(%rip),%rdi        # 4030 <test>
    1dd5:	e8 d6 f2 ff ff       	call   10b0 <free@plt>
    1dda:	48 8b 3d 47 22 00 00 	mov    0x2247(%rip),%rdi        # 4028 <A>
    1de1:	e8 ca f2 ff ff       	call   10b0 <free@plt>
    1de6:	48 8b 3d 33 22 00 00 	mov    0x2233(%rip),%rdi        # 4020 <B>
    1ded:	e8 be f2 ff ff       	call   10b0 <free@plt>
    1df2:	48 8b 3d 1f 22 00 00 	mov    0x221f(%rip),%rdi        # 4018 <Btranspose>
    1df9:	e8 b2 f2 ff ff       	call   10b0 <free@plt>
    1dfe:	48 8b 84 24 88 01 00 	mov    0x188(%rsp),%rax
    1e05:	00 
    1e06:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1e0d:	00 00 
    1e0f:	75 30                	jne    1e41 <main+0x303>
    1e11:	b8 00 00 00 00       	mov    $0x0,%eax
    1e16:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
    1e1d:	5b                   	pop    %rbx
    1e1e:	c3                   	ret    
    1e1f:	48 8d 3d e2 01 00 00 	lea    0x1e2(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1e26:	e8 95 f2 ff ff       	call   10c0 <puts@plt>
    1e2b:	e9 6f fd ff ff       	jmp    1b9f <main+0x61>
    1e30:	48 8d 3d 14 02 00 00 	lea    0x214(%rip),%rdi        # 204b <_IO_stdin_used+0x4b>
    1e37:	e8 84 f2 ff ff       	call   10c0 <puts@plt>
    1e3c:	e9 50 ff ff ff       	jmp    1d91 <main+0x253>
    1e41:	e8 9a f2 ff ff       	call   10e0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001e48 <_fini>:
    1e48:	f3 0f 1e fa          	endbr64 
    1e4c:	48 83 ec 08          	sub    $0x8,%rsp
    1e50:	48 83 c4 08          	add    $0x8,%rsp
    1e54:	c3                   	ret    
