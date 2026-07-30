import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure MuntzWeightedApproximationPackage where
  exponentSequence : ℕ → ℝ
  weightedApproximationSpace : Type
  densityCondition : Prop
  muntzTheoremHolds : Prop

structure MuntzWeightedEvidence (M : MuntzWeightedApproximationPackage) where
  densityConditionClosed : M.densityCondition
  muntzTheoremClosed : M.muntzTheoremHolds

def MuntzWeightedApproximationClosed (M : MuntzWeightedApproximationPackage) : Prop :=
  M.densityCondition ∧ M.muntzTheoremHolds

theorem muntz_weighted_approximation_closed_from_evidence
    (M : MuntzWeightedApproximationPackage) (E : MuntzWeightedEvidence M) :
    MuntzWeightedApproximationClosed M := by
  exact And.intro E.densityConditionClosed E.muntzTheoremClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse