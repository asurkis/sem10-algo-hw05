module Lib where

ans :: [Int]
ans=0:concat(iterate(\l->l++map(1-)l)[1])
