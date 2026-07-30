import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure ChebyshevWeightSystem where
  interval : Set ℝ
  weightFunction : ℝ → ℝ
  continuousOn : ContinuousOn weightFunction interval
  positiveOnInterior : ∀ x ∈ interior interval, weightFunction x > 0
  satisfiesFreudCondition : Prop

structure ChebyshevWeightEvidence (W : ChebyshevWeightSystem) where
  continuousOnClosed : W.continuousOn
  positiveOnInteriorClosed : W.positiveOnInterior
  freudConditionClosed : W.satisfiesFreudCondition

def ChebyshevWeightClosed (W : ChebyshevWeightSystem) : Prop :=
  W.continuousOn ∧ W.positiveOnInterior ∧ W.satisfiesFreudCondition

theorem chebyshev_weight_closed_from_evidence (W : ChebyshevWeightSystem)
    (E : ChebyshevWeightEvidence W) : ChebyshevWeightClosed W := by
  exact And.intro E.continuousOnClosed
    (And.intro E.positiveOnInteriorClosed E.freudConditionClosed)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse