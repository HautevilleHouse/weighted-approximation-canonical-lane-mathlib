import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure BernsteinWeightedApproximationPackage where
  approximationSpace : Type
  norm : approximationSpace → ℝ
  bernsteinOperator : (ℝ → ℝ) → (ℝ → ℝ)
  convergenceRate : ℕ → ℝ
  boundednessProperty : Prop

structure BernsteinWeightedEvidence (B : BernsteinWeightedApproximationPackage) where
  boundednessClosed : B.boundednessProperty
  convergenceRatePositive : ∀ n, B.convergenceRate n > 0

def BernsteinWeightedApproximationClosed (B : BernsteinWeightedApproximationPackage) : Prop :=
  B.boundednessProperty ∧ (∀ n, B.convergenceRate n > 0)

theorem bernstein_weighted_approximation_closed_from_evidence
    (B : BernsteinWeightedApproximationPackage) (E : BernsteinWeightedEvidence B) :
    BernsteinWeightedApproximationClosed B := by
  exact And.intro E.boundednessClosed E.convergenceRatePositive

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse