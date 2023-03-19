module Lib where

bin :: [Integer]
bin=fst<$>iterate(\(x,p)->(x*p+p-1-x,p*p))(0,2)

dec :: [Integer]
dec=fst<$>iterate(\(x,p)->(x*p+div(p-1)9-x,p*p))(0,10)

str :: [String]
str=(\(x,p)->tail$show$p+x)<$>iterate(\(x,p)->(x*p+div(p-1)9-x,p*p))(0::Integer,10)
