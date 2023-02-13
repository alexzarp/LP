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
happyExpList = Happy_Data_Array.listArray (0,394) ([224,11394,4097,0,0,0,0,63472,38495,0,0,0,0,0,0,0,1792,25616,57353,33280,300,0,0,0,4096,0,0,2,8206,4808,57280,22911,6,0,16,128,0,61408,11711,1,1004,32768,2051,1202,0,0,3584,51232,49170,1025,601,32824,19232,1792,25616,57353,33280,300,16412,9616,896,45576,28676,16640,150,8206,4808,448,22788,14338,8320,75,4103,2404,0,0,0,428,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8035,0,60512,3,32768,125,0,4016,0,65278,4815,448,22788,14338,8320,75,0,26624,0,0,0,0,16,0,13312,0,0,0,0,49152,32735,633,64504,19375,1792,25616,57353,49135,812,16412,9616,896,45576,4,0,64,8206,4808,0,0,0,0,832,0,0,28416,31,0,0,0,0,2048,0,0,0,0
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
action_0 (8) = happyShift action_6
action_0 (18) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (27) = happyShift action_9
action_0 (28) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (33) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (8) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_5
action_3 (8) = happyShift action_6
action_3 (9) = happyShift action_20
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_22
action_3 (12) = happyShift action_23
action_3 (14) = happyShift action_24
action_3 (15) = happyShift action_25
action_3 (16) = happyShift action_26
action_3 (17) = happyShift action_27
action_3 (18) = happyShift action_7
action_3 (19) = happyShift action_28
action_3 (20) = happyShift action_29
action_3 (21) = happyShift action_30
action_3 (22) = happyShift action_31
action_3 (24) = happyShift action_8
action_3 (27) = happyShift action_9
action_3 (28) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (33) = happyShift action_12
action_3 (37) = happyAccept
action_3 (4) = happyGoto action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 (33) = happyShift action_18
action_6 _ = happyReduce_1

action_7 (6) = happyShift action_4
action_7 (7) = happyShift action_5
action_7 (8) = happyShift action_6
action_7 (18) = happyShift action_7
action_7 (24) = happyShift action_8
action_7 (27) = happyShift action_9
action_7 (28) = happyShift action_10
action_7 (30) = happyShift action_11
action_7 (33) = happyShift action_12
action_7 (4) = happyGoto action_17
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (8) = happyShift action_6
action_8 (18) = happyShift action_7
action_8 (24) = happyShift action_8
action_8 (27) = happyShift action_9
action_8 (28) = happyShift action_10
action_8 (30) = happyShift action_11
action_8 (33) = happyShift action_12
action_8 (4) = happyGoto action_16
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_2

action_10 (27) = happyShift action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (27) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_5
action_12 (8) = happyShift action_6
action_12 (18) = happyShift action_7
action_12 (24) = happyShift action_8
action_12 (27) = happyShift action_9
action_12 (28) = happyShift action_10
action_12 (30) = happyShift action_11
action_12 (33) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_4
action_13 (7) = happyShift action_5
action_13 (8) = happyShift action_6
action_13 (9) = happyShift action_20
action_13 (10) = happyShift action_21
action_13 (11) = happyShift action_22
action_13 (12) = happyShift action_23
action_13 (14) = happyShift action_24
action_13 (15) = happyShift action_25
action_13 (16) = happyShift action_26
action_13 (17) = happyShift action_27
action_13 (18) = happyShift action_7
action_13 (19) = happyShift action_28
action_13 (20) = happyShift action_29
action_13 (21) = happyShift action_30
action_13 (22) = happyShift action_31
action_13 (24) = happyShift action_8
action_13 (27) = happyShift action_9
action_13 (28) = happyShift action_10
action_13 (30) = happyShift action_11
action_13 (33) = happyShift action_12
action_13 (34) = happyShift action_48
action_13 (4) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (31) = happyShift action_47
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_46
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (8) = happyShift action_6
action_16 (9) = happyShift action_20
action_16 (10) = happyShift action_21
action_16 (11) = happyShift action_22
action_16 (12) = happyShift action_23
action_16 (14) = happyShift action_24
action_16 (15) = happyShift action_25
action_16 (16) = happyShift action_26
action_16 (17) = happyShift action_27
action_16 (18) = happyShift action_7
action_16 (19) = happyShift action_28
action_16 (20) = happyShift action_29
action_16 (21) = happyShift action_30
action_16 (22) = happyShift action_31
action_16 (24) = happyShift action_8
action_16 (25) = happyShift action_45
action_16 (27) = happyShift action_9
action_16 (28) = happyShift action_10
action_16 (30) = happyShift action_11
action_16 (33) = happyShift action_12
action_16 (4) = happyGoto action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_6
action_17 (14) = happyShift action_24
action_17 (15) = happyShift action_25
action_17 (16) = happyShift action_26
action_17 (17) = happyShift action_27
action_17 (18) = happyShift action_7
action_17 (19) = happyShift action_28
action_17 (20) = happyShift action_29
action_17 (21) = happyShift action_30
action_17 (22) = happyShift action_31
action_17 (27) = happyShift action_9
action_17 (28) = happyShift action_10
action_17 (30) = happyShift action_11
action_17 (33) = happyShift action_12
action_17 (4) = happyGoto action_19
action_17 _ = happyReduce_22

action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (18) = happyShift action_7
action_18 (24) = happyShift action_8
action_18 (27) = happyShift action_9
action_18 (28) = happyShift action_10
action_18 (30) = happyShift action_11
action_18 (33) = happyShift action_12
action_18 (4) = happyGoto action_44
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_20
action_19 (10) = happyShift action_21
action_19 (11) = happyShift action_22
action_19 (12) = happyShift action_23
action_19 (14) = happyShift action_24
action_19 (15) = happyShift action_25
action_19 (16) = happyShift action_26
action_19 (17) = happyShift action_27
action_19 (18) = happyShift action_7
action_19 (19) = happyShift action_28
action_19 (20) = happyShift action_29
action_19 (21) = happyShift action_30
action_19 (22) = happyShift action_31
action_19 (24) = happyShift action_8
action_19 (27) = happyShift action_9
action_19 (28) = happyShift action_10
action_19 (30) = happyShift action_11
action_19 (33) = happyShift action_12
action_19 (4) = happyGoto action_19
action_19 _ = happyReduce_14

action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_6
action_20 (18) = happyShift action_7
action_20 (24) = happyShift action_8
action_20 (27) = happyShift action_9
action_20 (28) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (33) = happyShift action_12
action_20 (4) = happyGoto action_43
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (18) = happyShift action_7
action_21 (24) = happyShift action_8
action_21 (27) = happyShift action_9
action_21 (28) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (33) = happyShift action_12
action_21 (4) = happyGoto action_42
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (18) = happyShift action_7
action_22 (24) = happyShift action_8
action_22 (27) = happyShift action_9
action_22 (28) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (33) = happyShift action_12
action_22 (4) = happyGoto action_41
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_6
action_23 (18) = happyShift action_7
action_23 (24) = happyShift action_8
action_23 (27) = happyShift action_9
action_23 (28) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (33) = happyShift action_12
action_23 (4) = happyGoto action_40
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_6
action_24 (18) = happyShift action_7
action_24 (24) = happyShift action_8
action_24 (27) = happyShift action_9
action_24 (28) = happyShift action_10
action_24 (30) = happyShift action_11
action_24 (33) = happyShift action_12
action_24 (4) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_6
action_25 (18) = happyShift action_7
action_25 (24) = happyShift action_8
action_25 (27) = happyShift action_9
action_25 (28) = happyShift action_10
action_25 (30) = happyShift action_11
action_25 (33) = happyShift action_12
action_25 (4) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (18) = happyShift action_7
action_26 (24) = happyShift action_8
action_26 (27) = happyShift action_9
action_26 (28) = happyShift action_10
action_26 (30) = happyShift action_11
action_26 (33) = happyShift action_12
action_26 (4) = happyGoto action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_6
action_27 (18) = happyShift action_7
action_27 (24) = happyShift action_8
action_27 (27) = happyShift action_9
action_27 (28) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (33) = happyShift action_12
action_27 (4) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_6
action_28 (18) = happyShift action_7
action_28 (24) = happyShift action_8
action_28 (27) = happyShift action_9
action_28 (28) = happyShift action_10
action_28 (30) = happyShift action_11
action_28 (33) = happyShift action_12
action_28 (4) = happyGoto action_35
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_6
action_29 (18) = happyShift action_7
action_29 (24) = happyShift action_8
action_29 (27) = happyShift action_9
action_29 (28) = happyShift action_10
action_29 (30) = happyShift action_11
action_29 (33) = happyShift action_12
action_29 (4) = happyGoto action_34
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_6
action_30 (18) = happyShift action_7
action_30 (24) = happyShift action_8
action_30 (27) = happyShift action_9
action_30 (28) = happyShift action_10
action_30 (30) = happyShift action_11
action_30 (33) = happyShift action_12
action_30 (4) = happyGoto action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_6
action_31 (18) = happyShift action_7
action_31 (24) = happyShift action_8
action_31 (27) = happyShift action_9
action_31 (28) = happyShift action_10
action_31 (30) = happyShift action_11
action_31 (33) = happyShift action_12
action_31 (4) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_6
action_32 (9) = happyShift action_20
action_32 (10) = happyShift action_21
action_32 (11) = happyShift action_22
action_32 (12) = happyShift action_23
action_32 (14) = happyShift action_24
action_32 (15) = happyShift action_25
action_32 (16) = happyShift action_26
action_32 (17) = happyShift action_27
action_32 (18) = happyShift action_7
action_32 (19) = happyShift action_28
action_32 (20) = happyShift action_29
action_32 (21) = happyShift action_30
action_32 (22) = happyShift action_31
action_32 (24) = happyShift action_8
action_32 (27) = happyShift action_9
action_32 (28) = happyShift action_10
action_32 (30) = happyShift action_11
action_32 (33) = happyShift action_12
action_32 (4) = happyGoto action_19
action_32 _ = happyReduce_10

action_33 (6) = happyShift action_4
action_33 (7) = happyShift action_5
action_33 (8) = happyShift action_6
action_33 (14) = happyShift action_24
action_33 (15) = happyShift action_25
action_33 (16) = happyShift action_26
action_33 (17) = happyShift action_27
action_33 (19) = happyShift action_28
action_33 (20) = happyShift action_29
action_33 (22) = happyShift action_31
action_33 (27) = happyShift action_9
action_33 (28) = happyShift action_10
action_33 (30) = happyShift action_11
action_33 (33) = happyShift action_12
action_33 (4) = happyGoto action_19
action_33 _ = happyReduce_9

action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (8) = happyShift action_6
action_34 (16) = happyShift action_26
action_34 (22) = happyShift action_31
action_34 (27) = happyShift action_9
action_34 (28) = happyShift action_10
action_34 (30) = happyShift action_11
action_34 (33) = happyShift action_12
action_34 (4) = happyGoto action_19
action_34 _ = happyReduce_19

action_35 (6) = happyShift action_4
action_35 (7) = happyShift action_5
action_35 (8) = happyShift action_6
action_35 (16) = happyShift action_26
action_35 (22) = happyShift action_31
action_35 (27) = happyShift action_9
action_35 (28) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (33) = happyShift action_12
action_35 (4) = happyGoto action_19
action_35 _ = happyReduce_18

action_36 (6) = happyShift action_4
action_36 (7) = happyShift action_5
action_36 (8) = happyShift action_6
action_36 (16) = happyShift action_26
action_36 (22) = happyShift action_31
action_36 (27) = happyShift action_9
action_36 (28) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (33) = happyShift action_12
action_36 (4) = happyGoto action_19
action_36 _ = happyReduce_17

action_37 (6) = happyShift action_4
action_37 (7) = happyShift action_5
action_37 (8) = happyShift action_6
action_37 (9) = happyShift action_20
action_37 (10) = happyShift action_21
action_37 (11) = happyShift action_22
action_37 (12) = happyShift action_23
action_37 (14) = happyShift action_24
action_37 (15) = happyShift action_25
action_37 (16) = happyShift action_26
action_37 (17) = happyShift action_27
action_37 (18) = happyShift action_7
action_37 (19) = happyShift action_28
action_37 (20) = happyShift action_29
action_37 (21) = happyShift action_30
action_37 (22) = happyShift action_31
action_37 (24) = happyShift action_8
action_37 (27) = happyShift action_9
action_37 (28) = happyShift action_10
action_37 (30) = happyShift action_11
action_37 (33) = happyShift action_12
action_37 (4) = happyGoto action_19
action_37 _ = happyReduce_16

action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_5
action_38 (8) = happyShift action_6
action_38 (16) = happyShift action_26
action_38 (22) = happyShift action_31
action_38 (27) = happyShift action_9
action_38 (28) = happyShift action_10
action_38 (30) = happyShift action_11
action_38 (33) = happyShift action_12
action_38 (4) = happyGoto action_19
action_38 _ = happyReduce_20

action_39 (6) = happyShift action_4
action_39 (7) = happyShift action_5
action_39 (8) = happyShift action_6
action_39 (16) = happyShift action_26
action_39 (22) = happyShift action_31
action_39 (27) = happyShift action_9
action_39 (28) = happyShift action_10
action_39 (30) = happyShift action_11
action_39 (33) = happyShift action_12
action_39 (4) = happyGoto action_19
action_39 _ = happyReduce_21

action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_5
action_40 (8) = happyShift action_6
action_40 (9) = happyShift action_20
action_40 (10) = happyShift action_21
action_40 (14) = happyShift action_24
action_40 (15) = happyShift action_25
action_40 (16) = happyShift action_26
action_40 (17) = happyShift action_27
action_40 (18) = happyShift action_7
action_40 (19) = happyShift action_28
action_40 (20) = happyShift action_29
action_40 (21) = happyShift action_30
action_40 (22) = happyShift action_31
action_40 (27) = happyShift action_9
action_40 (28) = happyShift action_10
action_40 (30) = happyShift action_11
action_40 (33) = happyShift action_12
action_40 (4) = happyGoto action_19
action_40 _ = happyReduce_7

action_41 (6) = happyShift action_4
action_41 (7) = happyShift action_5
action_41 (8) = happyShift action_6
action_41 (9) = happyShift action_20
action_41 (10) = happyShift action_21
action_41 (14) = happyShift action_24
action_41 (15) = happyShift action_25
action_41 (16) = happyShift action_26
action_41 (17) = happyShift action_27
action_41 (18) = happyShift action_7
action_41 (19) = happyShift action_28
action_41 (20) = happyShift action_29
action_41 (21) = happyShift action_30
action_41 (22) = happyShift action_31
action_41 (27) = happyShift action_9
action_41 (28) = happyShift action_10
action_41 (30) = happyShift action_11
action_41 (33) = happyShift action_12
action_41 (4) = happyGoto action_19
action_41 _ = happyReduce_8

action_42 (6) = happyShift action_4
action_42 (7) = happyShift action_5
action_42 (8) = happyShift action_6
action_42 (14) = happyShift action_24
action_42 (15) = happyShift action_25
action_42 (16) = happyShift action_26
action_42 (17) = happyShift action_27
action_42 (18) = happyShift action_7
action_42 (19) = happyShift action_28
action_42 (20) = happyShift action_29
action_42 (21) = happyShift action_30
action_42 (22) = happyShift action_31
action_42 (27) = happyShift action_9
action_42 (28) = happyShift action_10
action_42 (30) = happyShift action_11
action_42 (33) = happyShift action_12
action_42 (4) = happyGoto action_19
action_42 _ = happyReduce_6

action_43 (6) = happyShift action_4
action_43 (7) = happyShift action_5
action_43 (8) = happyShift action_6
action_43 (14) = happyShift action_24
action_43 (15) = happyShift action_25
action_43 (16) = happyShift action_26
action_43 (17) = happyShift action_27
action_43 (18) = happyShift action_7
action_43 (19) = happyShift action_28
action_43 (20) = happyShift action_29
action_43 (21) = happyShift action_30
action_43 (22) = happyShift action_31
action_43 (27) = happyShift action_9
action_43 (28) = happyShift action_10
action_43 (30) = happyShift action_11
action_43 (33) = happyShift action_12
action_43 (4) = happyGoto action_19
action_43 _ = happyReduce_5

action_44 (6) = happyShift action_4
action_44 (7) = happyShift action_5
action_44 (8) = happyShift action_6
action_44 (9) = happyShift action_20
action_44 (10) = happyShift action_21
action_44 (11) = happyShift action_22
action_44 (12) = happyShift action_23
action_44 (14) = happyShift action_24
action_44 (15) = happyShift action_25
action_44 (16) = happyShift action_26
action_44 (17) = happyShift action_27
action_44 (18) = happyShift action_7
action_44 (19) = happyShift action_28
action_44 (20) = happyShift action_29
action_44 (21) = happyShift action_30
action_44 (22) = happyShift action_31
action_44 (23) = happyShift action_55
action_44 (24) = happyShift action_8
action_44 (27) = happyShift action_9
action_44 (28) = happyShift action_10
action_44 (30) = happyShift action_11
action_44 (33) = happyShift action_12
action_44 (4) = happyGoto action_19
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (6) = happyShift action_4
action_45 (7) = happyShift action_5
action_45 (8) = happyShift action_6
action_45 (18) = happyShift action_7
action_45 (24) = happyShift action_8
action_45 (27) = happyShift action_9
action_45 (28) = happyShift action_10
action_45 (30) = happyShift action_11
action_45 (33) = happyShift action_12
action_45 (4) = happyGoto action_54
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_6
action_46 (18) = happyShift action_7
action_46 (24) = happyShift action_8
action_46 (27) = happyShift action_9
action_46 (28) = happyShift action_10
action_46 (30) = happyShift action_11
action_46 (33) = happyShift action_12
action_46 (4) = happyGoto action_53
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (33) = happyShift action_50
action_47 (35) = happyShift action_51
action_47 (36) = happyShift action_52
action_47 (5) = happyGoto action_49
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_15

action_49 (32) = happyShift action_60
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (33) = happyShift action_50
action_50 (35) = happyShift action_51
action_50 (36) = happyShift action_52
action_50 (5) = happyGoto action_59
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_24

action_52 _ = happyReduce_25

action_53 (6) = happyShift action_4
action_53 (7) = happyShift action_5
action_53 (8) = happyShift action_6
action_53 (9) = happyShift action_20
action_53 (10) = happyShift action_21
action_53 (11) = happyShift action_22
action_53 (12) = happyShift action_23
action_53 (14) = happyShift action_24
action_53 (15) = happyShift action_25
action_53 (16) = happyShift action_26
action_53 (17) = happyShift action_27
action_53 (18) = happyShift action_7
action_53 (19) = happyShift action_28
action_53 (20) = happyShift action_29
action_53 (21) = happyShift action_30
action_53 (22) = happyShift action_31
action_53 (24) = happyShift action_8
action_53 (27) = happyShift action_9
action_53 (28) = happyShift action_10
action_53 (29) = happyShift action_58
action_53 (30) = happyShift action_11
action_53 (33) = happyShift action_12
action_53 (4) = happyGoto action_19
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_4
action_54 (7) = happyShift action_5
action_54 (8) = happyShift action_6
action_54 (9) = happyShift action_20
action_54 (10) = happyShift action_21
action_54 (11) = happyShift action_22
action_54 (12) = happyShift action_23
action_54 (14) = happyShift action_24
action_54 (15) = happyShift action_25
action_54 (16) = happyShift action_26
action_54 (17) = happyShift action_27
action_54 (18) = happyShift action_7
action_54 (19) = happyShift action_28
action_54 (20) = happyShift action_29
action_54 (21) = happyShift action_30
action_54 (22) = happyShift action_31
action_54 (24) = happyShift action_8
action_54 (26) = happyShift action_57
action_54 (27) = happyShift action_9
action_54 (28) = happyShift action_10
action_54 (30) = happyShift action_11
action_54 (33) = happyShift action_12
action_54 (4) = happyGoto action_19
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_4
action_55 (7) = happyShift action_5
action_55 (8) = happyShift action_6
action_55 (18) = happyShift action_7
action_55 (24) = happyShift action_8
action_55 (27) = happyShift action_9
action_55 (28) = happyShift action_10
action_55 (30) = happyShift action_11
action_55 (33) = happyShift action_12
action_55 (4) = happyGoto action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (6) = happyShift action_4
action_56 (7) = happyShift action_5
action_56 (8) = happyShift action_6
action_56 (9) = happyShift action_20
action_56 (10) = happyShift action_21
action_56 (11) = happyShift action_22
action_56 (12) = happyShift action_23
action_56 (14) = happyShift action_24
action_56 (15) = happyShift action_25
action_56 (16) = happyShift action_26
action_56 (17) = happyShift action_27
action_56 (18) = happyShift action_7
action_56 (19) = happyShift action_28
action_56 (20) = happyShift action_29
action_56 (21) = happyShift action_30
action_56 (22) = happyShift action_31
action_56 (24) = happyShift action_8
action_56 (27) = happyShift action_9
action_56 (28) = happyShift action_10
action_56 (30) = happyShift action_11
action_56 (33) = happyShift action_12
action_56 (34) = happyShift action_65
action_56 (4) = happyGoto action_19
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (6) = happyShift action_4
action_57 (7) = happyShift action_5
action_57 (8) = happyShift action_6
action_57 (18) = happyShift action_7
action_57 (24) = happyShift action_8
action_57 (27) = happyShift action_9
action_57 (28) = happyShift action_10
action_57 (30) = happyShift action_11
action_57 (33) = happyShift action_12
action_57 (4) = happyGoto action_64
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_4
action_58 (7) = happyShift action_5
action_58 (8) = happyShift action_6
action_58 (18) = happyShift action_7
action_58 (24) = happyShift action_8
action_58 (27) = happyShift action_9
action_58 (28) = happyShift action_10
action_58 (30) = happyShift action_11
action_58 (33) = happyShift action_12
action_58 (4) = happyGoto action_63
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (32) = happyShift action_62
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_4
action_60 (7) = happyShift action_5
action_60 (8) = happyShift action_6
action_60 (18) = happyShift action_7
action_60 (24) = happyShift action_8
action_60 (27) = happyShift action_9
action_60 (28) = happyShift action_10
action_60 (30) = happyShift action_11
action_60 (33) = happyShift action_12
action_60 (4) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_4
action_61 (7) = happyShift action_5
action_61 (8) = happyShift action_6
action_61 (9) = happyShift action_20
action_61 (10) = happyShift action_21
action_61 (11) = happyShift action_22
action_61 (12) = happyShift action_23
action_61 (14) = happyShift action_24
action_61 (15) = happyShift action_25
action_61 (16) = happyShift action_26
action_61 (17) = happyShift action_27
action_61 (18) = happyShift action_7
action_61 (19) = happyShift action_28
action_61 (20) = happyShift action_29
action_61 (21) = happyShift action_30
action_61 (22) = happyShift action_31
action_61 (24) = happyShift action_8
action_61 (27) = happyShift action_9
action_61 (28) = happyShift action_10
action_61 (30) = happyShift action_11
action_61 (33) = happyShift action_12
action_61 (4) = happyGoto action_19
action_61 _ = happyReduce_12

action_62 (33) = happyShift action_50
action_62 (35) = happyShift action_51
action_62 (36) = happyShift action_52
action_62 (5) = happyGoto action_66
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_4
action_63 (7) = happyShift action_5
action_63 (8) = happyShift action_6
action_63 (9) = happyShift action_20
action_63 (10) = happyShift action_21
action_63 (11) = happyShift action_22
action_63 (12) = happyShift action_23
action_63 (14) = happyShift action_24
action_63 (15) = happyShift action_25
action_63 (16) = happyShift action_26
action_63 (17) = happyShift action_27
action_63 (18) = happyShift action_7
action_63 (19) = happyShift action_28
action_63 (20) = happyShift action_29
action_63 (21) = happyShift action_30
action_63 (22) = happyShift action_31
action_63 (24) = happyShift action_8
action_63 (27) = happyShift action_9
action_63 (28) = happyShift action_10
action_63 (30) = happyShift action_11
action_63 (33) = happyShift action_12
action_63 (4) = happyGoto action_19
action_63 _ = happyReduce_13

action_64 (6) = happyShift action_4
action_64 (7) = happyShift action_5
action_64 (8) = happyShift action_6
action_64 (9) = happyShift action_20
action_64 (10) = happyShift action_21
action_64 (11) = happyShift action_22
action_64 (12) = happyShift action_23
action_64 (14) = happyShift action_24
action_64 (15) = happyShift action_25
action_64 (16) = happyShift action_26
action_64 (17) = happyShift action_27
action_64 (18) = happyShift action_7
action_64 (19) = happyShift action_28
action_64 (20) = happyShift action_29
action_64 (21) = happyShift action_30
action_64 (22) = happyShift action_31
action_64 (24) = happyFail []
action_64 (27) = happyShift action_9
action_64 (28) = happyShift action_10
action_64 (30) = happyShift action_11
action_64 (33) = happyShift action_12
action_64 (4) = happyGoto action_19
action_64 _ = happyReduce_11

action_65 _ = happyReduce_23

action_66 (34) = happyShift action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_26

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
	(HappyTerminal (TokenNum happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_1 happy_var_3 happy_var_5
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
