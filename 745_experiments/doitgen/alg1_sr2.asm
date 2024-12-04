
doitgen/alg1_sr2:     file format elf64-x86-64


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
    1104:	55                   	push   %rbp
    1105:	53                   	push   %rbx
    1106:	31 db                	xor    %ebx,%ebx
    1108:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
    110f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1116:	00 00 
    1118:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    111f:	00 
    1120:	31 c0                	xor    %eax,%eax
    1122:	e8 19 04 00 00       	call   1540 <doitgen_init>
    1127:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    112c:	89 da                	mov    %ebx,%edx
    112e:	48 c7 44 24 40 04 00 	movq   $0x43540004,0x40(%rsp)
    1135:	54 43 
    1137:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    113e:	00 00 
    1140:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    1147:	00 00 
    1149:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
    1150:	00 00 
    1152:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    1159:	00 00 
    115b:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    1162:	00 00 
    1164:	48 c1 c7 03          	rol    $0x3,%rdi
    1168:	48 c1 c7 0d          	rol    $0xd,%rdi
    116c:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1170:	48 c1 c7 33          	rol    $0x33,%rdi
    1174:	48 87 db             	xchg   %rbx,%rbx
    1177:	48 89 14 24          	mov    %rdx,(%rsp)
    117b:	89 da                	mov    %ebx,%edx
    117d:	48 8b 04 24          	mov    (%rsp),%rax
    1181:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    1186:	48 c7 44 24 70 02 00 	movq   $0x43540002,0x70(%rsp)
    118d:	54 43 
    118f:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    1196:	00 00 
    1198:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    119f:	00 00 00 00 00 
    11a4:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    11ab:	00 00 00 00 00 
    11b0:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
    11b7:	00 00 00 00 00 
    11bc:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
    11c3:	00 00 00 00 00 
    11c8:	48 c1 c7 03          	rol    $0x3,%rdi
    11cc:	48 c1 c7 0d          	rol    $0xd,%rdi
    11d0:	48 c1 c7 3d          	rol    $0x3d,%rdi
    11d4:	48 c1 c7 33          	rol    $0x33,%rdi
    11d8:	48 87 db             	xchg   %rbx,%rbx
    11db:	bf 01 00 00 00       	mov    $0x1,%edi
    11e0:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    11e5:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    11ea:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    11ef:	e8 cc fe ff ff       	call   10c0 <clock_gettime@plt>
    11f4:	31 c0                	xor    %eax,%eax
    11f6:	e8 c5 06 00 00       	call   18c0 <doitgen>
    11fb:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    1200:	bf 01 00 00 00       	mov    $0x1,%edi
    1205:	e8 b6 fe ff ff       	call   10c0 <clock_gettime@plt>
    120a:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1211:	00 
    1212:	89 da                	mov    %ebx,%edx
    1214:	48 c7 84 24 a0 00 00 	movq   $0x43540002,0xa0(%rsp)
    121b:	00 02 00 54 43 
    1220:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    1227:	00 00 00 00 00 
    122c:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    1233:	00 00 00 00 00 
    1238:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    123f:	00 00 00 00 00 
    1244:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
    124b:	00 00 00 00 00 
    1250:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    1257:	00 00 00 00 00 
    125c:	48 c1 c7 03          	rol    $0x3,%rdi
    1260:	48 c1 c7 0d          	rol    $0xd,%rdi
    1264:	48 c1 c7 3d          	rol    $0x3d,%rdi
    1268:	48 c1 c7 33          	rol    $0x33,%rdi
    126c:	48 87 db             	xchg   %rbx,%rbx
    126f:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1274:	89 da                	mov    %ebx,%edx
    1276:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    127b:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1282:	00 
    1283:	48 c7 84 24 d0 00 00 	movq   $0x43540005,0xd0(%rsp)
    128a:	00 05 00 54 43 
    128f:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    1296:	00 00 00 00 00 
    129b:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
    12a2:	00 00 00 00 00 
    12a7:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
    12ae:	00 00 00 00 00 
    12b3:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
    12ba:	00 00 00 00 00 
    12bf:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
    12c6:	00 00 00 00 00 
    12cb:	48 c1 c7 03          	rol    $0x3,%rdi
    12cf:	48 c1 c7 0d          	rol    $0xd,%rdi
    12d3:	48 c1 c7 3d          	rol    $0x3d,%rdi
    12d7:	48 c1 c7 33          	rol    $0x33,%rdi
    12db:	48 87 db             	xchg   %rbx,%rbx
    12de:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    12e3:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    12e8:	31 c0                	xor    %eax,%eax
    12ea:	e8 61 09 00 00       	call   1c50 <Compare_doitgen>
    12ef:	66 85 c0             	test   %ax,%ax
    12f2:	0f 85 40 01 00 00    	jne    1438 <main+0x338>
    12f8:	48 8d 3d 05 0d 00 00 	lea    0xd05(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12ff:	e8 ac fd ff ff       	call   10b0 <puts@plt>
    1304:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1309:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    130e:	31 c0                	xor    %eax,%eax
    1310:	31 ed                	xor    %ebp,%ebp
    1312:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1319:	bf 01 00 00 00       	mov    $0x1,%edi
    131e:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1323:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1328:	48 8d 35 f5 0c 00 00 	lea    0xcf5(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    132f:	e8 ac fd ff ff       	call   10e0 <__printf_chk@plt>
    1334:	0f 1f 40 00          	nopl   0x0(%rax)
    1338:	31 db                	xor    %ebx,%ebx
    133a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1340:	48 8b 05 e9 2c 00 00 	mov    0x2ce9(%rip),%rax        # 4030 <A>
    1347:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    134b:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    134f:	e8 4c fd ff ff       	call   10a0 <free@plt>
    1354:	48 8b 05 c5 2c 00 00 	mov    0x2cc5(%rip),%rax        # 4020 <out>
    135b:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    135f:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1363:	e8 38 fd ff ff       	call   10a0 <free@plt>
    1368:	48 8b 05 a9 2c 00 00 	mov    0x2ca9(%rip),%rax        # 4018 <test>
    136f:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1373:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1377:	48 83 c3 08          	add    $0x8,%rbx
    137b:	e8 20 fd ff ff       	call   10a0 <free@plt>
    1380:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    1387:	75 b7                	jne    1340 <main+0x240>
    1389:	48 8b 05 a0 2c 00 00 	mov    0x2ca0(%rip),%rax        # 4030 <A>
    1390:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    1394:	e8 07 fd ff ff       	call   10a0 <free@plt>
    1399:	48 8b 05 80 2c 00 00 	mov    0x2c80(%rip),%rax        # 4020 <out>
    13a0:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    13a4:	e8 f7 fc ff ff       	call   10a0 <free@plt>
    13a9:	48 8b 05 68 2c 00 00 	mov    0x2c68(%rip),%rax        # 4018 <test>
    13b0:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    13b4:	48 83 c5 08          	add    $0x8,%rbp
    13b8:	e8 e3 fc ff ff       	call   10a0 <free@plt>
    13bd:	48 81 fd 00 02 00 00 	cmp    $0x200,%rbp
    13c4:	0f 85 6e ff ff ff    	jne    1338 <main+0x238>
    13ca:	48 8b 3d 5f 2c 00 00 	mov    0x2c5f(%rip),%rdi        # 4030 <A>
    13d1:	31 db                	xor    %ebx,%ebx
    13d3:	e8 c8 fc ff ff       	call   10a0 <free@plt>
    13d8:	48 8b 3d 41 2c 00 00 	mov    0x2c41(%rip),%rdi        # 4020 <out>
    13df:	e8 bc fc ff ff       	call   10a0 <free@plt>
    13e4:	48 8b 3d 2d 2c 00 00 	mov    0x2c2d(%rip),%rdi        # 4018 <test>
    13eb:	e8 b0 fc ff ff       	call   10a0 <free@plt>
    13f0:	48 8b 05 31 2c 00 00 	mov    0x2c31(%rip),%rax        # 4028 <C>
    13f7:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    13fb:	48 83 c3 08          	add    $0x8,%rbx
    13ff:	e8 9c fc ff ff       	call   10a0 <free@plt>
    1404:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    140b:	75 e3                	jne    13f0 <main+0x2f0>
    140d:	48 8b 3d 14 2c 00 00 	mov    0x2c14(%rip),%rdi        # 4028 <C>
    1414:	e8 87 fc ff ff       	call   10a0 <free@plt>
    1419:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1420:	00 
    1421:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1428:	00 00 
    142a:	75 1d                	jne    1449 <main+0x349>
    142c:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    1433:	31 c0                	xor    %eax,%eax
    1435:	5b                   	pop    %rbx
    1436:	5d                   	pop    %rbp
    1437:	c3                   	ret    
    1438:	48 8d 3d d4 0b 00 00 	lea    0xbd4(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    143f:	e8 6c fc ff ff       	call   10b0 <puts@plt>
    1444:	e9 bb fe ff ff       	jmp    1304 <main+0x204>
    1449:	e8 82 fc ff ff       	call   10d0 <__stack_chk_fail@plt>
    144e:	66 90                	xchg   %ax,%ax

0000000000001450 <_start>:
    1450:	f3 0f 1e fa          	endbr64 
    1454:	31 ed                	xor    %ebp,%ebp
    1456:	49 89 d1             	mov    %rdx,%r9
    1459:	5e                   	pop    %rsi
    145a:	48 89 e2             	mov    %rsp,%rdx
    145d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1461:	50                   	push   %rax
    1462:	54                   	push   %rsp
    1463:	45 31 c0             	xor    %r8d,%r8d
    1466:	31 c9                	xor    %ecx,%ecx
    1468:	48 8d 3d 91 fc ff ff 	lea    -0x36f(%rip),%rdi        # 1100 <main>
    146f:	ff 15 63 2b 00 00    	call   *0x2b63(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1475:	f4                   	hlt    
    1476:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    147d:	00 00 00 

0000000000001480 <deregister_tm_clones>:
    1480:	48 8d 3d 89 2b 00 00 	lea    0x2b89(%rip),%rdi        # 4010 <__TMC_END__>
    1487:	48 8d 05 82 2b 00 00 	lea    0x2b82(%rip),%rax        # 4010 <__TMC_END__>
    148e:	48 39 f8             	cmp    %rdi,%rax
    1491:	74 15                	je     14a8 <deregister_tm_clones+0x28>
    1493:	48 8b 05 46 2b 00 00 	mov    0x2b46(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    149a:	48 85 c0             	test   %rax,%rax
    149d:	74 09                	je     14a8 <deregister_tm_clones+0x28>
    149f:	ff e0                	jmp    *%rax
    14a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    14a8:	c3                   	ret    
    14a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014b0 <register_tm_clones>:
    14b0:	48 8d 3d 59 2b 00 00 	lea    0x2b59(%rip),%rdi        # 4010 <__TMC_END__>
    14b7:	48 8d 35 52 2b 00 00 	lea    0x2b52(%rip),%rsi        # 4010 <__TMC_END__>
    14be:	48 29 fe             	sub    %rdi,%rsi
    14c1:	48 89 f0             	mov    %rsi,%rax
    14c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    14c8:	48 c1 f8 03          	sar    $0x3,%rax
    14cc:	48 01 c6             	add    %rax,%rsi
    14cf:	48 d1 fe             	sar    %rsi
    14d2:	74 14                	je     14e8 <register_tm_clones+0x38>
    14d4:	48 8b 05 15 2b 00 00 	mov    0x2b15(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    14db:	48 85 c0             	test   %rax,%rax
    14de:	74 08                	je     14e8 <register_tm_clones+0x38>
    14e0:	ff e0                	jmp    *%rax
    14e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14e8:	c3                   	ret    
    14e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014f0 <__do_global_dtors_aux>:
    14f0:	f3 0f 1e fa          	endbr64 
    14f4:	80 3d 15 2b 00 00 00 	cmpb   $0x0,0x2b15(%rip)        # 4010 <__TMC_END__>
    14fb:	75 2b                	jne    1528 <__do_global_dtors_aux+0x38>
    14fd:	55                   	push   %rbp
    14fe:	48 83 3d f2 2a 00 00 	cmpq   $0x0,0x2af2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1505:	00 
    1506:	48 89 e5             	mov    %rsp,%rbp
    1509:	74 0c                	je     1517 <__do_global_dtors_aux+0x27>
    150b:	48 8b 3d f6 2a 00 00 	mov    0x2af6(%rip),%rdi        # 4008 <__dso_handle>
    1512:	e8 79 fb ff ff       	call   1090 <__cxa_finalize@plt>
    1517:	e8 64 ff ff ff       	call   1480 <deregister_tm_clones>
    151c:	c6 05 ed 2a 00 00 01 	movb   $0x1,0x2aed(%rip)        # 4010 <__TMC_END__>
    1523:	5d                   	pop    %rbp
    1524:	c3                   	ret    
    1525:	0f 1f 00             	nopl   (%rax)
    1528:	c3                   	ret    
    1529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001530 <frame_dummy>:
    1530:	f3 0f 1e fa          	endbr64 
    1534:	e9 77 ff ff ff       	jmp    14b0 <register_tm_clones>
    1539:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001540 <doitgen_init>:
    1540:	f3 0f 1e fa          	endbr64 
    1544:	41 57                	push   %r15
    1546:	ba 00 02 00 00       	mov    $0x200,%edx
    154b:	be 40 00 00 00       	mov    $0x40,%esi
    1550:	41 56                	push   %r14
    1552:	41 55                	push   %r13
    1554:	41 54                	push   %r12
    1556:	55                   	push   %rbp
    1557:	53                   	push   %rbx
    1558:	31 db                	xor    %ebx,%ebx
    155a:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
    1561:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1568:	00 00 
    156a:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    1571:	00 
    1572:	31 c0                	xor    %eax,%eax
    1574:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
    1579:	4c 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%r15
    1580:	00 
    1581:	e8 6a fb ff ff       	call   10f0 <posix_memalign@plt>
    1586:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    158b:	ba 00 02 00 00       	mov    $0x200,%edx
    1590:	be 40 00 00 00       	mov    $0x40,%esi
    1595:	85 c0                	test   %eax,%eax
    1597:	48 89 d8             	mov    %rbx,%rax
    159a:	48 0f 44 44 24 70    	cmove  0x70(%rsp),%rax
    15a0:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    15a5:	48 89 05 84 2a 00 00 	mov    %rax,0x2a84(%rip)        # 4030 <A>
    15ac:	e8 3f fb ff ff       	call   10f0 <posix_memalign@plt>
    15b1:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
    15b6:	ba 00 02 00 00       	mov    $0x200,%edx
    15bb:	be 40 00 00 00       	mov    $0x40,%esi
    15c0:	85 c0                	test   %eax,%eax
    15c2:	48 89 d8             	mov    %rbx,%rax
    15c5:	48 0f 44 44 24 68    	cmove  0x68(%rsp),%rax
    15cb:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    15d0:	48 89 05 49 2a 00 00 	mov    %rax,0x2a49(%rip)        # 4020 <out>
    15d7:	e8 14 fb ff ff       	call   10f0 <posix_memalign@plt>
    15dc:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    15e3:	00 00 
    15e5:	85 c0                	test   %eax,%eax
    15e7:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    15ee:	00 
    15ef:	48 0f 44 5c 24 60    	cmove  0x60(%rsp),%rbx
    15f5:	31 ed                	xor    %ebp,%ebp
    15f7:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    15fc:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    1603:	00 
    1604:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1609:	48 8d 44 24 78       	lea    0x78(%rsp),%rax
    160e:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1613:	48 8d 84 24 98 00 00 	lea    0x98(%rsp),%rax
    161a:	00 
    161b:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    1620:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
    1627:	00 
    1628:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
    162d:	48 89 1d e4 29 00 00 	mov    %rbx,0x29e4(%rip)        # 4018 <test>
    1634:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1639:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
    163e:	ba 00 02 00 00       	mov    $0x200,%edx
    1643:	be 40 00 00 00       	mov    $0x40,%esi
    1648:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    164d:	e8 9e fa ff ff       	call   10f0 <posix_memalign@plt>
    1652:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1657:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    165c:	41 89 dc             	mov    %ebx,%r12d
    165f:	85 c0                	test   %eax,%eax
    1661:	48 89 e8             	mov    %rbp,%rax
    1664:	be 40 00 00 00       	mov    $0x40,%esi
    1669:	45 89 e5             	mov    %r12d,%r13d
    166c:	48 0f 44 84 24 88 00 	cmove  0x88(%rsp),%rax
    1673:	00 00 
    1675:	48 89 04 da          	mov    %rax,(%rdx,%rbx,8)
    1679:	ba 00 02 00 00       	mov    $0x200,%edx
    167e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1683:	e8 68 fa ff ff       	call   10f0 <posix_memalign@plt>
    1688:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    168d:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
    1692:	be 40 00 00 00       	mov    $0x40,%esi
    1697:	85 c0                	test   %eax,%eax
    1699:	48 89 e8             	mov    %rbp,%rax
    169c:	48 0f 44 84 24 80 00 	cmove  0x80(%rsp),%rax
    16a3:	00 00 
    16a5:	48 89 04 da          	mov    %rax,(%rdx,%rbx,8)
    16a9:	ba 00 02 00 00       	mov    $0x200,%edx
    16ae:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    16b3:	e8 38 fa ff ff       	call   10f0 <posix_memalign@plt>
    16b8:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    16bd:	85 c0                	test   %eax,%eax
    16bf:	48 89 e8             	mov    %rbp,%rax
    16c2:	48 0f 44 44 24 78    	cmove  0x78(%rsp),%rax
    16c8:	48 89 04 24          	mov    %rax,(%rsp)
    16cc:	48 89 04 da          	mov    %rax,(%rdx,%rbx,8)
    16d0:	31 db                	xor    %ebx,%ebx
    16d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    16d8:	ba 00 01 00 00       	mov    $0x100,%edx
    16dd:	be 40 00 00 00       	mov    $0x40,%esi
    16e2:	4c 89 ff             	mov    %r15,%rdi
    16e5:	49 89 ee             	mov    %rbp,%r14
    16e8:	e8 03 fa ff ff       	call   10f0 <posix_memalign@plt>
    16ed:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    16f2:	ba 00 01 00 00       	mov    $0x100,%edx
    16f7:	49 89 ec             	mov    %rbp,%r12
    16fa:	85 c0                	test   %eax,%eax
    16fc:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1701:	be 40 00 00 00       	mov    $0x40,%esi
    1706:	4c 0f 44 b4 24 a0 00 	cmove  0xa0(%rsp),%r14
    170d:	00 00 
    170f:	4c 89 34 18          	mov    %r14,(%rax,%rbx,1)
    1713:	e8 d8 f9 ff ff       	call   10f0 <posix_memalign@plt>
    1718:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    171d:	ba 00 01 00 00       	mov    $0x100,%edx
    1722:	be 40 00 00 00       	mov    $0x40,%esi
    1727:	85 c0                	test   %eax,%eax
    1729:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    172e:	4c 0f 44 a4 24 98 00 	cmove  0x98(%rsp),%r12
    1735:	00 00 
    1737:	4c 89 24 18          	mov    %r12,(%rax,%rbx,1)
    173b:	e8 b0 f9 ff ff       	call   10f0 <posix_memalign@plt>
    1740:	48 89 ea             	mov    %rbp,%rdx
    1743:	f3 0f 10 0d f5 08 00 	movss  0x8f5(%rip),%xmm1        # 2040 <_IO_stdin_used+0x40>
    174a:	00 
    174b:	85 c0                	test   %eax,%eax
    174d:	48 8b 04 24          	mov    (%rsp),%rax
    1751:	48 0f 44 94 24 90 00 	cmove  0x90(%rsp),%rdx
    1758:	00 00 
    175a:	31 ff                	xor    %edi,%edi
    175c:	48 89 14 18          	mov    %rdx,(%rax,%rbx,1)
    1760:	41 8d 4c 3d 00       	lea    0x0(%r13,%rdi,1),%ecx
    1765:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1769:	48 89 ce             	mov    %rcx,%rsi
    176c:	48 69 c9 25 49 92 24 	imul   $0x24924925,%rcx,%rcx
    1773:	89 f0                	mov    %esi,%eax
    1775:	48 c1 e9 20          	shr    $0x20,%rcx
    1779:	29 c8                	sub    %ecx,%eax
    177b:	d1 e8                	shr    %eax
    177d:	01 c8                	add    %ecx,%eax
    177f:	c1 e8 02             	shr    $0x2,%eax
    1782:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
    1789:	29 c1                	sub    %eax,%ecx
    178b:	29 ce                	sub    %ecx,%esi
    178d:	f3 0f 2a c6          	cvtsi2ss %esi,%xmm0
    1791:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1795:	f3 41 0f 11 04 be    	movss  %xmm0,(%r14,%rdi,4)
    179b:	48 83 c7 01          	add    $0x1,%rdi
    179f:	48 83 ff 40          	cmp    $0x40,%rdi
    17a3:	75 bb                	jne    1760 <doitgen_init+0x220>
    17a5:	41 ba 20 00 00 00    	mov    $0x20,%r10d
    17ab:	48 89 e8             	mov    %rbp,%rax
    17ae:	4c 89 e7             	mov    %r12,%rdi
    17b1:	48 83 c3 08          	add    $0x8,%rbx
    17b5:	4c 89 d1             	mov    %r10,%rcx
    17b8:	41 83 c5 01          	add    $0x1,%r13d
    17bc:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    17bf:	48 89 d7             	mov    %rdx,%rdi
    17c2:	49 89 ca             	mov    %rcx,%r10
    17c5:	b9 20 00 00 00       	mov    $0x20,%ecx
    17ca:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    17cd:	48 81 fb 00 02 00 00 	cmp    $0x200,%rbx
    17d4:	0f 85 fe fe ff ff    	jne    16d8 <doitgen_init+0x198>
    17da:	48 83 44 24 28 01    	addq   $0x1,0x28(%rsp)
    17e0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    17e5:	48 83 f8 40          	cmp    $0x40,%rax
    17e9:	0f 85 4a fe ff ff    	jne    1639 <doitgen_init+0xf9>
    17ef:	ba 00 02 00 00       	mov    $0x200,%edx
    17f4:	48 8d bc 24 a8 00 00 	lea    0xa8(%rsp),%rdi
    17fb:	00 
    17fc:	4c 89 14 24          	mov    %r10,(%rsp)
    1800:	be 40 00 00 00       	mov    $0x40,%esi
    1805:	e8 e6 f8 ff ff       	call   10f0 <posix_memalign@plt>
    180a:	4c 8b 14 24          	mov    (%rsp),%r10
    180e:	bd cd cc cc cc       	mov    $0xcccccccd,%ebp
    1813:	4c 8d ac 24 b0 00 00 	lea    0xb0(%rsp),%r13
    181a:	00 
    181b:	85 c0                	test   %eax,%eax
    181d:	4c 0f 44 94 24 a8 00 	cmove  0xa8(%rsp),%r10
    1824:	00 00 
    1826:	31 db                	xor    %ebx,%ebx
    1828:	4c 89 15 f9 27 00 00 	mov    %r10,0x27f9(%rip)        # 4028 <C>
    182f:	4d 89 d4             	mov    %r10,%r12
    1832:	be 40 00 00 00       	mov    $0x40,%esi
    1837:	ba 00 01 00 00       	mov    $0x100,%edx
    183c:	4c 89 ef             	mov    %r13,%rdi
    183f:	e8 ac f8 ff ff       	call   10f0 <posix_memalign@plt>
    1844:	31 f6                	xor    %esi,%esi
    1846:	85 c0                	test   %eax,%eax
    1848:	48 0f 44 b4 24 b0 00 	cmove  0xb0(%rsp),%rsi
    184f:	00 00 
    1851:	31 c9                	xor    %ecx,%ecx
    1853:	49 89 34 dc          	mov    %rsi,(%r12,%rbx,8)
    1857:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    185e:	00 00 
    1860:	8d 14 19             	lea    (%rcx,%rbx,1),%edx
    1863:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1867:	48 89 d0             	mov    %rdx,%rax
    186a:	48 0f af d5          	imul   %rbp,%rdx
    186e:	48 c1 ea 22          	shr    $0x22,%rdx
    1872:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
    1875:	29 d0                	sub    %edx,%eax
    1877:	29 c8                	sub    %ecx,%eax
    1879:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    187d:	f3 0f 11 04 8e       	movss  %xmm0,(%rsi,%rcx,4)
    1882:	48 83 c1 01          	add    $0x1,%rcx
    1886:	48 83 f9 40          	cmp    $0x40,%rcx
    188a:	75 d4                	jne    1860 <doitgen_init+0x320>
    188c:	48 83 c3 01          	add    $0x1,%rbx
    1890:	48 83 fb 40          	cmp    $0x40,%rbx
    1894:	75 9c                	jne    1832 <doitgen_init+0x2f2>
    1896:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    189d:	00 
    189e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    18a5:	00 00 
    18a7:	75 12                	jne    18bb <doitgen_init+0x37b>
    18a9:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
    18b0:	5b                   	pop    %rbx
    18b1:	5d                   	pop    %rbp
    18b2:	41 5c                	pop    %r12
    18b4:	41 5d                	pop    %r13
    18b6:	41 5e                	pop    %r14
    18b8:	41 5f                	pop    %r15
    18ba:	c3                   	ret    
    18bb:	e8 10 f8 ff ff       	call   10d0 <__stack_chk_fail@plt>

00000000000018c0 <doitgen>:
    18c0:	f3 0f 1e fa          	endbr64 
    18c4:	41 57                	push   %r15
    18c6:	41 56                	push   %r14
    18c8:	41 55                	push   %r13
    18ca:	41 54                	push   %r12
    18cc:	55                   	push   %rbp
    18cd:	53                   	push   %rbx
    18ce:	48 83 ec 08          	sub    $0x8,%rsp
    18d2:	48 8b 05 47 27 00 00 	mov    0x2747(%rip),%rax        # 4020 <out>
    18d9:	48 8b 1d 50 27 00 00 	mov    0x2750(%rip),%rbx        # 4030 <A>
    18e0:	48 8b 35 41 27 00 00 	mov    0x2741(%rip),%rsi        # 4028 <C>
    18e7:	48 89 44 24 90       	mov    %rax,-0x70(%rsp)
    18ec:	48 05 00 02 00 00    	add    $0x200,%rax
    18f2:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    18f7:	48 89 04 24          	mov    %rax,(%rsp)
    18fb:	48 8b 44 24 90       	mov    -0x70(%rsp),%rax
    1900:	45 31 ff             	xor    %r15d,%r15d
    1903:	48 8b 18             	mov    (%rax),%rbx
    1906:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    190b:	48 8b 58 08          	mov    0x8(%rax),%rbx
    190f:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    1914:	48 8b 58 18          	mov    0x18(%rax),%rbx
    1918:	48 8b 40 10          	mov    0x10(%rax),%rax
    191c:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1921:	48 89 44 24 d8       	mov    %rax,-0x28(%rsp)
    1926:	48 8b 44 24 b8       	mov    -0x48(%rsp),%rax
    192b:	48 8b 58 08          	mov    0x8(%rax),%rbx
    192f:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    1934:	48 8b 18             	mov    (%rax),%rbx
    1937:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
    193c:	48 8b 58 18          	mov    0x18(%rax),%rbx
    1940:	48 8b 40 10          	mov    0x10(%rax),%rax
    1944:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
    1949:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    194e:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
    1953:	31 c9                	xor    %ecx,%ecx
    1955:	4e 8b 34 38          	mov    (%rax,%r15,1),%r14
    1959:	48 8b 44 24 c8       	mov    -0x38(%rsp),%rax
    195e:	4e 8b 2c 38          	mov    (%rax,%r15,1),%r13
    1962:	48 8b 44 24 d0       	mov    -0x30(%rsp),%rax
    1967:	4c 89 74 24 98       	mov    %r14,-0x68(%rsp)
    196c:	4e 8b 24 38          	mov    (%rax,%r15,1),%r12
    1970:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1975:	4c 89 6c 24 a0       	mov    %r13,-0x60(%rsp)
    197a:	4a 8b 2c 38          	mov    (%rax,%r15,1),%rbp
    197e:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    1983:	4c 89 64 24 a8       	mov    %r12,-0x58(%rsp)
    1988:	4e 8b 14 38          	mov    (%rax,%r15,1),%r10
    198c:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    1991:	48 89 6c 24 b0       	mov    %rbp,-0x50(%rsp)
    1996:	4e 8b 0c 38          	mov    (%rax,%r15,1),%r9
    199a:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    199f:	4e 8b 04 38          	mov    (%rax,%r15,1),%r8
    19a3:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    19a8:	4a 8b 3c 38          	mov    (%rax,%r15,1),%rdi
    19ac:	0f 1f 40 00          	nopl   0x0(%rax)
    19b0:	f3 41 0f 10 4e 04    	movss  0x4(%r14),%xmm1
    19b6:	f3 45 0f 10 76 08    	movss  0x8(%r14),%xmm14
    19bc:	48 8d 59 08          	lea    0x8(%rcx),%rbx
    19c0:	31 c0                	xor    %eax,%eax
    19c2:	f3 45 0f 10 6d 04    	movss  0x4(%r13),%xmm13
    19c8:	f3 45 0f 10 24 24    	movss  (%r12),%xmm12
    19ce:	4c 8d 59 04          	lea    0x4(%rcx),%r11
    19d2:	f3 45 0f 10 5d 00    	movss  0x0(%r13),%xmm11
    19d8:	f3 44 0f 10 55 08    	movss  0x8(%rbp),%xmm10
    19de:	f3 0f 11 4c 24 8c    	movss  %xmm1,-0x74(%rsp)
    19e4:	f3 45 0f 10 4c 24 04 	movss  0x4(%r12),%xmm9
    19eb:	f3 45 0f 10 45 08    	movss  0x8(%r13),%xmm8
    19f1:	f3 41 0f 10 3e       	movss  (%r14),%xmm7
    19f6:	f3 0f 10 75 00       	movss  0x0(%rbp),%xmm6
    19fb:	f3 0f 10 6d 04       	movss  0x4(%rbp),%xmm5
    1a00:	f3 41 0f 10 64 24 08 	movss  0x8(%r12),%xmm4
    1a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1a0e:	00 00 
    1a10:	48 8b 14 46          	mov    (%rsi,%rax,2),%rdx
    1a14:	f3 41 0f 10 1c 02    	movss  (%r10,%rax,1),%xmm3
    1a1a:	f3 0f 10 14 0a       	movss  (%rdx,%rcx,1),%xmm2
    1a1f:	f3 42 0f 10 0c 1a    	movss  (%rdx,%r11,1),%xmm1
    1a25:	f3 0f 10 04 1a       	movss  (%rdx,%rbx,1),%xmm0
    1a2a:	44 0f 28 fa          	movaps %xmm2,%xmm15
    1a2e:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    1a33:	f3 45 0f 58 df       	addss  %xmm15,%xmm11
    1a38:	44 0f 28 f9          	movaps %xmm1,%xmm15
    1a3c:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    1a41:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    1a45:	f3 45 0f 58 ef       	addss  %xmm15,%xmm13
    1a4a:	44 0f 28 fa          	movaps %xmm2,%xmm15
    1a4e:	f3 44 0f 58 c3       	addss  %xmm3,%xmm8
    1a53:	f3 41 0f 10 1c 01    	movss  (%r9,%rax,1),%xmm3
    1a59:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    1a5e:	f3 41 0f 58 ff       	addss  %xmm15,%xmm7
    1a63:	44 0f 28 f9          	movaps %xmm1,%xmm15
    1a67:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    1a6c:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    1a70:	f3 44 0f 58 7c 24 8c 	addss  -0x74(%rsp),%xmm15
    1a77:	f3 44 0f 11 7c 24 8c 	movss  %xmm15,-0x74(%rsp)
    1a7e:	44 0f 28 fa          	movaps %xmm2,%xmm15
    1a82:	f3 44 0f 58 f3       	addss  %xmm3,%xmm14
    1a87:	f3 41 0f 10 1c 00    	movss  (%r8,%rax,1),%xmm3
    1a8d:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    1a92:	f3 45 0f 58 e7       	addss  %xmm15,%xmm12
    1a97:	44 0f 28 f9          	movaps %xmm1,%xmm15
    1a9b:	f3 44 0f 59 fb       	mulss  %xmm3,%xmm15
    1aa0:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    1aa4:	f3 45 0f 58 cf       	addss  %xmm15,%xmm9
    1aa9:	f3 0f 58 e3          	addss  %xmm3,%xmm4
    1aad:	f3 0f 10 1c 07       	movss  (%rdi,%rax,1),%xmm3
    1ab2:	48 83 c0 04          	add    $0x4,%rax
    1ab6:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    1aba:	f3 0f 59 cb          	mulss  %xmm3,%xmm1
    1abe:	f3 0f 59 c3          	mulss  %xmm3,%xmm0
    1ac2:	f3 0f 58 f2          	addss  %xmm2,%xmm6
    1ac6:	f3 0f 58 e9          	addss  %xmm1,%xmm5
    1aca:	f3 44 0f 58 d0       	addss  %xmm0,%xmm10
    1acf:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1ad5:	0f 85 35 ff ff ff    	jne    1a10 <doitgen+0x150>
    1adb:	48 83 c1 0c          	add    $0xc,%rcx
    1adf:	49 83 c6 0c          	add    $0xc,%r14
    1ae3:	49 83 c5 0c          	add    $0xc,%r13
    1ae7:	49 83 c4 0c          	add    $0xc,%r12
    1aeb:	f3 45 0f 11 76 fc    	movss  %xmm14,-0x4(%r14)
    1af1:	48 83 c5 0c          	add    $0xc,%rbp
    1af5:	f3 45 0f 11 6d f8    	movss  %xmm13,-0x8(%r13)
    1afb:	f3 45 0f 11 64 24 f4 	movss  %xmm12,-0xc(%r12)
    1b02:	f3 45 0f 11 5d f4    	movss  %xmm11,-0xc(%r13)
    1b08:	f3 44 0f 11 55 fc    	movss  %xmm10,-0x4(%rbp)
    1b0e:	f3 45 0f 11 4c 24 f8 	movss  %xmm9,-0x8(%r12)
    1b15:	f3 45 0f 11 45 fc    	movss  %xmm8,-0x4(%r13)
    1b1b:	f3 41 0f 11 7e f4    	movss  %xmm7,-0xc(%r14)
    1b21:	f3 0f 11 75 f4       	movss  %xmm6,-0xc(%rbp)
    1b26:	f3 0f 10 74 24 8c    	movss  -0x74(%rsp),%xmm6
    1b2c:	f3 0f 11 6d f8       	movss  %xmm5,-0x8(%rbp)
    1b31:	f3 41 0f 11 64 24 fc 	movss  %xmm4,-0x4(%r12)
    1b38:	f3 41 0f 11 76 f8    	movss  %xmm6,-0x8(%r14)
    1b3e:	48 81 f9 fc 00 00 00 	cmp    $0xfc,%rcx
    1b45:	0f 85 65 fe ff ff    	jne    19b0 <doitgen+0xf0>
    1b4b:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
    1b50:	f3 0f 10 a0 fc 00 00 	movss  0xfc(%rax),%xmm4
    1b57:	00 
    1b58:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
    1b5d:	f3 0f 10 98 fc 00 00 	movss  0xfc(%rax),%xmm3
    1b64:	00 
    1b65:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
    1b6a:	f3 0f 10 90 fc 00 00 	movss  0xfc(%rax),%xmm2
    1b71:	00 
    1b72:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    1b77:	f3 0f 10 88 fc 00 00 	movss  0xfc(%rax),%xmm1
    1b7e:	00 
    1b7f:	31 c0                	xor    %eax,%eax
    1b81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b88:	48 8b 14 46          	mov    (%rsi,%rax,2),%rdx
    1b8c:	f3 41 0f 10 2c 02    	movss  (%r10,%rax,1),%xmm5
    1b92:	f3 0f 10 82 fc 00 00 	movss  0xfc(%rdx),%xmm0
    1b99:	00 
    1b9a:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b9e:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1ba2:	f3 41 0f 10 2c 01    	movss  (%r9,%rax,1),%xmm5
    1ba8:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1bac:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1bb0:	f3 41 0f 10 2c 00    	movss  (%r8,%rax,1),%xmm5
    1bb6:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1bba:	f3 0f 59 04 07       	mulss  (%rdi,%rax,1),%xmm0
    1bbf:	48 83 c0 04          	add    $0x4,%rax
    1bc3:	f3 0f 58 e5          	addss  %xmm5,%xmm4
    1bc7:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    1bcb:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    1bd1:	75 b5                	jne    1b88 <doitgen+0x2c8>
    1bd3:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
    1bd8:	49 83 c7 08          	add    $0x8,%r15
    1bdc:	f3 0f 11 a0 fc 00 00 	movss  %xmm4,0xfc(%rax)
    1be3:	00 
    1be4:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
    1be9:	f3 0f 11 98 fc 00 00 	movss  %xmm3,0xfc(%rax)
    1bf0:	00 
    1bf1:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
    1bf6:	f3 0f 11 90 fc 00 00 	movss  %xmm2,0xfc(%rax)
    1bfd:	00 
    1bfe:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
    1c03:	f3 0f 11 88 fc 00 00 	movss  %xmm1,0xfc(%rax)
    1c0a:	00 
    1c0b:	49 81 ff 00 02 00 00 	cmp    $0x200,%r15
    1c12:	0f 85 36 fd ff ff    	jne    194e <doitgen+0x8e>
    1c18:	48 83 44 24 90 20    	addq   $0x20,-0x70(%rsp)
    1c1e:	48 8b 44 24 90       	mov    -0x70(%rsp),%rax
    1c23:	48 83 44 24 b8 20    	addq   $0x20,-0x48(%rsp)
    1c29:	48 3b 04 24          	cmp    (%rsp),%rax
    1c2d:	0f 85 c8 fc ff ff    	jne    18fb <doitgen+0x3b>
    1c33:	48 83 c4 08          	add    $0x8,%rsp
    1c37:	5b                   	pop    %rbx
    1c38:	5d                   	pop    %rbp
    1c39:	41 5c                	pop    %r12
    1c3b:	41 5d                	pop    %r13
    1c3d:	41 5e                	pop    %r14
    1c3f:	41 5f                	pop    %r15
    1c41:	c3                   	ret    
    1c42:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1c49:	00 00 00 00 
    1c4d:	0f 1f 00             	nopl   (%rax)

0000000000001c50 <Compare_doitgen>:
    1c50:	f3 0f 1e fa          	endbr64 
    1c54:	41 54                	push   %r12
    1c56:	4c 8b 15 bb 23 00 00 	mov    0x23bb(%rip),%r10        # 4018 <test>
    1c5d:	45 31 c9             	xor    %r9d,%r9d
    1c60:	55                   	push   %rbp
    1c61:	48 8b 3d c0 23 00 00 	mov    0x23c0(%rip),%rdi        # 4028 <C>
    1c68:	53                   	push   %rbx
    1c69:	48 8b 1d c0 23 00 00 	mov    0x23c0(%rip),%rbx        # 4030 <A>
    1c70:	4f 8b 24 0a          	mov    (%r10,%r9,1),%r12
    1c74:	4a 8b 2c 0b          	mov    (%rbx,%r9,1),%rbp
    1c78:	45 31 db             	xor    %r11d,%r11d
    1c7b:	4e 8b 44 1d 00       	mov    0x0(%rbp,%r11,1),%r8
    1c80:	4b 8b 34 1c          	mov    (%r12,%r11,1),%rsi
    1c84:	31 c9                	xor    %ecx,%ecx
    1c86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c8d:	00 00 00 
    1c90:	f3 0f 10 0e          	movss  (%rsi),%xmm1
    1c94:	31 c0                	xor    %eax,%eax
    1c96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c9d:	00 00 00 
    1ca0:	48 8b 14 c7          	mov    (%rdi,%rax,8),%rdx
    1ca4:	f3 0f 10 04 0a       	movss  (%rdx,%rcx,1),%xmm0
    1ca9:	f3 41 0f 59 04 80    	mulss  (%r8,%rax,4),%xmm0
    1caf:	48 83 c0 01          	add    $0x1,%rax
    1cb3:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1cb7:	f3 0f 11 0e          	movss  %xmm1,(%rsi)
    1cbb:	48 83 f8 40          	cmp    $0x40,%rax
    1cbf:	75 df                	jne    1ca0 <Compare_doitgen+0x50>
    1cc1:	48 83 c1 04          	add    $0x4,%rcx
    1cc5:	48 83 c6 04          	add    $0x4,%rsi
    1cc9:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
    1cd0:	75 be                	jne    1c90 <Compare_doitgen+0x40>
    1cd2:	49 83 c3 08          	add    $0x8,%r11
    1cd6:	49 81 fb 00 02 00 00 	cmp    $0x200,%r11
    1cdd:	75 9c                	jne    1c7b <Compare_doitgen+0x2b>
    1cdf:	49 83 c1 08          	add    $0x8,%r9
    1ce3:	49 81 f9 00 02 00 00 	cmp    $0x200,%r9
    1cea:	75 84                	jne    1c70 <Compare_doitgen+0x20>
    1cec:	48 8b 35 2d 23 00 00 	mov    0x232d(%rip),%rsi        # 4020 <out>
    1cf3:	31 c0                	xor    %eax,%eax
    1cf5:	f3 0f 10 15 53 03 00 	movss  0x353(%rip),%xmm2        # 2050 <_IO_stdin_used+0x50>
    1cfc:	00 
    1cfd:	4c 8b 04 06          	mov    (%rsi,%rax,1),%r8
    1d01:	49 8b 3c 02          	mov    (%r10,%rax,1),%rdi
    1d05:	31 d2                	xor    %edx,%edx
    1d07:	4d 8b 1c 10          	mov    (%r8,%rdx,1),%r11
    1d0b:	4c 8b 0c 17          	mov    (%rdi,%rdx,1),%r9
    1d0f:	31 c9                	xor    %ecx,%ecx
    1d11:	eb 0d                	jmp    1d20 <Compare_doitgen+0xd0>
    1d13:	48 83 c1 04          	add    $0x4,%rcx
    1d17:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
    1d1e:	74 35                	je     1d55 <Compare_doitgen+0x105>
    1d20:	f3 41 0f 10 0c 0b    	movss  (%r11,%rcx,1),%xmm1
    1d26:	0f 28 c1             	movaps %xmm1,%xmm0
    1d29:	f3 41 0f 5c 04 09    	subss  (%r9,%rcx,1),%xmm0
    1d2f:	0f 54 ca             	andps  %xmm2,%xmm1
    1d32:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1d36:	0f 54 c2             	andps  %xmm2,%xmm0
    1d39:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1d3d:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1d41:	66 0f 2f 05 17 03 00 	comisd 0x317(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1d48:	00 
    1d49:	72 c8                	jb     1d13 <Compare_doitgen+0xc3>
    1d4b:	b8 01 00 00 00       	mov    $0x1,%eax
    1d50:	5b                   	pop    %rbx
    1d51:	5d                   	pop    %rbp
    1d52:	41 5c                	pop    %r12
    1d54:	c3                   	ret    
    1d55:	48 83 c2 08          	add    $0x8,%rdx
    1d59:	48 81 fa 00 02 00 00 	cmp    $0x200,%rdx
    1d60:	75 a5                	jne    1d07 <Compare_doitgen+0xb7>
    1d62:	48 83 c0 08          	add    $0x8,%rax
    1d66:	48 3d 00 02 00 00    	cmp    $0x200,%rax
    1d6c:	75 8f                	jne    1cfd <Compare_doitgen+0xad>
    1d6e:	31 c0                	xor    %eax,%eax
    1d70:	eb de                	jmp    1d50 <Compare_doitgen+0x100>

Disassembly of section .fini:

0000000000001d74 <_fini>:
    1d74:	f3 0f 1e fa          	endbr64 
    1d78:	48 83 ec 08          	sub    $0x8,%rsp
    1d7c:	48 83 c4 08          	add    $0x8,%rsp
    1d80:	c3                   	ret    
