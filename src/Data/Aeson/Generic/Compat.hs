{-# LANGUAGE CPP #-}
{-# LANGUAGE ConstraintKinds #-}

module Data.Aeson.Generic.Compat (
  GFromJSON0, GToJSON0,
  ) where

import Data.Aeson (GFromJSON, GToJSON)
#if MIN_VERSION_aeson(1,0,0)
import Data.Aeson (Zero)
#endif


#if MIN_VERSION_aeson(1,0,0)
type GFromJSON0  =  GFromJSON Zero
type GToJSON0    =  GToJSON Zero
#else
type GFromJSON0  =  GFromJSON
type GToJSON0    =  GToJSON
#endif
