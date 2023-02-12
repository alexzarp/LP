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
happyExpList = Happy_Data_Array.listArray (0,355) ([224,38466,2048,0,0,0,0,64766,2407,0,0,0,0,57344,16896,150,8206,2404,0,0,0,8192,0,0,2,8206,2404,53216,38527,1,0,2,16,0,64766,2415,16384,31,0,0,57344,16896,150,8206,2404,224,38466,3584,25632,57353,16896,150,8206,2404,224,38466,3584,25632,57353,16896,150,8206,2404,224,38466,0,0,0,3392,0,0,0,0,0,0,0,0,0,0,0,0,17152,31,12288,500,0,8000,0,62464,1,224,38466,3584,25632,9,0,1664,0,0,0,16384,0,0,104,0,0,0,0,53216,40575,65024,30716,57353,16896,150,8206,2404,0,16384,3584,25632,9,0,0,0,26624,0,0,61440,500,0,0,256,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","true","false","num","'+'","'-'","'*'","'/'","'='","'<'","'>'","\"==\"","'!='","'!'","'>='","'<='","\"&&\"","'||'","if","then","else","var","let","in","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","%eof"]
        bit_start = st * 36
        bit_end = (st + 1) * 36
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..35]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_2
action_0 (18) = happyShift action_6
action_0 (23) = happyShift action_7
action_0 (26) = happyShift action_8
action_0 (27) = happyShift action_9
action_0 (29) = happyShift action_10
action_0 (32) = happyShift action_11
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
action_3 (23) = happyShift action_7
action_3 (26) = happyShift action_8
action_3 (27) = happyShift action_9
action_3 (29) = happyShift action_10
action_3 (32) = happyShift action_11
action_3 (36) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_4
action_6 (7) = happyShift action_5
action_6 (8) = happyShift action_2
action_6 (18) = happyShift action_6
action_6 (23) = happyShift action_7
action_6 (26) = happyShift action_8
action_6 (27) = happyShift action_9
action_6 (29) = happyShift action_10
action_6 (32) = happyShift action_11
action_6 (4) = happyGoto action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (6) = happyShift action_4
action_7 (7) = happyShift action_5
action_7 (8) = happyShift action_2
action_7 (18) = happyShift action_6
action_7 (23) = happyShift action_7
action_7 (26) = happyShift action_8
action_7 (27) = happyShift action_9
action_7 (29) = happyShift action_10
action_7 (32) = happyShift action_11
action_7 (4) = happyGoto action_15
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_2

action_9 (26) = happyShift action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (26) = happyShift action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (8) = happyShift action_2
action_11 (18) = happyShift action_6
action_11 (23) = happyShift action_7
action_11 (26) = happyShift action_8
action_11 (27) = happyShift action_9
action_11 (29) = happyShift action_10
action_11 (32) = happyShift action_11
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
action_12 (23) = happyShift action_7
action_12 (26) = happyShift action_8
action_12 (27) = happyShift action_9
action_12 (29) = happyShift action_10
action_12 (32) = happyShift action_11
action_12 (33) = happyShift action_43
action_12 (4) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (30) = happyShift action_42
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_41
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
action_15 (23) = happyShift action_7
action_15 (24) = happyShift action_40
action_15 (26) = happyShift action_8
action_15 (27) = happyShift action_9
action_15 (29) = happyShift action_10
action_15 (32) = happyShift action_11
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
action_16 (26) = happyShift action_8
action_16 (27) = happyShift action_9
action_16 (29) = happyShift action_10
action_16 (32) = happyShift action_11
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
action_17 (23) = happyShift action_7
action_17 (26) = happyShift action_8
action_17 (27) = happyShift action_9
action_17 (29) = happyShift action_10
action_17 (32) = happyShift action_11
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_14

action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_2
action_18 (18) = happyShift action_6
action_18 (23) = happyShift action_7
action_18 (26) = happyShift action_8
action_18 (27) = happyShift action_9
action_18 (29) = happyShift action_10
action_18 (32) = happyShift action_11
action_18 (4) = happyGoto action_39
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_2
action_19 (18) = happyShift action_6
action_19 (23) = happyShift action_7
action_19 (26) = happyShift action_8
action_19 (27) = happyShift action_9
action_19 (29) = happyShift action_10
action_19 (32) = happyShift action_11
action_19 (4) = happyGoto action_38
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_2
action_20 (18) = happyShift action_6
action_20 (23) = happyShift action_7
action_20 (26) = happyShift action_8
action_20 (27) = happyShift action_9
action_20 (29) = happyShift action_10
action_20 (32) = happyShift action_11
action_20 (4) = happyGoto action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_2
action_21 (18) = happyShift action_6
action_21 (23) = happyShift action_7
action_21 (26) = happyShift action_8
action_21 (27) = happyShift action_9
action_21 (29) = happyShift action_10
action_21 (32) = happyShift action_11
action_21 (4) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_2
action_22 (18) = happyShift action_6
action_22 (23) = happyShift action_7
action_22 (26) = happyShift action_8
action_22 (27) = happyShift action_9
action_22 (29) = happyShift action_10
action_22 (32) = happyShift action_11
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_2
action_23 (18) = happyShift action_6
action_23 (23) = happyShift action_7
action_23 (26) = happyShift action_8
action_23 (27) = happyShift action_9
action_23 (29) = happyShift action_10
action_23 (32) = happyShift action_11
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_2
action_24 (18) = happyShift action_6
action_24 (23) = happyShift action_7
action_24 (26) = happyShift action_8
action_24 (27) = happyShift action_9
action_24 (29) = happyShift action_10
action_24 (32) = happyShift action_11
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_2
action_25 (18) = happyShift action_6
action_25 (23) = happyShift action_7
action_25 (26) = happyShift action_8
action_25 (27) = happyShift action_9
action_25 (29) = happyShift action_10
action_25 (32) = happyShift action_11
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_2
action_26 (18) = happyShift action_6
action_26 (23) = happyShift action_7
action_26 (26) = happyShift action_8
action_26 (27) = happyShift action_9
action_26 (29) = happyShift action_10
action_26 (32) = happyShift action_11
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_2
action_27 (18) = happyShift action_6
action_27 (23) = happyShift action_7
action_27 (26) = happyShift action_8
action_27 (27) = happyShift action_9
action_27 (29) = happyShift action_10
action_27 (32) = happyShift action_11
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_2
action_28 (18) = happyShift action_6
action_28 (23) = happyShift action_7
action_28 (26) = happyShift action_8
action_28 (27) = happyShift action_9
action_28 (29) = happyShift action_10
action_28 (32) = happyShift action_11
action_28 (4) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_2
action_29 (9) = happyShift action_18
action_29 (10) = happyShift action_19
action_29 (11) = happyShift action_20
action_29 (12) = happyShift action_21
action_29 (15) = happyShift action_22
action_29 (16) = happyShift action_23
action_29 (17) = happyShift action_24
action_29 (18) = happyShift action_6
action_29 (19) = happyShift action_25
action_29 (20) = happyShift action_26
action_29 (21) = happyShift action_27
action_29 (22) = happyShift action_28
action_29 (23) = happyShift action_7
action_29 (26) = happyShift action_8
action_29 (27) = happyShift action_9
action_29 (29) = happyShift action_10
action_29 (32) = happyShift action_11
action_29 (4) = happyGoto action_17
action_29 _ = happyReduce_10

action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_2
action_30 (15) = happyShift action_22
action_30 (16) = happyShift action_23
action_30 (17) = happyShift action_24
action_30 (19) = happyShift action_25
action_30 (20) = happyShift action_26
action_30 (22) = happyShift action_28
action_30 (26) = happyShift action_8
action_30 (27) = happyShift action_9
action_30 (29) = happyShift action_10
action_30 (32) = happyShift action_11
action_30 (4) = happyGoto action_17
action_30 _ = happyReduce_9

action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_2
action_31 (16) = happyShift action_23
action_31 (22) = happyShift action_28
action_31 (26) = happyShift action_8
action_31 (27) = happyShift action_9
action_31 (29) = happyShift action_10
action_31 (32) = happyShift action_11
action_31 (4) = happyGoto action_17
action_31 _ = happyReduce_19

action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_2
action_32 (16) = happyShift action_23
action_32 (22) = happyShift action_28
action_32 (26) = happyShift action_8
action_32 (27) = happyShift action_9
action_32 (29) = happyShift action_10
action_32 (32) = happyShift action_11
action_32 (4) = happyGoto action_17
action_32 _ = happyReduce_18

action_33 (6) = happyShift action_4
action_33 (7) = happyShift action_5
action_33 (8) = happyShift action_2
action_33 (16) = happyShift action_23
action_33 (22) = happyShift action_28
action_33 (26) = happyShift action_8
action_33 (27) = happyShift action_9
action_33 (29) = happyShift action_10
action_33 (32) = happyShift action_11
action_33 (4) = happyGoto action_17
action_33 _ = happyReduce_17

action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (8) = happyShift action_2
action_34 (9) = happyShift action_18
action_34 (10) = happyShift action_19
action_34 (11) = happyShift action_20
action_34 (12) = happyShift action_21
action_34 (15) = happyShift action_22
action_34 (16) = happyShift action_23
action_34 (17) = happyShift action_24
action_34 (18) = happyShift action_6
action_34 (19) = happyShift action_25
action_34 (20) = happyShift action_26
action_34 (21) = happyShift action_27
action_34 (22) = happyShift action_28
action_34 (23) = happyShift action_7
action_34 (26) = happyShift action_8
action_34 (27) = happyShift action_9
action_34 (29) = happyShift action_10
action_34 (32) = happyShift action_11
action_34 (4) = happyGoto action_17
action_34 _ = happyReduce_16

action_35 (6) = happyShift action_4
action_35 (7) = happyShift action_5
action_35 (8) = happyShift action_2
action_35 (9) = happyReduce_20
action_35 (10) = happyReduce_20
action_35 (11) = happyReduce_20
action_35 (12) = happyReduce_20
action_35 (15) = happyReduce_20
action_35 (16) = happyShift action_23
action_35 (17) = happyReduce_20
action_35 (19) = happyReduce_20
action_35 (20) = happyReduce_20
action_35 (21) = happyReduce_20
action_35 (22) = happyShift action_28
action_35 (23) = happyReduce_20
action_35 (24) = happyReduce_20
action_35 (25) = happyReduce_20
action_35 (26) = happyShift action_8
action_35 (27) = happyShift action_9
action_35 (28) = happyReduce_20
action_35 (29) = happyShift action_10
action_35 (32) = happyShift action_11
action_35 (33) = happyReduce_20
action_35 (36) = happyReduce_20
action_35 (4) = happyGoto action_17
action_35 _ = happyReduce_20

action_36 (6) = happyShift action_4
action_36 (7) = happyShift action_5
action_36 (8) = happyShift action_2
action_36 (9) = happyShift action_18
action_36 (10) = happyShift action_19
action_36 (15) = happyShift action_22
action_36 (16) = happyShift action_23
action_36 (17) = happyShift action_24
action_36 (18) = happyShift action_6
action_36 (19) = happyShift action_25
action_36 (20) = happyShift action_26
action_36 (21) = happyShift action_27
action_36 (22) = happyShift action_28
action_36 (26) = happyShift action_8
action_36 (27) = happyShift action_9
action_36 (29) = happyShift action_10
action_36 (32) = happyShift action_11
action_36 (4) = happyGoto action_17
action_36 _ = happyReduce_7

action_37 (6) = happyShift action_4
action_37 (7) = happyShift action_5
action_37 (8) = happyShift action_2
action_37 (9) = happyShift action_18
action_37 (10) = happyShift action_19
action_37 (15) = happyShift action_22
action_37 (16) = happyShift action_23
action_37 (17) = happyShift action_24
action_37 (18) = happyShift action_6
action_37 (19) = happyShift action_25
action_37 (20) = happyShift action_26
action_37 (21) = happyShift action_27
action_37 (22) = happyShift action_28
action_37 (26) = happyShift action_8
action_37 (27) = happyShift action_9
action_37 (29) = happyShift action_10
action_37 (32) = happyShift action_11
action_37 (4) = happyGoto action_17
action_37 _ = happyReduce_8

action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_5
action_38 (8) = happyShift action_2
action_38 (15) = happyShift action_22
action_38 (16) = happyShift action_23
action_38 (17) = happyShift action_24
action_38 (18) = happyShift action_6
action_38 (19) = happyShift action_25
action_38 (20) = happyShift action_26
action_38 (21) = happyShift action_27
action_38 (22) = happyShift action_28
action_38 (26) = happyShift action_8
action_38 (27) = happyShift action_9
action_38 (29) = happyShift action_10
action_38 (32) = happyShift action_11
action_38 (4) = happyGoto action_17
action_38 _ = happyReduce_6

action_39 (6) = happyShift action_4
action_39 (7) = happyShift action_5
action_39 (8) = happyShift action_2
action_39 (15) = happyShift action_22
action_39 (16) = happyShift action_23
action_39 (17) = happyShift action_24
action_39 (18) = happyShift action_6
action_39 (19) = happyShift action_25
action_39 (20) = happyShift action_26
action_39 (21) = happyShift action_27
action_39 (22) = happyShift action_28
action_39 (26) = happyShift action_8
action_39 (27) = happyShift action_9
action_39 (29) = happyShift action_10
action_39 (32) = happyShift action_11
action_39 (4) = happyGoto action_17
action_39 _ = happyReduce_5

action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_5
action_40 (8) = happyShift action_2
action_40 (18) = happyShift action_6
action_40 (23) = happyShift action_7
action_40 (26) = happyShift action_8
action_40 (27) = happyShift action_9
action_40 (29) = happyShift action_10
action_40 (32) = happyShift action_11
action_40 (4) = happyGoto action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (6) = happyShift action_4
action_41 (7) = happyShift action_5
action_41 (8) = happyShift action_2
action_41 (18) = happyShift action_6
action_41 (23) = happyShift action_7
action_41 (26) = happyShift action_8
action_41 (27) = happyShift action_9
action_41 (29) = happyShift action_10
action_41 (32) = happyShift action_11
action_41 (4) = happyGoto action_48
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (32) = happyShift action_45
action_42 (34) = happyShift action_46
action_42 (35) = happyShift action_47
action_42 (5) = happyGoto action_44
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_15

action_44 (31) = happyShift action_53
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (32) = happyShift action_45
action_45 (34) = happyShift action_46
action_45 (35) = happyShift action_47
action_45 (5) = happyGoto action_52
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_23

action_47 _ = happyReduce_24

action_48 (6) = happyShift action_4
action_48 (7) = happyShift action_5
action_48 (8) = happyShift action_2
action_48 (9) = happyShift action_18
action_48 (10) = happyShift action_19
action_48 (11) = happyShift action_20
action_48 (12) = happyShift action_21
action_48 (15) = happyShift action_22
action_48 (16) = happyShift action_23
action_48 (17) = happyShift action_24
action_48 (18) = happyShift action_6
action_48 (19) = happyShift action_25
action_48 (20) = happyShift action_26
action_48 (21) = happyShift action_27
action_48 (22) = happyShift action_28
action_48 (23) = happyShift action_7
action_48 (26) = happyShift action_8
action_48 (27) = happyShift action_9
action_48 (28) = happyShift action_51
action_48 (29) = happyShift action_10
action_48 (32) = happyShift action_11
action_48 (4) = happyGoto action_17
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_4
action_49 (7) = happyShift action_5
action_49 (8) = happyShift action_2
action_49 (9) = happyShift action_18
action_49 (10) = happyShift action_19
action_49 (11) = happyShift action_20
action_49 (12) = happyShift action_21
action_49 (15) = happyShift action_22
action_49 (16) = happyShift action_23
action_49 (17) = happyShift action_24
action_49 (18) = happyShift action_6
action_49 (19) = happyShift action_25
action_49 (20) = happyShift action_26
action_49 (21) = happyShift action_27
action_49 (22) = happyShift action_28
action_49 (23) = happyShift action_7
action_49 (25) = happyShift action_50
action_49 (26) = happyShift action_8
action_49 (27) = happyShift action_9
action_49 (29) = happyShift action_10
action_49 (32) = happyShift action_11
action_49 (4) = happyGoto action_17
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_4
action_50 (7) = happyShift action_5
action_50 (8) = happyShift action_2
action_50 (18) = happyShift action_6
action_50 (23) = happyShift action_7
action_50 (26) = happyShift action_8
action_50 (27) = happyShift action_9
action_50 (29) = happyShift action_10
action_50 (32) = happyShift action_11
action_50 (4) = happyGoto action_57
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_4
action_51 (7) = happyShift action_5
action_51 (8) = happyShift action_2
action_51 (18) = happyShift action_6
action_51 (23) = happyShift action_7
action_51 (26) = happyShift action_8
action_51 (27) = happyShift action_9
action_51 (29) = happyShift action_10
action_51 (32) = happyShift action_11
action_51 (4) = happyGoto action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (31) = happyShift action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_4
action_53 (7) = happyShift action_5
action_53 (8) = happyShift action_2
action_53 (18) = happyShift action_6
action_53 (23) = happyShift action_7
action_53 (26) = happyShift action_8
action_53 (27) = happyShift action_9
action_53 (29) = happyShift action_10
action_53 (32) = happyShift action_11
action_53 (4) = happyGoto action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_4
action_54 (7) = happyShift action_5
action_54 (8) = happyShift action_2
action_54 (9) = happyShift action_18
action_54 (10) = happyShift action_19
action_54 (11) = happyShift action_20
action_54 (12) = happyShift action_21
action_54 (15) = happyShift action_22
action_54 (16) = happyShift action_23
action_54 (17) = happyShift action_24
action_54 (18) = happyShift action_6
action_54 (19) = happyShift action_25
action_54 (20) = happyShift action_26
action_54 (21) = happyShift action_27
action_54 (22) = happyShift action_28
action_54 (23) = happyShift action_7
action_54 (26) = happyShift action_8
action_54 (27) = happyShift action_9
action_54 (29) = happyShift action_10
action_54 (32) = happyShift action_11
action_54 (4) = happyGoto action_17
action_54 _ = happyReduce_12

action_55 (32) = happyShift action_45
action_55 (34) = happyShift action_46
action_55 (35) = happyShift action_47
action_55 (5) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (6) = happyShift action_4
action_56 (7) = happyShift action_5
action_56 (8) = happyShift action_2
action_56 (9) = happyShift action_18
action_56 (10) = happyShift action_19
action_56 (11) = happyShift action_20
action_56 (12) = happyShift action_21
action_56 (15) = happyShift action_22
action_56 (16) = happyShift action_23
action_56 (17) = happyShift action_24
action_56 (18) = happyShift action_6
action_56 (19) = happyShift action_25
action_56 (20) = happyShift action_26
action_56 (21) = happyShift action_27
action_56 (22) = happyShift action_28
action_56 (23) = happyShift action_7
action_56 (26) = happyShift action_8
action_56 (27) = happyShift action_9
action_56 (29) = happyShift action_10
action_56 (32) = happyShift action_11
action_56 (4) = happyGoto action_17
action_56 _ = happyReduce_13

action_57 (6) = happyShift action_4
action_57 (7) = happyShift action_5
action_57 (8) = happyShift action_2
action_57 (9) = happyShift action_18
action_57 (10) = happyShift action_19
action_57 (11) = happyShift action_20
action_57 (12) = happyShift action_21
action_57 (15) = happyShift action_22
action_57 (16) = happyShift action_23
action_57 (17) = happyShift action_24
action_57 (18) = happyShift action_6
action_57 (19) = happyShift action_25
action_57 (20) = happyShift action_26
action_57 (21) = happyShift action_27
action_57 (22) = happyShift action_28
action_57 (23) = happyFail []
action_57 (26) = happyShift action_8
action_57 (27) = happyShift action_9
action_57 (29) = happyShift action_10
action_57 (32) = happyShift action_11
action_57 (4) = happyGoto action_17
action_57 _ = happyReduce_11

action_58 (33) = happyShift action_59
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_25

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

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_25 = happyReduce 5 5 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 36 36 notHappyAtAll (HappyState action) sts stk []

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
	TokenIf -> cont 23;
	TokenThen -> cont 24;
	TokenElse -> cont 25;
	TokenVar happy_dollar_dollar -> cont 26;
	TokenLet -> cont 27;
	TokenIn -> cont 28;
	TokenLam -> cont 29;
	TokenColon -> cont 30;
	TokenArrow -> cont 31;
	TokenLParen -> cont 32;
	TokenRParen -> cont 33;
	TokenBool -> cont 34;
	TokenNumber -> cont 35;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 36 tk tks = happyError' (tks, explist)
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
