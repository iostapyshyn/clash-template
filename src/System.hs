module System (topEntity) where

import Clash.Prelude
import Clash.Annotations.TH

topEntity :: "clk" ::: Clock System
          -> "rst" ::: Reset System
          -> "en"  ::: Enable System
          -> "in"  ::: Signal System Bit
          -> "out" ::: Signal System Bit
topEntity = exposeClockResetEnable id

makeTopEntity 'topEntity
