module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class.Console (log)
import Node.FS.Aff as FSA

main :: Effect Unit
main = launchAff_ do
  neverPrinted <- FSA.readdir "output"
  log $ show neverPrinted
