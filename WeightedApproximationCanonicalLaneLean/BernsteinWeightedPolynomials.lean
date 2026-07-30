import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.WeightedApproximationTheory

/-!
# Bernstein Weighted Polynomials on Unbounded Domains

This module defines weighted Bernstein operators for exponential-type weights
and establishes rate of convergence in weighted sup norm.
-/

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure ExponentialWeight extends WeightFunction where
  exponent : ℝ → ℝ
  exponentPositive : ∀ x, exponent x > 0
  weightDef : weight = λ x => exp (-exponent x)
  decayCondition : ∀ n : ℕ, ⨆ x, (|x|^n) / (exp (exponent x)) < ∞

structure BernsteinWeightedOperator (W : ExponentialWeight) where
  degree : ℕ
  kernel : ℕ → W.domain → W.domain → ℝ
  approximationProperty : ∀ (f : WeightedContinuousFunction W),
    WeightedSupNorm W (kernel degree · ·) * WeightedSupNorm W (toFun f) → 0 as degree → ∞
  positivity : ∀ x y, kernel degree x y ≥ 0

theorem bernstein_convergence (W : ExponentialWeight) (B : BernsteinWeightedOperator W) (f : WeightedContinuousFunction W) :
    Filter.Tendsto (λ n : ℕ => WeightedSupNorm W (λ x => B.kernel n x (f x) - f x)) Filter.atTop (𝓝 0) := by
  sorry

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse
