{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,427) ([224,11394,4097,0,0,0,0,59376,38495,0,0,0,0,0,32824,19232,1792,25616,9,0,0,0,128,0,4096,28672,16640,150,64766,13003,0,32768,0,4,0,65151,2413,16384,31,0,0,32768,2051,1202,112,38465,3584,51232,49170,1025,601,32824,19232,1792,25616,57353,33280,300,16412,9616,896,45576,28676,16640,150,8206,4808,448,22788,63490,16371,203,0,0,16384,13,0,0,0,0,0,0,0,0,0,0,0,0,53440,7,6144,250,0,8000,0,59392,3,896,45576,28676,16640,150,0,53248,0,0,0,0,32,0,26624,0,0,0,0,32768,65343,1266,59376,38751,3584,51232,49170,32671,1625,32824,19232,1792,25616,9,0,128,16412,9616,0,0,0,0,1664,0,0,40448,62,0,0,0,0,4096,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","true","false","num","'+'","'-'","'*'","'/'","'='","'<'","'>'","\"==\"","'!='","'!'","'>='","'<='","\"&&\"","'||'","','","if","then","else","var","let","in","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","%eof"]
        bit_start = st * 37
        bit_end = (st + 1) * 37
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..36]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_2
action_0 (18) = happyShift action_6
action_0 (24) = happyShift action_7
action_0 (27) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (30) = happyShift action_10
action_0 (33) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (8) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_5
action_3 (8) = happyShift action_2
action_3 (9) = happyShift action_18
action_3 (10) = happyShift action_19
action_3 (11) = happyShift action_20
action_3 (12) = happyShift action_21
action_3 (15) = happyShift action_22
action_3 (16) = happyShift action_23
action_3 (17) = happyShift action_24
action_3 (18) = happyShift action_6
action_3 (19) = happyShift action_25
action_3 (20) = happyShift action_26
action_3 (21) = happyShift action_27
action_3 (22) = happyShift action_28
action_3 (24) = happyShift action_7
action_3 (27) = happyShift action_8
action_3 (28) = happyShift action_9
action_3 (30) = happyShift action_10
action_3 (33) = happyShift action_29
action_3 (37) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_4
action_6 (7) = happyShift action_5
action_6 (8) = happyShift action_2
action_6 (18) = happyShift action_6
action_6 (24) = happyShift action_7
action_6 (27) = happyShift action_8
action_6 (28) = happyShift action_9
action_6 (30) = happyShift action_10
action_6 (33) = happyShift action_11
action_6 (4) = happyGoto action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (6) = happyShift action_4
action_7 (7) = happyShift action_5
action_7 (8) = happyShift action_2
action_7 (18) = happyShift action_6
action_7 (24) = happyShift action_7
action_7 (27) = happyShift action_8
action_7 (28) = happyShift action_9
action_7 (30) = happyShift action_10
action_7 (33) = happyShift action_11
action_7 (4) = happyGoto action_15
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_2

action_9 (27) = happyShift action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (27) = happyShift action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (8) = happyShift action_2
action_11 (18) = happyShift action_6
action_11 (24) = happyShift action_7
action_11 (27) = happyShift action_8
action_11 (28) = happyShift action_9
action_11 (30) = happyShift action_10
action_11 (33) = happyShift action_11
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_5
action_12 (8) = happyShift action_2
action_12 (9) = happyShift action_18
action_12 (10) = happyShift action_19
action_12 (11) = happyShift action_20
action_12 (12) = happyShift action_21
action_12 (15) = happyShift action_22
action_12 (16) = happyShift action_23
action_12 (17) = happyShift action_24
action_12 (18) = happyShift action_6
action_12 (19) = happyShift action_25
action_12 (20) = happyShift action_26
action_12 (21) = happyShift action_27
action_12 (22) = happyShift action_28
action_12 (24) = happyShift action_7
action_12 (27) = happyShift action_8
action_12 (28) = happyShift action_9
action_12 (30) = happyShift action_10
action_12 (33) = happyShift action_29
action_12 (34) = happyShift action_45
action_12 (4) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (31) = happyShift action_44
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_43
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_2
action_15 (9) = happyShift action_18
action_15 (10) = happyShift action_19
action_15 (11) = happyShift action_20
action_15 (12) = happyShift action_21
action_15 (15) = happyShift action_22
action_15 (16) = happyShift action_23
action_15 (17) = happyShift action_24
action_15 (18) = happyShift action_6
action_15 (19) = happyShift action_25
action_15 (20) = happyShift action_26
action_15 (21) = happyShift action_27
action_15 (22) = happyShift action_28
action_15 (24) = happyShift action_7
action_15 (25) = happyShift action_42
action_15 (27) = happyShift action_8
action_15 (28) = happyShift action_9
action_15 (30) = happyShift action_10
action_15 (33) = happyShift action_29
action_15 (4) = happyGoto action_17
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (8) = happyShift action_2
action_16 (15) = happyShift action_22
action_16 (16) = happyShift action_23
action_16 (17) = happyShift action_24
action_16 (18) = happyShift action_6
action_16 (19) = happyShift action_25
action_16 (20) = happyShift action_26
action_16 (21) = happyShift action_27
action_16 (22) = happyShift action_28
action_16 (27) = happyShift action_8
action_16 (28) = happyShift action_9
action_16 (30) = happyShift action_10
action_16 (33) = happyShift action_29
action_16 (4) = happyGoto action_17
action_16 _ = happyReduce_22

action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_2
action_17 (9) = happyShift action_18
action_17 (10) = happyShift action_19
action_17 (11) = happyShift action_20
action_17 (12) = happyShift action_21
action_17 (15) = happyShift action_22
action_17 (16) = happyShift action_23
action_17 (17) = happyShift action_24
action_17 (18) = happyShift action_6
action_17 (19) = happyShift action_25
action_17 (20) = happyShift action_26
action_17 (21) = happyShift action_27
action_17 (22) = happyShift action_28
action_17 (24) = happyShift action_7
action_17 (27) = happyShift action_8
action_17 (28) = happyShift action_9
action_17 (30) = happyShift action_10
action_17 (33) = happyShift action_29
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_14

action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_2
action_18 (18) = happyShift action_6
action_18 (24) = happyShift action_7
action_18 (27) = happyShift action_8
action_18 (28) = happyShift action_9
action_18 (30) = happyShift action_10
action_18 (33) = happyShift action_11
action_18 (4) = happyGoto action_41
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_2
action_19 (18) = happyShift action_6
action_19 (24) = happyShift action_7
action_19 (27) = happyShift action_8
action_19 (28) = happyShift action_9
action_19 (30) = happyShift action_10
action_19 (33) = happyShift action_11
action_19 (4) = happyGoto action_40
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_2
action_20 (18) = happyShift action_6
action_20 (24) = happyShift action_7
action_20 (27) = happyShift action_8
action_20 (28) = happyShift action_9
action_20 (30) = happyShift action_10
action_20 (33) = happyShift action_11
action_20 (4) = happyGoto action_39
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_2
action_21 (18) = happyShift action_6
action_21 (24) = happyShift action_7
action_21 (27) = happyShift action_8
action_21 (28) = happyShift action_9
action_21 (30) = happyShift action_10
action_21 (33) = happyShift action_11
action_21 (4) = happyGoto action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_2
action_22 (18) = happyShift action_6
action_22 (24) = happyShift action_7
action_22 (27) = happyShift action_8
action_22 (28) = happyShift action_9
action_22 (30) = happyShift action_10
action_22 (33) = happyShift action_11
action_22 (4) = happyGoto action_37
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_2
action_23 (18) = happyShift action_6
action_23 (24) = happyShift action_7
action_23 (27) = happyShift action_8
action_23 (28) = happyShift action_9
action_23 (30) = happyShift action_10
action_23 (33) = happyShift action_11
action_23 (4) = happyGoto action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_2
action_24 (18) = happyShift action_6
action_24 (24) = happyShift action_7
action_24 (27) = happyShift action_8
action_24 (28) = happyShift action_9
action_24 (30) = happyShift action_10
action_24 (33) = happyShift action_11
action_24 (4) = happyGoto action_35
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_2
action_25 (18) = happyShift action_6
action_25 (24) = happyShift action_7
action_25 (27) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (30) = happyShift action_10
action_25 (33) = happyShift action_11
action_25 (4) = happyGoto action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_2
action_26 (18) = happyShift action_6
action_26 (24) = happyShift action_7
action_26 (27) = happyShift action_8
action_26 (28) = happyShift action_9
action_26 (30) = happyShift action_10
action_26 (33) = happyShift action_11
action_26 (4) = happyGoto action_33
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_2
action_27 (18) = happyShift action_6
action_27 (24) = happyShift action_7
action_27 (27) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (30) = happyShift action_10
action_27 (33) = happyShift action_11
action_27 (4) = happyGoto action_32
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_2
action_28 (18) = happyShift action_6
action_28 (24) = happyShift action_7
action_28 (27) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (30) = happyShift action_10
action_28 (33) = happyShift action_11
action_28 (4) = happyGoto action_31
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_2
action_29 (18) = happyShift action_6
action_29 (24) = happyShift action_7
action_29 (27) = happyShift action_8
action_29 (28) = happyShift action_9
action_29 (30) = happyShift action_10
action_29 (33) = happyShift action_11
action_29 (4) = happyGoto action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_2
action_30 (9) = happyShift action_18
action_30 (10) = happyShift action_19
action_30 (11) = happyShift action_20
action_30 (12) = happyShift action_21
action_30 (15) = happyShift action_22
action_30 (16) = happyShift action_23
action_30 (17) = happyShift action_24
action_30 (18) = happyShift action_6
action_30 (19) = happyShift action_25
action_30 (20) = happyShift action_26
action_30 (21) = happyShift action_27
action_30 (22) = happyShift action_28
action_30 (23) = happyShift action_52
action_30 (24) = happyShift action_7
action_30 (27) = happyShift action_8
action_30 (28) = happyShift action_9
action_30 (30) = happyShift action_10
action_30 (33) = happyShift action_29
action_30 (34) = happyShift action_45
action_30 (4) = happyGoto action_17
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_2
action_31 (9) = happyShift action_18
action_31 (10) = happyShift action_19
action_31 (11) = happyShift action_20
action_31 (12) = happyShift action_21
action_31 (15) = happyShift action_22
action_31 (16) = happyShift action_23
action_31 (17) = happyShift action_24
action_31 (18) = happyShift action_6
action_31 (19) = happyShift action_25
action_31 (20) = happyShift action_26
action_31 (21) = happyShift action_27
action_31 (22) = happyShift action_28
action_31 (24) = happyShift action_7
action_31 (27) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (30) = happyShift action_10
action_31 (33) = happyShift action_29
action_31 (4) = happyGoto action_17
action_31 _ = happyReduce_10

action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_2
action_32 (15) = happyShift action_22
action_32 (16) = happyShift action_23
action_32 (17) = happyShift action_24
action_32 (19) = happyShift action_25
action_32 (20) = happyShift action_26
action_32 (22) = happyShift action_28
action_32 (27) = happyShift action_8
action_32 (28) = happyShift action_9
action_32 (30) = happyShift action_10
action_32 (33) = happyShift action_29
action_32 (4) = happyGoto action_17
action_32 _ = happyReduce_9

action_33 (6) = happyShift action_4
action_33 (7) = happyShift action_5
action_33 (8) = happyShift action_2
action_33 (16) = happyShift action_23
action_33 (22) = happyShift action_28
action_33 (27) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (30) = happyShift action_10
action_33 (33) = happyShift action_29
action_33 (4) = happyGoto action_17
action_33 _ = happyReduce_19

action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (8) = happyShift action_2
action_34 (16) = happyShift action_23
action_34 (22) = happyShift action_28
action_34 (27) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (30) = happyShift action_10
action_34 (33) = happyShift action_29
action_34 (4) = happyGoto action_17
action_34 _ = happyReduce_18

action_35 (6) = happyShift action_4
action_35 (7) = happyShift action_5
action_35 (8) = happyShift action_2
action_35 (16) = happyShift action_23
action_35 (22) = happyShift action_28
action_35 (27) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (30) = happyShift action_10
action_35 (33) = happyShift action_29
action_35 (4) = happyGoto action_17
action_35 _ = happyReduce_17

action_36 (6) = happyShift action_4
action_36 (7) = happyShift action_5
action_36 (8) = happyShift action_2
action_36 (9) = happyShift action_18
action_36 (10) = happyShift action_19
action_36 (11) = happyShift action_20
action_36 (12) = happyShift action_21
action_36 (15) = happyShift action_22
action_36 (16) = happyShift action_23
action_36 (17) = happyShift action_24
action_36 (18) = happyShift action_6
action_36 (19) = happyShift action_25
action_36 (20) = happyShift action_26
action_36 (21) = happyShift action_27
action_36 (22) = happyShift action_28
action_36 (24) = happyShift action_7
action_36 (27) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (30) = happyShift action_10
action_36 (33) = happyShift action_29
action_36 (4) = happyGoto action_17
action_36 _ = happyReduce_16

action_37 (6) = happyShift action_4
action_37 (7) = happyShift action_5
action_37 (8) = happyShift action_2
action_37 (9) = happyReduce_20
action_37 (10) = happyReduce_20
action_37 (11) = happyReduce_20
action_37 (12) = happyReduce_20
action_37 (15) = happyReduce_20
action_37 (16) = happyShift action_23
action_37 (17) = happyReduce_20
action_37 (19) = happyReduce_20
action_37 (20) = happyReduce_20
action_37 (21) = happyReduce_20
action_37 (22) = happyShift action_28
action_37 (23) = happyReduce_20
action_37 (24) = happyReduce_20
action_37 (25) = happyReduce_20
action_37 (26) = happyReduce_20
action_37 (27) = happyShift action_8
action_37 (28) = happyShift action_9
action_37 (29) = happyReduce_20
action_37 (30) = happyShift action_10
action_37 (33) = happyShift action_29
action_37 (34) = happyReduce_20
action_37 (37) = happyReduce_20
action_37 (4) = happyGoto action_17
action_37 _ = happyReduce_20

action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_5
action_38 (8) = happyShift action_2
action_38 (9) = happyShift action_18
action_38 (10) = happyShift action_19
action_38 (15) = happyShift action_22
action_38 (16) = happyShift action_23
action_38 (17) = happyShift action_24
action_38 (18) = happyShift action_6
action_38 (19) = happyShift action_25
action_38 (20) = happyShift action_26
action_38 (21) = happyShift action_27
action_38 (22) = happyShift action_28
action_38 (27) = happyShift action_8
action_38 (28) = happyShift action_9
action_38 (30) = happyShift action_10
action_38 (33) = happyShift action_29
action_38 (4) = happyGoto action_17
action_38 _ = happyReduce_7

action_39 (6) = happyShift action_4
action_39 (7) = happyShift action_5
action_39 (8) = happyShift action_2
action_39 (9) = happyShift action_18
action_39 (10) = happyShift action_19
action_39 (15) = happyShift action_22
action_39 (16) = happyShift action_23
action_39 (17) = happyShift action_24
action_39 (18) = happyShift action_6
action_39 (19) = happyShift action_25
action_39 (20) = happyShift action_26
action_39 (21) = happyShift action_27
action_39 (22) = happyShift action_28
action_39 (27) = happyShift action_8
action_39 (28) = happyShift action_9
action_39 (30) = happyShift action_10
action_39 (33) = happyShift action_29
action_39 (4) = happyGoto action_17
action_39 _ = happyReduce_8

action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_5
action_40 (8) = happyShift action_2
action_40 (15) = happyShift action_22
action_40 (16) = happyShift action_23
action_40 (17) = happyShift action_24
action_40 (18) = happyShift action_6
action_40 (19) = happyShift action_25
action_40 (20) = happyShift action_26
action_40 (21) = happyShift action_27
action_40 (22) = happyShift action_28
action_40 (27) = happyShift action_8
action_40 (28) = happyShift action_9
action_40 (30) = happyShift action_10
action_40 (33) = happyShift action_29
action_40 (4) = happyGoto action_17
action_40 _ = happyReduce_6

action_41 (6) = happyShift action_4
action_41 (7) = happyShift action_5
action_41 (8) = happyShift action_2
action_41 (15) = happyShift action_22
action_41 (16) = happyShift action_23
action_41 (17) = happyShift action_24
action_41 (18) = happyShift action_6
action_41 (19) = happyShift action_25
action_41 (20) = happyShift action_26
action_41 (21) = happyShift action_27
action_41 (22) = happyShift action_28
action_41 (27) = happyShift action_8
action_41 (28) = happyShift action_9
action_41 (30) = happyShift action_10
action_41 (33) = happyShift action_29
action_41 (4) = happyGoto action_17
action_41 _ = happyReduce_5

action_42 (6) = happyShift action_4
action_42 (7) = happyShift action_5
action_42 (8) = happyShift action_2
action_42 (18) = happyShift action_6
action_42 (24) = happyShift action_7
action_42 (27) = happyShift action_8
action_42 (28) = happyShift action_9
action_42 (30) = happyShift action_10
action_42 (33) = happyShift action_11
action_42 (4) = happyGoto action_51
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_4
action_43 (7) = happyShift action_5
action_43 (8) = happyShift action_2
action_43 (18) = happyShift action_6
action_43 (24) = happyShift action_7
action_43 (27) = happyShift action_8
action_43 (28) = happyShift action_9
action_43 (30) = happyShift action_10
action_43 (33) = happyShift action_11
action_43 (4) = happyGoto action_50
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (33) = happyShift action_47
action_44 (35) = happyShift action_48
action_44 (36) = happyShift action_49
action_44 (5) = happyGoto action_46
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_15

action_46 (32) = happyShift action_57
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (33) = happyShift action_47
action_47 (35) = happyShift action_48
action_47 (36) = happyShift action_49
action_47 (5) = happyGoto action_56
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_24

action_49 _ = happyReduce_25

action_50 (6) = happyShift action_4
action_50 (7) = happyShift action_5
action_50 (8) = happyShift action_2
action_50 (9) = happyShift action_18
action_50 (10) = happyShift action_19
action_50 (11) = happyShift action_20
action_50 (12) = happyShift action_21
action_50 (15) = happyShift action_22
action_50 (16) = happyShift action_23
action_50 (17) = happyShift action_24
action_50 (18) = happyShift action_6
action_50 (19) = happyShift action_25
action_50 (20) = happyShift action_26
action_50 (21) = happyShift action_27
action_50 (22) = happyShift action_28
action_50 (24) = happyShift action_7
action_50 (27) = happyShift action_8
action_50 (28) = happyShift action_9
action_50 (29) = happyShift action_55
action_50 (30) = happyShift action_10
action_50 (33) = happyShift action_29
action_50 (4) = happyGoto action_17
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_4
action_51 (7) = happyShift action_5
action_51 (8) = happyShift action_2
action_51 (9) = happyShift action_18
action_51 (10) = happyShift action_19
action_51 (11) = happyShift action_20
action_51 (12) = happyShift action_21
action_51 (15) = happyShift action_22
action_51 (16) = happyShift action_23
action_51 (17) = happyShift action_24
action_51 (18) = happyShift action_6
action_51 (19) = happyShift action_25
action_51 (20) = happyShift action_26
action_51 (21) = happyShift action_27
action_51 (22) = happyShift action_28
action_51 (24) = happyShift action_7
action_51 (26) = happyShift action_54
action_51 (27) = happyShift action_8
action_51 (28) = happyShift action_9
action_51 (30) = happyShift action_10
action_51 (33) = happyShift action_29
action_51 (4) = happyGoto action_17
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_4
action_52 (7) = happyShift action_5
action_52 (8) = happyShift action_2
action_52 (18) = happyShift action_6
action_52 (24) = happyShift action_7
action_52 (27) = happyShift action_8
action_52 (28) = happyShift action_9
action_52 (30) = happyShift action_10
action_52 (33) = happyShift action_11
action_52 (4) = happyGoto action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_4
action_53 (7) = happyShift action_5
action_53 (8) = happyShift action_2
action_53 (9) = happyShift action_18
action_53 (10) = happyShift action_19
action_53 (11) = happyShift action_20
action_53 (12) = happyShift action_21
action_53 (15) = happyShift action_22
action_53 (16) = happyShift action_23
action_53 (17) = happyShift action_24
action_53 (18) = happyShift action_6
action_53 (19) = happyShift action_25
action_53 (20) = happyShift action_26
action_53 (21) = happyShift action_27
action_53 (22) = happyShift action_28
action_53 (24) = happyShift action_7
action_53 (27) = happyShift action_8
action_53 (28) = happyShift action_9
action_53 (30) = happyShift action_10
action_53 (33) = happyShift action_29
action_53 (34) = happyShift action_62
action_53 (4) = happyGoto action_17
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_4
action_54 (7) = happyShift action_5
action_54 (8) = happyShift action_2
action_54 (18) = happyShift action_6
action_54 (24) = happyShift action_7
action_54 (27) = happyShift action_8
action_54 (28) = happyShift action_9
action_54 (30) = happyShift action_10
action_54 (33) = happyShift action_11
action_54 (4) = happyGoto action_61
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_4
action_55 (7) = happyShift action_5
action_55 (8) = happyShift action_2
action_55 (18) = happyShift action_6
action_55 (24) = happyShift action_7
action_55 (27) = happyShift action_8
action_55 (28) = happyShift action_9
action_55 (30) = happyShift action_10
action_55 (33) = happyShift action_11
action_55 (4) = happyGoto action_60
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (32) = happyShift action_59
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (6) = happyShift action_4
action_57 (7) = happyShift action_5
action_57 (8) = happyShift action_2
action_57 (18) = happyShift action_6
action_57 (24) = happyShift action_7
action_57 (27) = happyShift action_8
action_57 (28) = happyShift action_9
action_57 (30) = happyShift action_10
action_57 (33) = happyShift action_11
action_57 (4) = happyGoto action_58
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_4
action_58 (7) = happyShift action_5
action_58 (8) = happyShift action_2
action_58 (9) = happyShift action_18
action_58 (10) = happyShift action_19
action_58 (11) = happyShift action_20
action_58 (12) = happyShift action_21
action_58 (15) = happyShift action_22
action_58 (16) = happyShift action_23
action_58 (17) = happyShift action_24
action_58 (18) = happyShift action_6
action_58 (19) = happyShift action_25
action_58 (20) = happyShift action_26
action_58 (21) = happyShift action_27
action_58 (22) = happyShift action_28
action_58 (24) = happyShift action_7
action_58 (27) = happyShift action_8
action_58 (28) = happyShift action_9
action_58 (30) = happyShift action_10
action_58 (33) = happyShift action_29
action_58 (4) = happyGoto action_17
action_58 _ = happyReduce_12

action_59 (33) = happyShift action_47
action_59 (35) = happyShift action_48
action_59 (36) = happyShift action_49
action_59 (5) = happyGoto action_63
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_4
action_60 (7) = happyShift action_5
action_60 (8) = happyShift action_2
action_60 (9) = happyShift action_18
action_60 (10) = happyShift action_19
action_60 (11) = happyShift action_20
action_60 (12) = happyShift action_21
action_60 (15) = happyShift action_22
action_60 (16) = happyShift action_23
action_60 (17) = happyShift action_24
action_60 (18) = happyShift action_6
action_60 (19) = happyShift action_25
action_60 (20) = happyShift action_26
action_60 (21) = happyShift action_27
action_60 (22) = happyShift action_28
action_60 (24) = happyShift action_7
action_60 (27) = happyShift action_8
action_60 (28) = happyShift action_9
action_60 (30) = happyShift action_10
action_60 (33) = happyShift action_29
action_60 (4) = happyGoto action_17
action_60 _ = happyReduce_13

action_61 (6) = happyShift action_4
action_61 (7) = happyShift action_5
action_61 (8) = happyShift action_2
action_61 (9) = happyShift action_18
action_61 (10) = happyShift action_19
action_61 (11) = happyShift action_20
action_61 (12) = happyShift action_21
action_61 (15) = happyShift action_22
action_61 (16) = happyShift action_23
action_61 (17) = happyShift action_24
action_61 (18) = happyShift action_6
action_61 (19) = happyShift action_25
action_61 (20) = happyShift action_26
action_61 (21) = happyShift action_27
action_61 (22) = happyShift action_28
action_61 (24) = happyFail []
action_61 (27) = happyShift action_8
action_61 (28) = happyShift action_9
action_61 (30) = happyShift action_10
action_61 (33) = happyShift action_29
action_61 (4) = happyGoto action_17
action_61 _ = happyReduce_11

action_62 _ = happyReduce_23

action_63 (34) = happyShift action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_26

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NoEq happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BiEq happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (SmEq happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Big happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Small happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 6 4 happyReduction_23
happyReduction_23 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_0 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_26 = happyReduce 5 5 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 6;
	TokenFalse -> cont 7;
	TokenNum happy_dollar_dollar -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenDiv -> cont 12;
	TokenAssig -> cont 13;
	TokenSmall -> cont 14;
	TokenBig -> cont 15;
	TokenEq -> cont 16;
	TokenNoEq -> cont 17;
	TokenNot -> cont 18;
	TokenSmEq -> cont 19;
	TokenBiEq -> cont 20;
	TokenAnd -> cont 21;
	TokenOr -> cont 22;
	TokenComm -> cont 23;
	TokenIf -> cont 24;
	TokenThen -> cont 25;
	TokenElse -> cont 26;
	TokenVar happy_dollar_dollar -> cont 27;
	TokenLet -> cont 28;
	TokenIn -> cont 29;
	TokenLam -> cont 30;
	TokenColon -> cont 31;
	TokenArrow -> cont 32;
	TokenLParen -> cont 33;
	TokenRParen -> cont 34;
	TokenBool -> cont 35;
	TokenNumber -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
