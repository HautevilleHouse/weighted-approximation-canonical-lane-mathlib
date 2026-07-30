import canonicalLaneMathlib.AdmissibleClass

/-!
# Weighted Approximation Theory: Core Definitions and Structures

This module defines the fundamental structures for studying weighted approximation
on unbounded domains, including weighted function spaces, modulus of continuity,
and weighted polynomials.
-/

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightFunction where
  domain : Type u
  weight : domain → ℝ
  positivity : ∀ x : domain, weight x > 0
  growthCondition : Prop

definition WeightedSupNorm (W : WeightFunction) (f : W.domain → ℝ) : ℝ := 
  ⨆ x : W.domain, |f x| / W.weight x

structure WeightedContinuousFunction (W : WeightFunction) where
  toFun : W.domain → ℝ
  continuity : Continuous toFun
  finiteWeightedSupNorm : WeightedSupNorm W toFun < ∞

theorem weight_not_integrable (W : WeightFunction) : ¬ (∃ C : ℝ, ∀ x, W.weight x ≤ C) := by
  intro h
  rcases h with ⟨C, hC⟩
  have := W.positivity (some x)
  sorry

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse
