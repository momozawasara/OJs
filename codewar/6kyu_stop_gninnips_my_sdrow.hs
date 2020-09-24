-- (6kyu) Stop gninnipS My sdroW!
-- https://www.codewars.com/kata/5264d2b162488dc400000001
module Codewars.Kata.Spinning where

spinWords :: String -> String
spinWords = unwords . map (\x -> if length x >= 5 then reverse x else x) . words