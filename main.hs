{-# LANGUAGE DerivingVia #-}

import Control.Monad.Reader (ReaderT (..))

newtype Control m a = Control (ReaderT () m a)
  deriving Functor via ReaderT () m

newtype Experiment m a = Experiment (() -> m a)
  deriving Functor via ReaderT () m

main :: IO ()
main = pure ()
