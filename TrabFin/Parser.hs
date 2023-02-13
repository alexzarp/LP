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
happyExpList = Happy_Data_Array.listArray (0,578) ([2016,25616,9,4,0,0,0,57344,65407,2405,0,0,0,0,0,0,0,8,0,2048,0,0,57352,4103,2404,2016,25616,9,0,0,0,8192,0,0,32,2016,25616,57353,65407,6501,0,0,2,128,0,32736,28159,9,64256,0,2016,25616,57353,4103,2404,2016,25616,9,0,0,2016,25616,57353,4103,2404,2016,25616,57353,4103,2404,2016,25616,57353,4103,2404,2016,25616,57353,4103,2404,2016,25616,57353,4103,2404,2016,25616,57353,4103,2404,0,0,0,27392,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6144,251,0,64280,0,0,251,0,64256,0,32736,26623,57353,65407,2407,32736,26623,57353,4103,2404,2016,25616,9,0,26624,0,0,0,0,1024,0,0,104,0,0,0,0,57344,65407,2533,32736,30207,57353,4103,2404,2016,25616,57353,4103,2404,32736,26111,57369,65407,6501,32736,26111,57369,4103,2404,2016,25616,9,0,1024,2016,25616,9,0,0,0,0,104,0,0,30720,251,0,0,0,0,0,0,0,0,0,0,16,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","true","false","first","second","empty","num","'+'","'-'","'*'","'/'","'='","'<'","'>'","\"==\"","'!='","'!'","'>='","'<='","\"&&\"","'||'","','","if","then","else","var","let","in","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","%eof"]
        bit_start = st * 40
        bit_end = (st + 1) * 40
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..39]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (9) = happyShift action_7
action_0 (10) = happyShift action_8
action_0 (11) = happyShift action_2
action_0 (21) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (31) = happyShift action_12
action_0 (33) = happyShift action_13
action_0 (36) = happyShift action_14
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_5
action_3 (8) = happyShift action_6
action_3 (9) = happyShift action_7
action_3 (10) = happyShift action_8
action_3 (11) = happyShift action_2
action_3 (12) = happyShift action_24
action_3 (13) = happyShift action_25
action_3 (14) = happyShift action_26
action_3 (15) = happyShift action_27
action_3 (17) = happyShift action_28
action_3 (18) = happyShift action_29
action_3 (19) = happyShift action_30
action_3 (20) = happyShift action_31
action_3 (21) = happyShift action_9
action_3 (22) = happyShift action_32
action_3 (23) = happyShift action_33
action_3 (24) = happyShift action_34
action_3 (25) = happyShift action_35
action_3 (27) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (31) = happyShift action_12
action_3 (33) = happyShift action_13
action_3 (36) = happyShift action_14
action_3 (40) = happyAccept
action_3 (4) = happyGoto action_23
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 (36) = happyShift action_22
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (36) = happyShift action_21
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (36) = happyShift action_20
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_6
action_9 (9) = happyShift action_7
action_9 (10) = happyShift action_8
action_9 (11) = happyShift action_2
action_9 (21) = happyShift action_9
action_9 (27) = happyShift action_10
action_9 (30) = happyShift action_11
action_9 (31) = happyShift action_12
action_9 (33) = happyShift action_13
action_9 (36) = happyShift action_14
action_9 (4) = happyGoto action_19
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (8) = happyShift action_6
action_10 (9) = happyShift action_7
action_10 (10) = happyShift action_8
action_10 (11) = happyShift action_2
action_10 (21) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (30) = happyShift action_11
action_10 (31) = happyShift action_12
action_10 (33) = happyShift action_13
action_10 (36) = happyShift action_14
action_10 (4) = happyGoto action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_2

action_12 (30) = happyShift action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (30) = happyShift action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_5
action_14 (8) = happyShift action_6
action_14 (9) = happyShift action_7
action_14 (10) = happyShift action_8
action_14 (11) = happyShift action_2
action_14 (21) = happyShift action_9
action_14 (27) = happyShift action_10
action_14 (30) = happyShift action_11
action_14 (31) = happyShift action_12
action_14 (33) = happyShift action_13
action_14 (36) = happyShift action_14
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_6
action_15 (9) = happyShift action_7
action_15 (10) = happyShift action_8
action_15 (11) = happyShift action_2
action_15 (12) = happyShift action_24
action_15 (13) = happyShift action_25
action_15 (14) = happyShift action_26
action_15 (15) = happyShift action_27
action_15 (17) = happyShift action_28
action_15 (18) = happyShift action_29
action_15 (19) = happyShift action_30
action_15 (20) = happyShift action_31
action_15 (21) = happyShift action_9
action_15 (22) = happyShift action_32
action_15 (23) = happyShift action_33
action_15 (24) = happyShift action_34
action_15 (25) = happyShift action_35
action_15 (27) = happyShift action_10
action_15 (30) = happyShift action_11
action_15 (31) = happyShift action_12
action_15 (33) = happyShift action_13
action_15 (36) = happyShift action_14
action_15 (37) = happyShift action_54
action_15 (4) = happyGoto action_23
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (34) = happyShift action_53
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (16) = happyShift action_52
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (9) = happyShift action_7
action_18 (10) = happyShift action_8
action_18 (11) = happyShift action_2
action_18 (12) = happyShift action_24
action_18 (13) = happyShift action_25
action_18 (14) = happyShift action_26
action_18 (15) = happyShift action_27
action_18 (17) = happyShift action_28
action_18 (18) = happyShift action_29
action_18 (19) = happyShift action_30
action_18 (20) = happyShift action_31
action_18 (21) = happyShift action_9
action_18 (22) = happyShift action_32
action_18 (23) = happyShift action_33
action_18 (24) = happyShift action_34
action_18 (25) = happyShift action_35
action_18 (27) = happyShift action_10
action_18 (28) = happyShift action_51
action_18 (30) = happyShift action_11
action_18 (31) = happyShift action_12
action_18 (33) = happyShift action_13
action_18 (36) = happyShift action_14
action_18 (4) = happyGoto action_23
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_7
action_19 (10) = happyShift action_8
action_19 (11) = happyShift action_2
action_19 (17) = happyShift action_28
action_19 (18) = happyShift action_29
action_19 (19) = happyShift action_30
action_19 (20) = happyShift action_31
action_19 (21) = happyShift action_9
action_19 (22) = happyShift action_32
action_19 (23) = happyShift action_33
action_19 (24) = happyShift action_34
action_19 (25) = happyShift action_35
action_19 (30) = happyShift action_11
action_19 (31) = happyShift action_12
action_19 (33) = happyShift action_13
action_19 (36) = happyShift action_14
action_19 (4) = happyGoto action_23
action_19 _ = happyReduce_22

action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_6
action_20 (9) = happyShift action_7
action_20 (10) = happyShift action_8
action_20 (11) = happyShift action_2
action_20 (21) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (31) = happyShift action_12
action_20 (33) = happyShift action_13
action_20 (36) = happyShift action_14
action_20 (4) = happyGoto action_50
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (9) = happyShift action_7
action_21 (10) = happyShift action_8
action_21 (11) = happyShift action_2
action_21 (21) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (31) = happyShift action_12
action_21 (33) = happyShift action_13
action_21 (36) = happyShift action_14
action_21 (4) = happyGoto action_49
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (9) = happyShift action_7
action_22 (10) = happyShift action_8
action_22 (11) = happyShift action_2
action_22 (21) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (31) = happyShift action_12
action_22 (33) = happyShift action_13
action_22 (36) = happyShift action_14
action_22 (4) = happyGoto action_48
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_6
action_23 (9) = happyShift action_7
action_23 (10) = happyShift action_8
action_23 (11) = happyShift action_2
action_23 (12) = happyShift action_24
action_23 (13) = happyShift action_25
action_23 (14) = happyShift action_26
action_23 (15) = happyShift action_27
action_23 (17) = happyShift action_28
action_23 (18) = happyShift action_29
action_23 (19) = happyShift action_30
action_23 (20) = happyShift action_31
action_23 (21) = happyShift action_9
action_23 (22) = happyShift action_32
action_23 (23) = happyShift action_33
action_23 (24) = happyShift action_34
action_23 (25) = happyShift action_35
action_23 (27) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (31) = happyShift action_12
action_23 (33) = happyShift action_13
action_23 (36) = happyShift action_14
action_23 (4) = happyGoto action_23
action_23 _ = happyReduce_14

action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_6
action_24 (9) = happyShift action_7
action_24 (10) = happyShift action_8
action_24 (11) = happyShift action_2
action_24 (21) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (30) = happyShift action_11
action_24 (31) = happyShift action_12
action_24 (33) = happyShift action_13
action_24 (36) = happyShift action_14
action_24 (4) = happyGoto action_47
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_6
action_25 (9) = happyShift action_7
action_25 (10) = happyShift action_8
action_25 (11) = happyShift action_2
action_25 (21) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (30) = happyShift action_11
action_25 (31) = happyShift action_12
action_25 (33) = happyShift action_13
action_25 (36) = happyShift action_14
action_25 (4) = happyGoto action_46
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (9) = happyShift action_7
action_26 (10) = happyShift action_8
action_26 (11) = happyShift action_2
action_26 (21) = happyShift action_9
action_26 (27) = happyShift action_10
action_26 (30) = happyShift action_11
action_26 (31) = happyShift action_12
action_26 (33) = happyShift action_13
action_26 (36) = happyShift action_14
action_26 (4) = happyGoto action_45
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_6
action_27 (9) = happyShift action_7
action_27 (10) = happyShift action_8
action_27 (11) = happyShift action_2
action_27 (21) = happyShift action_9
action_27 (27) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (31) = happyShift action_12
action_27 (33) = happyShift action_13
action_27 (36) = happyShift action_14
action_27 (4) = happyGoto action_44
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_6
action_28 (9) = happyShift action_7
action_28 (10) = happyShift action_8
action_28 (11) = happyShift action_2
action_28 (21) = happyShift action_9
action_28 (27) = happyShift action_10
action_28 (30) = happyShift action_11
action_28 (31) = happyShift action_12
action_28 (33) = happyShift action_13
action_28 (36) = happyShift action_14
action_28 (4) = happyGoto action_43
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_6
action_29 (9) = happyShift action_7
action_29 (10) = happyShift action_8
action_29 (11) = happyShift action_2
action_29 (21) = happyShift action_9
action_29 (27) = happyShift action_10
action_29 (30) = happyShift action_11
action_29 (31) = happyShift action_12
action_29 (33) = happyShift action_13
action_29 (36) = happyShift action_14
action_29 (4) = happyGoto action_42
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_6
action_30 (9) = happyShift action_7
action_30 (10) = happyShift action_8
action_30 (11) = happyShift action_2
action_30 (21) = happyShift action_9
action_30 (27) = happyShift action_10
action_30 (30) = happyShift action_11
action_30 (31) = happyShift action_12
action_30 (33) = happyShift action_13
action_30 (36) = happyShift action_14
action_30 (4) = happyGoto action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_6
action_31 (9) = happyShift action_7
action_31 (10) = happyShift action_8
action_31 (11) = happyShift action_2
action_31 (21) = happyShift action_9
action_31 (27) = happyShift action_10
action_31 (30) = happyShift action_11
action_31 (31) = happyShift action_12
action_31 (33) = happyShift action_13
action_31 (36) = happyShift action_14
action_31 (4) = happyGoto action_40
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_6
action_32 (9) = happyShift action_7
action_32 (10) = happyShift action_8
action_32 (11) = happyShift action_2
action_32 (21) = happyShift action_9
action_32 (27) = happyShift action_10
action_32 (30) = happyShift action_11
action_32 (31) = happyShift action_12
action_32 (33) = happyShift action_13
action_32 (36) = happyShift action_14
action_32 (4) = happyGoto action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_4
action_33 (7) = happyShift action_5
action_33 (8) = happyShift action_6
action_33 (9) = happyShift action_7
action_33 (10) = happyShift action_8
action_33 (11) = happyShift action_2
action_33 (21) = happyShift action_9
action_33 (27) = happyShift action_10
action_33 (30) = happyShift action_11
action_33 (31) = happyShift action_12
action_33 (33) = happyShift action_13
action_33 (36) = happyShift action_14
action_33 (4) = happyGoto action_38
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (8) = happyShift action_6
action_34 (9) = happyShift action_7
action_34 (10) = happyShift action_8
action_34 (11) = happyShift action_2
action_34 (21) = happyShift action_9
action_34 (27) = happyShift action_10
action_34 (30) = happyShift action_11
action_34 (31) = happyShift action_12
action_34 (33) = happyShift action_13
action_34 (36) = happyShift action_14
action_34 (4) = happyGoto action_37
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_4
action_35 (7) = happyShift action_5
action_35 (8) = happyShift action_6
action_35 (9) = happyShift action_7
action_35 (10) = happyShift action_8
action_35 (11) = happyShift action_2
action_35 (21) = happyShift action_9
action_35 (27) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (31) = happyShift action_12
action_35 (33) = happyShift action_13
action_35 (36) = happyShift action_14
action_35 (4) = happyGoto action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_4
action_36 (7) = happyShift action_5
action_36 (8) = happyShift action_6
action_36 (9) = happyShift action_7
action_36 (10) = happyShift action_8
action_36 (11) = happyShift action_2
action_36 (12) = happyShift action_24
action_36 (13) = happyShift action_25
action_36 (14) = happyShift action_26
action_36 (15) = happyShift action_27
action_36 (17) = happyShift action_28
action_36 (18) = happyShift action_29
action_36 (19) = happyShift action_30
action_36 (20) = happyShift action_31
action_36 (21) = happyShift action_9
action_36 (22) = happyShift action_32
action_36 (23) = happyShift action_33
action_36 (24) = happyShift action_34
action_36 (25) = happyShift action_35
action_36 (27) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (31) = happyShift action_12
action_36 (33) = happyShift action_13
action_36 (36) = happyShift action_14
action_36 (4) = happyGoto action_23
action_36 _ = happyReduce_10

action_37 (6) = happyShift action_4
action_37 (7) = happyShift action_5
action_37 (8) = happyShift action_6
action_37 (9) = happyShift action_7
action_37 (10) = happyShift action_8
action_37 (11) = happyShift action_2
action_37 (17) = happyShift action_28
action_37 (18) = happyShift action_29
action_37 (19) = happyShift action_30
action_37 (20) = happyShift action_31
action_37 (22) = happyShift action_32
action_37 (23) = happyShift action_33
action_37 (25) = happyShift action_35
action_37 (30) = happyShift action_11
action_37 (31) = happyShift action_12
action_37 (33) = happyShift action_13
action_37 (36) = happyShift action_14
action_37 (4) = happyGoto action_23
action_37 _ = happyReduce_9

action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_5
action_38 (8) = happyShift action_6
action_38 (9) = happyShift action_7
action_38 (10) = happyShift action_8
action_38 (11) = happyShift action_2
action_38 (19) = happyShift action_30
action_38 (25) = happyShift action_35
action_38 (30) = happyShift action_11
action_38 (31) = happyShift action_12
action_38 (33) = happyShift action_13
action_38 (36) = happyShift action_14
action_38 (4) = happyGoto action_23
action_38 _ = happyReduce_19

action_39 (6) = happyShift action_4
action_39 (7) = happyShift action_5
action_39 (8) = happyShift action_6
action_39 (9) = happyShift action_7
action_39 (10) = happyShift action_8
action_39 (11) = happyShift action_2
action_39 (19) = happyShift action_30
action_39 (25) = happyShift action_35
action_39 (30) = happyShift action_11
action_39 (31) = happyShift action_12
action_39 (33) = happyShift action_13
action_39 (36) = happyShift action_14
action_39 (4) = happyGoto action_23
action_39 _ = happyReduce_18

action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_5
action_40 (8) = happyShift action_6
action_40 (9) = happyShift action_7
action_40 (10) = happyShift action_8
action_40 (11) = happyShift action_2
action_40 (19) = happyShift action_30
action_40 (25) = happyShift action_35
action_40 (30) = happyShift action_11
action_40 (31) = happyShift action_12
action_40 (33) = happyShift action_13
action_40 (36) = happyShift action_14
action_40 (4) = happyGoto action_23
action_40 _ = happyReduce_17

action_41 (6) = happyShift action_4
action_41 (7) = happyShift action_5
action_41 (8) = happyShift action_6
action_41 (9) = happyShift action_7
action_41 (10) = happyShift action_8
action_41 (11) = happyShift action_2
action_41 (12) = happyShift action_24
action_41 (13) = happyShift action_25
action_41 (14) = happyShift action_26
action_41 (15) = happyShift action_27
action_41 (17) = happyShift action_28
action_41 (18) = happyShift action_29
action_41 (19) = happyShift action_30
action_41 (20) = happyShift action_31
action_41 (21) = happyShift action_9
action_41 (22) = happyShift action_32
action_41 (23) = happyShift action_33
action_41 (24) = happyShift action_34
action_41 (25) = happyShift action_35
action_41 (27) = happyShift action_10
action_41 (30) = happyShift action_11
action_41 (31) = happyShift action_12
action_41 (33) = happyShift action_13
action_41 (36) = happyShift action_14
action_41 (4) = happyGoto action_23
action_41 _ = happyReduce_16

action_42 (6) = happyShift action_4
action_42 (7) = happyShift action_5
action_42 (8) = happyShift action_6
action_42 (9) = happyShift action_7
action_42 (10) = happyShift action_8
action_42 (11) = happyShift action_2
action_42 (19) = happyShift action_30
action_42 (25) = happyShift action_35
action_42 (30) = happyShift action_11
action_42 (31) = happyShift action_12
action_42 (33) = happyShift action_13
action_42 (36) = happyShift action_14
action_42 (4) = happyGoto action_23
action_42 _ = happyReduce_20

action_43 (6) = happyShift action_4
action_43 (7) = happyShift action_5
action_43 (8) = happyShift action_6
action_43 (9) = happyShift action_7
action_43 (10) = happyShift action_8
action_43 (11) = happyShift action_2
action_43 (19) = happyShift action_30
action_43 (25) = happyShift action_35
action_43 (30) = happyShift action_11
action_43 (31) = happyShift action_12
action_43 (33) = happyShift action_13
action_43 (36) = happyShift action_14
action_43 (4) = happyGoto action_23
action_43 _ = happyReduce_21

action_44 (6) = happyShift action_4
action_44 (7) = happyShift action_5
action_44 (8) = happyShift action_6
action_44 (9) = happyShift action_7
action_44 (10) = happyShift action_8
action_44 (11) = happyShift action_2
action_44 (12) = happyShift action_24
action_44 (13) = happyShift action_25
action_44 (17) = happyShift action_28
action_44 (18) = happyShift action_29
action_44 (19) = happyShift action_30
action_44 (20) = happyShift action_31
action_44 (21) = happyShift action_9
action_44 (22) = happyShift action_32
action_44 (23) = happyShift action_33
action_44 (24) = happyShift action_34
action_44 (25) = happyShift action_35
action_44 (30) = happyShift action_11
action_44 (31) = happyShift action_12
action_44 (33) = happyShift action_13
action_44 (36) = happyShift action_14
action_44 (4) = happyGoto action_23
action_44 _ = happyReduce_7

action_45 (6) = happyShift action_4
action_45 (7) = happyShift action_5
action_45 (8) = happyShift action_6
action_45 (9) = happyShift action_7
action_45 (10) = happyShift action_8
action_45 (11) = happyShift action_2
action_45 (12) = happyShift action_24
action_45 (13) = happyShift action_25
action_45 (17) = happyShift action_28
action_45 (18) = happyShift action_29
action_45 (19) = happyShift action_30
action_45 (20) = happyShift action_31
action_45 (21) = happyShift action_9
action_45 (22) = happyShift action_32
action_45 (23) = happyShift action_33
action_45 (24) = happyShift action_34
action_45 (25) = happyShift action_35
action_45 (30) = happyShift action_11
action_45 (31) = happyShift action_12
action_45 (33) = happyShift action_13
action_45 (36) = happyShift action_14
action_45 (4) = happyGoto action_23
action_45 _ = happyReduce_8

action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_6
action_46 (9) = happyShift action_7
action_46 (10) = happyShift action_8
action_46 (11) = happyShift action_2
action_46 (17) = happyShift action_28
action_46 (18) = happyShift action_29
action_46 (19) = happyShift action_30
action_46 (20) = happyShift action_31
action_46 (21) = happyShift action_9
action_46 (22) = happyShift action_32
action_46 (23) = happyShift action_33
action_46 (24) = happyShift action_34
action_46 (25) = happyShift action_35
action_46 (30) = happyShift action_11
action_46 (31) = happyShift action_12
action_46 (33) = happyShift action_13
action_46 (36) = happyShift action_14
action_46 (4) = happyGoto action_23
action_46 _ = happyReduce_6

action_47 (6) = happyShift action_4
action_47 (7) = happyShift action_5
action_47 (8) = happyShift action_6
action_47 (9) = happyShift action_7
action_47 (10) = happyShift action_8
action_47 (11) = happyShift action_2
action_47 (17) = happyShift action_28
action_47 (18) = happyShift action_29
action_47 (19) = happyShift action_30
action_47 (20) = happyShift action_31
action_47 (21) = happyShift action_9
action_47 (22) = happyShift action_32
action_47 (23) = happyShift action_33
action_47 (24) = happyShift action_34
action_47 (25) = happyShift action_35
action_47 (30) = happyShift action_11
action_47 (31) = happyShift action_12
action_47 (33) = happyShift action_13
action_47 (36) = happyShift action_14
action_47 (4) = happyGoto action_23
action_47 _ = happyReduce_5

action_48 (6) = happyShift action_4
action_48 (7) = happyShift action_5
action_48 (8) = happyShift action_6
action_48 (9) = happyShift action_7
action_48 (10) = happyShift action_8
action_48 (11) = happyShift action_2
action_48 (12) = happyShift action_24
action_48 (13) = happyShift action_25
action_48 (14) = happyShift action_26
action_48 (15) = happyShift action_27
action_48 (17) = happyShift action_28
action_48 (18) = happyShift action_29
action_48 (19) = happyShift action_30
action_48 (20) = happyShift action_31
action_48 (21) = happyShift action_9
action_48 (22) = happyShift action_32
action_48 (23) = happyShift action_33
action_48 (24) = happyShift action_34
action_48 (25) = happyShift action_35
action_48 (26) = happyShift action_63
action_48 (27) = happyShift action_10
action_48 (30) = happyShift action_11
action_48 (31) = happyShift action_12
action_48 (33) = happyShift action_13
action_48 (36) = happyShift action_14
action_48 (4) = happyGoto action_23
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_4
action_49 (7) = happyShift action_5
action_49 (8) = happyShift action_6
action_49 (9) = happyShift action_7
action_49 (10) = happyShift action_8
action_49 (11) = happyShift action_2
action_49 (12) = happyShift action_24
action_49 (13) = happyShift action_25
action_49 (14) = happyShift action_26
action_49 (15) = happyShift action_27
action_49 (17) = happyShift action_28
action_49 (18) = happyShift action_29
action_49 (19) = happyShift action_30
action_49 (20) = happyShift action_31
action_49 (21) = happyShift action_9
action_49 (22) = happyShift action_32
action_49 (23) = happyShift action_33
action_49 (24) = happyShift action_34
action_49 (25) = happyShift action_35
action_49 (26) = happyShift action_62
action_49 (27) = happyShift action_10
action_49 (30) = happyShift action_11
action_49 (31) = happyShift action_12
action_49 (33) = happyShift action_13
action_49 (36) = happyShift action_14
action_49 (4) = happyGoto action_23
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_4
action_50 (7) = happyShift action_5
action_50 (8) = happyShift action_6
action_50 (9) = happyShift action_7
action_50 (10) = happyShift action_8
action_50 (11) = happyShift action_2
action_50 (12) = happyShift action_24
action_50 (13) = happyShift action_25
action_50 (14) = happyShift action_26
action_50 (15) = happyShift action_27
action_50 (17) = happyShift action_28
action_50 (18) = happyShift action_29
action_50 (19) = happyShift action_30
action_50 (20) = happyShift action_31
action_50 (21) = happyShift action_9
action_50 (22) = happyShift action_32
action_50 (23) = happyShift action_33
action_50 (24) = happyShift action_34
action_50 (25) = happyShift action_35
action_50 (26) = happyShift action_61
action_50 (27) = happyShift action_10
action_50 (30) = happyShift action_11
action_50 (31) = happyShift action_12
action_50 (33) = happyShift action_13
action_50 (36) = happyShift action_14
action_50 (4) = happyGoto action_23
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_4
action_51 (7) = happyShift action_5
action_51 (8) = happyShift action_6
action_51 (9) = happyShift action_7
action_51 (10) = happyShift action_8
action_51 (11) = happyShift action_2
action_51 (21) = happyShift action_9
action_51 (27) = happyShift action_10
action_51 (30) = happyShift action_11
action_51 (31) = happyShift action_12
action_51 (33) = happyShift action_13
action_51 (36) = happyShift action_14
action_51 (4) = happyGoto action_60
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_4
action_52 (7) = happyShift action_5
action_52 (8) = happyShift action_6
action_52 (9) = happyShift action_7
action_52 (10) = happyShift action_8
action_52 (11) = happyShift action_2
action_52 (21) = happyShift action_9
action_52 (27) = happyShift action_10
action_52 (30) = happyShift action_11
action_52 (31) = happyShift action_12
action_52 (33) = happyShift action_13
action_52 (36) = happyShift action_14
action_52 (4) = happyGoto action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (36) = happyShift action_56
action_53 (38) = happyShift action_57
action_53 (39) = happyShift action_58
action_53 (5) = happyGoto action_55
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_15

action_55 (35) = happyShift action_70
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (36) = happyShift action_56
action_56 (38) = happyShift action_57
action_56 (39) = happyShift action_58
action_56 (5) = happyGoto action_69
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_26

action_58 _ = happyReduce_27

action_59 (6) = happyShift action_4
action_59 (7) = happyShift action_5
action_59 (8) = happyShift action_6
action_59 (9) = happyShift action_7
action_59 (10) = happyShift action_8
action_59 (11) = happyShift action_2
action_59 (12) = happyShift action_24
action_59 (13) = happyShift action_25
action_59 (14) = happyShift action_26
action_59 (15) = happyShift action_27
action_59 (17) = happyShift action_28
action_59 (18) = happyShift action_29
action_59 (19) = happyShift action_30
action_59 (20) = happyShift action_31
action_59 (21) = happyShift action_9
action_59 (22) = happyShift action_32
action_59 (23) = happyShift action_33
action_59 (24) = happyShift action_34
action_59 (25) = happyShift action_35
action_59 (27) = happyShift action_10
action_59 (30) = happyShift action_11
action_59 (31) = happyShift action_12
action_59 (32) = happyShift action_68
action_59 (33) = happyShift action_13
action_59 (36) = happyShift action_14
action_59 (4) = happyGoto action_23
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_4
action_60 (7) = happyShift action_5
action_60 (8) = happyShift action_6
action_60 (9) = happyShift action_7
action_60 (10) = happyShift action_8
action_60 (11) = happyShift action_2
action_60 (12) = happyShift action_24
action_60 (13) = happyShift action_25
action_60 (14) = happyShift action_26
action_60 (15) = happyShift action_27
action_60 (17) = happyShift action_28
action_60 (18) = happyShift action_29
action_60 (19) = happyShift action_30
action_60 (20) = happyShift action_31
action_60 (21) = happyShift action_9
action_60 (22) = happyShift action_32
action_60 (23) = happyShift action_33
action_60 (24) = happyShift action_34
action_60 (25) = happyShift action_35
action_60 (27) = happyShift action_10
action_60 (29) = happyShift action_67
action_60 (30) = happyShift action_11
action_60 (31) = happyShift action_12
action_60 (33) = happyShift action_13
action_60 (36) = happyShift action_14
action_60 (4) = happyGoto action_23
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_4
action_61 (7) = happyShift action_5
action_61 (8) = happyShift action_6
action_61 (9) = happyShift action_7
action_61 (10) = happyShift action_8
action_61 (11) = happyShift action_2
action_61 (21) = happyShift action_9
action_61 (27) = happyShift action_10
action_61 (30) = happyShift action_11
action_61 (31) = happyShift action_12
action_61 (33) = happyShift action_13
action_61 (36) = happyShift action_14
action_61 (4) = happyGoto action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_4
action_62 (7) = happyShift action_5
action_62 (8) = happyShift action_6
action_62 (9) = happyShift action_7
action_62 (10) = happyShift action_8
action_62 (11) = happyShift action_2
action_62 (21) = happyShift action_9
action_62 (27) = happyShift action_10
action_62 (30) = happyShift action_11
action_62 (31) = happyShift action_12
action_62 (33) = happyShift action_13
action_62 (36) = happyShift action_14
action_62 (4) = happyGoto action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_4
action_63 (7) = happyShift action_5
action_63 (8) = happyShift action_6
action_63 (9) = happyShift action_7
action_63 (10) = happyShift action_8
action_63 (11) = happyShift action_2
action_63 (21) = happyShift action_9
action_63 (27) = happyShift action_10
action_63 (30) = happyShift action_11
action_63 (31) = happyShift action_12
action_63 (33) = happyShift action_13
action_63 (36) = happyShift action_14
action_63 (4) = happyGoto action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (6) = happyShift action_4
action_64 (7) = happyShift action_5
action_64 (8) = happyShift action_6
action_64 (9) = happyShift action_7
action_64 (10) = happyShift action_8
action_64 (11) = happyShift action_2
action_64 (12) = happyShift action_24
action_64 (13) = happyShift action_25
action_64 (14) = happyShift action_26
action_64 (15) = happyShift action_27
action_64 (17) = happyShift action_28
action_64 (18) = happyShift action_29
action_64 (19) = happyShift action_30
action_64 (20) = happyShift action_31
action_64 (21) = happyShift action_9
action_64 (22) = happyShift action_32
action_64 (23) = happyShift action_33
action_64 (24) = happyShift action_34
action_64 (25) = happyShift action_35
action_64 (27) = happyShift action_10
action_64 (30) = happyShift action_11
action_64 (31) = happyShift action_12
action_64 (33) = happyShift action_13
action_64 (36) = happyShift action_14
action_64 (37) = happyShift action_77
action_64 (4) = happyGoto action_23
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (6) = happyShift action_4
action_65 (7) = happyShift action_5
action_65 (8) = happyShift action_6
action_65 (9) = happyShift action_7
action_65 (10) = happyShift action_8
action_65 (11) = happyShift action_2
action_65 (12) = happyShift action_24
action_65 (13) = happyShift action_25
action_65 (14) = happyShift action_26
action_65 (15) = happyShift action_27
action_65 (17) = happyShift action_28
action_65 (18) = happyShift action_29
action_65 (19) = happyShift action_30
action_65 (20) = happyShift action_31
action_65 (21) = happyShift action_9
action_65 (22) = happyShift action_32
action_65 (23) = happyShift action_33
action_65 (24) = happyShift action_34
action_65 (25) = happyShift action_35
action_65 (27) = happyShift action_10
action_65 (30) = happyShift action_11
action_65 (31) = happyShift action_12
action_65 (33) = happyShift action_13
action_65 (36) = happyShift action_14
action_65 (37) = happyShift action_76
action_65 (4) = happyGoto action_23
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (6) = happyShift action_4
action_66 (7) = happyShift action_5
action_66 (8) = happyShift action_6
action_66 (9) = happyShift action_7
action_66 (10) = happyShift action_8
action_66 (11) = happyShift action_2
action_66 (12) = happyShift action_24
action_66 (13) = happyShift action_25
action_66 (14) = happyShift action_26
action_66 (15) = happyShift action_27
action_66 (17) = happyShift action_28
action_66 (18) = happyShift action_29
action_66 (19) = happyShift action_30
action_66 (20) = happyShift action_31
action_66 (21) = happyShift action_9
action_66 (22) = happyShift action_32
action_66 (23) = happyShift action_33
action_66 (24) = happyShift action_34
action_66 (25) = happyShift action_35
action_66 (27) = happyShift action_10
action_66 (30) = happyShift action_11
action_66 (31) = happyShift action_12
action_66 (33) = happyShift action_13
action_66 (36) = happyShift action_14
action_66 (37) = happyShift action_75
action_66 (4) = happyGoto action_23
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (6) = happyShift action_4
action_67 (7) = happyShift action_5
action_67 (8) = happyShift action_6
action_67 (9) = happyShift action_7
action_67 (10) = happyShift action_8
action_67 (11) = happyShift action_2
action_67 (21) = happyShift action_9
action_67 (27) = happyShift action_10
action_67 (30) = happyShift action_11
action_67 (31) = happyShift action_12
action_67 (33) = happyShift action_13
action_67 (36) = happyShift action_14
action_67 (4) = happyGoto action_74
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (6) = happyShift action_4
action_68 (7) = happyShift action_5
action_68 (8) = happyShift action_6
action_68 (9) = happyShift action_7
action_68 (10) = happyShift action_8
action_68 (11) = happyShift action_2
action_68 (21) = happyShift action_9
action_68 (27) = happyShift action_10
action_68 (30) = happyShift action_11
action_68 (31) = happyShift action_12
action_68 (33) = happyShift action_13
action_68 (36) = happyShift action_14
action_68 (4) = happyGoto action_73
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (35) = happyShift action_72
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (6) = happyShift action_4
action_70 (7) = happyShift action_5
action_70 (8) = happyShift action_6
action_70 (9) = happyShift action_7
action_70 (10) = happyShift action_8
action_70 (11) = happyShift action_2
action_70 (21) = happyShift action_9
action_70 (27) = happyShift action_10
action_70 (30) = happyShift action_11
action_70 (31) = happyShift action_12
action_70 (33) = happyShift action_13
action_70 (36) = happyShift action_14
action_70 (4) = happyGoto action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (6) = happyShift action_4
action_71 (7) = happyShift action_5
action_71 (8) = happyShift action_6
action_71 (9) = happyShift action_7
action_71 (10) = happyShift action_8
action_71 (11) = happyShift action_2
action_71 (12) = happyShift action_24
action_71 (13) = happyShift action_25
action_71 (14) = happyShift action_26
action_71 (15) = happyShift action_27
action_71 (17) = happyShift action_28
action_71 (18) = happyShift action_29
action_71 (19) = happyShift action_30
action_71 (20) = happyShift action_31
action_71 (21) = happyShift action_9
action_71 (22) = happyShift action_32
action_71 (23) = happyShift action_33
action_71 (24) = happyShift action_34
action_71 (25) = happyShift action_35
action_71 (27) = happyShift action_10
action_71 (30) = happyShift action_11
action_71 (31) = happyShift action_12
action_71 (33) = happyShift action_13
action_71 (36) = happyShift action_14
action_71 (4) = happyGoto action_23
action_71 _ = happyReduce_12

action_72 (36) = happyShift action_56
action_72 (38) = happyShift action_57
action_72 (39) = happyShift action_58
action_72 (5) = happyGoto action_78
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (6) = happyShift action_4
action_73 (7) = happyShift action_5
action_73 (8) = happyShift action_6
action_73 (9) = happyShift action_7
action_73 (10) = happyShift action_8
action_73 (11) = happyShift action_2
action_73 (12) = happyShift action_24
action_73 (13) = happyShift action_25
action_73 (14) = happyShift action_26
action_73 (15) = happyShift action_27
action_73 (17) = happyShift action_28
action_73 (18) = happyShift action_29
action_73 (19) = happyShift action_30
action_73 (20) = happyShift action_31
action_73 (21) = happyShift action_9
action_73 (22) = happyShift action_32
action_73 (23) = happyShift action_33
action_73 (24) = happyShift action_34
action_73 (25) = happyShift action_35
action_73 (27) = happyShift action_10
action_73 (30) = happyShift action_11
action_73 (31) = happyShift action_12
action_73 (33) = happyShift action_13
action_73 (36) = happyShift action_14
action_73 (4) = happyGoto action_23
action_73 _ = happyReduce_13

action_74 (6) = happyShift action_4
action_74 (7) = happyShift action_5
action_74 (8) = happyShift action_6
action_74 (9) = happyShift action_7
action_74 (10) = happyShift action_8
action_74 (11) = happyShift action_2
action_74 (12) = happyShift action_24
action_74 (13) = happyShift action_25
action_74 (14) = happyShift action_26
action_74 (15) = happyShift action_27
action_74 (17) = happyShift action_28
action_74 (18) = happyShift action_29
action_74 (19) = happyShift action_30
action_74 (20) = happyShift action_31
action_74 (21) = happyShift action_9
action_74 (22) = happyShift action_32
action_74 (23) = happyShift action_33
action_74 (24) = happyShift action_34
action_74 (25) = happyShift action_35
action_74 (27) = happyFail []
action_74 (30) = happyShift action_11
action_74 (31) = happyShift action_12
action_74 (33) = happyShift action_13
action_74 (36) = happyShift action_14
action_74 (4) = happyGoto action_23
action_74 _ = happyReduce_11

action_75 _ = happyReduce_25

action_76 _ = happyReduce_24

action_77 _ = happyReduce_23

action_78 (37) = happyShift action_79
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_28

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
		 (Div happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
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
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair First happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 6 4 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair Second happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 6 4 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair Empty happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_28 = happyReduce 5 5 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 6;
	TokenFalse -> cont 7;
	TokenFirst -> cont 8;
	TokenSecond -> cont 9;
	TokenEmpty -> cont 10;
	TokenNum happy_dollar_dollar -> cont 11;
	TokenAdd -> cont 12;
	TokenSub -> cont 13;
	TokenMul -> cont 14;
	TokenDiv -> cont 15;
	TokenAssig -> cont 16;
	TokenSmall -> cont 17;
	TokenBig -> cont 18;
	TokenEq -> cont 19;
	TokenNoEq -> cont 20;
	TokenNot -> cont 21;
	TokenSmEq -> cont 22;
	TokenBiEq -> cont 23;
	TokenAnd -> cont 24;
	TokenOr -> cont 25;
	TokenComm -> cont 26;
	TokenIf -> cont 27;
	TokenThen -> cont 28;
	TokenElse -> cont 29;
	TokenVar happy_dollar_dollar -> cont 30;
	TokenLet -> cont 31;
	TokenIn -> cont 32;
	TokenLam -> cont 33;
	TokenColon -> cont 34;
	TokenArrow -> cont 35;
	TokenLParen -> cont 36;
	TokenRParen -> cont 37;
	TokenBool -> cont 38;
	TokenNumber -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
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
