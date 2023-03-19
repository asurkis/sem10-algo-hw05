module Lib where

bin :: [Integer]
bin=fst<$>go where go=(0,2):((\(x,p)->(x*p+p-1-x,p*p))<$>go)

dec :: [Integer]
dec=fst<$>go where go=(0,10):((\(x,p)->(x*p+div (p-1) 9-x,p*p))<$>go)

str :: [String]
str=(\(x,p)->tail$show$p+x)<$>go where go=(0::Integer,10):((\(x,p)->(x*p+div (p-1) 9-x,p*p))<$>go)
