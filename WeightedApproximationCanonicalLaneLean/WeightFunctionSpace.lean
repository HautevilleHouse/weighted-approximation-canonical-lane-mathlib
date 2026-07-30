import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightFunctionPackage where
  domain : Type u
  topology : TopologicalSpace domain
  weight : domain → ℝ
  weightStrictlyPositive : ∀ x, weight x > 0
  weightContinuous : Continuous weight

structure WeightFunctionEvidence (W : WeightFunctionPackage) where
  weightStrictlyPositiveClosed : ∀ x, W.weight x > 0
  weightContinuousClosed : Continuous W.weight

def WeightFunctionClosed (W : WeightFunctionPackage) : Prop :=
  (∀ x, W.weight x > 0) ∧ Continuous W.weight

theorem weight_function_closed_from_evidence (W : WeightFunctionPackage)
    (E : WeightFunctionEvidence W) : WeightFunctionClosed W :=
  And.intro E.weightStrictlyPositiveClosed E.weightContinuousClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse