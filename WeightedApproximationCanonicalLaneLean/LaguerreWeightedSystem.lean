import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure LaguerreWeightedSystem where
  alpha : ℝ
  weightFunction : ℝ → ℝ
  domain : Set ℝ
  orthonormalBasis : ℕ → ℝ → ℝ
  weightDecayExponential : Prop
  completenessProperty : Prop

structure LaguerreWeightedEvidence (L : LaguerreWeightedSystem) where
  weightDecayClosed : L.weightDecayExponential
  completenessClosed : L.completenessProperty

def LaguerreWeightedClosed (L : LaguerreWeightedSystem) : Prop :=
  L.weightDecayExponential ∧ L.completenessProperty

theorem laguerre_weighted_closed_from_evidence (L : LaguerreWeightedSystem)
    (E : LaguerreWeightedEvidence L) : LaguerreWeightedClosed L := by
  exact And.intro E.weightDecayClosed E.completenessClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse