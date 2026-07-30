import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure HermiteWeightedSystem where
  weightFunction : ℝ → ℝ
  domain : Set ℝ
  orthonormalBasis : ℕ → ℝ → ℝ
  weightDecayGaussian : Prop
  completenessProperty : Prop

structure HermiteWeightedEvidence (H : HermiteWeightedSystem) where
  weightDecayClosed : H.weightDecayGaussian
  completenessClosed : H.completenessProperty

def HermiteWeightedClosed (H : HermiteWeightedSystem) : Prop :=
  H.weightDecayGaussian ∧ H.completenessProperty

theorem hermite_weighted_closed_from_evidence (H : HermiteWeightedSystem)
    (E : HermiteWeightedEvidence H) : HermiteWeightedClosed H := by
  exact And.intro E.weightDecayClosed E.completenessClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse