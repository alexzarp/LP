{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,228) ([224,2448,128,0,0,0,61408,2463,0,0,0,0,224,2448,0,0,0,128,224,2448,61408,6559,0,512,61408,2495,0,0,224,2448,224,2448,224,2448,224,2448,224,2448,224,2448,224,2448,224,2448,224,2448,224,2448,224,2448,0,0,0,0,0,0,0,0,0,0,0,0,0,0,768,0,768,0,0,0,0,0,224,2448,0,26624,0,0,0,1024,0,26624,0,0,0,0,61408,2527,224,2448,0,1024,224,2448,0,0,0,26624,3840,0,0,4096,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","true","false","num","'+'","'-'","'*'","'/'","'<'","'>'","'=='","'!='","'>='","'<='","'&&'","'||'","if","then","else","var","'\\\\'","':'","'->'","'('","')'","Bool","Number","%eof"]
        bit_start = st * 32
        bit_end = (st + 1) * 32
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..31]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_2
action_0 (21) = happyShift action_6
action_0 (24) = happyShift action_7
action_0 (25) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (8) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_5
action_3 (8) = happyShift action_2
action_3 (9) = happyShift action_14
action_3 (10) = happyShift action_15
action_3 (11) = happyShift action_16
action_3 (12) = happyShift action_17
action_3 (14) = happyShift action_18
action_3 (15) = happyShift action_19
action_3 (16) = happyShift action_20
action_3 (17) = happyShift action_21
action_3 (18) = happyShift action_22
action_3 (19) = happyShift action_23
action_3 (20) = happyShift action_24
action_3 (21) = happyShift action_6
action_3 (24) = happyShift action_7
action_3 (25) = happyShift action_8
action_3 (28) = happyShift action_9
action_3 (32) = happyAccept
action_3 (4) = happyGoto action_13
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_4
action_6 (7) = happyShift action_5
action_6 (8) = happyShift action_2
action_6 (21) = happyShift action_6
action_6 (24) = happyShift action_7
action_6 (25) = happyShift action_8
action_6 (28) = happyShift action_9
action_6 (4) = happyGoto action_12
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_2

action_8 (24) = happyShift action_11
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_2
action_9 (21) = happyShift action_6
action_9 (24) = happyShift action_7
action_9 (25) = happyShift action_8
action_9 (28) = happyShift action_9
action_9 (4) = happyGoto action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (8) = happyShift action_2
action_10 (9) = happyShift action_14
action_10 (10) = happyShift action_15
action_10 (11) = happyShift action_16
action_10 (12) = happyShift action_17
action_10 (14) = happyShift action_18
action_10 (15) = happyShift action_19
action_10 (16) = happyShift action_20
action_10 (17) = happyShift action_21
action_10 (18) = happyShift action_22
action_10 (19) = happyShift action_23
action_10 (20) = happyShift action_24
action_10 (21) = happyShift action_6
action_10 (24) = happyShift action_7
action_10 (25) = happyShift action_8
action_10 (28) = happyShift action_9
action_10 (29) = happyShift action_38
action_10 (4) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (26) = happyShift action_37
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_5
action_12 (8) = happyShift action_2
action_12 (9) = happyShift action_14
action_12 (10) = happyShift action_15
action_12 (11) = happyShift action_16
action_12 (12) = happyShift action_17
action_12 (14) = happyShift action_18
action_12 (15) = happyShift action_19
action_12 (16) = happyShift action_20
action_12 (17) = happyShift action_21
action_12 (18) = happyShift action_22
action_12 (19) = happyShift action_23
action_12 (20) = happyShift action_24
action_12 (21) = happyShift action_6
action_12 (22) = happyShift action_36
action_12 (24) = happyShift action_7
action_12 (25) = happyShift action_8
action_12 (28) = happyShift action_9
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_4
action_13 (7) = happyShift action_5
action_13 (8) = happyShift action_2
action_13 (9) = happyShift action_14
action_13 (10) = happyShift action_15
action_13 (11) = happyShift action_16
action_13 (12) = happyShift action_17
action_13 (14) = happyShift action_18
action_13 (15) = happyShift action_19
action_13 (16) = happyShift action_20
action_13 (17) = happyShift action_21
action_13 (18) = happyShift action_22
action_13 (19) = happyShift action_23
action_13 (20) = happyShift action_24
action_13 (21) = happyShift action_6
action_13 (24) = happyShift action_7
action_13 (25) = happyShift action_8
action_13 (28) = happyShift action_9
action_13 (4) = happyGoto action_13
action_13 _ = happyReduce_13

action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_5
action_14 (8) = happyShift action_2
action_14 (21) = happyShift action_6
action_14 (24) = happyShift action_7
action_14 (25) = happyShift action_8
action_14 (28) = happyShift action_9
action_14 (4) = happyGoto action_35
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_2
action_15 (21) = happyShift action_6
action_15 (24) = happyShift action_7
action_15 (25) = happyShift action_8
action_15 (28) = happyShift action_9
action_15 (4) = happyGoto action_34
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (8) = happyShift action_2
action_16 (21) = happyShift action_6
action_16 (24) = happyShift action_7
action_16 (25) = happyShift action_8
action_16 (28) = happyShift action_9
action_16 (4) = happyGoto action_33
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_2
action_17 (21) = happyShift action_6
action_17 (24) = happyShift action_7
action_17 (25) = happyShift action_8
action_17 (28) = happyShift action_9
action_17 (4) = happyGoto action_32
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_2
action_18 (21) = happyShift action_6
action_18 (24) = happyShift action_7
action_18 (25) = happyShift action_8
action_18 (28) = happyShift action_9
action_18 (4) = happyGoto action_31
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_2
action_19 (21) = happyShift action_6
action_19 (24) = happyShift action_7
action_19 (25) = happyShift action_8
action_19 (28) = happyShift action_9
action_19 (4) = happyGoto action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_2
action_20 (21) = happyShift action_6
action_20 (24) = happyShift action_7
action_20 (25) = happyShift action_8
action_20 (28) = happyShift action_9
action_20 (4) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_2
action_21 (21) = happyShift action_6
action_21 (24) = happyShift action_7
action_21 (25) = happyShift action_8
action_21 (28) = happyShift action_9
action_21 (4) = happyGoto action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_2
action_22 (21) = happyShift action_6
action_22 (24) = happyShift action_7
action_22 (25) = happyShift action_8
action_22 (28) = happyShift action_9
action_22 (4) = happyGoto action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_2
action_23 (21) = happyShift action_6
action_23 (24) = happyShift action_7
action_23 (25) = happyShift action_8
action_23 (28) = happyShift action_9
action_23 (4) = happyGoto action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_2
action_24 (21) = happyShift action_6
action_24 (24) = happyShift action_7
action_24 (25) = happyShift action_8
action_24 (28) = happyShift action_9
action_24 (4) = happyGoto action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_2
action_25 (9) = happyShift action_14
action_25 (10) = happyShift action_15
action_25 (11) = happyShift action_16
action_25 (12) = happyShift action_17
action_25 (14) = happyShift action_18
action_25 (15) = happyShift action_19
action_25 (16) = happyShift action_20
action_25 (17) = happyShift action_21
action_25 (18) = happyShift action_22
action_25 (19) = happyShift action_23
action_25 (20) = happyShift action_24
action_25 (21) = happyShift action_6
action_25 (24) = happyShift action_7
action_25 (25) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (4) = happyGoto action_13
action_25 _ = happyReduce_10

action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_2
action_26 (9) = happyShift action_14
action_26 (10) = happyShift action_15
action_26 (11) = happyShift action_16
action_26 (12) = happyShift action_17
action_26 (14) = happyShift action_18
action_26 (15) = happyShift action_19
action_26 (16) = happyShift action_20
action_26 (17) = happyShift action_21
action_26 (18) = happyShift action_22
action_26 (19) = happyShift action_23
action_26 (20) = happyShift action_24
action_26 (21) = happyShift action_6
action_26 (24) = happyShift action_7
action_26 (25) = happyShift action_8
action_26 (28) = happyShift action_9
action_26 (4) = happyGoto action_13
action_26 _ = happyReduce_9

action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_2
action_27 (9) = happyShift action_14
action_27 (10) = happyShift action_15
action_27 (11) = happyShift action_16
action_27 (12) = happyShift action_17
action_27 (14) = happyShift action_18
action_27 (15) = happyShift action_19
action_27 (16) = happyShift action_20
action_27 (17) = happyShift action_21
action_27 (18) = happyShift action_22
action_27 (19) = happyShift action_23
action_27 (20) = happyShift action_24
action_27 (21) = happyShift action_6
action_27 (24) = happyShift action_7
action_27 (25) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (4) = happyGoto action_13
action_27 _ = happyReduce_18

action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_2
action_28 (9) = happyShift action_14
action_28 (10) = happyShift action_15
action_28 (11) = happyShift action_16
action_28 (12) = happyShift action_17
action_28 (14) = happyShift action_18
action_28 (15) = happyShift action_19
action_28 (16) = happyShift action_20
action_28 (17) = happyShift action_21
action_28 (18) = happyShift action_22
action_28 (19) = happyShift action_23
action_28 (20) = happyShift action_24
action_28 (21) = happyShift action_6
action_28 (24) = happyShift action_7
action_28 (25) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (4) = happyGoto action_13
action_28 _ = happyReduce_17

action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_2
action_29 (9) = happyShift action_14
action_29 (10) = happyShift action_15
action_29 (11) = happyShift action_16
action_29 (12) = happyShift action_17
action_29 (14) = happyShift action_18
action_29 (15) = happyShift action_19
action_29 (16) = happyShift action_20
action_29 (17) = happyShift action_21
action_29 (18) = happyShift action_22
action_29 (19) = happyShift action_23
action_29 (20) = happyShift action_24
action_29 (21) = happyShift action_6
action_29 (24) = happyShift action_7
action_29 (25) = happyShift action_8
action_29 (28) = happyShift action_9
action_29 (4) = happyGoto action_13
action_29 _ = happyReduce_16

action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_2
action_30 (9) = happyShift action_14
action_30 (10) = happyShift action_15
action_30 (11) = happyShift action_16
action_30 (12) = happyShift action_17
action_30 (14) = happyShift action_18
action_30 (15) = happyShift action_19
action_30 (16) = happyShift action_20
action_30 (17) = happyShift action_21
action_30 (18) = happyShift action_22
action_30 (19) = happyShift action_23
action_30 (20) = happyShift action_24
action_30 (21) = happyShift action_6
action_30 (24) = happyShift action_7
action_30 (25) = happyShift action_8
action_30 (28) = happyShift action_9
action_30 (4) = happyGoto action_13
action_30 _ = happyReduce_15

action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_2
action_31 (9) = happyShift action_14
action_31 (10) = happyShift action_15
action_31 (11) = happyShift action_16
action_31 (12) = happyShift action_17
action_31 (14) = happyShift action_18
action_31 (15) = happyShift action_19
action_31 (16) = happyShift action_20
action_31 (17) = happyShift action_21
action_31 (18) = happyShift action_22
action_31 (19) = happyShift action_23
action_31 (20) = happyShift action_24
action_31 (21) = happyShift action_6
action_31 (22) = happyReduce_20
action_31 (23) = happyReduce_20
action_31 (24) = happyShift action_7
action_31 (25) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (29) = happyReduce_20
action_31 (32) = happyReduce_20
action_31 (4) = happyGoto action_13
action_31 _ = happyReduce_20

action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_2
action_32 (9) = happyShift action_14
action_32 (10) = happyShift action_15
action_32 (14) = happyShift action_18
action_32 (15) = happyShift action_19
action_32 (16) = happyShift action_20
action_32 (17) = happyShift action_21
action_32 (18) = happyShift action_22
action_32 (19) = happyShift action_23
action_32 (20) = happyShift action_24
action_32 (24) = happyShift action_7
action_32 (25) = happyShift action_8
action_32 (28) = happyShift action_9
action_32 (4) = happyGoto action_13
action_32 _ = happyReduce_7

action_33 (6) = happyShift action_4
action_33 (7) = happyShift action_5
action_33 (8) = happyShift action_2
action_33 (9) = happyShift action_14
action_33 (10) = happyShift action_15
action_33 (14) = happyShift action_18
action_33 (15) = happyShift action_19
action_33 (16) = happyShift action_20
action_33 (17) = happyShift action_21
action_33 (18) = happyShift action_22
action_33 (19) = happyShift action_23
action_33 (20) = happyShift action_24
action_33 (24) = happyShift action_7
action_33 (25) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (4) = happyGoto action_13
action_33 _ = happyReduce_8

action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (8) = happyShift action_2
action_34 (14) = happyShift action_18
action_34 (15) = happyShift action_19
action_34 (16) = happyShift action_20
action_34 (17) = happyShift action_21
action_34 (18) = happyShift action_22
action_34 (19) = happyShift action_23
action_34 (20) = happyShift action_24
action_34 (24) = happyShift action_7
action_34 (25) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (4) = happyGoto action_13
action_34 _ = happyReduce_6

action_35 (6) = happyShift action_4
action_35 (7) = happyShift action_5
action_35 (8) = happyShift action_2
action_35 (14) = happyShift action_18
action_35 (15) = happyShift action_19
action_35 (16) = happyShift action_20
action_35 (17) = happyShift action_21
action_35 (18) = happyShift action_22
action_35 (19) = happyShift action_23
action_35 (20) = happyShift action_24
action_35 (24) = happyShift action_7
action_35 (25) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (4) = happyGoto action_13
action_35 _ = happyReduce_5

action_36 (6) = happyShift action_4
action_36 (7) = happyShift action_5
action_36 (8) = happyShift action_2
action_36 (21) = happyShift action_6
action_36 (24) = happyShift action_7
action_36 (25) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (4) = happyGoto action_43
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (28) = happyShift action_40
action_37 (30) = happyShift action_41
action_37 (31) = happyShift action_42
action_37 (5) = happyGoto action_39
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_14

action_39 (27) = happyShift action_46
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (28) = happyShift action_40
action_40 (30) = happyShift action_41
action_40 (31) = happyShift action_42
action_40 (5) = happyGoto action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_21

action_42 _ = happyReduce_22

action_43 (6) = happyShift action_4
action_43 (7) = happyShift action_5
action_43 (8) = happyShift action_2
action_43 (9) = happyShift action_14
action_43 (10) = happyShift action_15
action_43 (11) = happyShift action_16
action_43 (12) = happyShift action_17
action_43 (14) = happyShift action_18
action_43 (15) = happyShift action_19
action_43 (16) = happyShift action_20
action_43 (17) = happyShift action_21
action_43 (18) = happyShift action_22
action_43 (19) = happyShift action_23
action_43 (20) = happyShift action_24
action_43 (21) = happyShift action_6
action_43 (23) = happyShift action_44
action_43 (24) = happyShift action_7
action_43 (25) = happyShift action_8
action_43 (28) = happyShift action_9
action_43 (4) = happyGoto action_13
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_4
action_44 (7) = happyShift action_5
action_44 (8) = happyShift action_2
action_44 (21) = happyShift action_6
action_44 (24) = happyShift action_7
action_44 (25) = happyShift action_8
action_44 (28) = happyShift action_9
action_44 (4) = happyGoto action_49
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (27) = happyShift action_48
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_2
action_46 (21) = happyShift action_6
action_46 (24) = happyShift action_7
action_46 (25) = happyShift action_8
action_46 (28) = happyShift action_9
action_46 (4) = happyGoto action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_4
action_47 (7) = happyShift action_5
action_47 (8) = happyShift action_2
action_47 (9) = happyShift action_14
action_47 (10) = happyShift action_15
action_47 (11) = happyShift action_16
action_47 (12) = happyShift action_17
action_47 (14) = happyShift action_18
action_47 (15) = happyShift action_19
action_47 (16) = happyShift action_20
action_47 (17) = happyShift action_21
action_47 (18) = happyShift action_22
action_47 (19) = happyShift action_23
action_47 (20) = happyShift action_24
action_47 (21) = happyShift action_6
action_47 (24) = happyShift action_7
action_47 (25) = happyShift action_8
action_47 (28) = happyShift action_9
action_47 (4) = happyGoto action_13
action_47 _ = happyReduce_12

action_48 (28) = happyShift action_40
action_48 (30) = happyShift action_41
action_48 (31) = happyShift action_42
action_48 (5) = happyGoto action_50
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_4
action_49 (7) = happyShift action_5
action_49 (8) = happyShift action_2
action_49 (9) = happyShift action_14
action_49 (10) = happyShift action_15
action_49 (11) = happyShift action_16
action_49 (12) = happyShift action_17
action_49 (14) = happyShift action_18
action_49 (15) = happyShift action_19
action_49 (16) = happyShift action_20
action_49 (17) = happyShift action_21
action_49 (18) = happyShift action_22
action_49 (19) = happyShift action_23
action_49 (20) = happyShift action_24
action_49 (21) = happyFail []
action_49 (24) = happyShift action_7
action_49 (25) = happyShift action_8
action_49 (28) = happyShift action_9
action_49 (4) = happyGoto action_13
action_49 _ = happyReduce_11

action_50 (29) = happyShift action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_23

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

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NoEq happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BiEq happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (SmEq happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Big happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Small happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_23 = happyReduce 5 5 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 32 32 notHappyAtAll (HappyState action) sts stk []

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
	TokenSmall -> cont 13;
	TokenBig -> cont 14;
	TokenEq -> cont 15;
	TokenNoEq -> cont 16;
	TokenSmEq -> cont 17;
	TokenBiEq -> cont 18;
	TokenAnd -> cont 19;
	TokenOr -> cont 20;
	TokenIf -> cont 21;
	TokenThen -> cont 22;
	TokenElse -> cont 23;
	TokenVar happy_dollar_dollar -> cont 24;
	TokenLam -> cont 25;
	TokenColon -> cont 26;
	TokenArrow -> cont 27;
	TokenLParen -> cont 28;
	TokenRParen -> cont 29;
	TokenBoolean -> cont 30;
	TokenNumber -> cont 31;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 32 tk tks = happyError' (tks, explist)
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
parseError _ = error 'Syntax error!'
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































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









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

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
