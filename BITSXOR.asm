BITSXOR AMODE 31 
BITSXOR RMODE ANY 
BITSXOR CSECT 
    SAVE (14,12) 
    USING BITSXOR,15 
    LM     2,3,0(1)     R2 -> TARGET, R3 -> MASK 
    SR     4,4          R4 = 0 (DEFAULT LENGTH OF 1 FOR EXECUTE) 
    LTR    3,3          MASK = LAST PARM? 
    BM     GO           YES: GO 
    L      4,8(,1)      NO: R4 -> LENGTH 
    LH     4,0(,4)      R4 = LENGTH 
    BCTR   4,0          MINUS 1 FOR EXEC 
GO  EX     4,XC         EXECUTE "XC" INSTRUCTION 
    RETURN (14,12),RC=0 RETURN 
XC  XC     0(0,2),0(3)  XC INSTRUCTION FOR EXECUTE 
    END