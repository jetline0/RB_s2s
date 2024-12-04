
back_prop/orio_sr2:     file format elf64-x86-64


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
    1122:	e8 09 04 00 00       	call   1530 <backpropagation_init>
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
    11f6:	e8 65 06 00 00       	call   1860 <backpropagation>
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
    12ea:	e8 51 09 00 00       	call   1c40 <Compare_backpropagation>
    12ef:	66 85 c0             	test   %ax,%ax
    12f2:	0f 85 29 01 00 00    	jne    1421 <main+0x321>
    12f8:	48 8d 3d 05 0d 00 00 	lea    0xd05(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12ff:	e8 ac fd ff ff       	call   10b0 <puts@plt>
    1304:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1309:	48 2b 54 24 20       	sub    0x20(%rsp),%rdx
    130e:	31 c0                	xor    %eax,%eax
    1310:	31 db                	xor    %ebx,%ebx
    1312:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1319:	bf 01 00 00 00       	mov    $0x1,%edi
    131e:	48 03 54 24 38       	add    0x38(%rsp),%rdx
    1323:	48 2b 54 24 28       	sub    0x28(%rsp),%rdx
    1328:	48 8d 35 f5 0c 00 00 	lea    0xcf5(%rip),%rsi        # 2024 <_IO_stdin_used+0x24>
    132f:	e8 ac fd ff ff       	call   10e0 <__printf_chk@plt>
    1334:	0f 1f 40 00          	nopl   0x0(%rax)
    1338:	48 8b 05 f1 2c 00 00 	mov    0x2cf1(%rip),%rax        # 4030 <filter_FP>
    133f:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1343:	e8 58 fd ff ff       	call   10a0 <free@plt>
    1348:	48 8b 05 c9 2c 00 00 	mov    0x2cc9(%rip),%rax        # 4018 <test_filter>
    134f:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1353:	48 83 c3 08          	add    $0x8,%rbx
    1357:	e8 44 fd ff ff       	call   10a0 <free@plt>
    135c:	48 81 fb 00 04 00 00 	cmp    $0x400,%rbx
    1363:	75 d3                	jne    1338 <main+0x238>
    1365:	48 8b 3d c4 2c 00 00 	mov    0x2cc4(%rip),%rdi        # 4030 <filter_FP>
    136c:	31 ed                	xor    %ebp,%ebp
    136e:	e8 2d fd ff ff       	call   10a0 <free@plt>
    1373:	48 8b 3d 9e 2c 00 00 	mov    0x2c9e(%rip),%rdi        # 4018 <test_filter>
    137a:	e8 21 fd ff ff       	call   10a0 <free@plt>
    137f:	90                   	nop
    1380:	31 db                	xor    %ebx,%ebx
    1382:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1388:	48 8b 05 99 2c 00 00 	mov    0x2c99(%rip),%rax        # 4028 <out>
    138f:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    1393:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    1397:	e8 04 fd ff ff       	call   10a0 <free@plt>
    139c:	48 8b 05 7d 2c 00 00 	mov    0x2c7d(%rip),%rax        # 4020 <in_FP>
    13a3:	48 8b 04 28          	mov    (%rax,%rbp,1),%rax
    13a7:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
    13ab:	48 83 c3 08          	add    $0x8,%rbx
    13af:	e8 ec fc ff ff       	call   10a0 <free@plt>
    13b4:	48 81 fb e0 01 00 00 	cmp    $0x1e0,%rbx
    13bb:	75 cb                	jne    1388 <main+0x288>
    13bd:	48 8b 05 64 2c 00 00 	mov    0x2c64(%rip),%rax        # 4028 <out>
    13c4:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    13c8:	e8 d3 fc ff ff       	call   10a0 <free@plt>
    13cd:	48 8b 05 4c 2c 00 00 	mov    0x2c4c(%rip),%rax        # 4020 <in_FP>
    13d4:	48 8b 3c 28          	mov    (%rax,%rbp,1),%rdi
    13d8:	48 83 c5 08          	add    $0x8,%rbp
    13dc:	e8 bf fc ff ff       	call   10a0 <free@plt>
    13e1:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    13e8:	75 96                	jne    1380 <main+0x280>
    13ea:	48 8b 3d 37 2c 00 00 	mov    0x2c37(%rip),%rdi        # 4028 <out>
    13f1:	e8 aa fc ff ff       	call   10a0 <free@plt>
    13f6:	48 8b 3d 23 2c 00 00 	mov    0x2c23(%rip),%rdi        # 4020 <in_FP>
    13fd:	e8 9e fc ff ff       	call   10a0 <free@plt>
    1402:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    1409:	00 
    140a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1411:	00 00 
    1413:	75 1d                	jne    1432 <main+0x332>
    1415:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    141c:	31 c0                	xor    %eax,%eax
    141e:	5b                   	pop    %rbx
    141f:	5d                   	pop    %rbp
    1420:	c3                   	ret    
    1421:	48 8d 3d eb 0b 00 00 	lea    0xbeb(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1428:	e8 83 fc ff ff       	call   10b0 <puts@plt>
    142d:	e9 d2 fe ff ff       	jmp    1304 <main+0x204>
    1432:	e8 99 fc ff ff       	call   10d0 <__stack_chk_fail@plt>
    1437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    143e:	00 00 

0000000000001440 <_start>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	31 ed                	xor    %ebp,%ebp
    1446:	49 89 d1             	mov    %rdx,%r9
    1449:	5e                   	pop    %rsi
    144a:	48 89 e2             	mov    %rsp,%rdx
    144d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1451:	50                   	push   %rax
    1452:	54                   	push   %rsp
    1453:	45 31 c0             	xor    %r8d,%r8d
    1456:	31 c9                	xor    %ecx,%ecx
    1458:	48 8d 3d a1 fc ff ff 	lea    -0x35f(%rip),%rdi        # 1100 <main>
    145f:	ff 15 73 2b 00 00    	call   *0x2b73(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1465:	f4                   	hlt    
    1466:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    146d:	00 00 00 

0000000000001470 <deregister_tm_clones>:
    1470:	48 8d 3d 99 2b 00 00 	lea    0x2b99(%rip),%rdi        # 4010 <__TMC_END__>
    1477:	48 8d 05 92 2b 00 00 	lea    0x2b92(%rip),%rax        # 4010 <__TMC_END__>
    147e:	48 39 f8             	cmp    %rdi,%rax
    1481:	74 15                	je     1498 <deregister_tm_clones+0x28>
    1483:	48 8b 05 56 2b 00 00 	mov    0x2b56(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    148a:	48 85 c0             	test   %rax,%rax
    148d:	74 09                	je     1498 <deregister_tm_clones+0x28>
    148f:	ff e0                	jmp    *%rax
    1491:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1498:	c3                   	ret    
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <register_tm_clones>:
    14a0:	48 8d 3d 69 2b 00 00 	lea    0x2b69(%rip),%rdi        # 4010 <__TMC_END__>
    14a7:	48 8d 35 62 2b 00 00 	lea    0x2b62(%rip),%rsi        # 4010 <__TMC_END__>
    14ae:	48 29 fe             	sub    %rdi,%rsi
    14b1:	48 89 f0             	mov    %rsi,%rax
    14b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    14b8:	48 c1 f8 03          	sar    $0x3,%rax
    14bc:	48 01 c6             	add    %rax,%rsi
    14bf:	48 d1 fe             	sar    %rsi
    14c2:	74 14                	je     14d8 <register_tm_clones+0x38>
    14c4:	48 8b 05 25 2b 00 00 	mov    0x2b25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    14cb:	48 85 c0             	test   %rax,%rax
    14ce:	74 08                	je     14d8 <register_tm_clones+0x38>
    14d0:	ff e0                	jmp    *%rax
    14d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14d8:	c3                   	ret    
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <__do_global_dtors_aux>:
    14e0:	f3 0f 1e fa          	endbr64 
    14e4:	80 3d 25 2b 00 00 00 	cmpb   $0x0,0x2b25(%rip)        # 4010 <__TMC_END__>
    14eb:	75 2b                	jne    1518 <__do_global_dtors_aux+0x38>
    14ed:	55                   	push   %rbp
    14ee:	48 83 3d 02 2b 00 00 	cmpq   $0x0,0x2b02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    14f5:	00 
    14f6:	48 89 e5             	mov    %rsp,%rbp
    14f9:	74 0c                	je     1507 <__do_global_dtors_aux+0x27>
    14fb:	48 8b 3d 06 2b 00 00 	mov    0x2b06(%rip),%rdi        # 4008 <__dso_handle>
    1502:	e8 89 fb ff ff       	call   1090 <__cxa_finalize@plt>
    1507:	e8 64 ff ff ff       	call   1470 <deregister_tm_clones>
    150c:	c6 05 fd 2a 00 00 01 	movb   $0x1,0x2afd(%rip)        # 4010 <__TMC_END__>
    1513:	5d                   	pop    %rbp
    1514:	c3                   	ret    
    1515:	0f 1f 00             	nopl   (%rax)
    1518:	c3                   	ret    
    1519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001520 <frame_dummy>:
    1520:	f3 0f 1e fa          	endbr64 
    1524:	e9 77 ff ff ff       	jmp    14a0 <register_tm_clones>
    1529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001530 <backpropagation_init>:
    1530:	f3 0f 1e fa          	endbr64 
    1534:	41 57                	push   %r15
    1536:	ba 00 04 00 00       	mov    $0x400,%edx
    153b:	be 40 00 00 00       	mov    $0x40,%esi
    1540:	45 31 ff             	xor    %r15d,%r15d
    1543:	41 56                	push   %r14
    1545:	41 55                	push   %r13
    1547:	41 54                	push   %r12
    1549:	4d 89 fc             	mov    %r15,%r12
    154c:	55                   	push   %rbp
    154d:	53                   	push   %rbx
    154e:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    1555:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    155c:	00 00 
    155e:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    1565:	00 
    1566:	31 c0                	xor    %eax,%eax
    1568:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    156d:	4c 8d 6c 24 58       	lea    0x58(%rsp),%r13
    1572:	e8 79 fb ff ff       	call   10f0 <posix_memalign@plt>
    1577:	48 8d 7c 24 48       	lea    0x48(%rsp),%rdi
    157c:	ba 00 04 00 00       	mov    $0x400,%edx
    1581:	be 40 00 00 00       	mov    $0x40,%esi
    1586:	85 c0                	test   %eax,%eax
    1588:	4c 0f 44 64 24 50    	cmove  0x50(%rsp),%r12
    158e:	4c 89 25 9b 2a 00 00 	mov    %r12,0x2a9b(%rip)        # 4030 <filter_FP>
    1595:	e8 56 fb ff ff       	call   10f0 <posix_memalign@plt>
    159a:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
    159f:	85 c0                	test   %eax,%eax
    15a1:	4c 0f 44 7c 24 48    	cmove  0x48(%rsp),%r15
    15a7:	45 31 f6             	xor    %r14d,%r14d
    15aa:	31 ed                	xor    %ebp,%ebp
    15ac:	4c 89 3d 65 2a 00 00 	mov    %r15,0x2a65(%rip)        # 4018 <test_filter>
    15b3:	48 89 cf             	mov    %rcx,%rdi
    15b6:	ba 00 04 00 00       	mov    $0x400,%edx
    15bb:	be 40 00 00 00       	mov    $0x40,%esi
    15c0:	48 89 eb             	mov    %rbp,%rbx
    15c3:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    15c8:	e8 23 fb ff ff       	call   10f0 <posix_memalign@plt>
    15cd:	ba 00 04 00 00       	mov    $0x400,%edx
    15d2:	be 40 00 00 00       	mov    $0x40,%esi
    15d7:	4c 89 ef             	mov    %r13,%rdi
    15da:	85 c0                	test   %eax,%eax
    15dc:	48 0f 44 5c 24 60    	cmove  0x60(%rsp),%rbx
    15e2:	4b 89 1c 34          	mov    %rbx,(%r12,%r14,1)
    15e6:	e8 05 fb ff ff       	call   10f0 <posix_memalign@plt>
    15eb:	48 89 ea             	mov    %rbp,%rdx
    15ee:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    15f3:	85 c0                	test   %eax,%eax
    15f5:	48 0f 44 54 24 58    	cmove  0x58(%rsp),%rdx
    15fb:	31 c0                	xor    %eax,%eax
    15fd:	4b 89 14 37          	mov    %rdx,(%r15,%r14,1)
    1601:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1608:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
    160f:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    1616:	48 83 c0 04          	add    $0x4,%rax
    161a:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1620:	75 e6                	jne    1608 <backpropagation_init+0xd8>
    1622:	49 83 c6 08          	add    $0x8,%r14
    1626:	49 81 fe 00 04 00 00 	cmp    $0x400,%r14
    162d:	75 84                	jne    15b3 <backpropagation_init+0x83>
    162f:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
    1634:	ba e0 01 00 00       	mov    $0x1e0,%edx
    1639:	be 40 00 00 00       	mov    $0x40,%esi
    163e:	31 db                	xor    %ebx,%ebx
    1640:	e8 ab fa ff ff       	call   10f0 <posix_memalign@plt>
    1645:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    164a:	ba e0 01 00 00       	mov    $0x1e0,%edx
    164f:	be 40 00 00 00       	mov    $0x40,%esi
    1654:	85 c0                	test   %eax,%eax
    1656:	48 89 d8             	mov    %rbx,%rax
    1659:	48 0f 44 44 24 70    	cmove  0x70(%rsp),%rax
    165f:	41 bf cd cc cc cc    	mov    $0xcccccccd,%r15d
    1665:	4c 8d b4 24 90 00 00 	lea    0x90(%rsp),%r14
    166c:	00 
    166d:	4c 8d ac 24 88 00 00 	lea    0x88(%rsp),%r13
    1674:	00 
    1675:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    167a:	48 89 05 a7 29 00 00 	mov    %rax,0x29a7(%rip)        # 4028 <out>
    1681:	e8 6a fa ff ff       	call   10f0 <posix_memalign@plt>
    1686:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    168d:	00 00 
    168f:	85 c0                	test   %eax,%eax
    1691:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    1698:	00 
    1699:	48 0f 44 5c 24 68    	cmove  0x68(%rsp),%rbx
    169f:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    16a4:	48 8d 44 24 78       	lea    0x78(%rsp),%rax
    16a9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    16ae:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    16b3:	48 89 1d 66 29 00 00 	mov    %rbx,0x2966(%rip)        # 4020 <in_FP>
    16ba:	31 db                	xor    %ebx,%ebx
    16bc:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    16c1:	ba e0 01 00 00       	mov    $0x1e0,%edx
    16c6:	be 40 00 00 00       	mov    $0x40,%esi
    16cb:	e8 20 fa ff ff       	call   10f0 <posix_memalign@plt>
    16d0:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
    16d5:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    16da:	ba e0 01 00 00       	mov    $0x1e0,%edx
    16df:	85 c0                	test   %eax,%eax
    16e1:	48 89 d8             	mov    %rbx,%rax
    16e4:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    16e9:	48 0f 44 84 24 80 00 	cmove  0x80(%rsp),%rax
    16f0:	00 00 
    16f2:	48 89 04 2e          	mov    %rax,(%rsi,%rbp,1)
    16f6:	be 40 00 00 00       	mov    $0x40,%esi
    16fb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1700:	e8 eb f9 ff ff       	call   10f0 <posix_memalign@plt>
    1705:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    170a:	85 c0                	test   %eax,%eax
    170c:	48 89 d8             	mov    %rbx,%rax
    170f:	48 0f 44 44 24 78    	cmove  0x78(%rsp),%rax
    1715:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    171a:	48 89 04 2e          	mov    %rax,(%rsi,%rbp,1)
    171e:	31 ed                	xor    %ebp,%ebp
    1720:	ba 00 02 00 00       	mov    $0x200,%edx
    1725:	be 40 00 00 00       	mov    $0x40,%esi
    172a:	4c 89 f7             	mov    %r14,%rdi
    172d:	49 89 dc             	mov    %rbx,%r12
    1730:	e8 bb f9 ff ff       	call   10f0 <posix_memalign@plt>
    1735:	ba 00 04 00 00       	mov    $0x400,%edx
    173a:	4c 89 ef             	mov    %r13,%rdi
    173d:	be 40 00 00 00       	mov    $0x40,%esi
    1742:	85 c0                	test   %eax,%eax
    1744:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1749:	4c 0f 44 a4 24 90 00 	cmove  0x90(%rsp),%r12
    1750:	00 00 
    1752:	4c 89 24 28          	mov    %r12,(%rax,%rbp,1)
    1756:	e8 95 f9 ff ff       	call   10f0 <posix_memalign@plt>
    175b:	48 89 df             	mov    %rbx,%rdi
    175e:	f3 0f 10 0d de 08 00 	movss  0x8de(%rip),%xmm1        # 2044 <_IO_stdin_used+0x44>
    1765:	00 
    1766:	f3 0f 10 15 d2 08 00 	movss  0x8d2(%rip),%xmm2        # 2040 <_IO_stdin_used+0x40>
    176d:	00 
    176e:	85 c0                	test   %eax,%eax
    1770:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1775:	48 0f 44 bc 24 88 00 	cmove  0x88(%rsp),%rdi
    177c:	00 00 
    177e:	31 d2                	xor    %edx,%edx
    1780:	48 89 3c 28          	mov    %rdi,(%rax,%rbp,1)
    1784:	0f 1f 40 00          	nopl   0x0(%rax)
    1788:	89 d0                	mov    %edx,%eax
    178a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    178e:	49 0f af c7          	imul   %r15,%rax
    1792:	48 c1 e8 22          	shr    $0x22,%rax
    1796:	8d 0c 80             	lea    (%rax,%rax,4),%ecx
    1799:	89 d0                	mov    %edx,%eax
    179b:	29 c8                	sub    %ecx,%eax
    179d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    17a1:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    17a5:	f3 41 0f 11 04 94    	movss  %xmm0,(%r12,%rdx,4)
    17ab:	48 83 c2 01          	add    $0x1,%rdx
    17af:	48 81 fa 80 00 00 00 	cmp    $0x80,%rdx
    17b6:	75 d0                	jne    1788 <backpropagation_init+0x258>
    17b8:	31 d2                	xor    %edx,%edx
    17ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    17c0:	89 d1                	mov    %edx,%ecx
    17c2:	89 d0                	mov    %edx,%eax
    17c4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    17c8:	48 69 c9 25 49 92 24 	imul   $0x24924925,%rcx,%rcx
    17cf:	48 c1 e9 20          	shr    $0x20,%rcx
    17d3:	29 c8                	sub    %ecx,%eax
    17d5:	d1 e8                	shr    %eax
    17d7:	01 c8                	add    %ecx,%eax
    17d9:	c1 e8 02             	shr    $0x2,%eax
    17dc:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
    17e3:	29 c1                	sub    %eax,%ecx
    17e5:	89 d0                	mov    %edx,%eax
    17e7:	29 c8                	sub    %ecx,%eax
    17e9:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    17ed:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    17f1:	f3 0f 11 04 97       	movss  %xmm0,(%rdi,%rdx,4)
    17f6:	48 83 c2 01          	add    $0x1,%rdx
    17fa:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    1801:	75 bd                	jne    17c0 <backpropagation_init+0x290>
    1803:	48 83 c5 08          	add    $0x8,%rbp
    1807:	48 81 fd e0 01 00 00 	cmp    $0x1e0,%rbp
    180e:	0f 85 0c ff ff ff    	jne    1720 <backpropagation_init+0x1f0>
    1814:	48 83 44 24 18 08    	addq   $0x8,0x18(%rsp)
    181a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    181f:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1825:	0f 85 91 fe ff ff    	jne    16bc <backpropagation_init+0x18c>
    182b:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    1832:	00 
    1833:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    183a:	00 00 
    183c:	75 12                	jne    1850 <backpropagation_init+0x320>
    183e:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    1845:	5b                   	pop    %rbx
    1846:	5d                   	pop    %rbp
    1847:	41 5c                	pop    %r12
    1849:	41 5d                	pop    %r13
    184b:	41 5e                	pop    %r14
    184d:	41 5f                	pop    %r15
    184f:	c3                   	ret    
    1850:	e8 7b f8 ff ff       	call   10d0 <__stack_chk_fail@plt>
    1855:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    185c:	00 00 00 00 

0000000000001860 <backpropagation>:
    1860:	f3 0f 1e fa          	endbr64 
    1864:	41 57                	push   %r15
    1866:	48 8b 05 c3 27 00 00 	mov    0x27c3(%rip),%rax        # 4030 <filter_FP>
    186d:	41 56                	push   %r14
    186f:	4c 8b 3d b2 27 00 00 	mov    0x27b2(%rip),%r15        # 4028 <out>
    1876:	41 55                	push   %r13
    1878:	4c 8b 35 a1 27 00 00 	mov    0x27a1(%rip),%r14        # 4020 <in_FP>
    187f:	45 31 ed             	xor    %r13d,%r13d
    1882:	41 54                	push   %r12
    1884:	55                   	push   %rbp
    1885:	53                   	push   %rbx
    1886:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    188b:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
    1890:	4d 8d 55 0c          	lea    0xc(%r13),%r10
    1894:	4d 8d 4d 04          	lea    0x4(%r13),%r9
    1898:	41 bb 04 00 00 00    	mov    $0x4,%r11d
    189e:	4d 8d 45 08          	lea    0x8(%r13),%r8
    18a2:	4a 8b 5c 68 10       	mov    0x10(%rax,%r13,2),%rbx
    18a7:	4a 8b 7c 68 08       	mov    0x8(%rax,%r13,2),%rdi
    18ac:	4a 8b 74 68 18       	mov    0x18(%rax,%r13,2),%rsi
    18b1:	4a 8b 04 68          	mov    (%rax,%r13,2),%rax
    18b5:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    18ba:	48 89 7c 24 e0       	mov    %rdi,-0x20(%rsp)
    18bf:	48 89 74 24 e8       	mov    %rsi,-0x18(%rsp)
    18c4:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
    18c9:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    18ce:	48 89 7c 24 c8       	mov    %rdi,-0x38(%rsp)
    18d3:	48 89 74 24 b8       	mov    %rsi,-0x48(%rsp)
    18d8:	48 89 44 24 d0       	mov    %rax,-0x30(%rsp)
    18dd:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
    18e2:	49 8d 6b fc          	lea    -0x4(%r11),%rbp
    18e6:	49 8d 5b 04          	lea    0x4(%r11),%rbx
    18ea:	45 31 e4             	xor    %r12d,%r12d
    18ed:	48 8b 74 24 b8       	mov    -0x48(%rsp),%rsi
    18f2:	48 8b 7c 24 c8       	mov    -0x38(%rsp),%rdi
    18f7:	f3 0f 10 38          	movss  (%rax),%xmm7
    18fb:	f3 44 0f 10 70 04    	movss  0x4(%rax),%xmm14
    1901:	f3 44 0f 10 58 08    	movss  0x8(%rax),%xmm11
    1907:	48 8b 44 24 d0       	mov    -0x30(%rsp),%rax
    190c:	f3 0f 11 7c 24 b0    	movss  %xmm7,-0x50(%rsp)
    1912:	f3 0f 10 3e          	movss  (%rsi),%xmm7
    1916:	f3 44 0f 10 6f 08    	movss  0x8(%rdi),%xmm13
    191c:	f3 44 0f 10 66 04    	movss  0x4(%rsi),%xmm12
    1922:	f3 44 0f 10 50 04    	movss  0x4(%rax),%xmm10
    1928:	f3 0f 11 7c 24 b4    	movss  %xmm7,-0x4c(%rsp)
    192e:	f3 0f 10 38          	movss  (%rax),%xmm7
    1932:	f3 44 0f 10 4f 04    	movss  0x4(%rdi),%xmm9
    1938:	f3 44 0f 10 40 08    	movss  0x8(%rax),%xmm8
    193e:	f3 0f 11 7c 24 a8    	movss  %xmm7,-0x58(%rsp)
    1944:	f3 0f 10 3f          	movss  (%rdi),%xmm7
    1948:	f3 0f 11 7c 24 ac    	movss  %xmm7,-0x54(%rsp)
    194e:	f3 0f 10 7e 08       	movss  0x8(%rsi),%xmm7
    1953:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1958:	4b 8b 3c 27          	mov    (%r15,%r12,1),%rdi
    195c:	4b 8b 34 26          	mov    (%r14,%r12,1),%rsi
    1960:	31 c0                	xor    %eax,%eax
    1962:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1968:	48 8b 0c 06          	mov    (%rsi,%rax,1),%rcx
    196c:	48 8b 14 07          	mov    (%rdi,%rax,1),%rdx
    1970:	48 83 c0 08          	add    $0x8,%rax
    1974:	f3 0f 10 0c 29       	movss  (%rcx,%rbp,1),%xmm1
    1979:	f3 42 0f 10 2c 2a    	movss  (%rdx,%r13,1),%xmm5
    197f:	f3 42 0f 10 24 0a    	movss  (%rdx,%r9,1),%xmm4
    1985:	f3 42 0f 10 1c 02    	movss  (%rdx,%r8,1),%xmm3
    198b:	44 0f 28 f9          	movaps %xmm1,%xmm15
    198f:	f3 42 0f 10 14 12    	movss  (%rdx,%r10,1),%xmm2
    1995:	f3 42 0f 10 04 19    	movss  (%rcx,%r11,1),%xmm0
    199b:	f3 44 0f 59 fd       	mulss  %xmm5,%xmm15
    19a0:	f3 0f 10 34 19       	movss  (%rcx,%rbx,1),%xmm6
    19a5:	f3 44 0f 58 7c 24 a8 	addss  -0x58(%rsp),%xmm15
    19ac:	f3 44 0f 11 7c 24 a8 	movss  %xmm15,-0x58(%rsp)
    19b3:	44 0f 28 fc          	movaps %xmm4,%xmm15
    19b7:	f3 44 0f 59 f9       	mulss  %xmm1,%xmm15
    19bc:	f3 44 0f 58 7c 24 ac 	addss  -0x54(%rsp),%xmm15
    19c3:	f3 44 0f 11 7c 24 ac 	movss  %xmm15,-0x54(%rsp)
    19ca:	44 0f 28 fb          	movaps %xmm3,%xmm15
    19ce:	f3 44 0f 59 f9       	mulss  %xmm1,%xmm15
    19d3:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    19d7:	f3 44 0f 58 7c 24 b0 	addss  -0x50(%rsp),%xmm15
    19de:	f3 0f 58 4c 24 b4    	addss  -0x4c(%rsp),%xmm1
    19e4:	f3 44 0f 11 7c 24 b0 	movss  %xmm15,-0x50(%rsp)
    19eb:	f3 0f 11 4c 24 b4    	movss  %xmm1,-0x4c(%rsp)
    19f1:	0f 28 c8             	movaps %xmm0,%xmm1
    19f4:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    19f8:	f3 0f 59 ee          	mulss  %xmm6,%xmm5
    19fc:	f3 44 0f 58 d1       	addss  %xmm1,%xmm10
    1a01:	0f 28 cc             	movaps %xmm4,%xmm1
    1a04:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    1a08:	f3 44 0f 58 c5       	addss  %xmm5,%xmm8
    1a0d:	f3 0f 59 e6          	mulss  %xmm6,%xmm4
    1a11:	f3 44 0f 58 c9       	addss  %xmm1,%xmm9
    1a16:	0f 28 c8             	movaps %xmm0,%xmm1
    1a19:	f3 0f 59 cb          	mulss  %xmm3,%xmm1
    1a1d:	f3 44 0f 58 ec       	addss  %xmm4,%xmm13
    1a22:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1a26:	f3 0f 59 de          	mulss  %xmm6,%xmm3
    1a2a:	f3 0f 59 d6          	mulss  %xmm6,%xmm2
    1a2e:	f3 44 0f 58 f1       	addss  %xmm1,%xmm14
    1a33:	f3 44 0f 58 e0       	addss  %xmm0,%xmm12
    1a38:	f3 44 0f 58 db       	addss  %xmm3,%xmm11
    1a3d:	f3 0f 58 fa          	addss  %xmm2,%xmm7
    1a41:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1a47:	0f 85 1b ff ff ff    	jne    1968 <backpropagation+0x108>
    1a4d:	49 83 c4 08          	add    $0x8,%r12
    1a51:	49 81 fc e0 01 00 00 	cmp    $0x1e0,%r12
    1a58:	0f 85 fa fe ff ff    	jne    1958 <backpropagation+0xf8>
    1a5e:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
    1a63:	f3 0f 10 74 24 b0    	movss  -0x50(%rsp),%xmm6
    1a69:	49 83 c3 0c          	add    $0xc,%r11
    1a6d:	48 8b 7c 24 c8       	mov    -0x38(%rsp),%rdi
    1a72:	48 8b 74 24 b8       	mov    -0x48(%rsp),%rsi
    1a77:	f3 0f 11 30          	movss  %xmm6,(%rax)
    1a7b:	f3 0f 10 74 24 b4    	movss  -0x4c(%rsp),%xmm6
    1a81:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    1a86:	48 83 c0 0c          	add    $0xc,%rax
    1a8a:	f3 44 0f 11 70 f8    	movss  %xmm14,-0x8(%rax)
    1a90:	48 83 c7 0c          	add    $0xc,%rdi
    1a94:	48 83 c6 0c          	add    $0xc,%rsi
    1a98:	f3 44 0f 11 6f fc    	movss  %xmm13,-0x4(%rdi)
    1a9e:	48 83 c3 0c          	add    $0xc,%rbx
    1aa2:	f3 0f 11 76 f4       	movss  %xmm6,-0xc(%rsi)
    1aa7:	f3 0f 10 74 24 a8    	movss  -0x58(%rsp),%xmm6
    1aad:	f3 44 0f 11 66 f8    	movss  %xmm12,-0x8(%rsi)
    1ab3:	f3 44 0f 11 58 fc    	movss  %xmm11,-0x4(%rax)
    1ab9:	f3 0f 11 73 f4       	movss  %xmm6,-0xc(%rbx)
    1abe:	f3 0f 10 74 24 ac    	movss  -0x54(%rsp),%xmm6
    1ac4:	f3 44 0f 11 53 f8    	movss  %xmm10,-0x8(%rbx)
    1aca:	f3 44 0f 11 4f f8    	movss  %xmm9,-0x8(%rdi)
    1ad0:	f3 0f 11 77 f4       	movss  %xmm6,-0xc(%rdi)
    1ad5:	48 89 44 24 c0       	mov    %rax,-0x40(%rsp)
    1ada:	f3 44 0f 11 43 fc    	movss  %xmm8,-0x4(%rbx)
    1ae0:	48 89 7c 24 c8       	mov    %rdi,-0x38(%rsp)
    1ae5:	f3 0f 11 7e fc       	movss  %xmm7,-0x4(%rsi)
    1aea:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1aef:	48 89 74 24 b8       	mov    %rsi,-0x48(%rsp)
    1af4:	49 81 fb 00 04 00 00 	cmp    $0x400,%r11
    1afb:	0f 85 dc fd ff ff    	jne    18dd <backpropagation+0x7d>
    1b01:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    1b06:	31 ff                	xor    %edi,%edi
    1b08:	f3 0f 10 a0 fc 03 00 	movss  0x3fc(%rax),%xmm4
    1b0f:	00 
    1b10:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1b15:	f3 0f 10 98 fc 03 00 	movss  0x3fc(%rax),%xmm3
    1b1c:	00 
    1b1d:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    1b22:	f3 0f 10 90 fc 03 00 	movss  0x3fc(%rax),%xmm2
    1b29:	00 
    1b2a:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    1b2f:	f3 0f 10 88 fc 03 00 	movss  0x3fc(%rax),%xmm1
    1b36:	00 
    1b37:	49 8b 34 3e          	mov    (%r14,%rdi,1),%rsi
    1b3b:	49 8b 0c 3f          	mov    (%r15,%rdi,1),%rcx
    1b3f:	31 c0                	xor    %eax,%eax
    1b41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b48:	48 8b 14 06          	mov    (%rsi,%rax,1),%rdx
    1b4c:	f3 0f 10 82 fc 03 00 	movss  0x3fc(%rdx),%xmm0
    1b53:	00 
    1b54:	48 8b 14 01          	mov    (%rcx,%rax,1),%rdx
    1b58:	48 83 c0 08          	add    $0x8,%rax
    1b5c:	f3 42 0f 10 2c 2a    	movss  (%rdx,%r13,1),%xmm5
    1b62:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b66:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    1b6a:	f3 42 0f 10 2c 0a    	movss  (%rdx,%r9,1),%xmm5
    1b70:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b74:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    1b78:	f3 42 0f 10 2c 02    	movss  (%rdx,%r8,1),%xmm5
    1b7e:	f3 0f 59 e8          	mulss  %xmm0,%xmm5
    1b82:	f3 42 0f 59 04 12    	mulss  (%rdx,%r10,1),%xmm0
    1b88:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    1b8c:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    1b90:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1b96:	75 b0                	jne    1b48 <backpropagation+0x2e8>
    1b98:	48 83 c7 08          	add    $0x8,%rdi
    1b9c:	48 81 ff e0 01 00 00 	cmp    $0x1e0,%rdi
    1ba3:	75 92                	jne    1b37 <backpropagation+0x2d7>
    1ba5:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    1baa:	49 83 c5 10          	add    $0x10,%r13
    1bae:	f3 0f 11 a0 fc 03 00 	movss  %xmm4,0x3fc(%rax)
    1bb5:	00 
    1bb6:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1bbb:	f3 0f 11 98 fc 03 00 	movss  %xmm3,0x3fc(%rax)
    1bc2:	00 
    1bc3:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    1bc8:	f3 0f 11 90 fc 03 00 	movss  %xmm2,0x3fc(%rax)
    1bcf:	00 
    1bd0:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    1bd5:	f3 0f 11 88 fc 03 00 	movss  %xmm1,0x3fc(%rax)
    1bdc:	00 
    1bdd:	49 81 fd 00 02 00 00 	cmp    $0x200,%r13
    1be4:	0f 85 a1 fc ff ff    	jne    188b <backpropagation+0x2b>
    1bea:	5b                   	pop    %rbx
    1beb:	5d                   	pop    %rbp
    1bec:	41 5c                	pop    %r12
    1bee:	41 5d                	pop    %r13
    1bf0:	41 5e                	pop    %r14
    1bf2:	41 5f                	pop    %r15
    1bf4:	c3                   	ret    
    1bf5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1bfc:	00 00 00 00 

0000000000001c00 <equal>:
    1c00:	f3 0f 1e fa          	endbr64 
    1c04:	0f 28 d0             	movaps %xmm0,%xmm2
    1c07:	f3 0f 10 1d 41 04 00 	movss  0x441(%rip),%xmm3        # 2050 <_IO_stdin_used+0x50>
    1c0e:	00 
    1c0f:	31 c0                	xor    %eax,%eax
    1c11:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1c15:	0f 54 c3             	andps  %xmm3,%xmm0
    1c18:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1c1c:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1c20:	0f 54 d3             	andps  %xmm3,%xmm2
    1c23:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    1c27:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    1c2b:	f2 0f 10 05 2d 04 00 	movsd  0x42d(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    1c32:	00 
    1c33:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1c37:	0f 96 c0             	setbe  %al
    1c3a:	c3                   	ret    
    1c3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001c40 <Compare_backpropagation>:
    1c40:	f3 0f 1e fa          	endbr64 
    1c44:	41 54                	push   %r12
    1c46:	4c 8b 25 cb 23 00 00 	mov    0x23cb(%rip),%r12        # 4018 <test_filter>
    1c4d:	45 31 c0             	xor    %r8d,%r8d
    1c50:	55                   	push   %rbp
    1c51:	48 8b 2d d0 23 00 00 	mov    0x23d0(%rip),%rbp        # 4028 <out>
    1c58:	53                   	push   %rbx
    1c59:	48 8b 1d c0 23 00 00 	mov    0x23c0(%rip),%rbx        # 4020 <in_FP>
    1c60:	4f 8b 14 44          	mov    (%r12,%r8,2),%r10
    1c64:	45 31 c9             	xor    %r9d,%r9d
    1c67:	f3 41 0f 10 0a       	movss  (%r10),%xmm1
    1c6c:	45 31 db             	xor    %r11d,%r11d
    1c6f:	90                   	nop
    1c70:	4a 8b 7c 1d 00       	mov    0x0(%rbp,%r11,1),%rdi
    1c75:	4a 8b 34 1b          	mov    (%rbx,%r11,1),%rsi
    1c79:	31 c0                	xor    %eax,%eax
    1c7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1c80:	48 8b 0c 07          	mov    (%rdi,%rax,1),%rcx
    1c84:	48 8b 14 06          	mov    (%rsi,%rax,1),%rdx
    1c88:	48 83 c0 08          	add    $0x8,%rax
    1c8c:	f3 42 0f 10 04 01    	movss  (%rcx,%r8,1),%xmm0
    1c92:	f3 42 0f 59 04 0a    	mulss  (%rdx,%r9,1),%xmm0
    1c98:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1c9c:	f3 41 0f 11 0a       	movss  %xmm1,(%r10)
    1ca1:	48 3d e0 01 00 00    	cmp    $0x1e0,%rax
    1ca7:	75 d7                	jne    1c80 <Compare_backpropagation+0x40>
    1ca9:	49 83 c3 08          	add    $0x8,%r11
    1cad:	49 81 fb e0 01 00 00 	cmp    $0x1e0,%r11
    1cb4:	75 ba                	jne    1c70 <Compare_backpropagation+0x30>
    1cb6:	49 83 c1 04          	add    $0x4,%r9
    1cba:	49 83 c2 04          	add    $0x4,%r10
    1cbe:	49 81 f9 00 04 00 00 	cmp    $0x400,%r9
    1cc5:	75 a0                	jne    1c67 <Compare_backpropagation+0x27>
    1cc7:	49 83 c0 04          	add    $0x4,%r8
    1ccb:	49 81 f8 00 02 00 00 	cmp    $0x200,%r8
    1cd2:	75 8c                	jne    1c60 <Compare_backpropagation+0x20>
    1cd4:	48 8b 0d 55 23 00 00 	mov    0x2355(%rip),%rcx        # 4030 <filter_FP>
    1cdb:	f2 0f 10 1d 7d 03 00 	movsd  0x37d(%rip),%xmm3        # 2060 <_IO_stdin_used+0x60>
    1ce2:	00 
    1ce3:	31 c0                	xor    %eax,%eax
    1ce5:	f3 0f 10 15 63 03 00 	movss  0x363(%rip),%xmm2        # 2050 <_IO_stdin_used+0x50>
    1cec:	00 
    1ced:	49 8b 3c 04          	mov    (%r12,%rax,1),%rdi
    1cf1:	48 8b 34 01          	mov    (%rcx,%rax,1),%rsi
    1cf5:	31 d2                	xor    %edx,%edx
    1cf7:	f3 0f 10 0c 16       	movss  (%rsi,%rdx,1),%xmm1
    1cfc:	0f 28 c1             	movaps %xmm1,%xmm0
    1cff:	f3 0f 5c 04 17       	subss  (%rdi,%rdx,1),%xmm0
    1d04:	0f 54 ca             	andps  %xmm2,%xmm1
    1d07:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    1d0b:	0f 54 c2             	andps  %xmm2,%xmm0
    1d0e:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1d12:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1d16:	66 0f 2f d8          	comisd %xmm0,%xmm3
    1d1a:	76 24                	jbe    1d40 <Compare_backpropagation+0x100>
    1d1c:	48 83 c2 04          	add    $0x4,%rdx
    1d20:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    1d27:	75 ce                	jne    1cf7 <Compare_backpropagation+0xb7>
    1d29:	48 83 c0 08          	add    $0x8,%rax
    1d2d:	48 3d 00 04 00 00    	cmp    $0x400,%rax
    1d33:	75 b8                	jne    1ced <Compare_backpropagation+0xad>
    1d35:	31 c0                	xor    %eax,%eax
    1d37:	eb 0c                	jmp    1d45 <Compare_backpropagation+0x105>
    1d39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1d40:	b8 01 00 00 00       	mov    $0x1,%eax
    1d45:	5b                   	pop    %rbx
    1d46:	5d                   	pop    %rbp
    1d47:	41 5c                	pop    %r12
    1d49:	c3                   	ret    

Disassembly of section .fini:

0000000000001d4c <_fini>:
    1d4c:	f3 0f 1e fa          	endbr64 
    1d50:	48 83 ec 08          	sub    $0x8,%rsp
    1d54:	48 83 c4 08          	add    $0x8,%rsp
    1d58:	c3                   	ret    
