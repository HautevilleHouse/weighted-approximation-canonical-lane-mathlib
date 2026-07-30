import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedApproximationPackage where
  weightFunction : Type u
  modulusOfContinuity : Type v
  degree : Type w
  polynomialSpace : Type x
  approximationError : Prop
  uniformWeight : Prop
  convergenceRate : Prop

def WeightedApproximationClosed (W : WeightedApproximationPackage) : Prop :=
  W.approximationError ∧ W.uniformWeight ∧ W.convergenceRate

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse