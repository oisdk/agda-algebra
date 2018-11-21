{-# OPTIONS --without-K #-}

open import Algebra
open import Relation.Binary hiding (Decidable)
open import Relation.Unary
open import Algebra.Solver.Ring.AlmostCommutativeRing
open import Polynomial.Normal.Parameters

----------------------------------------------------------------------
-- Homomorphism
----------------------------------------------------------------------
module Polynomial.Homomorphism
  {r₁ r₂ r₃ r₄}
  (homo : Homomorphism r₁ r₂ r₃ r₄)
  where

open import Polynomial.Homomorphism.Addition homo
  using (⊞-hom)
  public

open import Polynomial.Homomorphism.Multiplication homo
  using (⊠-hom)
  public

open import Polynomial.Homomorphism.Negation homo
  using (⊟-hom)
  public

open import Polynomial.Homomorphism.Semantics homo
  using (κ-hom; ι-hom)
  public