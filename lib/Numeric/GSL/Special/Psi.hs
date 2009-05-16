------------------------------------------------------------
{- |
Module      :  Numeric.GSL.Special.Psi
Copyright   :  (c) Alberto Ruiz 2006
License     :  GPL-style
Maintainer  :  Alberto Ruiz (aruiz at um dot es)
Stability   :  provisional
Portability :  uses ffi

Wrappers for selected functions described at:

<http://www.google.com/search?q=gsl_sf_psi.h&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>

-}
------------------------------------------------------------

module Numeric.GSL.Special.Psi(
  psi_int_e
, psi_int
, psi_e
, psi
, psi_1piy_e
, psi_1piy
, psi_1_int_e
, psi_1_int
, psi_1_e
, psi_1
, psi_n_e
, psi_n
) where

import Foreign(Ptr)
import Foreign.C.Types(CInt)
import Numeric.GSL.Special.Internal

-- | wrapper for int gsl_sf_psi_int_e(int n,gsl_sf_result* result);
--
--   <http://www.google.com/search?q=gsl_sf_psi_int_e&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_int_e :: CInt -> (Double,Double)
psi_int_e n = createSFR "psi_int_e" $ gsl_sf_psi_int_e n
foreign import ccall "gsl_sf_psi_int_e" gsl_sf_psi_int_e :: CInt -> Ptr () -> IO CInt

-- | wrapper for double gsl_sf_psi_int(int n);
--
--   <http://www.google.com/search?q=gsl_sf_psi_int&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_int :: CInt -> Double
psi_int = gsl_sf_psi_int
foreign import ccall "gsl_sf_psi_int" gsl_sf_psi_int :: CInt -> Double

-- | wrapper for int gsl_sf_psi_e(double x,gsl_sf_result* result);
--
--   <http://www.google.com/search?q=gsl_sf_psi_e&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_e :: Double -> (Double,Double)
psi_e x = createSFR "psi_e" $ gsl_sf_psi_e x
foreign import ccall "gsl_sf_psi_e" gsl_sf_psi_e :: Double -> Ptr () -> IO CInt

-- | wrapper for double gsl_sf_psi(double x);
--
--   <http://www.google.com/search?q=gsl_sf_psi&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi :: Double -> Double
psi = gsl_sf_psi
foreign import ccall "gsl_sf_psi" gsl_sf_psi :: Double -> Double

-- | wrapper for int gsl_sf_psi_1piy_e(double y,gsl_sf_result* result);
--
--   <http://www.google.com/search?q=gsl_sf_psi_1piy_e&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_1piy_e :: Double -> (Double,Double)
psi_1piy_e y = createSFR "psi_1piy_e" $ gsl_sf_psi_1piy_e y
foreign import ccall "gsl_sf_psi_1piy_e" gsl_sf_psi_1piy_e :: Double -> Ptr () -> IO CInt

-- | wrapper for double gsl_sf_psi_1piy(double y);
--
--   <http://www.google.com/search?q=gsl_sf_psi_1piy&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_1piy :: Double -> Double
psi_1piy = gsl_sf_psi_1piy
foreign import ccall "gsl_sf_psi_1piy" gsl_sf_psi_1piy :: Double -> Double

-- | wrapper for int gsl_sf_complex_psi_e(double x,double y,gsl_sf_result* result_re,gsl_sf_result* result_im);
--
--   <http://www.google.com/search?q=gsl_sf_complex_psi_e&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
complex_psi_e :: Double -> Double -> Ptr () -> (Double,Double)
complex_psi_e x y result_re = createSFR "complex_psi_e" $ gsl_sf_complex_psi_e x y result_re
foreign import ccall "gsl_sf_complex_psi_e" gsl_sf_complex_psi_e :: Double -> Double -> Ptr () -> Ptr () -> IO CInt

-- | wrapper for int gsl_sf_psi_1_int_e(int n,gsl_sf_result* result);
--
--   <http://www.google.com/search?q=gsl_sf_psi_1_int_e&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_1_int_e :: CInt -> (Double,Double)
psi_1_int_e n = createSFR "psi_1_int_e" $ gsl_sf_psi_1_int_e n
foreign import ccall "gsl_sf_psi_1_int_e" gsl_sf_psi_1_int_e :: CInt -> Ptr () -> IO CInt

-- | wrapper for double gsl_sf_psi_1_int(int n);
--
--   <http://www.google.com/search?q=gsl_sf_psi_1_int&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_1_int :: CInt -> Double
psi_1_int = gsl_sf_psi_1_int
foreign import ccall "gsl_sf_psi_1_int" gsl_sf_psi_1_int :: CInt -> Double

-- | wrapper for int gsl_sf_psi_1_e(double x,gsl_sf_result* result);
--
--   <http://www.google.com/search?q=gsl_sf_psi_1_e&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_1_e :: Double -> (Double,Double)
psi_1_e x = createSFR "psi_1_e" $ gsl_sf_psi_1_e x
foreign import ccall "gsl_sf_psi_1_e" gsl_sf_psi_1_e :: Double -> Ptr () -> IO CInt

-- | wrapper for double gsl_sf_psi_1(double x);
--
--   <http://www.google.com/search?q=gsl_sf_psi_1&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_1 :: Double -> Double
psi_1 = gsl_sf_psi_1
foreign import ccall "gsl_sf_psi_1" gsl_sf_psi_1 :: Double -> Double

-- | wrapper for int gsl_sf_psi_n_e(int n,double x,gsl_sf_result* result);
--
--   <http://www.google.com/search?q=gsl_sf_psi_n_e&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_n_e :: CInt -> Double -> (Double,Double)
psi_n_e n x = createSFR "psi_n_e" $ gsl_sf_psi_n_e n x
foreign import ccall "gsl_sf_psi_n_e" gsl_sf_psi_n_e :: CInt -> Double -> Ptr () -> IO CInt

-- | wrapper for double gsl_sf_psi_n(int n,double x);
--
--   <http://www.google.com/search?q=gsl_sf_psi_n&as_sitesearch=www.gnu.org/software/gsl/manual&btnI=Lucky>
psi_n :: CInt -> Double -> Double
psi_n = gsl_sf_psi_n
foreign import ccall "gsl_sf_psi_n" gsl_sf_psi_n :: CInt -> Double -> Double
