data Nat = Zero | Suc Nat
        deriving Show

nat2int :: Nat -> Integer
nat2int Zero = 0 
nat2int (Suc n) = 1 + nat2int(n)

int2nat :: Integer -> Nat
int2nat 0 = Zero 
int2nat n = Suc (int2nat(n - 1))