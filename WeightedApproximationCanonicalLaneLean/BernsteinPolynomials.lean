import WeightedApproximationCanonicalLaneLean.WeierstrassTheorem

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure BernsteinWeightedPackage (A : AdmissibleWeightedClass) where
  bernsteinOperator : (A.space → ℝ) → (A.space → ℝ)
  uniformConvergence : Prop
  rateEstimate : Prop

structure BernsteinWeightedEvidence (A : AdmissibleWeightedClass) (B : BernsteinWeightedPackage A) where
  uniformConvergenceClosed : B.uniformConvergence
  rateEstimateClosed : B.rateEstimate

def BernsteinWeightedClosed (A : AdmissibleWeightedClass) (B : BernsteinWeightedPackage A) : Prop :=
  B.uniformConvergence ∧ B.rateEstimate

theorem bernstein_weighted_closed_from_evidence (A : AdmissibleWeightedClass) (B : BernsteinWeightedPackage A) (E : BernsteinWeightedEvidence A B) : BernsteinWeightedClosed A B :=
  by
    exact And.intro E.uniformConvergenceClosed E.rateEstimateClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse