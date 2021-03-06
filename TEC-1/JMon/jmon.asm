;
; JROM TEC-1 Monitor ROM written by Jim Robertson
; Released under the MIT LICENSE
;
            LD      (0x086e),hl
            LD      hl,(0x0828)
            JR      0x006b
            RST     0x20
            JR      z,0x0008
            NOP
            NOP
            NOP
            NOP
            NOP
            RST     0x20
            JR      nz,0x0010
            AND     0x1f
            LD      i,a
            RET
            PUSH    hl
            PUSH    de
            CALL    0x0836
            POP     de
            POP     hl
            NOP
            PUSH    bc
            LD      b,0x20
            CALL    0x06ad
            POP     bc
            RET
            EX      (sp),hl
            LD      (0x0858),hl
            EX      (sp),hl
            EI
            RET
            RST     0x38
            IN      a,(0x04)
            RLCA
            JR      c,0x0030
            RET
            RST     0x38
            RST     0x38
            JP      0x0312
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            JP      0x03dd
            JP      0x0479
            JP      0x03ed
            JP      0x069f
            JP      0x05b6
            JP      0x04a3
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            LD      hl,(0x082e)
            LD      (0x0858),hl
            EI
            JP      (hl)
            RETN
            RST     0x38
            RST     0x38
            RST     0x38
            IM      1
            LD      (0x082e),hl
            LD      hl,0x0076
            JP      0x0318
            LD      sp,0x0820
            CALL    0x02f7
            RST     0x20
            JR      z,0x0086
            LD      a,(0x08ff)
            CP      0xaa
            JR      z,0x00a2
            LD      hl,0x070f
            LD      de,0x0820
            LD      bc,0x002b
            LDIR
            LD      b,0x03
            LD      a,0xc9
            LD      (de),a
            INC     de
            INC     de
            INC     de
            DJNZ    0x0095
            CALL    0x06d5
            XOR     a
            LD      (0x08ff),a
            LD      hl,0x3800
            LD      a,(hl)
            CP      0xc3
            CALL    z,0x3800
            CALL    0x083c
            XOR     a
            LD      (0x082b),a
            LD      hl,(0x082e)
            LD      bc,(0x082c)
            CALL    0x0830
            LD      a,(hl)
            CALL    0x0833
            CALL    0x0839
            CALL    0x0842
            LD      hl,(0x082e)
            LD      c,a
            LD      a,(0x082b)
            BIT     4,a
            LD      b,a
            LD      a,c
            JR      nz,0x0102
            CP      0x10
            JR      nz,0x00e3
            INC     hl
            LD      (0x082e),hl
            LD      a,b
            AND     0xfc
            LD      (0x082b),a
            JR      0x00b2
            CP      0x11
            JR      nz,0x00ea
            DEC     hl
            JR      0x00d8
            CP      0x12
            JR      nz,0x0102
            LD      a,(0x0823)
            CP      0xaa
            JR      z,0x00fa
            LD      hl,(0x082e)
            JR      0x00fd
            LD      hl,(0x0828)
            LD      de,0x0845
            PUSH    de
            JP      (hl)
            CP      0x13
            JR      nz,0x0111
            LD      a,b
            BIT     5,b
            JR      nz,0x010d
            XOR     0x10
            AND     0xd3
            JR      0x00dc
            LD      a,b
            BIT     4,a
            JR      nz,0x013b
            IN      a,(0x00)
            BIT     5,a
            JR      z,0x0150
            LD      a,b
            AND     0x03
            CP      0x02
            LD      a,b
            JR      nz,0x0132
            PUSH    af
            LD      a,(0x0827)
            OR      a
            JR      nz,0x012f
            INC     hl
            LD      (0x082e),hl
            POP     af
            AND     0xfc
            INC     a
            LD      (0x082b),a
            LD      a,(0x0820)
            JR      0x014c
            LD      a,(0x0820)
            BIT     4,a
            JR      nz,0x0171
            BIT     5,b
            JR      nz,0x0150
            LD      hl,0x082e
            RLD
            INC     hl
            RLD
            JR      0x00e1
            LD      a,b
            AND     0x0c
            LD      hl,0x07de
            JR      z,0x0162
            LD      hl,0x08be
            CP      0x04
            JR      z,0x0162
            LD      hl,0x381e
            LD      a,(0x0820)
            INC     a
            LD      b,a
            INC     hl
            INC     hl
            DJNZ    0x0167
            LD      e,(hl)
            INC     hl
            LD      d,(hl)
            EX      de,hl
            JR      0x00fd
            AND     0x03
            RLCA
            RLCA
            OR      0x20
            LD      c,a
            LD      a,b
            AND     0xd3
            OR      c
            LD      (0x082b),a
            JR      0x014e
            CALL    0x0848
            CALL    0x084b
            CALL    0x0836
            CALL    0x084e
            LD      hl,0x0820
            BIT     7,(hl)
            RES     7,(hl)
            RET     nz
            RST     0x20
            LD      hl,0x082a
            JR      c,0x019f
            LD      (hl),0x80
            JR      0x0187
            CALL    0x06ca
            BIT     7,(hl)
            JR      nz,0x01b6
            DEC     (hl)
            JR      nz,0x0187
            LD      (hl),0x0c
            CALL    0x0851
            CALL    0x083f
            XOR     a
            LD      a,(0x0820)
            RET
            LD      (hl),0x70
            JR      0x01ab
            LD      b,0x20
            LD      hl,(0x082c)
            LD      a,(hl)
            OUT     (0x02),a
            LD      a,b
            OUT     (0x01),a
            LD      b,0x40
            DJNZ    0x01c7
            INC     hl
            LD      b,a
            XOR     a
            OUT     (0x01),a
            RRC     b
            JR      nc,0x01bf
            OUT     (0x02),a
            RET
            LD      a,h
            CALL    0x0833
            LD      a,l
            PUSH    af
            RLCA
            RLCA
            RLCA
            RLCA
            CALL    0x01e3
            POP     af
            AND     0x0f
            LD      de,0x07d0
            ADD     a,e
            LD      e,a
            LD      a,(de)
            LD      (bc),a
            INC     bc
            RET
            LD      b,0x02
            LD      hl,(0x082c)
            LD      a,(0x082b)
            BIT     4,a
            JR      z,0x0214
            BIT     5,a
            JR      nz,0x0206
            LD      b,0x04
            SET     4,(hl)
            INC     hl
            DJNZ    0x0200
            RET
            DEC     b
            BIT     3,a
            JR      nz,0x0211
            BIT     2,a
            JR      nz,0x0210
            INC     hl
            INC     hl
            INC     hl
            JR      0x0200
            INC     hl
            LD      c,a
            LD      a,(0x0827)
            OR      a
            JR      nz,0x020f
            BIT     1,c
            JR      z,0x020f
            INC     hl
            DEC     b
            JR      0x020f
            CALL    0x083f
            LD      a,(0x0822)
            OR      a
            RET     nz
            LD      c,0x40
            LD      l,0x31
            XOR     a
            OUT     (0x01),a
            LD      b,c
            DJNZ    0x0234
            XOR     0x80
            DEC     l
            JR      nz,0x0231
            RET
            LD      a,(0x0821)
            OR      a
            RET     nz
            LD      a,0x80
            OUT     (0x04),a
            RST     0x30
            CALL    0x0253
            LD      a,0xc0
            OUT     (0x04),a
            RST     0x30
            CALL    0x025a
            JR      0x0286
            LD      hl,(0x082e)
            LD      a,l
            AND     0xf8
            LD      l,a
            CALL    0x026c
            LD      b,0x04
            LD      a,0x20
            OUT     (0x84),a
            RST     0x30
            LD      a,(hl)
            CALL    0x0271
            INC     hl
            DJNZ    0x025f
            RET
            LD      a,h
            CALL    0x0271
            LD      a,l
            PUSH    af
            RRCA
            RRCA
            RRCA
            RRCA
            CALL    0x027a
            POP     af
            AND     0x0f
            ADD     a,0x90
            DAA
            ADC     a,0x40
            DAA
            OUT     (0x84),a
            RST     0x30
            RET
            LD      a,(0x082e)
            AND     0x07
            LD      c,a
            LD      a,(0x0827)
            OR      a
            LD      a,(0x082b)
            LD      d,a
            JR      nz,0x029b
            BIT     1,a
            JR      z,0x029b
            INC     c
            LD      a,c
            LD      hl,0x07bd
            ADD     a,l
            LD      l,a
            LD      a,(hl)
            OUT     (0x04),a
            RST     0x30
            LD      a,0x3e
            OUT     (0x84),a
            RST     0x30
            LD      a,0xc0
            OUT     (0x04),a
            RST     0x30
            LD      a,d
            RRCA
            RRCA
            LD      d,a
            AND     0x0c
            LD      hl,0x07ad
            ADD     a,l
            LD      l,a
            CP      0xb9
            LD      bc,0x0484
            JR      z,0x02c7
            OUTI
            RST     0x30
            JR      nz,0x02c1
            RET
            LD      b,0x03
            CALL    0x02c1
            LD      a,d
            AND     0x03
            ADD     a,0x31
            JR      0x0282
            LD      de,0x0004
            LD      hl,(0x082e)
            ADD     hl,de
            LD      (0x082e),hl
            RET
            LD      de,0xfffc
            JR      0x02d6
            LD      de,0xffff
            JR      0x02d6
            LD      de,0x0001
            JR      0x02d6
            LD      de,0x0008
            JR      0x02d6
            LD      de,0xfff8
            JR      0x02d6
            LD      a,(0x08b0)
            CP      0xaa
            RET     nz
            LD      bc,(0x08b3)
            LD      hl,(0x08b1)
            XOR     a
            ADD     a,(hl)
            INC     hl
            DJNZ    0x0305
            LD      hl,0x08b5
            CP      (hl)
            RET     nz
            LD      hl,(0x08b6)
            JP      (hl)
            LD      (0x0870),hl
            LD      hl,0x0344
            LD      (0x0860),hl
            LD      hl,(0x0858)
            LD      (0x0868),hl
            LD      (0x087e),sp
            POP     hl
            LD      (0x0858),hl
            LD      sp,0x087e
            EX      af,af'
            EXX
            PUSH    hl
            PUSH    de
            PUSH    bc
            PUSH    af
            PUSH    iy
            PUSH    ix
            EX      af,af'
            EXX
            DEC     sp
            DEC     sp
            PUSH    de
            PUSH    bc
            PUSH    af
            LD      hl,(0x0860)
            JP      (hl)
            LD      sp,0x086a
            LD      hl,0x0806
            LD      (0x082c),hl
            DEC     sp
            DEC     sp
            LD      a,0x01
            LD      (0x085a),a
            LD      a,(0x085a)
            LD      hl,0xfffe
            ADD     hl,sp
            INC     hl
            INC     hl
            DEC     a
            JR      nz,0x0358
            LD      a,(hl)
            INC     hl
            LD      h,(hl)
            LD      l,a
            LD      bc,(0x082c)
            CALL    0x0830
            LD      a,(0x085a)
            PUSH    bc
            POP     de
            LD      bc,0x0002
            LD      hl,0x0792
            ADD     hl,bc
            DEC     a
            JR      nz,0x0373
            LDIR
            RST     0x18
            LD      hl,0x0824
            JR      z,0x038a
            BIT     7,(hl)
            JR      nz,0x0379
            DEC     (hl)
            JR      nz,0x0379
            LD      (hl),0x30
            JR      0x03ac
            LD      b,a
            LD      (hl),0xff
            LD      hl,0x085a
            LD      a,b
            CP      0x10
            JR      nz,0x039d
            INC     (hl)
            LD      a,(hl)
            CP      0x0d
            JR      c,0x0351
            JR      0x034c
            CP      0x11
            JR      nz,0x03a8
            DEC     (hl)
            JR      nz,0x0351
            LD      (hl),0x0c
            JR      0x0351
            CP      0x12
            JR      nz,0x03c6
            RST     0x20
            JR      z,0x03ac
            POP     hl
            POP     af
            POP     bc
            POP     de
            POP     hl
            POP     ix
            POP     iy
            EX      af,af'
            EXX
            POP     af
            POP     bc
            POP     de
            POP     hl
            EX      af,af'
            EXX
            LD      sp,(0x087e)
            EI
            RET
            CP      0x13
            JR      nz,0x03cb
            RST     0x00
            LD      a,0x20
            LD      (0x0824),a
            JR      0x0379
            LD      hl,0x077c
            LD      de,0x0880
            LD      bc,0x0018
            LDIR
            LD      hl,0x0800
            LD      (0x082c),hl
            LD      a,(0x088f)
            LD      de,(0x0895)
            LD      hl,(0x0893)
            LD      bc,0x0004
            OR      a
            JR      z,0x03f9
            ADD     hl,bc
            INC     de
            INC     de
            DEC     a
            JR      nz,0x03f3
            PUSH    hl
            PUSH    de
            LD      de,0x0800
            LDIR
            POP     hl
            LD      c,0x02
            LDIR
            POP     hl
            CALL    0x0842
            LD      hl,0x088f
            CALL    0x04b2
            JR      z,0x0416
            CALL    0x0897
            JR      0x03e3
            LD      hl,(0x0891)
            LD      a,(0x088f)
            OR      a
            JR      z,0x0425
            INC     hl
            INC     hl
            INC     hl
            DEC     a
            JR      nz,0x041f
            JP      (hl)
            XOR     a
            LD      (0x088a),a
            LD      a,0x01
            LD      hl,0xffff
            LD      (0x089a),hl
            LD      hl,0x0531
            JR      0x0444
            LD      a,0x02
            JR      0x0427
            LD      a,0x03
            JR      0x0439
            LD      hl,0x0450
            LD      a,0x03
            LD      (0x0888),hl
            LD      (0x0887),a
            XOR     a
            LD      (0x0886),a
            JR      0x0473
            LD      hl,(0x089e)
            LD      (0x08aa),hl
            LD      hl,(0x089a)
            LD      (0x08a6),hl
            EX      de,hl
            LD      hl,(0x089c)
            OR      a
            SBC     hl,de
            INC     hl
            JP      c,0x004a
            LD      (0x08a8),hl
            LD      hl,(0x0898)
            LD      (0x08a4),hl
            JP      0x04f0
            LD      hl,0xffff
            LD      (0x089e),hl
            LD      a,(0x0886)
            LD      hl,(0x0884)
            LD      de,(0x0882)
            OR      a
            JR      z,0x048d
            INC     de
            INC     de
            INC     hl
            INC     hl
            DEC     a
            JR      nz,0x0486
            LD      (0x088c),hl
            EX      de,hl
            LD      a,(hl)
            INC     hl
            LD      h,(hl)
            LD      l,a
            LD      (0x0804),hl
            EX      de,hl
            LD      a,(hl)
            DEC     hl
            LD      l,(hl)
            LD      h,a
            LD      bc,0x0800
            CALL    0x0830
            CALL    0x0842
            LD      hl,0x0886
            CALL    0x04b2
            JR      nz,0x04c4
            LD      hl,(0x0888)
            JP      (hl)
            CP      0x10
            JR      z,0x04d1
            CP      0x11
            JR      z,0x04d1
            CP      0x13
            JR      nz,0x04c0
            POP     hl
            RET
            CP      0x12
            CCF
            RET
            JR      c,0x0479
            LD      hl,(0x088c)
            DEC     hl
            RLD
            INC     hl
            RLD
            JR      0x0479
            LD      c,a
            INC     hl
            LD      b,(hl)
            DEC     hl
            RRCA
            LD      a,(hl)
            JR      c,0x04db
            INC     a
            INC     a
            DEC     a
            INC     b
            CP      b
            JR      nc,0x04e5
            LD      (hl),a
            XOR     a
            DEC     a
            SCF
            RET
            BIT     0,c
            JR      nz,0x04ec
            XOR     a
            JR      0x04e0
            DEC     b
            LD      a,b
            JR      0x04e0
            LD      hl,0x3000
            CALL    0x0680
            LD      hl,0x08a4
            LD      b,0x0c
            XOR     a
            CALL    0x064b
            LD      hl,0x5000
            CALL    0x0684
            LD      hl,(0x08a6)
            LD      bc,(0x08a8)
            CALL    0x05c9
            JR      nz,0x0516
            LD      a,b
            OR      a
            JR      z,0x0526
            XOR     a
            PUSH    af
            EXX
            LD      hl,0x0214
            CALL    0x0684
            EXX
            XOR     a
            CALL    0x064b
            POP     af
            JR      nz,0x0508
            LD      hl,0x1000
            CALL    0x0684
            LD      a,0x05
            JP      0x03e6
            LD      bc,0x1000
            CALL    0x0630
            JR      c,0x0531
            DEC     bc
            LD      a,b
            OR      c
            JR      nz,0x0534
            LD      b,0x0c
            LD      hl,0x08a4
            CALL    0x0630
            JR      nc,0x0543
            CALL    0x05e7
            JR      nz,0x05a1
            LD      bc,0x0800
            LD      hl,(0x08a4)
            CALL    0x0830
            LD      a,0x47
            LD      (0x0805),a
            LD      bc,0x01f2
            PUSH    bc
            CALL    0x0836
            POP     bc
            DEC     bc
            LD      a,b
            OR      c
            JR      nz,0x055e
            LD      hl,(0x0898)
            INC     hl
            LD      a,h
            OR      l
            DEC     hl
            JR      z,0x057a
            LD      de,(0x08a4)
            OR      a
            SBC     hl,de
            JR      nz,0x0531
            LD      hl,(0x089a)
            INC     hl
            LD      a,h
            OR      l
            DEC     hl
            JR      nz,0x0586
            LD      hl,(0x08a6)
            LD      bc,(0x08a8)
            CALL    0x05c9
            JR      nz,0x0594
            LD      a,b
            OR      a
            JR      z,0x059d
            XOR     a
            PUSH    af
            CALL    0x05e3
            JR      nz,0x05a0
            POP     af
            JR      nz,0x0586
            XOR     a
            JR      0x05a1
            POP     de
            JR      nz,0x05b4
            LD      hl,(0x08aa)
            INC     hl
            LD      a,h
            OR      l
            DEC     hl
            JR      z,0x05b3
            LD      a,(0x088a)
            OR      a
            JR      nz,0x05b3
            JP      (hl)
            XOR     a
            LD      de,0x0768
            LD      hl,0x075c
            JR      nz,0x05be
            LD      l,0x58
            LD      a,(0x088f)
            RLCA
            ADD     a,e
            LD      e,a
            NOP
            XOR     a
            JP      0x0047
            LD      a,b
            AND     0x0f
            LD      de,0x07d0
            ADD     a,e
            LD      e,a
            LD      a,(de)
            OUT     (0x02),a
            LD      a,b
            OR      a
            JR      z,0x05e1
            DEC     b
            LD      (0x08a8),bc
            LD      b,0x00
            OR      a
            RET
            LD      b,c
            RET
            LD      a,(0x088a)
            LD      c,a
            XOR     a
            PUSH    af
            CALL    0x060b
            BIT     1,c
            JR      nz,0x05fe
            LD      (hl),e
            INC     hl
            POP     af
            ADD     a,e
            DJNZ    0x05e8
            PUSH    af
            CALL    0x060b
            POP     af
            DEC     e
            CP      e
            RET
            BIT     0,c
            JR      z,0x05f2
            POP     af
            LD      d,a
            LD      a,e
            CP      (hl)
            INC     hl
            LD      a,d
            JR      z,0x05f3
            RET
            CALL    0x0618
            LD      d,0x08
            CALL    0x0618
            RR      e
            DEC     d
            JR      nz,0x0610
            EXX
            LD      hl,0x0000
            CALL    0x0630
            JR      c,0x0627
            DEC     l
            DEC     l
            SET     0,h
            JR      0x061c
            INC     l
            BIT     0,h
            JR      z,0x061c
            RL      l
            EXX
            RET
            LD      de,0x0000
            IN      a,(0x03)
            INC     de
            RLA
            JR      nc,0x0633
            XOR     a
            OUT     (0x01),a
            IN      a,(0x03)
            INC     de
            RLA
            JR      c,0x063c
            LD      a,0x84
            OUT     (0x01),a
            LD      a,e
            CP      0x1a
            RET
            EX      af,af'
            LD      e,(hl)
            ADD     a,e
            EX      af,af'
            CALL    0x0657
            INC     hl
            DJNZ    0x064a
            EX      af,af'
            INC     a
            LD      e,a
            LD      d,0x08
            OR      a
            CALL    0x0666
            RR      e
            CALL    0x0666
            DEC     d
            JR      nz,0x065d
            SCF
            EXX
            LD      h,0x00
            JR      c,0x0674
            LD      l,0x10
            CALL    0x0684
            LD      l,0x04
            JR      0x067b
            LD      l,0x08
            CALL    0x0684
            LD      l,0x08
            CALL    0x0680
            EXX
            RET
            LD      c,0x29
            JR      0x0686
            LD      c,0x11
            LD      a,(0x088f)
            OR      a
            JR      nz,0x068e
            SRL     l
            LD      de,0x0001
            LD      a,0x84
            OUT     (0x01),a
            LD      b,c
            DJNZ    0x0696
            XOR     0x80
            SBC     hl,de
            JR      nz,0x0693
            RET
            LD      hl,0x0752
            LD      de,0x0800
            LD      bc,0x0006
            LDIR
            JP      0x0050
            IN      a,(0x03)
            BIT     6,a
            JR      z,0x06bb
            DJNZ    0x06ad
            XOR     a
            LD      (0x0825),a
            DEC     a
            RET
            LD      a,(0x0825)
            OR      a
            JR      nz,0x06c1
            DJNZ    0x06bb
            SCF
            JR      nz,0x06ba
            DEC     a
            LD      (0x0825),a
            IN      a,(0x00)
            AND     0x1f
            BIT     7,a
            SCF
            LD      (0x0820),a
            RET
            LD      hl,0x07b5
            LD      bc,0x0404
            LD      de,0x0500
            DEC     de
            LD      a,d
            OR      e
            JR      nz,0x06de
            OUTI
            JR      nz,0x06db
            DJNZ    0x06e7
            IN      a,(0x84)
            SUB     0x20
            LD      (0x0821),a
            RET
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            JP      0x043f
            JP      0x043f
            JP      0x043b
            JP      0x0437
            JP      0x0426
            NOP
            NOP
            NOP
            RST     0x38
            RST     0x38
            NOP
            RST     0x38
            NOP
            NOP
            LD      a,(bc)
            LD      (hl),b
            NOP
            NOP
            EX      af,af'
            NOP
            ADD     hl,bc
            JP      0x01d5
            JP      0x01da
            JP      0x01ba
            JP      0x01ee
            JP      0x0224
            JP      0x0227
            JP      0x0181
            JP      0x00b2
            JP      0x023c
            AND     a
            LD      l,a
            JP      pe,0xa7c7
            LD      l,a
            JP      pe,0xc6c7
            RST     0x00
            AND     a
            ADD     a,0xc6
            RST     0x00
            AND     a
            ADD     a,0xc2
            EX      de,hl
            LD      l,a
            CALL    pe,0xc704
            LD      h,h
            CALL    pe,0xc704
            LD      b,h
            LD      b,h
            JR      z,0x07bc
            LD      c,a
            LD      l,a
            AND     a
            AND     a
            LD      b,a
            LD      l,a
            JR      z,0x0722
            INC     b
            LD      l,(hl)
            INC     b
            JP      nz,0xc2e6
            JP      0x04a7
            ADD     a,0x04
            AND     a
            ADD     a,0xe6
            JP      0xc2a7
            CALL    pe,0xffff
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            NOP
            RST     0x38
            ADD     a,0x07
            SBC     a,c
            EX      af,af'
            NOP
            INC     bc
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            NOP
            INC     b
            NOP
            RLCA
            LD      a,(0x6007)
            RLCA
            RET
            LD      c,a
            JP      0x476f
            AND     0xc3
            CALL    pe,0x6ec7
            JP      nz,0x6e28
            JR      z,0x0750
            LD      a,a
            LD      d,a
            OR      0xd3
            CALL    m,0x7ed7
            JP      nc,0x4fa7
            RST     0x38
            LD      b,h
            LD      h,c
            LD      (hl),h
            LD      h,c
            LD      b,c
            LD      h,h
            LD      h,h
            LD      (hl),d
            JR      c,0x07b8
            LD      b,0x0c
            LD      b,(hl)
            LD      (hl),e
            DEC     l
            RST     0x38
            ADD     a,h
            ADD     a,a
            ADC     a,d
            ADC     a,l
            CALL    nz,0xcac7
            CALL    0x0480
            LD      b,a
            INC     b
            AND     a
            INC     b
            RST     0x00
            INC     b
            EX      (sp),hl
            RST     0x38
            RST     0x38
            EX      de,hl
            JR      z,0x07a0
            XOR     l
            LD      l,0xa7
            RST     0x20
            ADD     hl,hl
            RST     0x28
            CPL
            LD      l,a
            AND     0xc3
            CALL    pe,0x47c7
            JP      nc,0xe303
            LD      (bc),a
            LD      e,(hl)
            NOP
            RST     0x38
            RST     0x38
            OUT     (0x02),a
            XOR     (hl)
            NOP
            SBC     a,0x02
            LD      b,c
            INC     bc
            DB      0xed,0x0
            RET     pe
            LD      (bc),a
            JP      p,0xff02
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
            RST     0x38
