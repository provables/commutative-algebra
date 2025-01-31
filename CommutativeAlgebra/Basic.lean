import Mathlib

variable {R : Type*} [Ring R] {I : Ideal R}

open Polynomial

def homogeneous (I : Ideal R) (p : R[X]) : Prop :=
  ∀ i : ℕ, i < p.degree → p.coeff i ∈ I ^ (p.natDegree - i)

def isIntegralElem (x : R) := ∃ p : R[X], Monic p ∧ homogeneous I p ∧ eval x p = 0
